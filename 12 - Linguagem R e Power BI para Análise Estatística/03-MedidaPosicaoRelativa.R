# Estatística Básica Parte 3 - Medidas de Posição Relativa

#Definindo pasta de trabalho
setwd("E:/Kálvin Antunes/Documents/DataScienceAcademy/POWER BI 2.0/12 - Linguagem R e Power BI para Análise Estatística")
getwd()

#Carregando o Dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

#Resumo do Dataset
head(vendas)
tail(vendas)
View(vendas)
summary(vendas[c('Valor', 'Custo')])


#Explorando variáveis numéricas
mean(vendas$Valor)
median(vendas$Valor)

#Quartil
quantile(vendas$Valor)

#Percentil
quantile(vendas$Valor, probs = c(0.01, 0.99, 0.43))

#Range de Percentil
quantile(vendas$Valor, seq(from = 0, to = 1, by = 0.20))
quantile(vendas$Valor, seq(from = 0, to = 1, by = 0.25))


#IQR - Intervalo entre Q3 e Q1
IQR(vendas$Valor)

#Range de intervalo entre valor min e max
range(vendas$Valor)

#Diferença entre o Range
diff(range(vendas$Valor))

