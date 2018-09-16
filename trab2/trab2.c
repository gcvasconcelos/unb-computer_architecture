#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include "memaccess.h"

// address of bin text and data
#define DATA_BEGIN  0x2000
#define DATA_END    0x204c
#define CODE_BEGIN  0x0000
#define CODE_END    0x0044

// sim memory
#define MEM_SIZE    4096
int32_t mem[MEM_SIZE];

// instruction fields
int8_t opcode, rs, rt, rd, shamt, funct;
int16_t k16;
uint32_t k26;

enum OPCODES	{	 // 6 bits
  EXT=0x00,  LW=0x23,   LB=0x20,  LBU=0x24,
  LH=0x21,   LHU=0x25,  LUI=0x0F, SW=0x2B,
  SB=0x28,   SH=0x29,   BEQ=0x04, BNE=0x05,
  BLEZ=0x06, BGTZ=0x07, ADDI=0x08,SLTI=0x0A, 
  SLTIU=0x0B,ANDI=0x0C, ORI=0x0D, XORI=0x0E,
  J=0x02,	   JAL=0x03,  ADDIU=0x09
};

enum FUNCTS	{	 // 6 bits 
  ADD=0x20,	 SUB=0x22,	 MULT=0x18,	 DIV=0x1A,	  AND=0x24,	
  OR=0x25,	 XOR=0x26,	 NOR=0x27,	 SLT=0x2A,		JR=0x08,
  SLL=0x00,	 SRL=0x02,	 SRA=0x03,	 SYSCALL=0x0c,MFHI=0x10,	
	MFLO=0x12, ADDU=0x21,	 SLTU=0x2b
};

// registers
uint32_t pc = CODE_BEGIN, ri, HI, LO;

int32_t regs[32];
enum REGS {
  zero, at, 
  v0, v1, 
  a0, a1,a2,a3,
  t0,t1,t2,t3,t4,t5,t6,t7,
  s0,s1,s2,s3,s4,s5,s6,s7,
  t8,t9,
  k0,k1,
  gp,sp,fp,ra
};

// cicle functions
void fetch();
void decode();
void execute();
void step();
void run();

// aux functions
int read_binaries();
void initialize();
void op_select(int8_t opcode);
void funct_select(int8_t funct);
void syscall_select(int32_t v0);
void dump_mem(int start, int end, char format);
void dump_reg(char format);
void dump(int op ,char format_mem, char format_regs);

int main() {
  initialize();
  run();
  dump(2, 'h', 'd');
  return 0;
}

int read_binaries() {
  FILE *data_file, *code_file;
  
  if ((data_file = fopen("data.bin","rb")) == NULL || (code_file = fopen("text.bin","rb")) == NULL){
    printf("Error! opening file");
    return -1;
  }

  fread(mem + (CODE_BEGIN/4), 4, (CODE_END-CODE_BEGIN)/4, code_file);
  fread(mem + (DATA_BEGIN/4) ,4, (DATA_END-DATA_BEGIN)/4, data_file);
  return 0;
}

void initialize() {
  // initialize registers
  for(int i = zero;i <= ra;i++) regs[i] = 0;
  regs[28] = 0x1800;
  regs[29] = 0x3FFC;
  // initialize memory
  read_binaries();
}

void fetch() {
  ri = lw(pc,0);                // int de 32 bits (4 bytes)
  pc += 4;
}

void decode() {
  opcode  = ri >> 26;           // 6 bits
  rs      = (ri >> 21) & 0x1F;  // 5 bits, 0001 1111
  rt      = (ri >> 16) & 0x1F;  // 5 bits 
  rd      = (ri >> 11) & 0x1F;  // 5 bits 
  shamt   = (ri >>  6) & 0x1F;  // 5 bits 
  funct   = ri & 0x3F;          // 6 bits, 0011 1111
  // formato tipo-I
  k16     = ri & 0xFFFF;        // 16 bits, 1111 1111 1111 1111
  // formato tipo-J
  k26     = ri & 0x3FFFFFF;     // 26 bits, 0011 1111 1111 1111 1111 1111 1111  
}

void execute() {
  op_select(opcode);
}

void step() {
  fetch();
  decode();
  execute();
}

void run() {
  do {
    step();
  } while (pc > 0 && pc < (CODE_END-CODE_BEGIN));
}

void op_select(int8_t opcode) {
  int32_t pc_upper;
  switch(opcode) {
    case EXT:
      funct_select(funct);
      break;
    // acesso a memoria
    case LW:
      regs[rt] = lw(regs[rs], k16);
      break;
    case LB:
      regs[rt] = lb(regs[rs], k16);
      break;
    case LBU:
      regs[rt] = lbu(regs[rs], k16);
      break;
    case LH:
      regs[rt] = lh(regs[rs], k16);
      break;
    case LHU:
      regs[rt] = lhu(regs[rs], k16);
      break;
    case LUI:
      regs[rt] = (int32_t)k16 << 16;
      break;
    case SW:
      sw(regs[rs], k16, regs[rt]);
      break;
    case SB:
      sw(regs[rs], k16, regs[rt]);
      break;
    case SH:
      sw(regs[rs], k16, regs[rt]);
      break;
    // branches
    case BEQ:
      if (regs[rs] == regs[rt]) pc += (int32_t)k16 << 2;
      break;
    case BNE:
      if (regs[rs] != regs[rt]) pc += (int32_t)k16 << 2;
      break;
    case BLEZ:
      if (regs[rs] <= 0) pc += (int32_t)k16 << 2;
      break;
    case BGTZ:
      if (regs[rs] > 0) pc += (int32_t)k16 << 2;
      break;
    // imediatas
    case ADDI:
      regs[rt] = regs[rs] + (int32_t)k16;
      break;
    case ADDIU:
      regs[rt] = (uint32_t)regs[rs] + (uint16_t)k16;
      break;
    case SLTI:
      regs[rt] = regs[rs] < k16 ? 1 : 0;
      break;
    case SLTIU:
      regs[rt] = (uint32_t)regs[rs] < (uint16_t)k16 ? 1 : 0;
      break;
    case ANDI:
      regs[rt] = regs[rs] & (int32_t)k16;
      break;
    case ORI:
      regs[rt] = regs[rs] | (int32_t)k16;
      break;
    case XORI:
      regs[rt] = regs[rs] ^ (int32_t)k16;
      break;
    // jumps
    case J:
      pc_upper = pc & 0xF0000000;
      pc = pc_upper | k26 << 2;
      break;
    case JAL:
      regs[ra] = pc;
      pc_upper = pc & 0xF0000000;
      pc = pc_upper | k26 << 2;
      break;
    default:
      printf("Error! Operation not found.\n");
      return;
      break;
  }
}

void funct_select(int8_t funct) {
  int64_t product;
  switch(funct){
    case ADD:
      regs[rd] = regs[rs] + regs[rt];
      break;
    case ADDU:
      regs[rd] = (uint32_t)regs[rs] + (uint32_t)regs[rt];
      break;
    case SUB:
      regs[rd] = regs[rs] - regs[rt];
      break;
    case MULT:
      product = (int64_t)regs[rs] * (int64_t)regs[rt];
      HI = (uint32_t)(product >> 32);
      LO = (uint32_t) product;
      break;
    case DIV:
      HI = regs[rs] % regs[rt];
      LO = regs[rs] / regs[rt];
      break;
    case AND:
      regs[rd] = regs[rs] & regs[rt];
      break;
    case OR:
      regs[rd] = regs[rs] | regs[rt];
      break;
    case XOR:
      regs[rd] = regs[rs] ^ regs[rt];
      break;
    case NOR:
      regs[rd] = ~(regs[rs] | regs[rt]);
      break;
    case SLT:
      regs[rd] = regs[rs] < regs[rt] ? 1 : 0;
      break;
    case SLTU:
      regs[rd] = (uint32_t)regs[rs] < (uint32_t)regs[rt] ? 1 : 0;
      break;
    case JR:
      pc = regs[rs];
      break;
    case SLL:
      regs[rd] = regs[rt] << shamt;
      break;
    case SRL:
      regs[rd] =  (uint32_t)regs[rt] >> shamt;
      break;
    case SRA:
      regs[rd] = regs[rt] >> shamt;
      break;
    case SYSCALL:
      syscall_select(regs[v0]);
      break;
    case MFHI:
      regs[rd] = HI;
      break;
    case MFLO:
      regs[rd] = LO;
      break;
    default:
      printf("Error! Function not found.\n");
      return;
      break;
  }
}

void syscall_select(int32_t v0) {
  switch(v0){
    case 1: // print integer
      printf("%d ", regs[a0]);
      break;
    case 4: // print string
      printf("%s", (char *)((int8_t *)mem + regs[a0]));
      break;
    case 10: // terminate program
      pc = -1;
      break;
    default:
      printf("Error! Syscall not found.\n");
      break;
  }
}

void dump_mem(int start, int end, char format) {
  start /= 4;
  end /= 4;
  printf("\n");
  for(int i = start; i < end; i++) {
    if (format == 'h')
      printf("mem[%d] = %08x\n", i*4, mem[i]);  
    else if (format == 'd')
      printf("mem[%d] = %d\n", i, mem[i]);  
    else {
      printf("Error! Invalid print format.\n");
      return;
    }
  }
}

void dump_reg(char format) {
  printf("\n");
  for(int i = zero; i <= ra; i++) {
    if (format == 'h')
      printf("regs[%d] = %08x\n", i, regs[i]);  
    else if (format == 'd')
      printf("regs[%d] = %d\n", i, regs[i]);  
    else {
      printf("Error! Invalid print format.\n");
      return;
    }
  }
  if (format == 'h'){
      printf("regs[pc] = %08x\n", pc);  
      printf("regs[HI] = %08x\n", HI);  
      printf("regs[LO] = %08x\n", LO);  
  }
  else {
      printf("regs[pc] = %d\n", pc);
      printf("regs[HI] = %d\n", HI);
      printf("regs[LO] = %d\n", LO);
  }
}

void dump(int op ,char format_mem, char format_regs) {
  switch(op){
    case 0:                                         // print only memory
      printf("\nMEMORY_TEXT\n");
      dump_mem(CODE_BEGIN, CODE_END, format_mem);  
      printf("\nMEMORY_DATA\n");
      dump_mem(DATA_BEGIN, DATA_END, format_mem);   
      break;
    case 1:                                         // print only registers
      printf("\nREGISTERS\n");            
      dump_reg(format_regs);
      break;                 
    case 2:                                         // print both memory and registers
      printf("\nMEMORY_TEXT\n");
      dump_mem(CODE_BEGIN, CODE_END, format_mem);   
      printf("\nMEMORY_DATA\n");
      dump_mem(DATA_BEGIN, DATA_END, format_mem);   
      printf("\nREGISTERS\n");
      dump_reg(format_regs);  
      break;                      
    default:
      printf("Error! Dump option not found.\n");
      break;
  }
}