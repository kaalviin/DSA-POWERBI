# Exerc�cio 1

#Definindo pasta de trabalho
setwd("E:/K�lvin Antunes/Documents/DataScienceAcademy/POWER BI 2.0/12 - Linguagem R e Power BI para An�lise Estat�stica/Exerc�cio1")
getwd()

notas <- read.csv("Notas.csv", fileEncoding = "windows-1252")


#EX1 - Apresente um resumo de tipos de dados e estat�sticasdo dataset
View(notas)
str(notas)
summary(notas$TurmaA)
summary(notas$TurmaB)


#EX2 - Qual a m�dia de cada turma?
mean(notas$TurmaA)
mean(notas$TurmaB)


#EX3 - Qual turma apresentou maior variabilidade de notas?
sd(notas$TurmaA)
sd(notas$TurmaB)


#EX4- Calcule o coeficiente de varia��o das 2 turmas
media_a <- mean(notas$TurmaA)
media_b <- mean(notas$TurmaB)

sd_a <- sd(notas$TurmaA)
sd_b <- sd(notas$TurmaB)

cvA <- sd_a / media_a * 100
cvB <- sd_b / media_b * 100

cvA
cvB


#EX5 - Qual nota apareceu mais vezes em cada turma?
moda <- function(v){
  valor_unico <- unique(v)
  valor_unico[which.max(tabulate(match(v, valor_unico)))]
}

moda(notas$TurmaA)
moda(notas$TurmaB)