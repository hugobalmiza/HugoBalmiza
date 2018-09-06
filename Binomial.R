# Distribuição Binomial

# Pasta de trabalho
setwd("C:/Users/User/Desktop/CursoPowerBI/Cap12")
getwd()

# Funções de Distribuição Binomial no R
# dbinom(x, size, prob)
# pbinom(x, size, prob)
# qbinom(p, size, prob)
# rbinom(n, size, prob)

# x é um vetor de números.
# p é um vetor de probabilidades.
# n é o número de observações.
# size é o número de tentativas.
# prob probabilidade de sucesso em cada tentativa.

# A distribuição binomial é uma distribuição de probabilidade discreta. 
# Ela descreve o resultado de n experimentos independentes em um experimento. 
# Cada ensaio é suposto ter apenas dois resultados, seja sucesso ou fracasso.

# Suponha que haja 12 perguntas de múltipla escolha em um exame. 
# Cada pergunta tem 5 respostas possíveis, e apenas 1 delas está correta. 
# Encontre a probabilidade de ter 3 ou menos respostas corretas se um aluno tentar responder a todas 
# as perguntas aleatoriamente.

# Uma vez que apenas uma entre cinco respostas possíveis está correta, a probabilidade de responder a 
# uma pergunta corretamente por aleatoriedade é 1/5 = 0,2. Podemos encontrar a probabilidade de ter 
# exatamente 3 respostas corretas por tentativas aleatórias como segue.

help(Binomial)
?dbinom
dbinom(3, size = 12, prob = 0.2)