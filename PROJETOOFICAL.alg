Algoritmo "PROJETOOfical"
// Disciplina   : [ L�gica de Programa��o Orientada a Objetos]
// Professor   : Aldo Henrique
// Descri��o   :
//Escreva um aplicativo em Portugol que o usu�rio ter� o seguinte menu:
//1. Divis�o
//2. Faixa et�ria
//3. N�meros primos
//4. Retornar o maior, menor e m�dia
//5. C�digo Morse
//6. Mudan�a de Base
//7. Sair



// Autor(a)    : Aline Lima de Oliveira
// Data atual  : 23/03/2019
Var
   // Se��o de Declara��es das vari�veis
   //DIVISAO
   a,b,rl : real
   //FAIXA  ET�RIA
   nump, c, d, F, M, sexof, sexom, id : inteiro
   op : caracter
   mediap, mediasM, mediasF : real
   //N�MEROS PRIMOS
   k, g, p,h, soma  : inteiro
   //RETORNAR MAIOR, MENOR, MEDIA
   cont, n, s,o,r,y, maior, menor:inteiro
   media : real
   //C�DIGO MORSE
   v:inteiro
   //MUDAN�A DE BASE
   q , x,i, t,l,z,  resultadoEmDecimal , vq:inteiro
   u: vetor [0..3]de inteiro
   opcao, resultadoEmBinario:caracter
   //MENU
   opa: inteiro

procedimento menu
inicio
   Escreval ("Digite o que deseja executar:")
   Escreval("1. Divis�o")
   Escreval("2. Faixa Et�ria ")
   Escreval("3. N�meros Primos ")
   Escreval("4. Retornar o Maior, Menor e M�dia ")
   Escreval("5. C�digo Morse  ")
   Escreval("6. Mudan�a de Base  ")
   Escreval("7. Sair")
   leia (opa)
   limpatela

fimprocedimento

procedimento Divisao
inicio
   Escreval ("== DIVIS�O ==")
   //DIVISAO
   Escreval ("Digite o primeiro n�mero desejados:")
   // Dividendo
   leia (a)
   Escreval ("Digite o segundo n�mero desejado:")
   //Divisor
   leia (b)
   rl <- a/b
   // Aqui declaramos que se o segundo n�mero (b) digitado pelo usu�rio for 0
   // aparecer� a seguinte mensagem: N�O � POSS�VEL A DIVIDIR POR 0.
   //Caso contr�rio, qualquer outro n�mero digitado o algoritmo far� a divis�o

   Se (b = 0 )entao

      Escreval ("N�o � poss�vel dividir por 0")
   Senao
      Se (a<0) ou (b<0) entao
         Escreval ("Esta divis�o dar� um resultado negativo.")
         Escreval("Deseja continuar? 1. SIM  2. N�O")
         leia (opcao)
         Se (opcao= "1") entao
            Escreval( "O resultado �:", rl)
            Escreval ("===========================================================")
         Fimse
         Se (opcao = "2") entao
            Escreval ("Tente navamente com n�meros positivos")
            Escreval ("_____________________________________")
            Escreval ("Digite o primeiro n�mero desejados:")
            leia (a)
            Escreval ("Digite o segundo n�mero desejado:")
            leia (b)
            rl <- a/b
            Escreval( "O resultado �:", rl)
            Escreval ("===========================================================")
         fimse
      Senao
         Escreval( "O resultado �:", rl)
         Escreval ("===========================================================")
      Fimse
   Fimse


fimprocedimento

procedimento FaixaEtaria
inicio

   Escreval ("== FAIXA ET�RIA ==")
   //FAIXA EST�RIA
   d<-0
   F<-0
   M<-0
   sexof <- 0
   sexom <- 0

   Escreval ("DIGITE A QUANTIDADE TOTAL DE PESSOAS: ")
   leia (nump)

   para c de 1  ate nump passo 1 faca

      Escreval("Informe a idade:")
      leia (id)
      Se (id < 0) entao
         Escreval ("N�O FOI POSS�VEL C�LCULAR!")
         Interrompa
      Fimse
      d <- d + id
      mediap <- d / nump
      Escreval ("F para FEMININO ou M para MASCULINO")
      leia (op)
      Se (op= "F") ou (op= "f") entao
         F<- F +id
      Fimse
      Se (op="M") ou (op="m") entao
         M <- M + id
      Fimse
      sexof <- sexof + 1
      mediasF <- F / sexof
      sexom <- sexom + 1
      mediasM <- M / sexom


   fimpara

   Escreval ("A m�dia da idade das pessoas �:", mediap)
   Escreval ("A m�dia da idade do sexo Masculino �:", mediasM)
   Escreval ("A m�dia da idade do sexo Feminino �:", mediasF)
   Escreval ("===========================================================")
fimprocedimento

procedimento NumerosPrimos
inicio
   Escreval ("== RETORNAR N�MEROS PRIMOS ==")
   //RETORAR N�MEROS PRIMOS
   Escreval ("Digite um valor:")
   leia (k)
   //Este primeiro "para" � utilizado para sequenciar todos os n�meros anteriores
   //ao que o usu�rio digitou. EXEMPLO: 1,2,3...,5(k) 5 seria o n�mero
   para g de 1 ate k faca         //digitado pelo usu�rio
      h <- 0
      //Este segundo "para" � utilizado para analisar os n�meros que est�o dentro da
      //sequ�ncia estabelecida anteriormente.
      para p de 1 ate g faca
         Se (g % p=0) entao  //Este "SE" ir� dividir cada n�mero dentro
            h<-h+1         //da sequ�ncia  e guardar em "h" aqueles que foram
         Fimse     //divisiveis por 1 por ele mesmo tendo 0(zero) como resto.
      Fimpara
      Se (h=2) entao
         Escreval ("Os n�meros primos de",k, " s�o:", g)
         soma <- soma+g
      Fimse
   Fimpara
   Escreval ("A SOMA DOS N�MEROS PRIMOS DE", K, " �: ", soma)
   Escreval ("===========================================================")
fimprocedimento
procedimento RetornoMMM
inicio
   Escreval ("== RETORNAR MAIOR, MENOR E M�DIA ==")
   //MAIOR, MENOR E M�DIA
   r<-0
   Escreval ("Digite quantos elementos deseja calcular:")
   leia (n)
   //Este primeiro "para" � utilizado para sequenciar todos os n�meros anteriores
   //ao que o usu�rio digitou.
   //Em "s" est� sendo est� sendo guardado a sequ�ncia
   para s de 1 ate n  faca
      Escreval ("Informe o" , s,   "� n�mero: ")
      leia (o)
      r <- r + o
      media <- r/n
      Se (s=1) entao
         menor <- o   //Est� guardando os valores dado pelo usu�rio em ambas
         maior <- o   // as vari�veis "menor" e "maior"
      Fimse
      Se (o < menor)   entao   //Compararamos os n�meros dado pelo usu�rio
         // e utilizamos o "se ... entao" como estrutura de decis�o

         menor <- o  // Se o valor da vari�vel "O" for menor que o valor
         //atribu�do a vari�vel "MENOR", ent�o o valor permanecer�
      Fimse           // atribu�do a vari�vel "MENOR"

      Se (o > maior) entao  // Sen�o ele ser� atrubu�do a vari�vel "MAIOR"

         //A medida que loop for acontecendo os valores
         maior <- o         //ser�o trocados ou n�o.

      Fimse
   Fimpara
   Escreval ("A m�dia �:", media)
   Escreval ("O maior valor �: ", maior)
   Escreval ("O menor valor �: ", menor)
   Escreval ("===========================================================")
fimprocedimento

procedimento CodigoMorse
inicio
   //C�DIGO MORSE
   Escreval ("== C�DIGO MORSE ==")
   Escreval ("Para mostrar o c�digo morse, informe um n�mero entre 0 e 20 ")
   leia (v)
   Escreval ("===========================================================")
   //A estrutura de repeti��o "enquanto" colocamos "v<=0"
   // para que seja feita a leitura, apenas, de n�meros  e
   // n�meros de  1 a 20
   Enquanto (v<=0)  faca
      Escreval ("ERRO.Tente novamente!")

      Escreval ("Para mostrar o c�digo morse, informe um N�MERO entre 0 e 20")
      leia (v)
   Fimenquanto
   Escolha (v)
   caso 0
      Escreval ("-----")
      Escreval ("===========================================================")
   caso 1
      Escreval (".----")
      Escreval ("===========================================================")
   caso 2
      Escreval ("..---")
      Escreval ("===========================================================")
   caso 3
      Escreval ("...--")
      Escreval ("===========================================================")
   caso 4
      Escreval ("....-")
      Escreval ("===========================================================")
   caso 5
      Escreval (".....")
      Escreval ("===========================================================")
   caso 6
      Escreval ("-....")
      Escreval ("===========================================================")
   caso 7
      Escreval ("--...")
      Escreval ("===========================================================")
   caso 8
      Escreval ("---..")
      Escreval ("===========================================================")
   caso 9
      Escreval ("----.")
      Escreval ("===========================================================")
   caso 10
      Escreval (".---- -----")
      Escreval ("===========================================================")
   caso 11
      Escreval (".---- .----")
      Escreval ("===========================================================")
   caso 12
      Escreval (".---- ..---")
      Escreval ("===========================================================")
   caso 13
      Escreval (".---- ...--")
      Escreval ("===========================================================")
   caso 14
      Escreval (".---- ....-")
      Escreval ("===========================================================")
   caso 15
      Escreval (".---- .....")
      Escreval ("===========================================================")
   caso 16
      Escreval (".---- -....")
      Escreval ("===========================================================")
   caso 17
      Escreval (".---- --...")
      Escreval ("===========================================================")
   caso 18
      Escreval (".---- ---..")
      Escreval ("===========================================================")
   caso 19
      Escreval (".---- ----.")
      Escreval ("===========================================================")
   caso 20
      Escreval ("..--- -----")
      Escreval ("===========================================================")
   outrocaso
      Escreval ("N�MERO N�O ENCONTRADO!")
      Escreval ("===========================================================")
      //Se o usu�rio digitar um n�mero maior
   fimescolha                // que 20 a seguinte mensagem ser� apresentada
fimprocedimento              //"N�MERO N�O ENCONTRADO"
procedimento MudancaDeBase
inicio
   Escreval ("== MUDAN�A DE BASE ==")

   resultadoEmBinario <-""

   Escreval ("Informe a quantidade de casos que ser�o resolvidos:")
   leia (q)
   para z de 1 ate q faca

      Escreval ("Digite B se o n�mero ser� em Bin�rio ou D se ser� em Decimal")
      leia (opcao)
      Se (opcao= "B") ou (opcao = "b") entao
      Escreval("Se o seu n�mero tem menos de 4 d�gitos complete com 0(zero)")
      Escreval ("no in�cio antes de colocar os n�meros desejados.")
      Escreval  ("EXEMPLO: 11 ser� 0011")
      Escreval ("===========================================================")
         para l de 3 ate 0 passo -1 faca  //Utilizamos o vetor no sentido
            //decrescente, porque quando calculamos um n�mero
            //bin�rio, este c�lculo � feito da direita para esquerda e de "0 at� N"
            //no caso(N at� 0)
            Escreval ("Digite os n�meros b�narios um por linha" )
            leia (u[l])
            Enquanto (u[l]>1) ou (u[l]<0) fa�a
               Escreval ("Este n�mero n�o � BIN�RIO.")
               Escreval("Troque o �ltimo n�mero digitado por 1(um) ou 0(zero)")
               leia (u[l])
            Fimenquanto
            Se u[l] = 1 entao
               vq <- 1 // "vq" recebe valor "1" poque se ele receber "0"
               para n de 1 ate l faca
                  vq <- vq * 2 //Quando chegar aqui o resultado sempre ser� "0"
               Fimpara                // "Bin�rio*2^Posi��o do bin�rio"
               resultadoEmDecimal<- resultadoEmDecimal + u[l]*vq
            Fimse
         Fimpara
         Escreval("O n�mero foi digitado em b�nario. Seu resultado em decimal �:")
         Escreval(resultadoEmDecimal)
         Escreval("===========================================================")
      Fimse
      Se (opcao = "D") ou (opcao = "d") entao
         Escreval ("Digite o n�mero: ")
         leia (x)
         Enquanto (x > 0) faca
            Se (x % 2 )= 0 entao   //"mod ou %" nos dar� o resto de uma divis�o
               resultadoEmBinario <- "0" + resultadoEmBinario
            Senao
               resultadoEmBinario <- "1" + resultadoEmBinario
            Fimse
            x <- x div 2 //"div" mostrar� o quociente (resultado) da divis�o
         Fimenquanto
         Escreval("O n�mero foi digitado em decimal. Seu resultado em bin�rio �:")
         Escreval (resultadoEmBinario)
         Escreval("===========================================================")
      Fimse
   Fimpara
fimprocedimento
procedimento Final
inicio
   Escreval("=====OBRIGADA!=====")
   Escreval("== G O O D B Y E ==")
fimprocedimento


Inicio

   repita
      menu
      escolha (opa)

      caso 1
         Divisao
      caso 2
         FaixaEtaria

      caso 3
         NumerosPrimos

      caso 4
         RetornoMMM

      caso 5
         CodigoMorse

      caso 6
         MudancaDeBase
      caso 7
         Final
      fimescolha
   ate (opa = 7)
Fimalgoritmo