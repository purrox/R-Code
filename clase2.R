str(iris) #Structure of data set

attributes(iris) #Attributes of data set

class(iris) #Data set type

head(iris) #First 6 data

tail(iris) #Last 6 data

summary(iris) #Min Q

quantile(iris$Sepal.Length)

var(iris$Petal.Length)

hist(iris$Sepal.Width)

hist(iris$Sepal.Width, freq = FALSE)

plot(density(iris$Sepal.Length))

table(iris$Species)

tab1 = table(iris$Species)

pie(tab1)

barplot(tab1)

cov(iris$Sepal.Length, iris$Petal.Length) #Covarianza 

cor(iris$Sepal.Length, iris$Petal.Length) #Correlazion 

cor(iris [,1:4])

aggregate(Sepal.Length ~ Species, summary, data = iris)

boxplot(Sepal.Length ~ Species,  data = iris ) #Grafico de cajas

with(iris,plot(Sepal.Length, Sepal.Width, col=Species, pch = as.numeric(Species))) #Grafico de dispercion

pairs(iris) #Visualizacion todos contra todos

library(scatterplot3d)
scatterplot3d(iris$Petal.Width, iris$Sepal.Length, iris$Sepal.Width)

#RGL
library(rgl)
plot3d(iris$Petal.Width, iris$Sepal.Length, iris$Sepal.Width)


#MASS
library(MASS)
parcoord(iris[1:2], col = iris$Species)
legend("topleft", levels(iris$Species), lty = 1, col = iris$Species, pch=15)

library(lattice)
parallelplot(~ iris[1:4]| Species, data = iris)




age = c(23,23,27,27,39,41,47,49,50,52,54,54,56,57,58,58,60,61)
fat = c(9.5, 26.5, 7.8,17.8, 31.4, 25.9,27.2,21.2,34.6,42.5, 28.8, 33.4, 30.2, 34.1, 32.9, 41.2, 35.7 )



#Limpieza de datos

library(tidyr)
library(dplyr)
library(readr)
countries <- read_csv("Downloads/CountryProfile/08d0c47a-0f6c-4f2e-b691-43e7dfd11c12_Data.csv")
View(countries)

colnames( countries ) <-c("Country", "Country_Code", "Serie" ,"Serie_Code", "Scale", "1990", "2000", "2010", "2016")

library(tidyr)
library(dplyr)
solo_paises <- filter(countries, !Country_Code %in% c("WLD", "EAS", "ECS", "LCN", "MEA", "NAC", "SAS", "LIC", "MIC", "LMC", "UMC", "LMY", "HIC", "EMU", "OED", "FCS", "SSF"))

library(tidyr)
library(dplyr)
WB_final <- filter(solo_paises, Serie_Code %in% c("SP.POP.TOTL", "SI.POV.DDAY", "SP.DYN.LE00.IN", "EN.ATM.CO2E.PC","NY.GDP.MKTP.CD", "NY.GDP.DEFL.KD.ZG", "IT.CEL.SETS.P2", "TX.VAL.TECH.MF.ZS"))




