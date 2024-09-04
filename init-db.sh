#!/bin/bash
set -e

# Crear la base de datos 'task-list-db'
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE DATABASE "task-list-db";
EOSQL

# Crear un nuevo usuario y asignarle la base de datos 'task-list-db'
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "task-list-db" <<-EOSQL
    CREATE USER miguel WITH PASSWORD 'taskpassword';
    GRANT ALL PRIVILEGES ON DATABASE "task-list-db" TO miguel;
EOSQL
