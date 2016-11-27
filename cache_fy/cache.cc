#include "cache.h"
#include "def.h"
#include "string.h"

Cache::Cache(int _size, int _ass, int _setnum, int _wt, int _wa, int _hitcyc, Storage *_low):Storage()
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
}

Cache::init(int _size, int _ass, int _setnum, int _wt, int _wa, int _hitcyc, Storage *_low)
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
                          char *content, int &hit, int &cycle) {

  access_counter++;
  simtime++;
  // Decide on whether a bypass should take place.
  if (!BypassDecision()) 
  {

    // Generate some infomation for the data partition.
    PartitionAlgorithm();

    // Check whether the required data already exist.
    if (ReplaceDecision(addr)) 
    {
      // Hit!
      // Something else should be done here

      hit = 1;
      cycle += latency_.hit_latency;
      access_cycle += latency_.hit_latency;
      if(read == 1)
      {
        ;
      }
      else if(read == 0)
      {
        if(config_.write_through == 0) //write back
        {
          ;
        }
        else //write through
        {
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
    hit = 0;
    miss_num++;
    replace_num++;
    cycle += latency_.hit_latency;
    access_cycle += latency_.hit_latency;
    ReplaceAlgorithm();

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
bool Cache::ReplaceDecision(uint64_t addr) {
  uint64_t vpn = (addr << (64-s-b)) >> (64-s);
  uint64_t vpo = (addr << (64-b)) >> (64-b);
  uint64_t flag = addr >> (s+b);
  for(int j = 0; j < config_.associativity; ++j)
  {
    if(store[vpn][j].valid && store[vpn][j].flag == flag)
    {
      return true;
    }
  }
  return false;
}

/* 
When the current cache miss, use this function 
*/
void Cache::ReplaceAlgorithm(uint64_t addr){
  uint64_t vpn = (addr << (64-s-b)) >> (64-s);
  uint64_t vpo = (addr << (64-b)) >> (64-b);
  uint64_t flag = addr >> (s+b);
  bool voidblock = false;
  int lru = 0;
  int temphit;

  for(int j = 0; j < config_.associativity; ++j)
  {
    if(store[vpn][j].valid == false)
    {
      voidblock = true;
      lru = j;
      break;
    }
  }
  if(voidblock == false)
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
    if(config_.write_through == 0 && store[vpn][lru].dirty)
      lower_->HandleRequest((flag << (s+b))+(vpn << b), 1 << b, 0, store[vpn][lru].c, temphit, cycle);//write back the sacrified page
  }
  lower_->HandleRequest((flag << (s+b))+(vpn << b), 1 << b, 1, store[vpn][lru].c, temphit, cycle);//write back the sacrified page
}

int Cache::PrefetchDecision() {
  return FALSE;
}

void Cache::PrefetchAlgorithm() {
}

