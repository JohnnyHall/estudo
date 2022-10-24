.model small
.data
    msg db "Hello World!", '$'
.code
main PROC
    ;---inicializando o data---
    mov ax, @data
    mov ds, ax

    ;---exibindo a mensagem---
    mov ah, 09h
    mov dx, offset msg
    int 21h

    ;---finalizando o codigo---
    mov ah, 4ch
    int 21h
main ENDP
end main