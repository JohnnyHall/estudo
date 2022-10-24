.model small
.code
main PROC
    ;---solicitando imput de teclado---
    mov ah, 01h
    int 21h

    ;---movendo o resultado do imput para cl---
    mov cl, al

    ;---pulando uma linha---
    mov ah, 02h
    mov dl, 10
    int 21h

    ;---imprimindo na tela o caracter digitado---
    mov ah, 02h
    mov dl, cl
    int 21h

    ;---finalizando o codigo---
    mov ah, 4ch
    int 21h
main ENDP
end main