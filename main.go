package main

import(
	"log"
	"database/sql"
	_ "html/template"
	"net/http"

	_ "github.com/mattn/go-sqlite3"

)

var db *sql.DB

func main(){
	http.HandleFunc("/logIn/", LoginHandler)
	http.HandleFunc("/", HomeHandler)
	http.HandleFunc("/aboutMe/", AboutMeHandler)
	http.HandleFunc("/comments/", CommentsHandler)
	log.Println("Starting server on localhost:8080")
	http.ListenAndServe(":8080", nil)
}