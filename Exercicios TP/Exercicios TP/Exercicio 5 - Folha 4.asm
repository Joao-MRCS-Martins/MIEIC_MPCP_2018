include mpcp.inc
.data
cadeia byte "%b",13,10 ,0 
val dword 4
.code
main proc C
mov ebx, offset val
mov eax, [ebx]
invoke printf,offset cadeia, eax
invoke _getch
invoke ExitProcess, 0
main endp
end