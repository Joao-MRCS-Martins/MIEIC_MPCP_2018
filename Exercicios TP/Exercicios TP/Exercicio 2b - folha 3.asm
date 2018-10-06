include mpcp.inc
.data
wordarray sword 10 dup(4)
dwordarray sdword 10 dup()
.code
main proc C
	mov ecx, 10
	mov esi, offset wordarray
	mov edi, eoffset dwordarray
ciclo:	mov ax, [esi]
	cwd
	mov [edi], eax
	add esi, 2
	add edi, 4
	dec ecx
	jnz ciclo
