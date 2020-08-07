INSERT INTO AppUser(email, password, name, birthdate, description, gender) VALUES ('alencar.costa@inf.ufrgs.br', 'alencar.costa', 'Alencar da Costa', '1999-03-09', 'Soco, soco, bate, bate\nSoco, soco, vira, vira\nSoco, bate, soco, vira\nSoco, bate, vira', 'm');
INSERT INTO AppUser(email, password, name, birthdate, description, gender) VALUES ('mwcamargo@inf.ufrgs.br', 'seninhaBrabo', 'Matheus Woeffel', '1998-10-29', 'Errados são aqueles que chegam no bagulho, tá ligado? Sem saber como é a segurança do ambiente.', 'm');
INSERT INTO AppUser(email, password, name, birthdate, description, gender) VALUES ('pablovittar@gmail.com', 'seuAmorMePegou', 'Pablo Vittar', '1994-11-01', 'Seu amor me pegou\nCê bateu tão forte com o teu amor\n Nocauteou, me tonteou\n Veio à tona, fui à lona, foi K.O.', 'f');
INSERT INTO AppUser(email, password, name, birthdate, description, gender) VALUES ('ronaldinho@gmail.com', 'ronaldinho123', 'Ronaldinho Gaúcho', '1980-03-21', 'Atualmente em reclusão, mas não somos todos presidiários do sistema?', 'm');

INSERT INTO classification(userfrom,userto,type) VALUES (2,1,'d');
INSERT INTO classification(userfrom,userto,type) VALUES (1,3,'s');
INSERT INTO classification(userfrom,userto,type) VALUES (3,1,'l');
INSERT INTO classification(userfrom,userto,type) VALUES (4,3,'l');
INSERT INTO classification(userfrom,userto,type) VALUES (3,4,'l');
INSERT INTO classification(userfrom,userto,type) VALUES (4,2,'l');
INSERT INTO classification(userfrom,userto,type) VALUES (2,4,'s');

INSERT INTO Match(userOne,userTwo, isValid) VALUES (1,3,true);
INSERT INTO Match(userOne,userTwo, isValid) VALUES (3,4,false);
INSERT INTO Match(userOne,userTwo, isValid) VALUES (2,4,true);

INSERT INTO Message(match,sender, text) VALUES (1,1,'Oi linda, vi que você joga cs GO');
INSERT INTO Message(match,sender, text) VALUES (1,3,'Isso mesmo, nada peita minha awp amado');
INSERT INTO Message(match,sender, text) VALUES (1,1,'Vamo ver então, isso é pq vc n conhece o costinha pinada violenta');

INSERT INTO GoldUser(userid,cpf,expiresAt,street,addressNumber,city,uf,cep) VALUES (1,'11111111111','2020-11-29','Travessa Jaguarão', 0, 'Teutônia', 'RS', '95890000');
INSERT INTO GoldUser(userid,cpf,expiresAt,street,addressNumber,city,uf,cep) VALUES (2,'22222222222','2020-12-29','Alameda Vespúcio', 25, 'Porto Alegre', 'RS', '90550031'); 
INSERT INTO GoldUser(userid,cpf,expiresAt,street,addressNumber,city,uf,cep) VALUES (3,'33333333333','2020-09-29','Avenida Dom Pedro', 35, 'São Paulo', 'SP', '08090284'); 

INSERT INTO Card(userId,name,number,expirationDate) VALUES (1,'Mastercard', '1234567890123456','2027-08-07');
INSERT INTO Card(userId,name,number,expirationDate) VALUES (2,'Visa', '9244567894125456','2027-09-07');
INSERT INTO Card(userId,name,number,expirationDate) VALUES (3,'Visa', '8888888888888888','2027-10-29');

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

INSERT INTO Achievement(name, description, thumbnailUrl, game) VALUES ('Greenhorn', 'Earn 15,000g', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/413150/dac82a85ceb1493bb2155d41890b4a6099f5eaa5.jpg', 1);
INSERT INTO Achievement(name, description, thumbnailUrl, game) VALUES ('Cowpoke', 'Earn 50,000g', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/413150/2a5c84271214a05435ea1c7a60bacc1cbbc5fa5a.jpg', 1);
INSERT INTO Achievement(name, description, thumbnailUrl, game) VALUES ('Fisherman', 'Catch 10 different fish.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/413150/e3c6269d906e909415d31d5b7962166c0951509d.jpg', 1);
INSERT INTO Achievement(name, description, thumbnailUrl, game) VALUES ('Mother Catch', 'Catch 100 fish.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/413150/cdc37596680321cfc1f5aef5f6c02e8384d07d62.jpg', 1);
INSERT INTO Achievement(name, description, thumbnailUrl, game) VALUES ('Moving Up', 'Upgrade your house.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/413150/67f2c064873468b80c57218f0992c15f7d2fe83e.jpg', 1);
INSERT INTO Achievement(name, description, thumbnailUrl, game) VALUES ('Points in Your Favor', 'Inflict 2,500 total points of damage to enemies', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/730/55650ec8f0cec4ea9b80d10e5ff420904b2a52a9.jpg', 2);
INSERT INTO Achievement(name, description, thumbnailUrl, game) VALUES ('Shot With Their Pants Down', 'Kill an enemy while they are reloading', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/730/8348876e42a26000ec596a690ee962ff441f3d1f.jpg', 2);
INSERT INTO Achievement(name, description, thumbnailUrl, game) VALUES ('The Unstoppable Force', 'Kill four enemies within a single round', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/730/9f0100bf4168376212331c5177f3d22a30df12ae.jpg', 2);
INSERT INTO Achievement(name, description, thumbnailUrl, game) VALUES ('Body Bagger', 'Kill 25 enemies', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/730/b11ef0453168cd3d10684e184004f71dcc0faa82.jpg', 2);
INSERT INTO Achievement(name, description, thumbnailUrl, game) VALUES ('Newb World Order', 'Win ten rounds', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/730/9c759a9201a6fd54539f639e3815aa09a7c92d59.jpg', 2);
INSERT INTO Achievement(name, description, thumbnailUrl, game) VALUES ('Mercy Killing', 'Kill Brutus, Warden of Axiom Prison.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/238960/daa9f834d636f840070d48f1aeb0b785f92905b3.jpg', 3);
INSERT INTO Achievement(name, description, thumbnailUrl, game) VALUES ('The Star of Wraeclast', 'Kill Merveil, the Siren.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/238960/e630c876dc24194e16eb2bcbdc936b18897ecda9.jpg', 3);
INSERT INTO Achievement(name, description, thumbnailUrl, game) VALUES ('One of a Kind', 'Equip a Unique item.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/238960/cba68127f72c1920934fec0215ed0f82ab7258fd.jpg', 3);
INSERT INTO Achievement(name, description, thumbnailUrl, game) VALUES ('Cryomancer', 'Shatter 5 monsters with a single action.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/238960/e4e6440cd98a0f08f7906290fc952f6984b34867.jpg', 3);

INSERT INTO UserGame(userid, game, lastPlayedDate, hoursPlayed) VALUES (1, 2, '2020-07-22 14:20:00', 1337);
INSERT INTO UserGame(userid, game, lastPlayedDate, hoursPlayed) VALUES (1, 1, '2019-03-22 14:20:00', 13);
INSERT INTO UserGame(userid, game, lastPlayedDate, hoursPlayed) VALUES (1, 3, '2020-04-217 14:20:00', 666);
INSERT INTO UserGame(userid, game, lastPlayedDate, hoursPlayed) VALUES (2, 1, '2020-07-15 14:20:00', 1000);
INSERT INTO UserGame(userid, game, lastPlayedDate, hoursPlayed) VALUES (2, 2, '2020-01-19 14:20:00', 9);
INSERT INTO UserGame(userid, game, lastPlayedDate, hoursPlayed) VALUES (3, 2, '2020-07-15 14:20:00', 323);

INSERT INTO Activity(userId,type,game,photo) VALUES (2,'g',1,NULL);
INSERT INTO Activity(userId,type,game,photo) VALUES (1,'p',NULL,1);
INSERT INTO Activity(userId,type,game,photo) VALUES (3,'p',NULL,3);

INSERT INTO UserAchievement(userid, achievement) VALUES (1, 7)
INSERT INTO UserAchievement(userid, achievement) VALUES (1, 8)
INSERT INTO UserAchievement(userid, achievement) VALUES (1, 9);
INSERT INTO UserAchievement(userid, achievement) VALUES (2, 1);
INSERT INTO UserAchievement(userid, achievement) VALUES (2, 2);
INSERT INTO UserAchievement(userid, achievement) VALUES (2, 3);
