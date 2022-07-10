package user

type user struct {
	userId int
	homePageId int
	projectPageId int
	commentPageId int
	aboutMePageId int
	roleId int
	preferenceId int
	firstName string
	lastName string
	email string
	profession string
};

var currUser user