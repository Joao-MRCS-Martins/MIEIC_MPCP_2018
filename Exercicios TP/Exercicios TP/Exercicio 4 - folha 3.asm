include mpcp.inc
.data
wordarray1 sword 10  dup(-19)
wordarray2 sword 10 dup(-5)
resultarray sword 10
.code
main proc C
mov cx, 10
mov esi, offset wordarray1
mov eax,offset wordarray2
mov edx, offset resultarray
ciclo: mov bx, [esi]
	   mov di, [eax]
	   add bx,di
	   cbw
	   cwd
	   mov [edx], ebx
	   add esi, type wordarray1
	   add eax, type wordarray2
	   add edx, type resultarray
	   dec cx
	   jnz ciclo
fim:   invoke printf, offset resultarray
	   invoke _getch
	   invoke ExitProcess, 0
main endp
end