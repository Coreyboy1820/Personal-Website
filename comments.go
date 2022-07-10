package main 

import(
	_ "database/sql"
	"html/template"
	"net/http"

	_ "github.com/mattn/go-sqlite3"
)

func CommentsHandler(w http.ResponseWriter, r *http.Request) {
	tm := make(map[string]interface{})
	t, err := template.ParseFiles("comments.html")
	if err != nil {
		panic(err.Error())
	}
	t.Execute(w, tm)
}