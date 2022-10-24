.model small
.code
main PROC
    ;---utilizando bl como contador e definindo o seu valor como 0---
    mov bl, 0

    jump1:
        ;---incrementando 1 em bl---
        inc bl

        ;---pula uma linha---
        mov ah, 02h
        mov dl, 10
        int 21h

        ;---utilizando o cl como contador e definindo o seu valor como 0---
        mov cx, 10 
        jump2:
            ;---exibindo um "*"---
            mov ah, 02h
            mov dl, "*"
            int 21h

            ;---incrementando 1 em cl---
            dec cx

            ;---execultando um loop---
            loop jump2
            
            ;---comparando bl e jump caso nescessario---
            cmp bl, 5
            jnz jump1

    ;---finalizando o codigo---
    mov ah, 4ch
    int 21h
main ENDP
end main