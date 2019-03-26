#FROM golang:alpine
#ADD ./src /go/src/app
#WORKDIR /go/src/app
#EXPOSE 8080
#ENV PORT=8080
#CMD ["go", "run", "main.go"]

FROM golang:1.11
ADD ./src/main/ /go/src/app
WORKDIR /go/src/app
COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build .

RUN go get -d -v ./...
RUN go install -v ./...
EXPOSE 8080
CMD ["main"]