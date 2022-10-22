.model small
.code
main proc

;==========PARTE QUE IMPRIMI O ALFABETO==========

    ;----------Pate que iniciam as variaveis que seram usadas como contador---------

        mov ch,'a';iniciando ch com o codiogo ascii do a para começar a seguencia de impreção
        mov cl,00 ;iniciando cl com 00 para ser meu contador  

    ;--------------------------------------------------------------------------------

    ;----------Jump condicionlal para pular linha---------

        pulalinha:; imprimindo um enter para pular linha  

        mov dl,10;imprimindo um enter para pular linha 
        mov ah,02h
        int 21h

        mov cl,00 ;iniciando cl com 00 para ser meu contador para essa proxima linha   

    ;-----------------------------------------------------

    ;----------Pate que imprimi as letras----------

        repete:
        
        mov dl,ch
        mov ah,02h;imprindo as letras 
        int 21h

        add ch,1;adicionando 1 a ch para ele imprimi o proximo caraceter

    ;-----------------------------------------------

    ;----------Parte que verifica se ch ja chegou em Z----------

        cmp ch,123;compara o ch com o 123  para saber se o programa ja imprimu todos os caracters do alfabeto 
        je numeros; se caso o ch ja chegou no z que é o ultimo caracter do alfabeto ele efetua esse jump para a parte de imprimir os numeros 

    ;------------------------------------------------------------

    ;----------Parte que imprimi o espaço----------

        mov ah,02h ; imprimindo o espaço 
        mov dl,32
        int 21h

    ;---------------------------------------------

    ;----------Parte que soma e verifica o contador para saber se recisa saltar para algum lugar----------

        inc cl; adicionando 1 em cl para contnuar a contagem 

        cmp cl,16;comparando cl com 16 para ver se precisa saltar linha ou não 

        je pulalinha;jump para quando o programa tiver imprimido ja 16 caracteres na linha, para coeçar outra linha

        jb repete;jump para o programa imprimir uma linha com 16 caracteres

    ;--------------------------------------------------------------------------------------------------------

;================================================

;==========PARTE QUE IMPRIMI OS NUMEROS==========

    ;----------inicializando a parte dos numeros----------
        numeros:

        inc cl;adicionando um de ch só para imprimir a 16 caracteres na linha 

        mov ch,'0';iniciando ch com o codiogo ascii do 0 para começar a seguencia de impreção

        ;----------Parte que imprimi o espaço----------

            mov ah,02h ; imprimindo o espaço 
            mov dl,32
            int 21h

        ;---------------------------------------------

        jmp comeco ; jump incondicional para pular a parte de zerar o contador cl para não pular a linha 
    ;-----------------------------------------------------



    ;----------Jump condicionlal para pular linha---------

        pulalinha2:; imprimindo um enter para pular linha  

        mov dl,10;imprimindo um enter para pular linha 
        mov ah,02h
        int 21h

        mov cl,00 ;iniciando cl com 00 para ser meu contador para essa proxima linha   

    ;-----------------------------------------------------

    ;----------Pate que imprimi os numeros----------

        comeco:; jump incondicional para não perder o contador de linha 

        repete2:;jump do repere para impiri os os numeros 
        
        mov dl,ch
        mov ah,02h;imprindo as letras 
        int 21h

        add ch,1;adicionando 1 a ch para ele imprimi o proximo caraceter

    ;-----------------------------------------------

    ;----------Parte que verifica se ch ja chegou em 9----------

        cmp ch,58;compara o ch com o 58  para saber se o programa ja imprimu todos os caracters de 0 a 9 
        je final; se caso o ch ja chegou no 9 que é o ultimo caracter  ele efetua esse jump para o final

    ;------------------------------------------------------------

    ;----------Parte que imprimi o espaço----------

        mov ah,02h ; imprimindo o espaço 
        mov dl,32
        int 21h

    ;---------------------------------------------

    ;----------Parte que soma e verifica o contador para saber se recisa saltar para algum lugar----------

        inc cl; adicionando 1 em cl para continuar a contagem 

        cmp cl,16;comparando cl com 16 para ver se precisa saltar linha ou não 

        je pulalinha2;jump para quando o programa tiver imprimido ja 16 caracteres na linha, para coeçar outra linha

        jb repete2;jump para o programa imprimir uma linha com 16 caracteres

    ;--------------------------------------------------------------------------------------------------------

;----------Parte que finaliza o programa---------
final:; jump condicional para finalizar o programa quando ele ja tiver imprimido todos os numeros 
 mov ah,4ch
 int 21h
main ENDP
end main 