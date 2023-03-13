# Definindo a pasta de trabalho
setwd("E:/Kálvin Antunes/Documents/DataScienceAcademy/POWER BI 2.0/12 - Linguagem R e Power BI para Análise Estatística")
getwd()

# Carregando o dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Carrega o ggplot2
library(ggplot2)

# Cria o gráfico
?qplot
qplot(Valor, Custo, data = vendas)
