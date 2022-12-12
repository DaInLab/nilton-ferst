# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando a biblioteca
library(readxl)

# Importando o arquivo do exercício 5
df.ex5  <- read_excel("./my project/nilton-ferst/dados/exercicio5.xls",skip = 1, col_names = c("Marcas", "N_pessoas"), col_types = c("text", "numeric"))
#view(df.ex5)

# transformando os dados em vetor
ex5.em.vetor <- c (dataframe.ex5$Marcas)

# criando um gráfico

ggplot(dataframe.ex5, aes( y= marcas, x = pessoas, fill = Marcas))+
  geom_bar (stat = "identity")

