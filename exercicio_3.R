# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando a biblioteca
library(readxl)

# Importando o arquivo do exercício 3
df.ex3 <- read_excel("./dados/exercicio3.xls",skip = 1, col_names = "filhos", col_types = c("numeric"))
df.ex3

# calculando a media
ex3.media <- mean(df.ex3$filhos)
print(paste("Média de filho:", ex3.media))

# calculando a mediana
ex3.mediana = median(df.ex3$filhos)
print(paste("Médiana das filhos:", ex3.mediana))

# calculando a moda
ex3.moda = `mode(df.ex3$filhos)
print(paste("Moda de filhos:", ex3.moda))


# O melhor gráfico para representar os valores é o do "boxplot"!
boxplot(df.ex3)


# Uma versão dois, com retas indicando os pontos no gráfico
# get quartile in r code (single line)
moda = round(moda(df.ex3$filhos),2)
print(mode)
mediana = round(median(df.ex3$filhos),2)
print(mediana)

boxplot(df.ex3$filhos)

abline(a = mode, b = 0L, h = NULL, v = T)
abline(a = mediana, b = 0L, h = NULL, v = T)

#Outros gráficos
barplot(table(df.ex3$filhos))
plot(df.ex3$filhos)
hist(df.ex3$filhos)
lines(df.ex3$filhos)
stripchart(df.ex3$filhos, vertical = T)
