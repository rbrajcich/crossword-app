package pgcontent

import (
	"net/http"
	"net/url"
	"testing"
)

func TestRootPathHandler(t *testing.T) {
	expstr := "Hello, teststring!"
	url, _ := url.Parse("http://localhost:8080/teststring")
	returnstr := RootPathHandler(&http.Request{URL: url})
	if expstr != returnstr {
		t.Errorf("Expected request '%s'; got '%s'", expstr, returnstr)
	}
}