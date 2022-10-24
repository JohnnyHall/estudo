.model small
.data
    msg db 10, "Press enter to continue...", '$'
.code
main PROC
    ;---inicializando o data---
    mov ax, @data
    mov ds, ax

;----------------------------------alfabeto----------------------------------
    ;---definindo o valor de cl como 65---
    mov cl, 65
    
    limite:
        ;---zerando bl para utilizar ele como contador---
        mov bl, 0

        ;---exibindo a msg---
        mov ah, 09h
        mov dx, offset msg
        int 21h

        ;---chamando a funcao que para continuar exibundo tem que apertar enter---
        mov ah, 07h
        int 21h
        alfabeto:
            ;---pula linha---
            mov ah, 02h
            mov dl, 10
            int 21h

            ;---exibindo o valor de cl---
            mov ah, 02h
            mov dl, cl
            int 21h

            ;---incrementa 1 em cl e bl---
            inc cl
            inc bl

            ;---compara se o valor de bl e igual a 16, se for igual ele efetua o jump---
            cmp bl, 16
            je limite
            
            ;---compara se o valor de cl e igual a 91, se for diferente ele efetua o jump---
            cmp cl, 91
            jnz alfabeto
;----------------------------------------------------------------------------

;----------------------------------numeros-----------------------------------
    ;---definindo o valor de cl como 65---
    mov cl, 48 
    
    ;---compara se o valor de bl e igual a 16, se for igual ele efetua o jump---
    cmp bl, 16
    jnz numeros
    
    limite2:
        ;---zerando bl para utilizar ele como contador---
        mov bl, 0

        ;---exibindo a msg---
        mov ah, 09h
        mov dx, offset msg
        int 21h

        ;---chamando a funcao que para continuar exibundo tem que apertar enter---
        mov ah, 07h
        int 21h
        numeros:
            ;---pula linha---
            mov ah, 02h
            mov dl, 10
            int 21h

            ;---exibindo o valor de cl---
            mov ah, 02h
            mov dl, cl
            int 21h

            ;---incrementa 1 em cl e bl---
            inc cl
            inc bl

            ;---compara se o valor de bl e igual a 16, se for igual ele efetua o jump---
            cmp bl, 16
            je limite2
            
            ;---compara se o valor de cl e igual a 58, se for diferente ele efetua o jump---
            cmp cl, 58
            jnz numeros
;----------------------------------------------------------------------------
    
    ;finalizando o programa
    mov ah, 4ch
    int 21h
main ENDP
end main