FROM golang:1.21

WORKDIR /app

RUN go mod init k8sServer

COPY . .

RUN go build -o server .

CMD ["./server"]
