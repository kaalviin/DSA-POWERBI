# Estat�stica B�sica Parte 2 - Medidas de Dispers�o

#Definindo pasta de trabalho
setwd("E:/K�lvin Antunes/Documents/DataScienceAcademy/POWER BI 2.0/12 - Linguagem R e Power BI para An�lise Estat�stica")
getwd()

#Carregando o Dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

#Resumo do Dataset
View(vendas)
str(vendas)
summary(vendas$Valor)



#Vari�ncia
var(vendas$Valor)


#DesvioPadrao
sd(vendas$Valor)