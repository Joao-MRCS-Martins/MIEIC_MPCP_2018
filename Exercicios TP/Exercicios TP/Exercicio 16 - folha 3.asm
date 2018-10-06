; alinea a
cmp ah, cl
jl fazer
cmp al, ah
jle nfazer
cmp bl,bh
jle nfazer
fazer: inc ecx
nfazer: ....

;alinea b
cmp ah,cl
jge nfazer1
cmp al,ah
jg fazer1
cmp bl,bh
jle nfazer1
fazer1: dec ecx
nfazer1: ....