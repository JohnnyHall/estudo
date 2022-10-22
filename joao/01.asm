.model small
.data
    msg1 db 10, "Digite a primeira letra: ", '$'
    msg2 db 10, "Digite a segunda letra: ", '$'
    msg3 db 10, "Essas sao as letras em ordem alfabetica: ", '$'
.code
main PROC

    ;---iniciar o data---
    mov ax, @data
    mov ds, ax

    ;---printar um ?---
    mov ah, 02h
    mov dl, "?"
    int 21h

;-------------------------------primeira letra-------------------------------
    pl:
        ;---print msg1---
        mov ah, 09h
        mov dx, offset msg1
        int 21h

        ;---imput da primeira letra---
        mov ah, 01h
        int 21h

        ;---colocando a primeira letra em bl---
        mov bl, al

        ;---comparadores---
        cmp bl, 65
        jl pl
        cmp bl, 90
        jg pl
        
        
;----------------------------------------------------------------------------

;-------------------------------segunda letra--------------------------------
    sl:
        ;---print msg2---
        mov ah, 09h
        mov dx, offset msg2
        int 21h

        ;---imput da segunda letra---
        mov ah, 01h
        int 21h

        ;---colocando a primeira letra em cl---
        mov cl, al

        ;---comparadores---
        cmp cl, 65
        jl sl
        cmp cl, 90
        jg sl
;----------------------------------------------------------------------------

;---------------------------ordenador alfabetica-----------------------------
        cmp bl, cl
        jg maior

        ;---se bl for menor que al---
        menor:
            ;---printando a msg3---
            mov ah, 09
            mov dx, offset msg3
            int 21h

            ;---printando na ordem correta---
            mov ah, 02
            mov dl, bl
            int 21h

            ;---printando uma virgula---
            mov ah, 02
            mov dl, ","
            int 21h

            mov ah, 02
            mov dl, cl
            int 21h

            jmp fim

        ;---se bl for maior que al---
        maior:
            ;---printando a msg3---
            mov ah, 09
            mov dx, offset msg3
            int 21h

            ;---printando na ordem correta---
            mov ah, 02
            mov dl, cl
            int 21h

            ;---printando uma virgula---
            mov ah, 02
            mov dl, ","
            int 21h

            mov ah, 02
            mov dl, bl
            int 21h
;----------------------------------------------------------------------------

;----------------------------------------------------------------------------
    fim:
        mov ah, 4ch
        int 21h

main ENDP
end main