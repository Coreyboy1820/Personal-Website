package main 

import(
	_ "database/sql"
	_ "html/template"
	"net/http"
	_ "Personal-Website/Home-Website/user"
	_ "github.com/mattn/go-sqlite3"
)

func LoginHandler(w http.ResponseWriter, r *http.Request) {
	
}