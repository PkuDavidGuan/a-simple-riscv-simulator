#ifndef CACHE_CACHE_H_
#define CACHE_CACHE_H_

#include <stdint.h>
#include "storage.h"
#include "def.h"

typedef struct CacheConfig_ {
  uint64_t size;
  int associativity;
  int set_num; // Number of cache sets
  int line_size;
  int write_through; // 0|1 for back|through
  int write_allocate; // 0|1 for no-alc|alc
} CacheConfig;
typedef struct Entry_ {
  bool valid;
  uint64_t flag;
  unsigned char c[LINESIZE];
  uint64_t recent;
  bool dirty;
} Entry;

class Cache: public Storage {
 public:
  Cache() {}
  ~Cache() {}

  void init(uint64_t _size, int _ass, int _setnum, int _wt, int _wa, int _hitcyc, Storage *_low, int _ll);
  // Sets & Gets
  void SetConfig(CacheConfig cc);
  void GetConfig(CacheConfig &cc);
  void SetLower(Storage *ll) { lower_ = ll; }
  // Main access process
  void HandleRequest(uint64_t addr, int bytes, int read,
                     unsigned char *content, int &hit, int &cycle);

  void PrintLine(uint64_t addr);
  void PrintConfig()
  {
    printf("access_counter: %d\n", stats_.access_counter);
    printf("miss_num: %d\n", stats_.miss_num);
    printf("miss_rate: %lf\n", (float)stats_.miss_num/stats_.access_counter);
    printf("replace_num: %d\n", stats_.replace_num);
    printf("fetch_num: %d\n", stats_.fetch_num);
    printf("prefetch_num: %d\n", stats_.prefetch_num);
  }

 private:
  // Bypassing
  int BypassDecision();
  // Partitioning
  void PartitionAlgorithm();
  // Replacement
  bool ReplaceDecision(uint64_t addr, int &target);
  void ReplaceAlgorithm(uint64_t addr, int &cycle);
  // Prefetching
  int PrefetchDecision();
  void PrefetchAlgorithm();

  CacheConfig config_;
  Storage *lower_;
  DISALLOW_COPY_AND_ASSIGN(Cache);

  Entry store[SETSIZE][BLOCKNUM];
  int s;
  int b;
  uint64_t simtime;
  int leval;
};

#endif //CACHE_CACHE_H_ 
