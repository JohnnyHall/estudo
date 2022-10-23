.model small 
.code 
main proc

;----------Imprimindo um ?----------

    mov ah,02h
    mov dl,'?'
    int 21h

;----------Pegando a primeira leetra e verificando se é maiuscula----------

voltaBL: ;retorno do jump condicional para caso o caracter que vc digitol não seja uma letra miuscula 

    mov ah,01h ;coletando a primeria letra
    int 21h
    mov bl,al
    
    cmp bl,64 ;verifica se o caracter é menor que o intervalo 
    jle voltaBL;retorna se caso for menor
    cmp bl,91;verifica se o caracter é maior que o intervalo 
    jge voltaBL;retorna se caso ele foe maior 

;----------Pegando a segunda letra e verificando se é maiuscula----------

voltaCL: ;retorno do jump condicional se caso o caracter digitado pelo usuario não atenda os reuisitos dos filtros 

    mov ah,01h;pegando o segundo caracter 
    int 21h
    mov cl,al

    cmp cl,64;verificando se o caracter é menor que o intervalo
    jle voltaCL;volta se caso ele for menor 
    cmp cl,91;verifica se o carcter é maior que o intervalo 
    jge voltaCL;volta se caso ele for maior

;----------Comparando as duas letras para ver qual é maoir----------

    cmp bl,cl;compara bl com cl para ver qual é o letra maior para efetuar o jump
    jg BLmaoir;esse jump ocorrera qunado o caracter de bl for maoir que o digitado em cl 

;----------Parte para caso cl for maior----------

    mov dl,10h;printando um enter para pular linha 
    mov ah,02h
    int 21h

    mov dl,bl;printando bl
    mov ah,02h
    int 21h

    mov dl,cl;printando cl
    mov ah,02h
    int 21h

jmp final;jump incondicinal para finalizar o programa

;----------Parte para caso o bl for maior----------

BLmaoir:;caso bl for maior que cl o programa ira executar esse codigo 

    mov dl,10h
    mov ah,02h
    int 21h

    mov dl,cl;printando o cl
    mov ah,02h
    int 21h

    mov dl,bl;printando bl
    mov ah,02h
    int 21h

;----------Parte finalizadora do programa----------

final:; jump incondicional para finalizar o programa

mov ah,4ch;finalização do programa
int 21h
main endp
end main 