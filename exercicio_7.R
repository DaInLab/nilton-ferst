# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando a biblioteca
library(readxl)

# Importando o arquivo do exercício 7
df.ex7 <- read_excel("./my project/nilton-ferst/dados/exercicio7.xls",skip = 1, col_names = "Areas", "Atendimento", col_types = c("text", "numeric"))

# Grafico de Barras
# barplot <- (table(df.ex7$areas),(df.ex7$atendimento), atendimento = red)
