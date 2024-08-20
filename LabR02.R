###################
# MAD211: LabR 02 #
###################

# Usando o help
help(table)
?read.csv
?quantile

# Importando dados

# Importando dataset Advertising
uri <- "https://raw.githubusercontent.com/ctruciosm/ISLR/master/dataset/Advertising.csv"
Advertising <- read.csv(uri)
hist(Advertising$Newspaper)
head(Advertising)  # Mostra apenas os primeiros elementos

uri <- "https://raw.githubusercontent.com/ctruciosm/ctruciosm.github.io/master/datasets/titanic.csv"
titanic <- read.csv(uri)
head(titanic)


uri <- "https://raw.githubusercontent.com/ctruciosm/ctruciosm.github.io/master/datasets/knn_exemplo.txt"
knn_datos <- read.table(uri, header = TRUE)
head(knn_datos)

uri <- "https://raw.githubusercontent.com/ctruciosm/ctruciosm.github.io/master/datasets/propellant.csv"
propellant <- read.csv(uri, sep = ";")
head(propellant,4)

uri <- "https://raw.githubusercontent.com/ctruciosm/ctruciosm.github.io/master/datasets/propellant.csv"
propellant <- read.csv2(uri)
head(propellant,4)

# Tabelas e gráficos

table(titanic$Sex)                          #tabela de freq. absolutas
freq_absolutas <- table(titanic$Sex)        # Salvamos o objeto
prop.table(freq_absolutas)                  #tabela de freq. relativas
prop.table(freq_absolutas)*100              #tabela de freq. percentual
round(prop.table(freq_absolutas)*100,2)  

install.packages("epiDisplay")              # instalando pacote
library(epiDisplay)                         # carregando pacote

tab1(titanic$Sex, graph = TRUE)  # tab'um'

# tabelas de dupla entrada

table(titanic$Pclass,titanic$Sex)

classe <- titanic$Pclass
sexo <- titanic$Sex
table(classe,sexo)

addmargins(table(classe,sexo))

tabpct(classe,sexo, graph = FALSE) #tab p c t

tabpct(classe,sexo, graph = TRUE) 

# Graficos

# Histograma
hist(titanic$Fare)
# Grafico de barras
freq <- table(titanic$Pclass) # criando tabela de frequencias
barplot(freq)   # recebe como parametro de entrada a tabela de frequencia
# Pie
pie(freq)       # recebe como parametro de entrada a tabela de frequencia
# Boxplot
boxplot(titanic$Fare)
# Gráfico de dispersão
plot(Advertising$TV, Advertising$Sales)


par(mfrow = c(2,2))
plot(Advertising$TV, Advertising$Sales)
plot(Advertising$Radio, Advertising$Sales)
hist(Advertising$TV)
boxplot(Advertising$Sales, horizontal = TRUE)



pie(table(sexo))






