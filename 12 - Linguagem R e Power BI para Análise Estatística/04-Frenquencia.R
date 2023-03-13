# Estatística Básica Parte 4 - Tabela de Frequência

#Definindo pasta de trabalho
setwd("E:/Kálvin Antunes/Documents/DataScienceAcademy/POWER BI 2.0/12 - Linguagem R e Power BI para Análise Estatística")
getwd()


#Carregando o Dataset
?read.table
usuarios <- read.table("Usuarios.csv", 
                       fileEncoding = "windows-1252",
                       dec = ".",
                       sep = ",",
                       h = T)


#Visualizando os dados
View(usuarios)
str(usuarios)
names(usuarios)
summary(usuarios$salario)
summary(usuarios$grau_instrucao)



#Tabela de Frequência Absoluta
freq <- table(usuarios$grau_instrucao)
View(freq)


#Tabela de Frequência Relativa
freq_rel <- prop.table(freq)
View(freq_rel)

p_freq_rel <- 100 * prop.table(freq)
View(p_freq_rel)


#Adicionar linha TOTAL
View(freq)
freq <- c(freq, sum(freq))
View(freq)
names(freq)[4] <- "Total"
View(freq)



#calculamos frequência relativa e proporcional
freq_rel <- c(freq_rel, sum(freq_rel))
p_freq_rel <- c(p_freq_rel, sum(p_freq_rel))



#Tabela final com todos os vetores
tabela_final <- cbind(freq,
                      freq_rel = round(freq_rel, digits = 2),
                      p_freq_rel = round(p_freq_rel, digits = 2))
View(tabela_final)