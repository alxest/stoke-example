#include "stdint.h"
#include "stdio.h"
#include "wchar.h"

wchar_t* my_wcpcpy(wchar_t* edi, wchar_t* esi) {
  wchar_t* eax;
  wchar_t edx;
  do {
    edx = *esi++;
    eax = edi;
    *edi++ = edx;
  } while (edx != 0);
  return eax;
}
