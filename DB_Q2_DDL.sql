CREATE DATABASE question_2;
USE question_2;

CREATE TABLE User(
	User_Id INT PRIMARY KEY AUTO_INCREMENT, -- Id is assigned based on Email
    User_Name VARCHAR(30) NOT NULL,
    Email VARCHAR(40) UNIQUE NOT NULL,
    Password VARCHAR(16) NOT NULL
);

CREATE TABLE Content_Creator(
	User_Id INT NOT NULL, 
    Video_Count INT,
    FOREIGN KEY (User_Id) REFERENCES User(User_Id),
    PRIMARY KEY (User_Id)
);

CREATE TABLE Viewer(
	User_Id INT NOT NULL, 
    Num_watched_videos INT,
    Num_favourite_videos INT,
    FOREIGN KEY (User_Id) REFERENCES User(User_Id),
    PRIMARY KEY (User_Id)
);

CREATE TABLE Ad_Agency(
	User_Id INT NOT NULL, 
    Num_Ads_Subscribed INT,
    FOREIGN KEY (User_Id) REFERENCES User(User_Id),
    PRIMARY KEY (User_Id)
);

CREATE TABLE Admin(
	User_Id INT NOT NULL, 
	Admin_Level VARCHAR(5) NOT NULL,
    FOREIGN KEY (User_Id) REFERENCES User(User_Id),
    PRIMARY KEY (User_Id)
);

CREATE TABLE Channels( 
	Channel_Id INT PRIMARY KEY AUTO_INCREMENT,
    User_Id INT NOT NULL,
    Ch_Name VARCHAR(20) NOT NULL,
    No_of_Subscribers INT,
    FOREIGN KEY (User_Id) REFERENCES User(User_Id)
);

CREATE TABLE Video(
	Video_Id INT PRIMARY KEY AUTO_INCREMENT,
    Vid_Name VARCHAR(30) NOT NULL,
    Channel_Id INT NOT NULL,
    Creator_Id INT NOT NULL,  -- maybe not needed because we can find creator through channel
    Ad_Enabled BOOL NOT NULL,
    Date_Posted DATE NOT NULL,
    No_of_Views INT,
    Duration TIME NOT NULL,  
    URL VARCHAR(50) NOT NULL,
    FOREIGN KEY (Channel_Id) REFERENCES Channels(Channel_Id),
    FOREIGN KEY (Creator_Id) REFERENCES Content_Creator(User_Id)
);

CREATE TABLE Subscribe(
	User_Id INT NOT NULL,
    Channel_Id INT NOT NULL,
    Subscribe_date DATE NOT NULL,
    FOREIGN KEY (User_Id) REFERENCES User(User_Id),
    FOREIGN KEY (Channel_Id) REFERENCES Channels(Channel_Id),
    PRIMARY KEY (User_Id,Channel_Id)
);

CREATE TABLE Comments(
	Comment_Id INT PRIMARY KEY AUTO_INCREMENT,
    User_Id INT NOT NULL,
    Video_Id INT NOT NULL,
    Comment_Text VARCHAR(300) NOT NULL,
    Comment_DateTime DATETIME NOT NULL,
    Sentiment VARCHAR(10) NOT NULL,  -- see if this needs to be int score or varchar (pos,neg,neu) 
    FOREIGN KEY (User_Id) REFERENCES User(User_Id),
    FOREIGN KEY (Video_Id) REFERENCES Video(Video_Id)
);

CREATE TABLE Reactions(
	Reaction_Id INT PRIMARY KEY AUTO_INCREMENT,
    User_Id INT NOT NULL,
    Video_Id INT NOT NULL,
    Reaction_type VARCHAR(10),
    FOREIGN KEY (User_Id) REFERENCES User(User_Id),
    FOREIGN KEY (Video_Id) REFERENCES Video(Video_Id)
);

CREATE TABLE Ad(
	Ad_Id INT PRIMARY KEY AUTO_INCREMENT,
    Ad_Name VARCHAR(20) NOT NULL,
    Ad_Type VARCHAR(15) NOT NULL,
    Price_per_View INT NOT NULL,
    Agency_Id INT,
    FOREIGN KEY (Agency_Id) REFERENCES Ad_Agency(User_Id)
);

CREATE TABLE Location(
	Location_Id INT PRIMARY KEY AUTO_INCREMENT,
    Location_Name VARCHAR(25) NOT NULL,
    Cost_per_View INT NOT NULL
);

CREATE TABLE Ad_Location(
	Ad_Id INT NOT NULL,
    Location_Id INT NOT NULL,
    FOREIGN KEY (Ad_Id) REFERENCES Ad(Ad_Id),
    FOREIGN KEY (Location_Id) REFERENCES Location(Location_Id),
    PRIMARY KEY (Ad_Id,Location_Id)
);

CREATE TABLE Ad_Video(
    Video_Id INT NOT NULL,
    Ad_Id INT NOT NULL,
    FOREIGN KEY (Ad_Id) REFERENCES Ad(Ad_Id),
    FOREIGN KEY (Video_Id) REFERENCES Video(Video_Id),
    PRIMARY KEY (Video_Id,Ad_Id)
);

CREATE TABLE Earnings(
	Earning_Id INT PRIMARY KEY AUTO_INCREMENT,
    Earning_Date DATE NOT NULL,  
    Amount INT NOT NULL,
    Creator_Id INT NOT NULL,
    FOREIGN KEY (Creator_Id) REFERENCES Content_Creator(User_Id)
);
