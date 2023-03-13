# Estatística Básica Parte 2 - Medidas de Dispersão

#Definindo pasta de trabalho
setwd("E:/Kálvin Antunes/Documents/DataScienceAcademy/POWER BI 2.0/12 - Linguagem R e Power BI para Análise Estatística")
getwd()

#Carregando o Dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

#Resumo do Dataset
View(vendas)
str(vendas)
summary(vendas$Valor)



#Variância
var(vendas$Valor)


#DesvioPadrao
sd(vendas$Valor)