package main

import (
	"fmt"
	"log"
	"net/http"
	"os"
)

var x = 0

func handler(w http.ResponseWriter, r *http.Request) {

	x= x + 1
	log.Print("Hello world received a request.")
	_, _ = fmt.Fprintf(w, "%d", x)
}

func main() {
	log.Print("Hello world sample started.")

	http.HandleFunc("/", handler)

	port := os.Getenv("PORT")
	if port == "" {
		port = "8080"
	}

	log.Fatal(http.ListenAndServe(fmt.Sprintf(":%s", port), nil))
}