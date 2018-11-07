#Programa de llamada a la API con plumber

#install.packages("plumber")
library(plumber)
r <- plumb("depliegue_modelo1.R")
r$run(port=8000)
