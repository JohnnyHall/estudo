.model small
.code
main PROC
;--------------------------------(+6) - (+4)---------------------------------
    ;---efetuando a operacao matematica---
    mov cl, 6
    sub cl, 4

    ;---somando a 48 para exibir como um numero---
    add cl, 48

    ;---exibindo o resultado na tela---
    mov ah, 02h
    mov dl, cl
    int 21h
;----------------------------------------------------------------------------

    ;---pular linha---
    mov ah, 02h
    mov dl, 10
    int 21h

    
;--------------------------------(+7) + (+2)---------------------------------
    ;---efetuando a operacao matematica---
    mov cl, 7
    add cl, 2

    ;---somando a 48 para exibir como um numero---
    add cl, 48

    ;---exibindo o resultado na tela---
    mov ah, 02h
    mov dl, cl
    int 21h
;----------------------------------------------------------------------------

    ;---pular linha---
    mov ah, 02h
    mov dl, 10
    int 21h

;--------------------------------(-6) + (-6)---------------------------------
    ;---guardando o numero 6 em cl e o negativando---
    mov cl, 6

    ;---efetuando a operacao matematica---
    add cl, cl 
    
    ;---removendo uma casa decimal do numero---
    sub cl, 10

    ;---somando a 48 para exibir como um numero---
    add cl, '0'

    ;---exibindo o sinal de negativo--
    mov ah, 02h
    mov dl, '-'
    int 21h

    ;---exibindo o numero 1---
    mov ah, 02h
    mov dl, '1'
    int 21h

    ;---exibindo o resto do numero---
    mov ah, 02h
    mov dl, cl
    int 21h
;----------------------------------------------------------------------------

    ;---pular linha---
    mov ah, 02h
    mov dl, 10
    int 21h

;--------------------------------(-8) - (-3)---------------------------------
    ;---guardando o numero 8 em cl---
    mov cl, 8

    ;---guardando o numero 3 em dl---
    mov dl, 3
    
    ;---removendo uma casa decimal do numero---
    sub cl, dl

    ;---somando a 48 para exibir como um numero---
    add cl, '0'

    ;---exibindo o sinal de negativo--
    mov ah, 02h
    mov dl, '-'
    int 21h

    ;---exibindo o resto do numero---
    mov ah, 02h
    mov dl, cl
    int 21h
;----------------------------------------------------------------------------

    ;---finalizando o programa---
    mov ah, 4ch
    int 21h
main ENDP
end main
