DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS preference;
DROP TABLE IF EXISTS homePage;
DROP TABLE IF EXISTS homeTab;
DROP TABLE IF EXISTS projectPage;
DROP TABLE IF EXISTS projectTab;
DROP TABLE IF EXISTS commentPage;
DROP TABLE IF EXISTS commentTab;
DROP TABLE IF EXISTS aboutMePage;
DROP TABLE IF EXISTS aboutMeTab;

CREATE TABLE IF NOT EXISTS users (
    userId INTEGER PRIMARY KEY AUTOINCREMENT,
    homePageId INTEGER REFERENCES homePage,
    projectPageId INTEGER REFERENCES projectPage,
    commentPageId INTEGER REFERENCES commentPage,
    aboutMePageId INTEGER REFERENCES aboutMePage,
    roleId INTEGER REFERENCES roles,
    preferenceId INTEGER REFERENCES preference,
    firstName TEXT,
    lastName TEXT,
    email TEXT,
    profession TEXT
);

CREATE TABLE IF NOT EXISTS roles (
    roleId INTEGER PRIMARY KEY AUTOINCREMENT,
    user BOOLEAN,
    admin BOOLEAN
);


CREATE TABLE IF NOT EXISTS preference (
    preferenceId INTEGER PRIMARY KEY AUTOINCREMENT,
    linkEmail TEXT,
    template TEXT
    -- Template is a placeholder for now
);

CREATE TABLE IF NOT EXISTS homePage (
    homePageId INTEGER PRIMARY KEY AUTOINCREMENT
    
);

CREATE TABLE IF NOT EXISTS homeTab (
    homeTabId INTEGER PRIMARY KEY AUTOINCREMENT,
    homePageId INTEGER REFERENCES homePage,
    tabName TEXT,
    tabDescription TEXT,
    tabPicture blob
);

CREATE TABLE IF NOT EXISTS projectPage(
    projectPageId INTEGER PRIMARY KEY AUTOINCREMENT
);

CREATE TABLE IF NOT EXISTS projectTab (
    projectTabId INTEGER PRIMARY KEY AUTOINCREMENT,
    projectPageId INTEGER REFERENCES projectPage,
    projectName TEXT,
    projectDescription TEXT,
    projectLink TEXT,
    projectPicture blob
);

CREATE TABLE IF NOT EXISTS commentPage(
    commentPageId INTEGER PRIMARY KEY AUTOINCREMENT
);

CREATE TABLE IF NOT EXISTS commentTab (
    commentTabId INTEGER PRIMARY KEY AUTOINCREMENT,
    commentPageId INTEGER REFERENCES commentPage,
    userId INTEGER REFERENCES userId,
    comment TEXT,
    picture blob
);

CREATE TABLE IF NOT EXISTS aboutMePage(
    aboutMePageId INTEGER PRIMARY KEY AUTOINCREMENT
);

CREATE TABLE IF NOT EXISTS aboutMeTab (
    aboutMeTabId INTEGER PRIMARY KEY AUTOINCREMENT,
    aboutMePageId INTEGER REFERENCES aboutMePage,
    topic TEXT,
    aboutMeDesc TEXT,
    picture blob
);