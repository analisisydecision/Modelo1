# Base image https://hub.docker.com/u/rocker/
FROM rocker/r-base
# En requirements.R puedes especificar los paquetes que necesites
COPY ./DockerConfig/requirements.R /tmp/requirements.R 
RUN Rscript /tmp/requirements.R
# API
RUN mkdir -p /app/
WORKDIR /app/
COPY ./modelo1/modelo1.rda /app/
COPY ./depliegue_modelo1.R /app/
CMD ["/app/depliegue_modelo.R"]


