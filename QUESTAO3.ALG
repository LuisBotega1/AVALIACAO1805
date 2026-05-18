Algoritmo "QUESTAO3"

Var
   vet: vetor[1..100] de inteiro
   n, i, contad: inteiro


procedimento quicksort(inicioVet, fimVet: inteiro)
var
   i, j, pivo, temp: inteiro

inicio

   contad <- contad + 1

   i <- inicioVet
   j <- fimVet


   pivo <- vet[(inicioVet + fimVet) div 2]

   enquanto i <= j faca


      enquanto vet[i] < pivo faca
         i <- i + 1
      fimenquanto


      enquanto vet[j] > pivo faca
         j <- j - 1
      fimenquanto


      se i <= j entao
         temp <- vet[i]
         vet[i] <- vet[j]
         vet[j] <- temp

         i <- i + 1
         j <- j - 1
      fimse

   fimenquanto


   se inicioVet < j entao
      quicksort(inicioVet, j)
   fimse


   se i < fimVet entao
      quicksort(i, fimVet)
   fimse

fimprocedimento


Inicio

   contad <- 0

   escreval("-- QUICK SORT  --")

   escreval("Digite a quantidade de termo: ")
   leia(n)


   para i de 1 ate n faca
      escreval("Digite o valor da posicao ", i, ": ")
      leia(vet[i])
   fimpara


   quicksort(1, n)


   escreval("Vetor em ordem:")

   para i de 1 ate n faca
      escreva(vet[i], " ")
   fimpara

   escreval("Quantidade de chamadas do procedimento: ", contad)

Fimalgoritmo