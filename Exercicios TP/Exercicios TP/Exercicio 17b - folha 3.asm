include mpcp.inc
.data
valarray dword 1,100,9,90
res byte "A media e: %d", 13,10,0
fail byte "Ocorreu overflow",13,10,0
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
	   jc interr
	   add esi , type valarray
	   dec ecx
	   jnz ciclo
	   cdq
	   div edi
	   shl edx, 1
	   cmp edx, edi
	   jb fim
	   inc eax
fim:   invoke printf, offset res, eax
	   invoke _getch
	   invoke ExitProcess, 0
interr: invoke printf, offset fail
		invoke _getch
		invoke ExitProcess, 0
main endp
end
	