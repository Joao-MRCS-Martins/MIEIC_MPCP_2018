include mpcp.inc
.data
wordarray sword 1,2,3,4,5,6,7,8,9,10
sum sbyte "Soma = %d",13,10,0
.code
main proc C
	xor al,al
	mov cx, 10
	mov esi, offset wordarray
ciclo: add al, [esi]
	   add esi, type wordarray
	   dec cx
	   jnz ciclo
fim:  invoke printf, offset sum, al
	  invoke _getch
	  invoke ExitProcess, 0
main endp
end
