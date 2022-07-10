package main

import(
	"database/sql"
	"html/template"
	"net/http"

	_ "github.com/mattn/go-sqlite3"

)

type Users struct {
	UserId int
	FirstName string
	LastName string
	Age int
};

func OpenDB () {
	dbFile := "personal.db"
	var err error
	db, err = sql.Open("sqlite3", dbFile)
	if err != nil {
		panic(err.Error())
	}
}

func HomeHandler (w http.ResponseWriter, r *http.Request){
	OpenDB()
	//sql select statement
	sqlStmt := "SELECT * FROM users"

	// Execute the query
	row, err := db.Query(sqlStmt) 
	if err != nil {
		panic(err.Error())
	}

	//close both at end of function
	defer row.Close()
	defer db.Close()

	var Us []Users
	var user Users
	for row.Next(){
		row.Scan(&user.UserId, &user.FirstName, &user.LastName, &user.Age)
		Us = append(Us, user)
		if err != nil {
			panic(err.Error()) // proper error handling instead of panic in your app
		}
	}
	tm := make(map[string]interface{})

	tm["Users"] = Us
	t, err := template.ParseFiles("home.html")
	if err != nil {
		panic(err.Error())
	}
	t.Execute(w, tm)
}