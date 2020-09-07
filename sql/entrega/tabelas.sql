DROP TABLE IF EXISTS message;
DROP TABLE IF EXISTS userAchievement;
DROP TABLE IF EXISTS goldUser;
DROP TABLE IF EXISTS classification;
DROP TABLE IF EXISTS gameGenre;
DROP TABLE IF EXISTS match;
DROP TABLE IF EXISTS achievement;
DROP TABLE IF EXISTS activity;
DROP TABLE IF EXISTS genre;
DROP TABLE IF EXISTS card;
DROP TABLE IF EXISTS userGame;
DROP TABLE IF EXISTS game;
DROP TABLE IF EXISTS developer;
DROP TABLE IF EXISTS photo;
DROP TABLE IF EXISTS appUser;

CREATE TABLE AppUser (
  id SERIAL NOT NULL,
  email VARCHAR(80) NOT NULL UNIQUE,
  password VARCHAR(16) NOT NULL,
  name VARCHAR(50) NOT NULL,
  birthdate DATE NOT NULL,
  description VARCHAR(500),
  gender CHAR(1) NOT NULL CHECK(gender IN ('f', 'm')),
  PRIMARY KEY (id)
);

CREATE TABLE Photo (
  id SERIAL NOT NULL,
  userId INT NOT NULL,
  url VARCHAR(150) NOT NULL,
  isValid BOOLEAN NOT NULL default TRUE,
  PRIMARY KEY (id),
  FOREIGN KEY (userId) REFERENCES AppUser  
);

CREATE TABLE Classification (
  userFrom INT NOT NULL,
  userTo INT NOT NULL,
  type CHAR(1) NOT NULL CHECK(type IN ('d', 'l', 's')),
  createdAt TIMESTAMP NOT NULL DEFAULT NOW(),
  PRIMARY KEY (userFrom, userTo),
  FOREIGN KEY (userFrom) REFERENCES AppUser,
  FOREIGN KEY (userTo) REFERENCES AppUser
);

CREATE TABLE Match (
  id SERIAL NOT NULL,
  userOne INT NOT NULL,
  userTwo INT NOT NULL,
  isValid BOOLEAN NOT NULL DEFAULT (true),
  createdAt TIMESTAMP NOT NULL DEFAULT NOW(),
  PRIMARY KEY (id),
  UNIQUE (userOne, userTwo),
  FOREIGN KEY (userOne) REFERENCES AppUser,
  FOREIGN KEY (userTwo) REFERENCES AppUser
);


CREATE TABLE Message (
  id SERIAL NOT NULL,
  match INT NOT NULL,
  sender INT NOT NULL,
  text VARCHAR(500) NOT NULL,
  createdAt TIMESTAMP NOT NULL DEFAULT NOW(),
  PRIMARY KEY (id),
  FOREIGN KEY (match) REFERENCES Match,
  FOREIGN KEY (sender) REFERENCES AppUser
);

CREATE TABLE Genre (
  id SERIAL NOT NULL,
  name VARCHAR(50) NOT NULL UNIQUE,
  PRIMARY KEY (id)
);

CREATE TABLE Developer (
  id SERIAL NOT NULL,
  name VARCHAR(50) NOT NULL UNIQUE,
  thumbnail VARCHAR(150) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE Game (
  id SERIAL NOT NULL,
  developer INT NOT NULL,
  name VARCHAR(50) NOT NULL UNIQUE,
  thumbnail VARCHAR(150) NOT NULL,
  releaseDate DATE NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (developer) REFERENCES Developer
);

CREATE TABLE GameGenre (
  game INT NOT NULL,
  genre INT NOT NULL,
  PRIMARY KEY (game, genre),
  FOREIGN KEY (game) REFERENCES Game,
  FOREIGN KEY (genre) REFERENCES Genre
);


CREATE TABLE Achievement (
  id SERIAL NOT NULL,
  game INT NOT NULL,
  name VARCHAR(50) NOT NULL,
  description VARCHAR(100) NOT NULL,
  thumbnail VARCHAR(150) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (game) REFERENCES Game
);

CREATE TABLE UserAchievement (
  userId INT NOT NULL,
  achievement INT NOT NULL,
  createdAt TIMESTAMP NOT NULL DEFAULT NOW(),
  PRIMARY KEY (userId, achievement),
  FOREIGN KEY (userId) REFERENCES AppUser,
  FOREIGN KEY (achievement) REFERENCES Achievement
);

CREATE TABLE UserGame (
  userId INT NOT NULL,
  game INT NOT NULL,
  lastPlayedDate TIMESTAMP NOT NULL,
  hoursPlayed INT NOT NULL DEFAULT (0),
  PRIMARY KEY (userId, game),
  FOREIGN KEY (userId) REFERENCES AppUser,
  FOREIGN KEY (game) REFERENCES Game
);


CREATE TABLE Activity (
  id SERIAL NOT NULL,
  userId INT NOT NULL,
  type CHAR(1) NOT NULL CHECK(type IN ('p', 'g')),
  game INT,
  photo INT,
  createdAt TIMESTAMP NOT NULL DEFAULT NOW(),
  PRIMARY KEY (id),
  FOREIGN KEY (userId) REFERENCES AppUser,
  FOREIGN KEY (game) REFERENCES Game,
  FOREIGN KEY (photo) REFERENCES Photo
);

CREATE TABLE GoldUser(
  userId INT NOT NULL,
  cpf CHAR(11) NOT NULL UNIQUE,
  expiresAt  DATE NOT NULL,
  street VARCHAR(80) NOT NULL,
  addressNumber smallint NOT NULL,
  city VARCHAR(50) NOT NULL,
  uf CHAR(2) NOT NULL CHECK(uf in ('AC','AL','AP','AM','BA','CE','DF','ES','GO','MA','MT','MS','MG','PA','PB','PR','PE','PI','RJ','RN','RS','RO','RR','SC','SP','SE','TO')),
  cep CHAR(8) NOT NULL,
  PRIMARY KEY (userId),
  FOREIGN KEY (userId) REFERENCES AppUser
);

CREATE TABLE Card(
  id SERIAL NOT NULL,
  userId INT NOT NULL,
  name VARCHAR(40) NOT NULL,
  number CHAR(16) NOT NULL,
  expirationDate DATE NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (userId) REFERENCES AppUser
);

CREATE FUNCTION createPhotoActivity() RETURNS TRIGGER AS $$
BEGIN
  INSERT INTO Activity(userId,type,game,photo) VALUES (NEW.userId,'p',NULL,NEW.id);
  RETURN NULL; --Gatilho after
END
$$ LANGUAGE 'plpgsql';


CREATE TRIGGER ActivityPhotoGeneration
AFTER INSERT ON Photo
FOR EACH ROW
EXECUTE PROCEDURE createPhotoActivity();


CREATE FUNCTION createGameActivity() RETURNS TRIGGER AS $$
BEGIN
  INSERT INTO Activity(userId,type,game,photo) VALUES (NEW.userId,'g',NEW.game,NULL);
  RETURN NULL; --Gatilho after
END
$$ LANGUAGE 'plpgsql';


CREATE TRIGGER ActivityGameGeneration
AFTER INSERT ON UserGame
FOR EACH ROW
EXECUTE PROCEDURE createGameActivity();



