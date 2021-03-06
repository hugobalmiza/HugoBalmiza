# Medidas de Dispers�o

# Definindo a pasta de trabalho
# Substitua o caminho abaixo pela pasta no seu computador
setwd("C:/Users/User/Desktop/CursoPowerBI/Cap11/02-Medidas-Dispersao")
getwd()

# Carregando o dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Resumo do dataset 
view(vendas)
str(vendas)
summary(vendas$Valor)

# Variancia
var(vendas$Valor)

# Desvio Padrao
sd(vendas$Valor)