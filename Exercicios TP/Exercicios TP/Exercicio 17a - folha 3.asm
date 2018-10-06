include mpcp.inc
.data
valarray dword 1,2,3,4,5,
res byte "A media e: %d", 13,10,0
.code
main proc C
	   xor eax,eax
	   xor edx,edx
	   mov ecx, lengthof valarray
	   mov edi, ecx
	   cwd
	   mov esi, offset valarray
ciclo: mov ebx, [esi]
	   add eax, ebx
	   add esi , type valarray
	   dec ecx
	   jnz ciclo
	   div edi
	   invoke printf, offset res, eax
	   invoke _getch
	   invoke ExitProcess, 0
main endp
end
	