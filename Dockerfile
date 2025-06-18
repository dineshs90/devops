FROM golang:1.24.4-alpine3.21

WORKDIR /app

COPY . .

RUN go build -o myapp

CMD ["./myapp"]

EXPOSE 8085