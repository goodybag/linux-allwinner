OUTPUT_ARCH(arm)
ENTRY(main)

SECTIONS
{
	__standby_start = . ;
	.text 0xf0000000 :
	{
		arch/arm/mach-sun5i/pm/standby/standby.o(.text)
		*(.text)
	}
	.rodata : { *(.rodata) }
	.data   : { *(.data) }

	__bss_start = . ;
	.bss : { *(.sbss) *(.scommon) *(.bss) *(COMMON) }
	__bss_end = .;
	__standby_end = . ;
}
