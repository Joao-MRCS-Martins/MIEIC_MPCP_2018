include mpcp.inc
.data
bytearray sbyte 1,2,3,4,3,6
ordenado sbyte "A sequencia esta ordenada",13,10,0
desordenado sbyte "A sequencia nao esta ordenada",13,10,0
.code
main proc C
mov esi, offset bytearray
mov cx, lengthof bytearray
ciclo: mov al, [esi]
	   mov ah, [esi +1]
	   cmp al, ah
	   jge fim2
	   add esi , type bytearray
	   sub cx, 1
	   cmp cx, 0
	   jle fim1
	   jmp ciclo
fim2: invoke printf , offset desordenado
	  invoke _getch
	  invoke ExitProcess, 0
fim1: invoke printf, offset ordenado
	  invoke _getch
	  invoke ExitProcess, 0
main endp
end
