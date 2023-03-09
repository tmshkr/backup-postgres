FROM postgres:latest
RUN apt-get update && apt-get install -y awscli

ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres

WORKDIR /tmp

COPY ./run.sh ./run.sh

ENTRYPOINT ["/tmp/run.sh"]