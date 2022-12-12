# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando a biblioteca
library(readxl)

# Importando o arquivo do exercício 8
df.ex8 <- read_excel("./my project/nilton-ferst/dados/exercicio8.xls",skip = 1, col_names = "altura dos pacientes", col_types = c("numeric"))

# Construir uma tabela de frequências por intervalo de classes;
# transformando os dados em vetor
ex8.em.vetor <- c(df.ex8$a.pacientes)
ex8.em.vetor

# criando a tabela de frequencia
ex8.tabela <- table(ex8.em.vetor)
ex8.tabela

# gráfico histograma
hist(df.ex8$a.pacientes)

#Outro gráfico
plot(df.ex8$a.pacientes, main = "Anomalia Ortopédica e Altura dos Pacientes",
     xlab = "Altura dos Pacientes",
     ylab = "Anomalia Ortopédica")
barplot(table(df.ex8$a.pacientes))

plot(df.ex8$a.pacientes)
hist(df.ex8$a.pacientes)
lines(df.ex8$a.pacientes)

stripchart(df.ex8$a.pacientes, vertical = T)


