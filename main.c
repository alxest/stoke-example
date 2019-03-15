#include "stdint.h"
#include "stdio.h"
#include "wchar.h"

extern wchar_t* my_wcpcpy(wchar_t* edi, wchar_t* esi);

int main() {
  wchar_t x[1000000];
  wchar_t y[1000000];
  int i;
  for(i=0; i<100000000; i++) my_wcpcpy(x, y);
  return 0;
}
