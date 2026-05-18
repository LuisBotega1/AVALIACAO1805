Algoritmo "Consumo"

Var

ConsMensal,GerMensal,Tarifa,Taxa,Extra,blocos100,adicionalBandeira,credito,valorBandeira,valorEnergia:real
ConsLiquido,ValFinal:real
Band:caractere







Inicio
escreval("Digite o consumo mensal em kWh")
leia(ConsMensal)
escreval("Digite a geração mensal em kWh")
leia(GerMensal)
escreval("Digite a tarifa em reais")
leia(Tarifa)
escreval("Digite a taxa fixa de iluminação")
leia(Taxa)
escreval("Qual bandeira tarifária atual? Verde, Amarela, Vermelha ou Vermelha2?: ")
leia(Band)


ConsLiquido <- ConsMensal - GerMensal
escreval("Consumo Liquido: ", ConsLiquido ,"kHw")


se ConsLiquido < 0 entao
escreval("A pagar: ", Taxa)
senao
Valfinal <- ConsLiquido * Tarifa + Taxa
escreval("A pagar: ", Valfinal)
fimse

  se ConsLiquido > 0 entao
    blocos100 <- int(ConsLiquido/100)
    valorEnergia <- ConsLiquido * Tarifa
    valorBandeira <- blocos100 * adicionalBandeira
    credito <- 0
    ValFinal <- valorEnergia + valorBandeira + Taxa
  senao
    blocos100 <- 0
    valorEnergia <- 0
    valorBandeira <- 0
    credito <- ConsLiquido * (-1)
    ValFinal <- Taxa
  fimse



se Band = "Verde" entao
escreval("A pagar: ", Valfinal)
fimse


se Band = "Amarela" entao
Extra <- (ConsLiquido / 100) *  1,885
ValFinal <- ConsLiquido * Taxa + Tarifa + Extra
fimse


se Band = "Vermelha" entao
Extra <- (ConsLiquido / 100) * 4,463
ValFinal <- ConsLiquido * Taxa + Tarifa + Extra
fimse


se Band = "Vermelha2" entao
Extra <- (ConsLiquido / 100) * 7,877
ValFinal <- ConsLiquido * Taxa + Tarifa + Extra

fimse
escreval("Blocos de 100 cobrados: ", blocos100)


Fimalgoritmo