# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando a biblioteca
library(readxl)

# Importando o arquivo do exercício 9
df.ex9 <- read_excel("./my project/nilton-ferst/dados/exercicio9.xls",skip = 1, col_names = "salários", col_types = c("numeric"))

# calculando a media
ex9.media <- mean(df.ex9$salários)
print(paste("Salários:", ex9.media))


# distribuição de frequência
# transformando os dados em vetor
ex9.em.vetor <- c(df.ex9$salários)
ex9.tabela <-table(ex9.em.vetor)
print(ex9.tabela)

# Histograma
hist(df.ex9$salários, main="Histograma", xlab="Salários dos Funcionários", ylab="Frequência")

barplot(table(df.ex9$salários))
plot(df.ex9$salários)
hist(df.ex9$salários)
lines(df.ex9$salários)

stripchart(df.ex9$salários, vertical = T)
