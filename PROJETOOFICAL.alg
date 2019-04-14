Algoritmo "PROJETOOfical"
// Disciplina   : [ Lógica de Programação Orientada a Objetos]
// Professor   : Aldo Henrique
// Descrição   :
//Escreva um aplicativo em Portugol que o usuário terá o seguinte menu:
//1. Divisão
//2. Faixa etária
//3. Números primos
//4. Retornar o maior, menor e média
//5. Código Morse
//6. Mudança de Base
//7. Sair



// Autor(a)    : Aline Lima de Oliveira
// Data atual  : 23/03/2019
Var
   // Seção de Declarações das variáveis
   //DIVISAO
   a,b,rl : real
   //FAIXA  ETÁRIA
   nump, c, d, F, M, sexof, sexom, id : inteiro
   op : caracter
   mediap, mediasM, mediasF : real
   //NÚMEROS PRIMOS
   k, g, p,h, soma  : inteiro
   //RETORNAR MAIOR, MENOR, MEDIA
   cont, n, s,o,r,y, maior, menor:inteiro
   media : real
   //CÓDIGO MORSE
   v:inteiro
   //MUDANÇA DE BASE
   q , x,i, t,l,z,  resultadoEmDecimal , vq:inteiro
   u: vetor [0..3]de inteiro
   opcao, resultadoEmBinario:caracter
   //MENU
   opa: inteiro

procedimento menu
inicio
   Escreval ("Digite o que deseja executar:")
   Escreval("1. Divisão")
   Escreval("2. Faixa Etária ")
   Escreval("3. Números Primos ")
   Escreval("4. Retornar o Maior, Menor e Média ")
   Escreval("5. Código Morse  ")
   Escreval("6. Mudança de Base  ")
   Escreval("7. Sair")
   leia (opa)
   limpatela

fimprocedimento

procedimento Divisao
inicio
   Escreval ("== DIVISÃO ==")
   //DIVISAO
   Escreval ("Digite o primeiro número desejados:")
   // Dividendo
   leia (a)
   Escreval ("Digite o segundo número desejado:")
   //Divisor
   leia (b)
   rl <- a/b
   // Aqui declaramos que se o segundo número (b) digitado pelo usuário for 0
   // aparecerá a seguinte mensagem: NÃO É POSSÍVEL A DIVIDIR POR 0.
   //Caso contrário, qualquer outro número digitado o algoritmo fará a divisão

   Se (b = 0 )entao

      Escreval ("Não é possível dividir por 0")
   Senao
      Se (a<0) ou (b<0) entao
         Escreval ("Esta divisão dará um resultado negativo.")
         Escreval("Deseja continuar? 1. SIM  2. NÃO")
         leia (opcao)
         Se (opcao= "1") entao
            Escreval( "O resultado é:", rl)
            Escreval ("===========================================================")
         Fimse
         Se (opcao = "2") entao
            Escreval ("Tente navamente com números positivos")
            Escreval ("_____________________________________")
            Escreval ("Digite o primeiro número desejados:")
            leia (a)
            Escreval ("Digite o segundo número desejado:")
            leia (b)
            rl <- a/b
            Escreval( "O resultado é:", rl)
            Escreval ("===========================================================")
         fimse
      Senao
         Escreval( "O resultado é:", rl)
         Escreval ("===========================================================")
      Fimse
   Fimse


fimprocedimento

procedimento FaixaEtaria
inicio

   Escreval ("== FAIXA ETÁRIA ==")
   //FAIXA ESTÁRIA
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
         Escreval ("NÃO FOI POSSÍVEL CÁLCULAR!")
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

   Escreval ("A média da idade das pessoas é:", mediap)
   Escreval ("A média da idade do sexo Masculino é:", mediasM)
   Escreval ("A média da idade do sexo Feminino é:", mediasF)
   Escreval ("===========================================================")
fimprocedimento

procedimento NumerosPrimos
inicio
   Escreval ("== RETORNAR NÚMEROS PRIMOS ==")
   //RETORAR NÚMEROS PRIMOS
   Escreval ("Digite um valor:")
   leia (k)
   //Este primeiro "para" é utilizado para sequenciar todos os números anteriores
   //ao que o usuário digitou. EXEMPLO: 1,2,3...,5(k) 5 seria o número
   para g de 1 ate k faca         //digitado pelo usuário
      h <- 0
      //Este segundo "para" é utilizado para analisar os números que estão dentro da
      //sequência estabelecida anteriormente.
      para p de 1 ate g faca
         Se (g % p=0) entao  //Este "SE" irá dividir cada número dentro
            h<-h+1         //da sequência  e guardar em "h" aqueles que foram
         Fimse     //divisiveis por 1 por ele mesmo tendo 0(zero) como resto.
      Fimpara
      Se (h=2) entao
         Escreval ("Os números primos de",k, " são:", g)
         soma <- soma+g
      Fimse
   Fimpara
   Escreval ("A SOMA DOS NÚMEROS PRIMOS DE", K, " É: ", soma)
   Escreval ("===========================================================")
fimprocedimento
procedimento RetornoMMM
inicio
   Escreval ("== RETORNAR MAIOR, MENOR E MÉDIA ==")
   //MAIOR, MENOR E MÉDIA
   r<-0
   Escreval ("Digite quantos elementos deseja calcular:")
   leia (n)
   //Este primeiro "para" é utilizado para sequenciar todos os números anteriores
   //ao que o usuário digitou.
   //Em "s" está sendo está sendo guardado a sequência
   para s de 1 ate n  faca
      Escreval ("Informe o" , s,   "º número: ")
      leia (o)
      r <- r + o
      media <- r/n
      Se (s=1) entao
         menor <- o   //Está guardando os valores dado pelo usuário em ambas
         maior <- o   // as variáveis "menor" e "maior"
      Fimse
      Se (o < menor)   entao   //Compararamos os números dado pelo usuário
         // e utilizamos o "se ... entao" como estrutura de decisão

         menor <- o  // Se o valor da variável "O" for menor que o valor
         //atribuído a variável "MENOR", então o valor permanecerá
      Fimse           // atribuído a variável "MENOR"

      Se (o > maior) entao  // Senão ele será atrubuído a variável "MAIOR"

         //A medida que loop for acontecendo os valores
         maior <- o         //serão trocados ou não.

      Fimse
   Fimpara
   Escreval ("A média é:", media)
   Escreval ("O maior valor é: ", maior)
   Escreval ("O menor valor é: ", menor)
   Escreval ("===========================================================")
fimprocedimento

procedimento CodigoMorse
inicio
   //CÓDIGO MORSE
   Escreval ("== CÓDIGO MORSE ==")
   Escreval ("Para mostrar o código morse, informe um número entre 0 e 20 ")
   leia (v)
   Escreval ("===========================================================")
   //A estrutura de repetição "enquanto" colocamos "v<=0"
   // para que seja feita a leitura, apenas, de números  e
   // números de  1 a 20
   Enquanto (v<=0)  faca
      Escreval ("ERRO.Tente novamente!")

      Escreval ("Para mostrar o código morse, informe um NÚMERO entre 0 e 20")
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
      Escreval ("NÚMERO NÃO ENCONTRADO!")
      Escreval ("===========================================================")
      //Se o usuário digitar um número maior
   fimescolha                // que 20 a seguinte mensagem será apresentada
fimprocedimento              //"NÚMERO NÃO ENCONTRADO"
procedimento MudancaDeBase
inicio
   Escreval ("== MUDANÇA DE BASE ==")

   resultadoEmBinario <-""

   Escreval ("Informe a quantidade de casos que serão resolvidos:")
   leia (q)
   para z de 1 ate q faca

      Escreval ("Digite B se o número será em Binário ou D se será em Decimal")
      leia (opcao)
      Se (opcao= "B") ou (opcao = "b") entao
      Escreval("Se o seu número tem menos de 4 dígitos complete com 0(zero)")
      Escreval ("no início antes de colocar os números desejados.")
      Escreval  ("EXEMPLO: 11 será 0011")
      Escreval ("===========================================================")
         para l de 3 ate 0 passo -1 faca  //Utilizamos o vetor no sentido
            //decrescente, porque quando calculamos um número
            //binário, este cálculo é feito da direita para esquerda e de "0 até N"
            //no caso(N até 0)
            Escreval ("Digite os números bínarios um por linha" )
            leia (u[l])
            Enquanto (u[l]>1) ou (u[l]<0) faça
               Escreval ("Este número não é BINÁRIO.")
               Escreval("Troque o último número digitado por 1(um) ou 0(zero)")
               leia (u[l])
            Fimenquanto
            Se u[l] = 1 entao
               vq <- 1 // "vq" recebe valor "1" poque se ele receber "0"
               para n de 1 ate l faca
                  vq <- vq * 2 //Quando chegar aqui o resultado sempre será "0"
               Fimpara                // "Binário*2^Posição do binário"
               resultadoEmDecimal<- resultadoEmDecimal + u[l]*vq
            Fimse
         Fimpara
         Escreval("O número foi digitado em bínario. Seu resultado em decimal é:")
         Escreval(resultadoEmDecimal)
         Escreval("===========================================================")
      Fimse
      Se (opcao = "D") ou (opcao = "d") entao
         Escreval ("Digite o número: ")
         leia (x)
         Enquanto (x > 0) faca
            Se (x % 2 )= 0 entao   //"mod ou %" nos dará o resto de uma divisão
               resultadoEmBinario <- "0" + resultadoEmBinario
            Senao
               resultadoEmBinario <- "1" + resultadoEmBinario
            Fimse
            x <- x div 2 //"div" mostrará o quociente (resultado) da divisão
         Fimenquanto
         Escreval("O número foi digitado em decimal. Seu resultado em binário é:")
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