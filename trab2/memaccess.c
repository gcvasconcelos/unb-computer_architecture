#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>

#define MEM_SIZE 4096
int32_t mem[MEM_SIZE];

void sw(uint32_t address, int16_t kte, int32_t dado) {
  if ((address+kte)%4 != 0) {
    printf("Invalid argument (address or kte not divisible by 4)\n");
    return;
  }  
  uint32_t pos = (address + (uint32_t)kte) / 4;
  mem[pos] = dado;
}

void sh(uint32_t address, int16_t kte, int16_t dado) {
  if ((address+kte)%2 != 0) {
    printf("Invalid argument (address or kte not divisible by 2)\n");
    return;
  }  
  uint32_t pos = (address + (uint32_t)kte) / 4;
  uint32_t data = (uint32_t)dado << 8*(uint32_t)kte;
  uint32_t mask = 0x0000FFFF; 
  data &= mask << 8*(uint32_t)kte;
  mem[pos] |= data;

}

void sb(uint32_t address, int16_t kte, int8_t dado) {
  uint32_t pos = (address + (uint32_t)kte) / 4;
  uint32_t data = (uint32_t)dado << 8*(uint32_t)kte;
  uint32_t mask = 0x000000FF;
  data &= mask << 8*(uint32_t)kte;
  mem[pos] |= data;
}

int32_t lw(uint32_t address, int16_t kte) {
  if ((address+kte)%4 != 0) {
    printf("Invalid argument (address or kte not divisible by 4)\n");
    return -1;
  }  
  uint32_t pos = (address + (uint32_t)kte) / 4;
  // printf("word\thex-> %08x\tdec-> %d\n",mem[pos],mem[pos]);
  return mem[pos];
}

int32_t lh(uint32_t address, int16_t kte) {
  if ((address+kte)%2 != 0) {
    printf("Invalid argument (address or kte not divisible by 2)\n");
    return -1;
  }
  uint32_t pos = (address + (uint32_t)kte) / 4;
  int32_t mask = 0x0000FFFF;
  int32_t data = mem[pos] & (mask << 8*kte);
  data = data >> 8*kte;
  printf("half\thex-> %04x\tdec-> %d\n",data,data);
  return data;
}

uint32_t lhu(uint32_t address, int16_t kte) {
  if ((address+kte)%2 != 0) {
    printf("Invalid argument (address or kte not divisible by 2)\n");
    return -1;
  }
  uint32_t pos = (address + (uint32_t)kte) / 4;
  uint32_t mask = 0x0000FFFF;
  uint32_t data = mem[pos] & (mask << 8*kte);
  data = data >> 8*kte;
  data &= mask;
  printf("uhalf\t\t\tdec-> %d\n",data);
  return data;
}

int32_t lb(uint32_t address, int16_t kte) {
  uint32_t pos = (address + (uint32_t)kte) / 4;
  int32_t mask = 0x000000FF;
  int32_t data = mem[pos] & (mask << 8*kte);
  data = data >> 8*kte;
  printf("byte\thex-> %02x\tdec-> %d\n",data,data);
  
  return data;
}

uint32_t lbu(uint32_t address, int16_t kte) {
  uint32_t pos = (address + (uint32_t)kte) / 4;
  uint32_t mask = 0x000000FF;
  uint32_t data = mem[pos] & (mask << 8*kte);
  data = data >> 8*kte;
  data &= mask;
  printf("ubyte\t\t\tdec-> %d\n",data);
  
  return data;
}