FROM postgres:15

ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgrespassword

COPY init-db.sh /docker-entrypoint-initdb.d/

EXPOSE 5432