FROM golang:1.23.1

WORKDIR /go/app/src

COPY go.mod .
COPY . .

RUN go mod download

RUN CGO_ENABLED=0 GOOS=linux go build -o testapp .

CMD ["./testapp"]