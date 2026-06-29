FROM golang:1.26.2

WORKDIR /app

COPY go.mod .
COPY go.sum .

RUN go mod download

COPY . .

RUN go build -o subscriber-service ./cmd

EXPOSE 7070

CMD ["./subscriber-service"]
