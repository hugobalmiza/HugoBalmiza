# Medidas de Posição

# Definindo a pasta de trabalho
# Substitua o caminho abaixo pela pasta no seu computador

setwd("C:/Users/User/Desktop/CursoPowerBI/Cap11/01-Medidas-PosicaoR")
getwd()

# Carregando o dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Resumo do dataset
View(vendas)
str(vendas)
summary(vendas$Valor)
summary(vendas$Custo)

# Média
?mean
mean(vendas$Valor)
mean(vendas$Custo)

# Retirando os Outliers
mean(vendas$Valor, trim = 0.1)

# Retirando os valores NA
mean(vendas$Valor, na.rm = TRUE) 

# Média Ponderada
?weighted.mean
weighted.mean(vendas$Valor, w = vendas$Custo)

# Mediana
median(vendas$Valor)
median(vendas$Custo)

# Moda
# Criando uma função
getmode <- function(v){
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

# Obtendo a Moda
result <- getmode(vendas$Valor)
print(result)

# Demonstrando de forma Gráfica de médias por Estado com ggplot2
library(ggplot2)

ggplot(vendas) + stat_summary(aes(x = vendas$Estado, y = vendas$Valor),
                              fun.y = mean, geom = "bar", 
                              fill = "lightgreen", col = "grey50")