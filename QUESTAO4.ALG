Algoritmo "QUESTAO4"

var
   discos, torre1, torre2, torre3 : inteiro

procedimento MoverDiscos(discos, torre1, torre2, torre3 : inteiro)
inicio

   se (discos = 1) entao
      escreval("Mover disco da torre ", torre1, " para torre ", torre3)
   senao

      MoverDiscos(discos - 1, torre1, torre3, torre2)

      escreval("Mover disco da torre ", torre1, " para torre ", torre3)

      MoverDiscos(discos - 1, torre2, torre1, torre3)

   fimse

fimprocedimento

inicio

   torre1 <- 1
   torre2 <- 2
   torre3 <- 3

   escreval("Digite o numero de discos que quer jogar: ")
   leia(discos)

   se (discos > 0) entao
      MoverDiscos(discos, torre1, torre2, torre3)
   senao
      escreval("Numero invalido!")
   fimse

fimalgoritmo