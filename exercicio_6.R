# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")
install.packages("qcc")

# Carregando a biblioteca
library(readxl)
library(qcc)

# Importando o arquivo do exercício 6
df.ex6 <- read_excel("./my project/nilton-ferst/dados/exercicio6.xls",skip = 1, col_names = c("Qualidade", "Pessoas", "Ocorrencias"), col_types = c("text", "numeric", "numeric"))
#view(df.ex6)


# transformando os dados em vetor
ex6.em.vetor <- c (df.ex6$Qualidade)

# criando um gráfico
# Diagrama de Pareto

pareto.chart(df.ex6$pessoas, ylab = "Número de pessoas", cumperc = seq(0,100, by=10))

