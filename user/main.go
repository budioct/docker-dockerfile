package main

import (
	"fmt"
	"net/http"
)

// Sample http Hello World Go-Lang Web

func main() {
	http.HandleFunc("/", HelloServer)
	http.ListenAndServe(":8080", nil)
}

func HelloServer(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello, World!<br>")
	fmt.Fprintf(w, "golang, success!")
}