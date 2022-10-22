.model small
.code
main PROC

;---------------------------------alfabeto-----------------------------------
    ;---incrementando o valor de 65(letra A) em cl---
    mov cl, 65
    mov bl, 0

    alfabeto:
        ;---print do valor de cl---
        mov ah, 02
        mov dl, cl
        int 21h

        ;---adiciona um espaco---
        mov ah, 02
        mov dl, 32
        int 21h

        ;---incrementa---
        inc cl
        inc bl

        ;---print cl---
        mov ah, 02
        mov dl, cl

        cmp bl, 16
        jne depoisz

        pula:
            mov ah, 02
            mov dl, 10
            int 21h

        depoisz:
            ;---compara se o valor de cl e igual ao de 91(um valor depois da letra Z)---
            cmp cl, 91

            ;---jump caso o valor de cl seja diferente de 91(um valor depois da letra Z)---
            JNZ alfabeto
;----------------------------------------------------------------------------

    fim:
        mov ah, 4ch
        int 21h
        
main ENDP
end main