# Estat�stica B�sica Parte 1 - Medidas de Posi��o

#Definindo pasta de trabalho
setwd("E:/K�lvin Antunes/Documents/DataScienceAcademy/POWER BI 2.0/12 - Linguagem R e Power BI para An�lise Estat�stica")
getwd()

#Carregando o Dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

#Resumo do Dataset
View(vendas)
str(vendas)
summary(vendas$Valor)
summary(vendas$Custo)

#Help
?mean
?median

#M�dia da coluna VALOR
mean(vendas$Valor)

#M�dia Ponderada da coluna VALOR com base da coluna CUSTO
weighted.mean(vendas$Valor, w = vendas$Custo)

#Mediana da coluna CUSTO
median(vendas$Custo)




#Moda
#Criando uma fun��o
moda <- function(v){
  valor_unico <- unique(v)
  valor_unico[which.max(tabulate(match(v, valor_unico)))]
}

resultado = moda(vendas$Valor)
print(resultado)

resultado = moda(vendas$Custo)
print(resultado)






#Criando gr�fico da M�dia de Valor por Estado com ggplot2
install.packages("ggplot2")
library(ggplot2)


#Cria o gr�fico
ggplot(vendas) +
  stat_summary(aes( x = Estado,
                    y = Valor),
              fun = mean,
              geom = "bar",
              fill = "lightgreen",
              col = "grey50") +
  labs(title = "M�dia de Valor por Estado")
