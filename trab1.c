#include <stdio.h>
#include <stdint.h>

int main(int argc, char *argv[]) {
  uint32_t u32;
  uint16_t u16;
  uint8_t u8;

  printf("sizeof(u32) = %d\n", sizeof(u32) );
  printf("sizeof(u16) = %d\n", sizeof(u16) );
  printf("sizeof(u8) = %d\n", sizeof(u8) );
  return 0;
}