# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando a biblioteca
library(readxl)

# Importando o arquivo do exercício 2
df.ex2 <- read_excel("./dados/exercicio2.xls",skip = 1, col_names = "casas", col_types = c("numeric"))

# a) Construir uma tabela de frequências;
# transformando os dados em vetor
ex2.em.vetor <- c(df.ex2$casas)
ex2.em.vetor

# criando a tabela de frequencia
ex2.tabela <- table(ex2.em.vetor)
ex2.tabela

# imprimindo a tabela de frequencia
ex2.tabela

#Outro gráfico
barplot(table(df.ex2$casas))
plot(df.ex2$casas)
hist(df.ex2$casas)
lines(df.ex2$casas)
stripchart(df.ex2$casas, vertical = T)

