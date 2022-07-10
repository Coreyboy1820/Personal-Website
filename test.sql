INSERT INTO roles (user, admin) VALUES (false, true);
INSERT INTO roles (user, admin) VALUES (true, false);
INSERT INTO roles (user, admin) VALUES (true, false);

INSERT INTO preference (linkEmail, template) VALUES (true, "one");
INSERT INTO preference (linkEmail, template) VALUES (false, "two");
INSERT INTO preference (linkEmail, template) VALUES (true, "three");

INSERT INTO users (homepageId, projectPageId, commentPageId, aboutMePageId, roleId, preferenceId, firstName, lastName, email, profession) VALUES (1, 1, 1, 1, 1, 1, "Corey", "Kelley", "corey_kelley@sjsu.edu", "Student/Intern");
INSERT INTO users (homepageId, projectPageId, commentPageId, aboutMePageId, roleId, preferenceId, firstName, lastName, email, profession) VALUES (0, 0, 0, 0, 2, 2, "Nate", "Garza", "nathanel_garza@sjsu.edu", "Web developer");
INSERT INTO users (homepageId, projectPageId, commentPageId, aboutMePageId, roleId, preferenceId, firstName, lastName, email, profession) VALUES (0, 0, 0, 0, 3, 3, "Adrien", "Carrou", "adrien_carrou@sjsu.edu", "Student/Intern");

INSERT INTO homePage (homePageId) VALUES (0);
INSERT INTO homePage (homePageId) VALUES (1);

INSERT INTO homeTab (homePageId, tabName, tabDescription) VALUES (1, "The Purpose of this Website.", "It is to inform the people who are interestedin me about who I am and what I do.");
INSERT INTO homeTab (homePageId, tabName, tabDescription) VALUES (1, "The basics.", "I am a computer engineer attending sjsu with a 3.96 GPA who will be an eternal student.");
INSERT INTO homeTab (homePageId, tabName, tabDescription) VALUES (1, "The Contents of this Website.", "This website contains a page that is sololy about who I am, a page about the projects I have done and that I am working on, and a page where others can leave comments about me and there experience with me.");

INSERT INTO projectPage (projectPageId) VALUES (0);
INSERT INTO projectPage (projectPageId) VALUES (1);

INSERT INTO projectTab (projectPageId, projectName, projectDescription, projectLink, projectPicture) VALUES (1, "Project Falcor", "This project was a collective group of people working on a quadreuped/drone in one collective project.", "https://github.com/Project-Falkor-Group", "image.png");
INSERT INTO projectTab (projectPageId, projectName, projectDescription, projectLink, projectPicture) VALUES (1, "SJSU Robotics", "I am currently the controls lead of the robotics team, we are working on a big mars rover that we take to a university rover competition at the end of the year.", "https://github.com/SJSURoboticsTeam", "image.png");

INSERT INTO commentPage (commentPageId) VALUES (0);
INSERT INTO commentPage (commentPageId) VALUES (1);

INSERT INTO commentTab (commentPageId, userId, comment) VALUES (1, 2, "You'rrrrrrrrrreeeee GREAT!");
INSERT INTO commentTab (commentPageId, userId, comment) VALUES (1, 3, "You'rrrrrrrrrreeeee NOT!");

INSERT INTO aboutMePage (aboutMePageId) VALUES (0);
INSERT INTO aboutMePage (aboutMePageId) VALUES (1);

INSERT INTO aboutMeTab (aboutMePageId, topic, aboutMeDesc) VALUES (1, "Sports", "I played Water polo and swam throughout high school and college, I also ran track my first year of high school");
INSERT INTO aboutMeTab (aboutMePageId, topic, aboutMeDesc) VALUES (1, "School", "I attended Modesto Junior College for 2 years then transfered to sjsu with a asociates in mathematics, at sjsu I current have a 3.96 GPA and have two more years of schooling.");

SELECT * FROM users;
SELECT * FROM roles;
SELECT * FROM preference;
SELECT * FROM homePage;
SELECT * FROM homeTab;
SELECT * FROM projectPage;
SELECT * FROM projectTab;
SELECT * FROM commentPage;
SELECT * FROM commentTab;
SELECT * FROM aboutMePage;
SELECT * FROM aboutMeTab;