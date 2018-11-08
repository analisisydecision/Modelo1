# Base image https://hub.docker.com/u/rocker/
FROM rocker/r-base

## En requirements.R puedes especificar los paquetes que necesites

## El requirements se  guarda en un temporal para posterior ejecución
COPY ./DockerConfig/requirements.R /tmp/requirements.R 
RUN Rscript /tmp/requirements.R

<<<<<<< HEAD
# API
RUN mkdir -p /app/
WORKDIR /app/
COPY depliegue_modelo.R /app/
COPY /modelo1/modelo1.rda /app/
CMD ["/app/depliegue_modelo.R"]

# Creamos el eviroment para RStudio
#ENV USER rstudio


=======
# Creamos el eviroment para RStudio
ENV USER rstudio

## Copia de archivos
## COPY ./Analysis /home/$USER/Analysis

>>>>>>> beb4dcb9876dff54e9e3ef294633aeb30369481f





