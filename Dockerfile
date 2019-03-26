FROM golang:alpine
ADD ./src /go/src/app
WORKDIR /go/src/app
EXPOSE 8080
ENV PORT=8080
CMD ["go", "run", "main.go"]