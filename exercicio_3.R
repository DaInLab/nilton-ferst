# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando a biblioteca
library(readxl)

# Importando o arquivo do exercício 3
df.ex3 <- read_excel("./my project/nilton-ferst/dados/exercicio3.xls",skip = 1, col_names = "filhos", col_types = c("numeric"))
df.ex3

# calculando a mediana
ex3.mediana  <- median(df.ex3$filhos)
print(paste("Médiana das filhos:", ex3.mediana))

# calculando a moda
ex3.moda <- mode(df.ex3$filhos)
print(paste("Moda de filhos:", ex3.moda))

#Outros gráficos
barplot(table(df.ex3$filhos))

plot(df.ex3$filhos)
hist(df.ex3$filhos)
lines(df.ex3$filhos)
stripchart(df.ex3$filhos, vertical = T)

