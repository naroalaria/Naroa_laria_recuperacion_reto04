library(digest)
library(discretization)
library(dplyr)
library(EnvStats)
library(fastDummies)
library(naniar)
library(nortest)
library(readxl)
library(smoothmest)
library(VIM)
library(plumber)

datos <- read.csv("C:\\Users\\naroa\\Downloads\\netflix_recuperacion.csv")

#tabla
summary(datos)
desv <- sd(datos$release_year,na.rm=T)

#genero de peliculas y series
length(unique(datos$listed_in))