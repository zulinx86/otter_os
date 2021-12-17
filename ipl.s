	org 0x7c00

	jmp $

	; magic number
	times 510 - ($ - $$) db 0x00
	db 0x55, 0xaa
