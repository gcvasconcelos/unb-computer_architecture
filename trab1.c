#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <assert.h>

#define MEM_SIZE 4096
int32_t mem[MEM_SIZE]; 

// imprime conteúdo da memória no formato hexa, palavra por palavra
void dump_mem(uint32_t addr, uint32_t size);   
// lê um inteiro alinhado - endereços múltiplos de 4
int32_t lw(uint32_t address, int16_t kte);
// lê meia palavra, 16 bits - retorna inteiro com sinal
int32_t lh(uint32_t address, int16_t kte);
// lê meia palavra, 16 bits formato inteiro sem sinal
uint32_t lhu(uint32_t address, int16_t kte);
// lê um byte - retorna inteiro com sinal
int32_t lb(uint32_t address, int16_t kte);
// lê um byte - 8 bits formato inteiro sem sinal
uint32_t lbu(uint32_t address, int16_t kte);
// escreve um inteiro alinhado na memória - endereços múltiplos de 4
void sw(uint32_t address, int16_t kte, int32_t dado);
// escreve meia palavra, 16 bits - endereços múltiplos de 2
void sh(uint32_t address, int16_t kte, int16_t dado);
// escreve um byte na memória 
void sb(uint32_t address, int16_t kte, int8_t dado);


int main(int argc, char *argv[]) {  
  sb(0, 0, 0x04); sb(0, 1, 0x03); sb(0, 2, 0x02); sb(0, 3, 0x01);
  sb(4, 0, 0xFF); sb(4, 1, 0xFE); sb(4, 2, 0xFD); sb(4, 3, 0xFC);
  sh(8, 0, 0xFFF0); sh(8, 2, 0x8C);
  sw(12, 0, 0xFF);
  sw(16, 0, 0xFFFF);
  sw(20, 0, 0xFFFFFFFF);
  sw(24, 0, 0x80000000);
  dump_mem(0,28);

  assert(lb(0, 0) == 0x04);
  assert(lb(0, 1) == 0x03);
  assert(lb(0, 2) == 0x02);
  assert(lb(0, 3) == 0x01);
  
  assert(lb(4, 0) == 0xFF);
  assert(lb(4, 1) == 0xFE);
  assert(lb(4, 2) == 0xFD);
  assert(lb(4, 3) == 0xFFFFFFFC);
  
  assert(lbu(0, 0) == 0x04);
  assert(lbu(0, 1) == 0x03);
  assert(lbu(0, 2) == 0x02);
  assert(lbu(0, 3) == 0x01);
  
  assert(lbu(4, 0) == 0xFF);
  assert(lbu(4, 1) == 0xFE);
  assert(lbu(4, 2) == 0xFD);
  assert(lbu(4, 3) == 0xFC);

  assert(lh(8, 0) == 0xFFF0);
  assert(lh(8, 2) == 0x8C);

  assert(lhu(8, 0) == 0xFFF0);
  assert(lhu(8, 2) == 0x8C);

  assert(lw(12, 0) == 0xFF);
  assert(lw(16, 0) == 0xFFFF);
  assert(lw(20, 0) == 0xFFFFFFFF);
  assert(lw(24, 0) == 0x80000000);

  return 0;
}

void dump_mem(uint32_t addr, uint32_t size) {
  int pos = addr / 4;
  int len = size / 4;
  for(int i = pos; i < len; i++) {
    printf("mem[%d] = %08x\n", i, mem[i]);
  }
} 

void sw(uint32_t address, int16_t kte, int32_t dado) {
  if (address%4 != 0 || kte%4 != 0) {
    printf("Invalid argument (address or kte not divisible by 4)");
    return;
  }  
  uint32_t pos = (address + (uint32_t)kte) / 4;
  mem[pos] = dado;
}

void sh(uint32_t address, int16_t kte, int16_t dado) {
  if (address%2 != 0 || kte%2 != 0) {
    printf("Invalid argument (address or kte not divisible by 2)");
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
  if (address%4 != 0 || kte%4 != 0) {
    printf("Invalid argument (address or kte not divisible by 4)");
    return -1;
  }  
  uint32_t pos = (address + (uint32_t)kte) / 4;
  printf("word\thex-> %08x\tdec-> %d\n",mem[pos],mem[pos]);
  return mem[pos];
}

int32_t lh(uint32_t address, int16_t kte) {
  if (address%2 != 0 || kte%2 != 0) {
    printf("Invalid argument (address or kte not divisible by 2)");
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
  if (address%2 != 0 || kte%2 != 0) {
    printf("Invalid argument (address or kte not divisible by 2)");
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