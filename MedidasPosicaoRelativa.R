# Medidas de Posição Relativa

# Definindo a pasta de trabalho
# Substitua o caminho abaixo pela pasta no seu computador
setwd("C:/Users/User/Desktop/CursoPowerBI/Cap11/MedidasPosicaoRelativa")
getwd()

# Carregando Dataset
carros <- read.csv("carros.csv")

# Resumo dos dados
head(carros)
str(carros)

# Medidas de Tendencia Central
summary(carros$ano)
summary(carros[c('preco', 'kilometragem')])

## Explorando variaveis numericas
mean(carros$preco)
median(carros$preco)
quantile(carros$preco)
quantile(carros$preco, probs = c(0.01, 0.99))
quantile(carros$preco, seq(from = 0, to = 1, by = 0.20))
IQR(carros$preco) # Diferenca entre Q3 e Q1
range(carros$preco)
diff(range(carros$preco))