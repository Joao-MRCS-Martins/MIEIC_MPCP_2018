include mpcp.inc
.data
cadeia byte "Exemplo de cadeia de caracteres."
toprint byte "%c"
.code
main proc C
		mov ecx, lengthof cadeia
		mov eax, offset cadeia
		mov ebx, offset toprint
ciclo:	mov bx, [eax]
		push bx
		inc eax
		dec ecx
		jnz ciclo
		mov ecx, lengthof cadeia
ciclo2:	pop dx
		push ecx
		invoke printf,offset toprint, dx
		pop ecx
		dec ecx
		jnz ciclo2
		invoke _getch
		invoke ExitProcess, 0
main endp
end


