FROM golang:1.23.5-alpine3.22

WORKDIR /app

COPY . .

RUN go build -o myapp

CMD ["./myapp"]

EXPOSE 8085