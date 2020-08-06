CREATE TABLE User (
	id SERIAL NOT NULL,
  email VARCHAR(80) NOT NULL UNIQUE,
  password VARCHAR(16) NOT NULL,
  birthdate DATE NOT NULL,
  description VARCHAR(500),
  gender CHAR(1) NOT NULL CHECK(gender IN ('f', 'm')),
  PRIMARY KEY (id)
);

CREATE TABLE Photo (
	id SERIAL NOT NULL,
  user INT NOT NULL,
  url VARCHAR(150) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (user) REFERENCES User  
);

CREATE TABLE Classification (
	userFrom INT NOT NULL,
  userTo INT NOT NULL,
  type CHAR(1) NOT NULL CHECK(type IN ('d', 'l', 's')),
  createdAt TIMESTAMP NOT NULL DEFAULT NOW(),
  PRIMARY KEY (userFrom, userTo),
  FOREIGN KEY (userFrom) REFERENCES User,
  FOREIGN KEY (userTo) REFERENCES User,
);

CREATE TABLE Match (
  id SERIAL NOT NULL,
	userOne INT NOT NULL,
  userTwo INT NOT NULL,
  isValid BOOLEAN NOT NULL DEFAULT (true),
  createdAt TIMESTAMP NOT NULL DEFAULT NOW(),
  PRIMARY KEY (id),
  UNIQUE (userOne, userTwo),
  FOREIGN KEY (userOne) REFERENCES User,
  FOREIGN KEY (userTwo) REFERENCES User,
);

--CREATE TABLE Match (
--	userOne INT NOT NULL,
--  userTwo INT NOT NULL,
--  isValid BOOLEAN NOT NULL DEFAULT (true),
--  createdAt TIMESTAMP NOT NULL DEFAULT NOW(),
--  PRIMARY KEY (userOne, userTwo),
--  FOREIGN KEY (userOne) REFERENCES User,
--  FOREIGN KEY (userTwo) REFERENCES User,
--);


CREATE TABLE Message (
	id SERIAL NOT NULL,
  match INT NOT NULL,
  sender INT NOT NULL,
  text VARCHAR(500) NOT NULL,
  createdAt TIMESTAMP NOT NULL DEFAULT NOW(),
  PRIMARY KEY (id),
  FOREIGN KEY (match) REFERENCES Match,
  FOREIGN KEY (sender) REFERENCES User,
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

CREATE TABLE GameGenre (
	game INT NOT NULL,
  genre INT NOT NULL,
  PRIMARY KEY (game, genre),
  FOREIGN KEY (game) REFERENCES Game,
  FOREIGN KEY (genre) REFERENCES Genre,
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


-- Game faz parte da chave primaria????
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
	user INT NOT NULL,
  achievement INT NOT NULL,
  createdAt TIMESTAMP NOT NULL DEFAULT NOW(),
  PRIMARY KEY (user, achievement),
  FOREIGN KEY (user) REFERENCES User,
  FOREIGN KEY (achievement) REFERENCES Achievement,
);

CREATE TABLE UserGame (
	user INT NOT NULL,
  game INT NOT NULL,
  lastPlayedDate TIMESTAMP NOT NULL,
  hoursPlayed INT NOT NULL DEFAULT (0),
  PRIMARY KEY (user, game),
  FOREIGN KEY (user) REFERENCES User,
  FOREIGN KEY (game) REFERENCES Game,
);

-- VERIFICAR SE ISSO TA CORRETO
CREATE TABLE Activity (
	id SERIAL NOT NULL,
  user INT NOT NULL,
  type CHAR(1) NOT NULL CHECK(type IN ('p', 'g')),
  game INT,
  photo INT,
  createdAt TIMESTAMP NOT NULL DEFAULT NOW(),
  PRIMARY KEY (id),
  FOREIGN KEY (user) REFERENCES User,
  FOREIGN KEY (game) REFERENCES Game,
  FOREIGN KEY (photo) REFERENCES Photo,
);

CREATE TABLE GoldUser(
  user INT NOT NULL;
  cpf CHAR(11) NOT NULL UNIQUE;
  expiresAt  DATA NOT NULL;
  street VARCHAR(80) NOT NULL;
  addressNumber smallint NOT NULL;
  city VARCHAR(50) NOT NULL;
  uf CHAR(2) NOT NULL CHECK(uf in ('AC','AL','AP','AM','BA','CE','DF','ES','GO','MA','MT','MS','MG','PA','PB','PR','PE','PI','RJ','RN','RS','RO','RR','SC','SP','SE','TO'));
  cep CHAR(8) NOT NULL;
  PRIMARY KEY (user);
  FOREIGN KEY (user) REFERENCES User;
);

CREATE TABLE Card(
  id SERIAL NOT NULL;
  user INT NOT NULL;
  name VARCHAR(40) NOT NULL;
  number CHAR(16) NOT NULL;
  expirationDate DATE NOT NULL;
  PRIMARY KEY (id);
  FOREIGN KEY (user) REFERENCES User;
);



