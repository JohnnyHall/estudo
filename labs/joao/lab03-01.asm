.model small
.data
    msg db 10, "Digite o primeiro numero: ", '$'
    msg2 db 10, "Digite o segundo numero: ", '$'
    msg3 db 10, "O resultado da soma e igual a: ", '$'
.code
main PROC
    ;---inicializando o data---
    mov ax, @data
    mov ds, ax

;------------------------------primeiro numero-------------------------------
    ;---exibindo a primeira msg na tela---
    mov ah, 09h
    mov dx, offset msg
    int 21h
    
    ;---solicitando o imput do primeiro numero---
    mov ah, 01h
    int 21h

    ;---mudando o caracter de registrador e tranformando em numero---
    mov bl, al
    sub bl, 30h
;----------------------------------------------------------------------------

;------------------------------segundo numero--------------------------------
    ;---exibindo a msg2 na tela---
    mov ah, 09h
    mov dx, offset msg2
    int 21h
    
    ;---solicitando o imput do primeiro numero---
    mov ah, 01h
    int 21h

    ;---mudando o caracter de registrador e tranformando em numero---
    mov cl, al
    sub cl, 30h
;----------------------------------------------------------------------------

;------------------------------------soma------------------------------------
    ;---realizando a soma---
    add bl, cl

    ;---transformando em caracter para ser exibido novamente---
    add bl, 30h

    ;---exibindo a msg3 na tela---
    mov ah, 09h
    mov dx, offset msg3
    int 21h

    ;---exibindo o resultado---
    mov ah, 02h
    mov dl, bl
    int 21h
;----------------------------------------------------------------------------

    ;finalizando o programa
    mov ah, 4ch
    int 21h
main ENDP
end main