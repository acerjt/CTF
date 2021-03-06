.intel_syntax noprefix
.bits 32
	
.global asm1
;asm1(0x15e) 
asm1:
	push	ebp         ; function prologue
	mov	ebp,esp         ; function prologue
	cmp	DWORD PTR [ebp+0x8],0xdc ; 0x15e > 0xdc = true
	jg 	part_a	
	cmp	DWORD PTR [ebp+0x8],0x8
	jne	part_b
	mov	eax,DWORD PTR [ebp+0x8]
	add	eax,0x3
	jmp	part_d
part_a:
	cmp	DWORD PTR [ebp+0x8],0x68 ; 0x15e != 0x68
	jne	part_c
	mov	eax,DWORD PTR [ebp+0x8]
	sub	eax,0x3
	jmp	part_d
part_b:
	mov	eax,DWORD PTR [ebp+0x8]
	sub	eax,0x3
	jmp	part_d
	cmp	DWORD PTR [ebp+0x8],0xfc
	jne	part_c
	mov	eax,DWORD PTR [ebp+0x8]
	sub	eax,0x3
	jmp	part_d
part_c:
	mov	eax,DWORD PTR [ebp+0x8] ; eax = 0x15e
	add	eax,0x3 ; eax = 0x15 + 0x3 = 0x161
part_d:
	pop	ebp
	ret
