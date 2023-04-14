FROM golang:latest

WORKDIR /usr/src/app

RUN go install github.com/cosmtrek/air@latest

ENV DB_HOST=${DB_HOST}
#user database
ENV DB_USER=${DB_USER}
#password user database
ENV DB_PASS=${DB_PASS}
#database name
ENV DB_NAME=${DB_NAME}
#port database
ENV DB_PORT=${DB_PORT}
#driver for database migration
ENV DB_DRIVER=${DB_DRIVER}

COPY . .
RUN go mod tidy
