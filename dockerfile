FROM golang:1.8

WORKDIR /go/src/app
COPY . .

RUN go get -d -v -u github.com/gorilla/mux
RUN go install -v ./...

CMD ["./restApi"]