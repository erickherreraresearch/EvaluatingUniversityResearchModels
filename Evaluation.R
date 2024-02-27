library(rstudioapi)
setwd(dirname(getActiveDocumentContext()$path))
library(readr)
datos_prueba = read.csv("sample-data.csv")

# cargar el modelo
threehidden_model<- load_model_tf('three_hidden_model22-23-25')

# para evaluar una nueva universidad
resultado = predict(threehidden_model, as.matrix(datos_prueba))
resultado = as.data.frame(resultado)
colnames(resultado) = c("Económica","Social","Ambiental","Institucional")
resultado
summary(resultado)