#include <stdio.h>
#include <stdlib.h>
void swap(int* arr, int i, int j) {
  int tmp = arr[i]; arr[i] = arr[j]; arr[j] = tmp;
}

void quicksort(int* arr, int st, int end) {
  if(st == end) return;

  int i, sep = st;
  for(i = st + 1; i < end; i++) {
    if(arr[i] < arr[st]) swap(arr, ++sep, i);
  }

  swap(arr, st, sep);
  quicksort(arr, st, sep);
  quicksort(arr, sep + 1, end);
}
int arr[10] = {1804289383,846930886,1681692777,1714636915,1957747793,424238335,719885386,1649760492,596516649,1189641421};
int main() {
  int n = 10; 
  double lala = 0;
  quicksort(arr, 0, n);
  return 0;
}
