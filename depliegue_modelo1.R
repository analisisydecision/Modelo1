
library(jsonlite)

load("modelo1/modelo1.rda")

#* @post /prediccion
predict.peso <- function(Altura) {
  data <- list(
    Altura=Altura
  )
  prediccion <- predict.lm(modelo1, data )
  return(prediccion)
}

#predict.peso({175})

