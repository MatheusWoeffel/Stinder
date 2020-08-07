INSERT INTO AppUser(email, password, name, birthdate, description, gender) VALUES ('alencar.costa@inf.ufrgs.br', 'alencar.costa', 'Alencar da Costa', '1999-03-09', 'Soco, soco, bate, bate\nSoco, soco, vira, vira\nSoco, bate, soco, vira\nSoco, bate, vira', 'm');

INSERT INTO Photo(userid, url, isValid) VALUES (1, 'https://avatars1.githubusercontent.com/u/16635772?s=460&u=9c2dab803275c232d8ceae334b85d14c76bb5f7e&v=4', true);
INSERT INTO Photo(userid, url, isValid) VALUES (2, 'https://bit.ly/2DmeLer', true);
INSERT INTO Photo(userid, url, isValid) VALUES (3, 'https://pm1.narvii.com/6781/44a59d1ed4f92109ae365c462adbc7490cc0c720v2_00.jpg', true);



INSERT INTO Developer(name, thumbnail) VALUES ('Valve', 'https://cdn.cloudflare.steamstatic.com/steamcommunity/public/images/avatars/5f/5f4b7a6439548f5513fc72968dae2217309e3d54_full.jpg');
INSERT INTO Developer(name, thumbnail) VALUES ('ConcernedApe', 'https://cdn.cloudflare.steamstatic.com/steamcommunity/public/images/avatars/ea/eaff8e24ad01c6d6a80064c8a5a46b81210492e3_full.jpg');
INSERT INTO Developer(name, thumbnail) VALUES ('Grinding Gear Game', 'https://cdn.cloudflare.steamstatic.com/steamcommunity/public/images/avatars/c2/c29471ea05a4f5f32b9399e7a03614a2c580a64d_full.jpg');

INSERT INTO Genre(name) VALUES ('Farming Sim');
INSERT INTO Genre(name) VALUES ('RPG');
INSERT INTO Genre(name) VALUES ('FPS');
INSERT INTO Genre(name) VALUES ('Multiplayer');
INSERT INTO Genre(name) VALUES ('MMORPG');
INSERT INTO Genre(name) VALUES ('Action');

INSERT INTO Game(developer, name, thumbnail, releaseDate) VALUES (2, 'Stardew Valley', 'https://cdn.cloudflare.steamstatic.com/steam/apps/413150/header.jpg?t=1595525376', '2016-02-26');
INSERT INTO Game(developer, name, thumbnail, releaseDate) VALUES (1, 'Counter-Strike: Global Offensive', 'https://cdn.cloudflare.steamstatic.com/steam/apps/730/header.jpg?t=1592263625', '2012-08-21');
INSERT INTO Game(developer, name, thumbnail, releaseDate) VALUES (3, 'Path of Exile', 'https://cdn.cloudflare.steamstatic.com/steam/apps/238960/header.jpg?t=1593143597', '2013-10-23');

INSERT INTO GameGenre(game, genre) VALUES (1, 1);
INSERT INTO GameGenre(game, genre) VALUES (1, 2);
INSERT INTO GameGenre(game, genre) VALUES (2, 3);
INSERT INTO GameGenre(game, genre) VALUES (2, 4);
INSERT INTO GameGenre(game, genre) VALUES (3, 2);
INSERT INTO GameGenre(game, genre) VALUES (3, 4);
INSERT INTO GameGenre(game, genre) VALUES (3, 5);
INSERT INTO GameGenre(game, genre) VALUES (3, 6);

INSERT INTO UserGame(userid, game, lastPlayedDate, hoursPlayed) VALUES (1, 2, '2020-07-22 14:20:00', 1337);
INSERT INTO UserGame(userid, game, lastPlayedDate, hoursPlayed) VALUES (1, 1, '2019-03-22 14:20:00', 13);
INSERT INTO UserGame(userid, game, lastPlayedDate, hoursPlayed) VALUES (1, 3, '2020-04-217 14:20:00', 666);
INSERT INTO UserGame(userid, game, lastPlayedDate, hoursPlayed) VALUES (2, 1, '2020-07-15 14:20:00', 1000);
INSERT INTO UserGame(userid, game, lastPlayedDate, hoursPlayed) VALUES (2, 2, '2020-01-19 14:20:00', 9);
INSERT INTO UserGame(userid, game, lastPlayedDate, hoursPlayed) VALUES (3, 2, '2020-07-15 14:20:00', 323);


