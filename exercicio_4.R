# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando a biblioteca
library(readxl)

# Importando o arquivo do exercício 4
df.ex4 <- read_excel("./my project/nilton-ferst/dados/exercicio4.xls",skip = 1, col_names = "Salários", col_types = c("numeric"))

# a) Construir uma tabela de frequências;
# transformando os dados em vetor
ex4.em.vetor <- c(df.ex4$Salários)
ex4.em.vetor

# criando a tabela de frequencia
ex4.tabela <- (table(ex4.em.vetor))
ex4.tabela

#Gráfico histograma
plot(df.ex4$Salários)
hist(df.ex4$Salários)

