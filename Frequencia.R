# Tabela de frequencia

# Defininfo a pasta dr trabalho

setwd("C:/Users/User/Desktop/CursoPowerBI/Cap11/05-Frequencia")
getwd()

# Carregando e sumarizando os dados
dados <- read.table("usuarios.csv", dec = ".", sep = ",", h = T, fileEncoding = "windows-1252")
names(dados) # Nome das colunas
str(dados) 
summary(dados$salario)

# Tabela de frequencia absolutas
freq <- table(dados$grau_instrucao)
freq

# Tabela de frequencias relativas
freq_rel <- prop.table(freq)
freq_rel

# Porcentagem (100 * freq_rel_table)
p_freq_rel <- 100 * prop.table(freq_rel)
p_freq_rel

# Adiciona linhas de total
freq <- c(freq, sum(freq)) # Criando vetor com a funcao c
freq_rel <- c(freq_rel, sum(freq_rel))
p_freq_rel <- c(p_freq_rel, sum(p_freq_rel))
names(freq)[4] <- "Total" # Crando coluna Total

# Tabela Final
tabela_final <- cbind(freq, # Juntar os objetos por coluna atrav�s da funcao cbind
                      freq_rel = round(freq_rel, digits = 2),
                      p_freq_rel = round(p_freq_rel, digits = 2))
tabela_final