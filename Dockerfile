# Base image https://hub.docker.com/u/rocker/
FROM rocker/r-base

## En requirements.R puedes especificar los paquetes que necesites
# En requirements.R puedes especificar los paquetes que necesites

## El requirements se  guarda en un temporal para posterior ejecución
# El requirements se  guarda en un temporal para posterior ejecución
COPY ./DockerConfig/requirements.R /tmp/requirements.R 
RUN Rscript /tmp/requirements.R

# API
RUN mkdir -p /app/
WORKDIR /app/
COPY depliegue_modelo.R /app/
COPY ./depliegue_modelo.R /app/
COPY /modelo1/modelo1.rda /app/
CMD ["/app/depliegue_modelo.R"]




