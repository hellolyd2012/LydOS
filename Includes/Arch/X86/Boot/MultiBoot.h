// 创建于2024.10.26
// LydOS MultiBoot

#define MAGIC 0x1BADB002
#define ALI 0x03
#define CHECKSUM(flags)     -(MAGIC + flags)