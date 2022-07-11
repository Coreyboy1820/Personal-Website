package main 

import(
	"log"
	_ "database/sql"
	"html/template"
	"net/http"
	_ "Personal-Website/Home-Website/user"
	_ "github.com/mattn/go-sqlite3"
)

func LoginHandler(w http.ResponseWriter, r *http.Request) {
	t, err := template.ParseFiles("logIn.html")
	if err != nil {
		log.Println(err)
	}
	tm := make(map[string]interface{})
	t.Execute(w, tm)
}