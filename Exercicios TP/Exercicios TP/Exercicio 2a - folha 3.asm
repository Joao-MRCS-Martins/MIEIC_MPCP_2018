include mpcp.inc
.data
bytearray sbyte 10 dup(4)
wordarray sword 10 dup()
.code
main proc C
	mov ecx, 10
	mov esi, offset bytearray
	mov edi, eoffset wordarray
ciclo:	mov al, [esi]
	cbw
	mov [edi], ax
	add esi, 1
	add edi, 2
	dec ecx
	jnz ciclo

