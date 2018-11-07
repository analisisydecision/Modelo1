#Programa de creación del modelo
Altura <-c(175,180,162,157,180,173,171,168,165,165)
Peso <-c(80,82,57,63,78,65,66,67,62,58)

modelo1 <- lm(Peso~Altura)
summary(modelo1)
save(modelo1, file = "modelo1/modelo1.rda")
#rm(modelo1)

