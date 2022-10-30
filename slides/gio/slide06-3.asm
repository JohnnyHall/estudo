    .model small
    .data 
    msg1 db "digite um numero em hexadecimal",10,'$'
    msg2 db "deseja continuar S[sim] ou N[não]",10,'$'
    msg3 db "vc nao digitou uma letra compativel pf digite outra",10,'$'

    .code 

    main proc 

        mov ax,@data ;iniciando data 
        mov ds,ax

    ;----parte que vai pedir e coletaaar o numero em hexa-----

        mov ah,09;imprimindo a mensagen 1 
        mov dx,offset msg1
        int 21h

        mov cx,4;iniciando cx com 4 para ele ser o contador do loop

        repete:


            jmp naofaca;jump incondicional parao programa iguinar essa parte 

                    denovo:;caso o usuario digite algum caratere invalido o progrma vai efetuar esse jump para pedir outro caracter

                        mov ah,09;imprimindo mensagen de letra invaliuda

                        lea dx,msg3

                naofaca:

                        mov ah,01;inciando al com a função de pegar caracteres 
                        int 21h ; pegando  o caracter que o usuari digitol 

                        cmp al,30h;comparando al com o enter para saber se é para sair do loop ou não 
                        je saida ;jump condicionla para sair do loop de pegar caracterios 

                        cmp al,'@';compara al com @ para saber se al é uma letra ou não
                    jbe denovo; caso o al esteja fora do intervalo de letra maiusculas o progrma retorna 

                        cmp al,'['; compara al com [ para saber se al está dentro do intervalo das letras maiusculas 
                    jae denovo;caso estaja fora o progrma efetua esse jump
                

            sub al,37h ;isso é para transformar a letra que esta em al em binarios 

        loop repete
    ;-----------------------------------------------------------------------


        saida:; jump para sair do loop 

        mov ah,4ch
        int 21h

    main endp
    end main 