Algoritmo "QUESTAO2"

Var
  vet: vetor[1..100] de inteiro
  n, i, valor: inteiro
  start, end, middle: inteiro
  encontrado: logico

Inicio
  escreval("Digite a quantidade de numeros: ")
  leia(n)

  escreval("Informe os valores em ordem crescente")

  para i de 1 ate n faca
       escreval("Digite o valor da posi��o: ", i, ": ")
       leia(vet[i])
  fimpara

  escreval("Digite o valor que deseja buscar: ")
  leia(valor)

  start <- 1
  end <- n
  encontrado <- falso

  enquanto (start <= end) e (encontrado = falso) faca
     middle <- (start + end) div 2
     se vet[middle] = valor entao
        encontrado <- verdadeiro
     senao
        se valor < vet[middle] entao
           end <- middle -1
        senao
           start <- middle + 1
        fimse
     fimse
  fimenquanto

  se encontrado entao
     escreval("Posi��o encontrada ", middle)
  senao
     escreval("Valor n�o encontrado")
  fimse
Fimalgoritmo
