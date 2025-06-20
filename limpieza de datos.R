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

#Visualizar distribucion NA
vis_miss(datos)

#imputacion
str(datos)
colnames(datos)
#en este caso todas las columnas excepto la de release_year son categoricas

#imputacion valores numericos:Knn
imputacion <- kNN(datos,k=5)
unique(imputacion["release_year"])

#imputacion para las categoricas: moda
#show_id
moda <- names(sort(table(datos$show_id),decreasing = TRUE))[1]
datos$show_id[is.na(datos$show_id)] <- moda

#type
moda <- names(sort(table(datos$type),decreasing = TRUE))[1]
datos$type[is.na(datos$type)] <- moda

#title
moda <- names(sort(table(datos$title),decreasing = TRUE))[1]
datos$title[is.na(datos$title)] <- moda

#director
moda <- names(sort(table(datos$director),decreasing = TRUE))[1]
datos$director[is.na(datos$director)] <- moda

#country
moda <- names(sort(table(datos$country),decreasing = TRUE))[1]
datos$country[is.na(datos$country)] <- moda

#date_added
moda <- names(sort(table(datos$date_added),decreasing = TRUE))[1]
datos$date_added[is.na(datos$date_added)] <- moda

#rating
moda <- names(sort(table(datos$rating),decreasing = TRUE))[1]
datos$rating[is.na(datos$rating)] <- moda

#duration: como tal nos la han dado en categorica y he decidido dejarla asi ya que no
#          estan todas en minutos o en meses...
moda <- names(sort(table(datos$duration),decreasing = TRUE))[1]
datos$duration[is.na(datos$duration)] <- moda

#listed_in 
moda <- names(sort(table(datos$listed_in),decreasing = TRUE))[1]
datos$listed_in[is.na(datos$listed_in)] <- moda

