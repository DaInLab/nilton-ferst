# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando a biblioteca
library(readxl)

# Importando o arquivo do exercício 2
df.ex2 <- read_excel("./my project/nilton-ferst/dados/exercicio2.xls",skip = 1, col_names = "casas", col_types = c("numeric"))

# calculando a media
ex2.media <- mean(df.ex2$casas)
print(paste("Média das casas:", ex2.media))

# calculando a mediana
ex2.mediana = median(df.ex2$casas)
print(paste("Médiana das casas:", ex2.mediana))

# calculando o desvio padrão
ex2_desviop  <- round(sd(df.ex2$casas),6)
print(paste("Desvio Padrão das casas:", ex2_desviop))

# calculando a variância
ex2_varianca <- round(var(df.ex2$casas),6)
print(paste("Variância das casas:", ex2_varianca))

# valor mínimo
ex2.minimo <- min(df.ex2$casas)
print(paste("Valor mínimo das casas:", ex2.minimo))

# valor máximo
ex2.maximo <- max(df.ex2$casas)
print(paste("Valor máximo das casas:", ex2.maximo))

# calculando os quartis
ex2.quartis <- round(quantile(df.ex2$casas),2)
q1 <- ex2.quartis[2]
print(paste("Q1:", q1))

q3 <- ex2.quartis[4]
print(paste("Q3:", q3))

# O melhor gráfico para representar os valores é o do "boxplot"!
boxplot(df.ex2)

# Uma versão mais "sofisticada"!
boxplot(df.ex2$casas,
        main = "Casas por Quarterões",
        xlab = "Casas",
        ylab = "Quarterões",
        col = "orange",
        border = "brown",
        horizontal = TRUE,
        notch = T
)

# Uma versão dois, com retas indicando os pontos no gráfico
# get quartile in r code (single line)
media = round(mean(df.ex2$casas),2)
print(media)
mediana = round(median(df.ex2$casas),2)
print(mediana)
menorv = round(min(df.ex2$casas),2)
print(menorv)
maiorv = round(max(df.ex2$casas),2)
print(maiorv)

quartiz = round(quantile(df.ex2$casas, prob=c(.25,.5,.75)),2)
quartiz
# 25%  50%  75% 
#2.59 2.61 2.63 

round(summary(df.ex2$casas),2)
#Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#2.50    2.59    2.61    2.60    2.63    2.64 

boxplot(df.ex2$casas)

abline(a = media, b = 0L, h = NULL, v = T)
abline(a = mediana, b = 0L, h = NULL, v = T)
abline(a = menorv, b = 0L, h = NULL, v = T)
abline(a = maiorv, b = 0L, h = NULL, v = T)
abline(a = quartiz[1], b = 0L, h = NULL, v = T)
abline(a = quartiz[3], b = 0L, h = NULL, v = T)

#Outros gráficos
barplot(table(df.ex2$casas))

plot(df.ex2$casas)
hist(df.ex2$casas)
lines(df.ex2$casas)

stripchart(df.ex2$casas, vertical = T)

