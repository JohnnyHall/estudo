.model small
.data
    msg0 db 10, "--- Digite 2 numeros de 0 a 9 ---", '$'
    msg1 db 10, "Digite o primeiro numero: ", '$'
    msg2 db 10, "Digite o segundo numero: ", '$'
    msg3 db 10, "Maior numero: ", '$'
    msg4 db 10, "Menor numero: ", '$'
    msg5 db 10, "Paridade par", '$'
    msg6 db 10, "Paridade impar", '$'
.code
main PROC
    ;---inicializando o data---
    mov ax, @data
    mov ds, ax

    ;---exibindo a mensagem inicial do programa---
    mov ah, 09h
    mov dx, offset msg0
    int 21h

    ;---exibindo a msg1---
    mov ah, 09h
    mov dx, offset msg1
    int 21h

    ;---solicitando uma entrada com imput---
    mov ah, 01h
    int 21h

    ;---colocando o valor do imput em bl e o transformando em numero---
    mov bl, al
    sub bl, '0'

    ;---exibindo a msg2---
    mov ah, 09h
    mov dx, offset msg2
    int 21h

    ;---solicitando uma entrada com imput---
    mov ah, 01h
    int 21h

    ;---colocando o valor do imput em bh e o transformando em numero---
    mov bh, al
    sub bh, '0'

    ;---comparando o valor de bh e bl---
    cmp bh, bl
    jl menornumero

    maiornumero:
        ;---exibir msg3---
        mov ah, 09h
        mov dx, offset msg3
        int 21h

        ;---exibir o maior numero---
        mov ah, 02h
        mov dl, bh
        int 21h

        ;---salta se a paridade for par---
        jp paridadepar

        ;---salta se a paridade for impar---
        jnp paridadeimpar

    menornumero:

        xchg bh, bl
        ;---exibir msg4---
        mov ah, 09h
        mov dx, offset msg4
        int 21h

        ;---exibir o maior numero---
        mov ah, 02h
        mov dl, bl
        int 21h

        ;---salta se a paridade for par---
        jp paridadepar

        ;---salta se a paridade for impar---
        jnp paridadeimpar 
    
    paridadepar:
        mov ah, 09h
        mov dx, offset paridadepar
        int 21h

        ;---pula para o final do programa---
        jmp fim

    paridadeimpar:
        mov ah, 09h
        mov dx, offset paridadeimpar
        int 21h


    
    fim:
    ;---finalizando o programa---
    mov ah, 4ch
    int 21h
main ENDP
end main