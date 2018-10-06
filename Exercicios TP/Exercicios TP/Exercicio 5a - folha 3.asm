include mpcp.inc
.data 
dwordarray sdword 10
wordarray sword 10
.code
main proc C
		mov cx, 10
		mov esi, offset dwordarray
		mov edi, offset wordarray
ciclo:  mov eax, [esi]
		mov ebx, eax
		shr eax, 16
		.IF ax > 7FFFh
			.IF ax < FFFFh
			mov [edi], 8000h
			.ELSE 
			mov [edi],bx
			.ENDIF
		.ELSE
			IF ax > 0000h
			mov [edi],7FFFh
			.ELSE
			mov [edi],bx
			.ENDIF
		.ENDIF
		add esi, type dwordarray
		add edi, type wordarray
		dec cx
		jnz ciclo
main endp
end

