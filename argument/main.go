package main

import (
    "fmt"
    "net/http"
    "os"
)

// sampel Hello World Go-Lang Web dengan Port

func main() {
    port := os.Getenv("APP_PORT")
    fmt.Println("Run app in port : " + port)
    http.HandleFunc("/", HelloServer)
    http.ListenAndServe(":" + port, nil)
}

func HelloServer(w http.ResponseWriter, r *http.Request) {
    fmt.Fprintf(w, "Hello, World!")
}