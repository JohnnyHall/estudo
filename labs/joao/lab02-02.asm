.model small
.data
    msg db 10, 00, "$$$$$$$$$$$$$$"
.code
main PROC
    ;---inicializando o data---
    mov ax, @data
    mov ds, ax

    ;---lendo 10 caracteres do teclado e armazenando na memoria---
    mov ah, 0ah
    mov dx, offset msg
    int 21h

    ;---pula uma linha---
    mov ah,2
    mov dl,10
    int 21h

    ;---printando os caracteres armazenados---
    mov ah, 09h
    mov dx, offset msg
    add dx, 02 ;define o comeco de um texto
    int 21h

    ;---finalizando o codigo---
    mov ah, 4ch
    int 21h
main ENDP
end main