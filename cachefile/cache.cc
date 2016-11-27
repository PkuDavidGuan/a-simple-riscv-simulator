#include "cache.h"
#include "def.h"
#include "string.h"

void Cache::init(uint64_t _size, int _ass, int _setnum, int _wt, int _wa, int _hitcyc, Storage *_low, int _ll)
{
  config_.size = _size;
  config_.associativity = _ass;
  config_.set_num = _setnum;
  config_.write_through = _wt;
  config_.write_allocate = _wa;
  latency_.hit_latency = _hitcyc;
  lower_ = _low;

  for(int i = 0; i < _setnum; ++i)
    for(int j = 0; j < _ass; ++j)
    {
      store[i][j].valid = false;
      store[i][j].flag = 0;
      store[i][j].recent = 0;
      store[i][j].dirty = false;
      memset(store[i][j].c, 0, sizeof(store[i][j].c));
    }

  s = b = -1;
  int linesize = _size/_ass/_setnum;
  config_.line_size = linesize;
  while(_setnum != 0)
  {
    s++;
    _setnum = _setnum >> 1;
  }
  while(linesize != 0)
  {
    b++;
    linesize = linesize >> 1;
  }

  simtime = 0;
  leval = _ll;
}

// Main access process
// [in]  addr: access address
// [in]  bytes: target number of bytes
// [in]  read: 0|1 for write|read
//             3|4 for write|read in prefetch
// [i|o] content: in|out data
// [out] hit: 0|1 for miss|hit
// [out] cycle: total access cycle
void Cache::HandleRequest(uint64_t addr, int bytes, int read,
                          unsigned char *content, int &hit, int &cycle) {

  // Decide on whether a bypass should take place.
  if (!BypassDecision()) 
  {

    // Generate some infomation for the data partition.
    PartitionAlgorithm();

    // Check whether the required data already exist.
    int targetaddr;
    uint64_t vpn = (addr << (64-s-b)) >> (64-s);
    uint64_t vpo = (addr << (64-b)) >> (64-b);

    if (ReplaceDecision(addr, targetaddr)) 
    {
      // Hit!
      // Something else should be done here

      //printf("L%d hit.\n", leval);
      (stats_.access_counter)++; //Only if hit the cache will we add the simtime
      simtime++;        //and access_counter, otherwise we will calculate twice.      
      hit = 1;
      cycle += latency_.hit_latency;
      stats_.access_cycle += latency_.hit_latency;
      store[vpn][targetaddr].recent = simtime;
      if(read == 1)
      {
        memcpy(content, store[vpn][targetaddr].c+vpo, bytes);
        // for(int i = 0; i < 8; ++i)
        //   printf("%x ", store[vpn][targetaddr].c[i]);
      }
      else if(read == 0)
      {
        if(config_.write_through == 0) //write back
        {
          //printf("%lx write back.\n", addr);
          store[vpn][targetaddr].dirty = true;
          memcpy(store[vpn][targetaddr].c+vpo, content, bytes);
        }
        else //write through
        {
          //printf("%lx write through.\n", addr);
          memcpy(store[vpn][targetaddr].c+vpo, content, bytes);
          (stats_.fetch_num)++;
          lower_->HandleRequest(addr, bytes, read, content, hit, cycle);
        }
      }
      else//prefetch
      {
        ;
      }
      return;
    }
    // Choose a victim for the current request.
    //printf("L%d miss, r = %d\n", leval, read);
    hit = 0;
    (stats_.miss_num)++;

    if(read == 0 && config_.write_allocate == 0)//write not allocate
    {
      (stats_.access_counter)++;
      simtime++;
      (stats_.fetch_num)++;
      //printf("%lx Miss. Write not allocated.\n", addr);
      lower_->HandleRequest(addr, bytes, read, content, hit, cycle);
    }
    else
    {
      ReplaceAlgorithm(addr, cycle);
      //printf("L%d replace a page.r = %d\n",leval,  read);
      HandleRequest(addr, bytes, read, content, hit, cycle);
    }
    
    // Decide on whether a prefetch should take place.
    if (PrefetchDecision()) 
    {
      // Fetch the other data via HandleRequest() recursively.
      // To distinguish from the normal requests,
      // the 2|3 is employed for prefetched write|read data
      // while the 0|1 for normal ones.
      PrefetchAlgorithm();
    }
  }
  // Fetch from the lower layer

  // If a victim is selected, replace it.
  // Something else should be done here
  // according to your replacement algorithm.
}

int Cache::BypassDecision() {
  return FALSE;
}

void Cache::PartitionAlgorithm() {
}

/*
  Hit, return true; miss, return false.
  */
bool Cache::ReplaceDecision(uint64_t addr, int &target) {
  uint64_t vpn = (addr << (64-s-b)) >> (64-s);
  uint64_t vpo = (addr << (64-b)) >> (64-b);
  uint64_t flag = addr >> (s+b);
  target = -1;
  for(int j = 0; j < config_.associativity; ++j)
  {
    if(store[vpn][j].valid && store[vpn][j].flag == flag)
    {
      target = j;
      return true;
    }
  }
  return false;
}

/* 
When the current cache miss, use this function 
*/
void Cache::ReplaceAlgorithm(uint64_t addr, int &cycle){
  uint64_t vpn = (addr << (64-s-b)) >> (64-s);
  uint64_t vpo = (addr << (64-b)) >> (64-b);
  uint64_t flag = addr >> (s+b);
  bool voidblock = false;
  int lru = 0;           //the entry that we will sacrifice
  int temphit;

  for(int j = 0; j < config_.associativity; ++j)
  {
    if(store[vpn][j].valid == false)
    {
      voidblock = true;
      lru = j;
      //printf("Prime: %d\n", lru);
      break;
    }
  }  //find a empty entry
  if(voidblock == false)  //didn't find one empty entry
  {
    uint64_t minnum = 1 << 31;
    for(int j = 0; j < config_.associativity; ++j)
    {
      if(store[vpn][j].recent < minnum)
      {
        minnum = store[vpn][j].recent;
        lru = j;
      }
    }
    //printf("oh, %d is out.\n", lru);

    (stats_.replace_num)++;
    //if write back and the entry is dirty, update the lower cache
    if(config_.write_through == 0 && store[vpn][lru].dirty)
    {
      (stats_.fetch_num)++;
      //printf("In replacement strategy, %d write back to the lower storage.\n", lru);
      lower_->HandleRequest((store[vpn][lru].flag << (s+b))+(vpn << b), 1 << b, 0, store[vpn][lru].c, temphit, cycle);//write back the sacrified page
    }
  }
  (stats_.fetch_num)++;
  lower_->HandleRequest((flag << (s+b))+(vpn << b), 1 << b, 1, store[vpn][lru].c, temphit, cycle);//write back the sacrified page
  store[vpn][lru].valid = true;
  store[vpn][lru].recent = simtime;
  store[vpn][lru].flag = flag;
  store[vpn][lru].dirty = false;
    //printf("Line: %d valid = %d, flag = %ld, dirty = %d\n", lru, store[vpn][lru].valid, store[vpn][lru].flag,store[vpn][lru].dirty);
//     for(int i = 0; i < 8; ++i)
//           printf("%x ", store[vpn][lru].c[i]);
//     printf("\n");
}

int Cache::PrefetchDecision() {
  return FALSE;
}

void Cache::PrefetchAlgorithm() {
}

void Cache::GetConfig(CacheConfig &cc)
{
  cc = config_;
}

void Cache::PrintLine(uint64_t addr)
{
  uint64_t vpn = (addr << (64-s-b)) >> (64-s);
  uint64_t vpo = (addr << (64-b)) >> (64-b);
  uint64_t flag = addr >> (s+b);

  for(int j = 0; j < config_.associativity; ++j)
  {
    printf("Line: %d valid = %d, flag = %ld, dirty = %d, content = %u\n", j, store[vpn][j].valid, store[vpn][j].flag,store[vpn][j].dirty,*(int *)(store[vpn][j].c));
    if(store[vpn][j].valid && store[vpn][j].flag == flag)
      printf("Hit line %d.\n", j);
  }
}