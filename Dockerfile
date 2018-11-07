# Base image https://hub.docker.com/u/rocker/
FROM rocker/r-base

## En requirements.R puedes especificar los paquetes que necesites

## El requirements se  guarda en un temporal para posterior ejecución
COPY ./DockerConfig/requirements.R /tmp/requirements.R 
RUN Rscript /tmp/requirements.R

# Creamos el eviroment para RStudio
ENV USER rstudio

## Copia de archivos
## COPY ./Analysis /home/$USER/Analysis






