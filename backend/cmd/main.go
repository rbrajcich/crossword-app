package main

import (
    "fmt"
	"net/http"
	"github.com/rbrajcich/crossword-app/backend/internal/pgcontent"
)

func main() {
    http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintln(w, pgcontent.RootPathHandler(r))
	})
    http.ListenAndServe(":8080", nil)
}
