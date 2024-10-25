// 创建于2024.10.26
// RemeoOS Boot X86

.code32

#include <Arch/X86/Boot/MultiBoot.h>

.section .MultiBoot
    .long MAGIC
    .long ALI
    .long CHECKSUM(ALI)
    
.section .bss
    .align 16
    StackBottom:
    StackTop:
        .skip 16318, 0

.section .text
    .global boot
    boot:
        movl $StackTop, %esp
        
        pushl %esp
        
        call _KernelInit

        cli
    
    Stop:
        hlt
        jmp Stop