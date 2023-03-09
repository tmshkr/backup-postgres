FROM postgres:latest
RUN apt-get update
RUN apt-get install -y awscli zip

ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres

COPY ./run.sh ./

ENTRYPOINT ["/run.sh"]