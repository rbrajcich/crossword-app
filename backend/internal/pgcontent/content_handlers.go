package pgcontent

import (
	"fmt"
	"net/http"
)

func RootPathHandler(r *http.Request) string {
    return fmt.Sprintf("Hello, %s!", r.URL.Path[1:])
}
