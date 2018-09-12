int32_t lw(uint32_t address, int16_t kte);
int32_t lh(uint32_t address, int16_t kte);
uint32_t lhu(uint32_t address, int16_t kte);
int32_t lb(uint32_t address, int16_t kte);
uint32_t lbu(uint32_t address, int16_t kte);
void sw(uint32_t address, int16_t kte, int32_t dado);
void sh(uint32_t address, int16_t kte, int16_t dado);
void sb(uint32_t address, int16_t kte, int8_t dado);

#define MEM_SIZE 4096
extern int32_t mem[MEM_SIZE];  // 8k words ou  32k bytes