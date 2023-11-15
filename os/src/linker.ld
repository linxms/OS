OUTPUT_ARCH(riscv)
ENTRY(_start)
BASE_ADDRESS = 0x80200000;

SECTIONS
{
    . = BASE_ADDRESS;
    skernel = .;

    stext = .;
    .text : {
        *(.text.entry)
        *(.text .text.*)
    }
<<<<<<< Updated upstream

=======
    
>>>>>>> Stashed changes
    . = ALIGN(4K);
    etext = .;
    srodata = .;
    .rodata : {
        *(.rodata .rodata.*)
        *(.srodata .srodata.*)
    }
<<<<<<< Updated upstream

=======
    
>>>>>>> Stashed changes
    . = ALIGN(4K);
    erodata = .;
    sdata = .;
    .data : {
        *(.data .data.*)
        *(.sdata .sdata.*)
    }
<<<<<<< Updated upstream

=======
    
>>>>>>> Stashed changes
    . = ALIGN(4K);
    edata = .;
    .bss : {
        *(.bss.stack)
        sbss = .;
        *(.bss .bss.*)
        *(.sbss .sbss.*)
    }
<<<<<<< Updated upstream

    . = ALIGN(4K);
    ebss = .;
    ekernel = .;

    /DISCARD/ : {
        *(.eh_frame)
    }
}
=======
    
    . = ALIGN(4K);
    ebss = .;
    ekernel = .;
    
    /DISCARD/ : {
        *(.eh_frame)
    }
}
>>>>>>> Stashed changes
