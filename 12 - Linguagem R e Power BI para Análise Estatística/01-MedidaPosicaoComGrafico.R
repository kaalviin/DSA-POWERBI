# Estatística Básica Parte 1 - Medidas de Posição

#Definindo pasta de trabalho
setwd("E:/Kálvin Antunes/Documents/DataScienceAcademy/POWER BI 2.0/12 - Linguagem R e Power BI para Análise Estatística")
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

#Média da coluna VALOR
mean(vendas$Valor)

#Média Ponderada da coluna VALOR com base da coluna CUSTO
weighted.mean(vendas$Valor, w = vendas$Custo)

#Mediana da coluna CUSTO
median(vendas$Custo)




#Moda
#Criando uma função
moda <- function(v){
  valor_unico <- unique(v)
  valor_unico[which.max(tabulate(match(v, valor_unico)))]
}

resultado = moda(vendas$Valor)
print(resultado)

resultado = moda(vendas$Custo)
print(resultado)






#Criando gráfico da Média de Valor por Estado com ggplot2
install.packages("ggplot2")
library(ggplot2)


#Cria o gráfico
ggplot(vendas) +
  stat_summary(aes( x = Estado,
                    y = Valor),
              fun = mean,
              geom = "bar",
              fill = "lightgreen",
              col = "grey50") +
  labs(title = "Média de Valor por Estado")
