<<<<<<< HEAD
INSERT INTO Developer(name, thumbnail) VALUES ('The Behemoth', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/b4/b42a9f9540f1b5defd999f168852ef55fe550c4d_full.jpg');

INSERT INTO Developer(name, thumbnail) VALUES ('Valve', 'https://cdn.cloudflare.steamstatic.com/steamcommunity/public/images/avatars/5f/5f4b7a6439548f5513fc72968dae2217309e3d54_full.jpg');
INSERT INTO Developer(name, thumbnail) VALUES ('ConcernedApe', 'https://cdn.cloudflare.steamstatic.com/steamcommunity/public/images/avatars/ea/eaff8e24ad01c6d6a80064c8a5a46b81210492e3_full.jpg');
INSERT INTO Developer(name, thumbnail) VALUES ('Grinding Gear Game', 'https://cdn.cloudflare.steamstatic.com/steamcommunity/public/images/avatars/c2/c29471ea05a4f5f32b9399e7a03614a2c580a64d_full.jpg');

INSERT INTO Game(name, thumbnail, releaseDate, developer) VALUES ('Pit People®', 'https://steamcdn-a.akamaihd.net/steam/apps/291860/header.jpg?t=1591221295', '2019-12-10 08:59:18', 1);
INSERT INTO Game(name, thumbnail, releaseDate, developer) VALUES ('BattleBlock Theater®', 'https://steamcdn-a.akamaihd.net/steam/apps/238460/header.jpg?t=1599169670', '2019-09-18 23:39:51', 1);
INSERT INTO Game(name, thumbnail, releaseDate, developer) VALUES ('Castle Crashers®', 'https://steamcdn-a.akamaihd.net/steam/apps/204360/header.jpg?t=1598565391', '2020-03-19 04:20:42', 1);

INSERT INTO Game(developer, name, thumbnail, releaseDate) VALUES (3, 'Stardew Valley', 'https://cdn.cloudflare.steamstatic.com/steam/apps/413150/header.jpg?t=1595525376', '2016-02-26');
INSERT INTO Game(developer, name, thumbnail, releaseDate) VALUES (2, 'Counter-Strike: Global Offensive', 'https://cdn.cloudflare.steamstatic.com/steam/apps/730/header.jpg?t=1592263625', '2012-08-21');
INSERT INTO Game(developer, name, thumbnail, releaseDate) VALUES (4, 'Path of Exile', 'https://cdn.cloudflare.steamstatic.com/steam/apps/238960/header.jpg?t=1593143597', '2013-10-23');


INSERT INTO Genre(name) VALUES ('Strategy');
INSERT INTO Genre(name) VALUES ('RPG');
INSERT INTO Genre(name) VALUES ('Funny');
INSERT INTO Genre(name) VALUES ('Turn-Based Combat');
INSERT INTO Genre(name) VALUES ('Action');
INSERT INTO Genre(name) VALUES ('Indie');
INSERT INTO Genre(name) VALUES ('Comedy');
INSERT INTO Genre(name) VALUES ('Co-op');
INSERT INTO Genre(name) VALUES ('Turn-Based');
INSERT INTO Genre(name) VALUES ('Multiplayer');
INSERT INTO Genre(name) VALUES ('Great Soundtrack');
INSERT INTO Genre(name) VALUES ('Memes');
INSERT INTO Genre(name) VALUES ('Local Co-Op');
INSERT INTO Genre(name) VALUES ('Hex Grid');
INSERT INTO Genre(name) VALUES ('Adventure');
INSERT INTO Genre(name) VALUES ('Open World');
INSERT INTO Genre(name) VALUES ('Early Access');
INSERT INTO Genre(name) VALUES ('Singleplayer');
INSERT INTO Genre(name) VALUES ('Gore');
INSERT INTO Genre(name) VALUES ('Casual');
INSERT INTO Genre(name) VALUES ('Platformer');
INSERT INTO Genre(name) VALUES ('2D');
INSERT INTO Genre(name) VALUES ('Online Co-Op');
INSERT INTO Genre(name) VALUES ('Cats');
INSERT INTO Genre(name) VALUES ('Puzzle');
INSERT INTO Genre(name) VALUES ('Level Editor');
INSERT INTO Genre(name) VALUES ('Local Multiplayer');
INSERT INTO Genre(name) VALUES ('Difficult');
INSERT INTO Genre(name) VALUES ('Team-Based');
INSERT INTO Genre(name) VALUES ('Beat ''em up');
INSERT INTO Genre(name) VALUES ('Hack and Slash');
INSERT INTO Genre(name) VALUES ('Controller');
INSERT INTO Genre(name) VALUES ('Side Scroller');
INSERT INTO Genre(name) VALUES ('Fantasy');
INSERT INTO Genre(name) VALUES ('Action RPG');

INSERT INTO Genre(name) VALUES ('Farming Sim');
INSERT INTO Genre(name) VALUES ('FPS');
INSERT INTO Genre(name) VALUES ('MMORPG');

INSERT INTO GameGenre(game, genre) VALUES (1, 1);
INSERT INTO GameGenre(game, genre) VALUES (1, 2);
INSERT INTO GameGenre(game, genre) VALUES (1, 3);
INSERT INTO GameGenre(game, genre) VALUES (1, 4);
INSERT INTO GameGenre(game, genre) VALUES (1, 5);
INSERT INTO GameGenre(game, genre) VALUES (1, 6);
INSERT INTO GameGenre(game, genre) VALUES (1, 7);
INSERT INTO GameGenre(game, genre) VALUES (1, 8);
INSERT INTO GameGenre(game, genre) VALUES (1, 9);
INSERT INTO GameGenre(game, genre) VALUES (1, 10);
INSERT INTO GameGenre(game, genre) VALUES (1, 11);
INSERT INTO GameGenre(game, genre) VALUES (1, 12);
INSERT INTO GameGenre(game, genre) VALUES (1, 13);
INSERT INTO GameGenre(game, genre) VALUES (1, 14);
INSERT INTO GameGenre(game, genre) VALUES (1, 15);
INSERT INTO GameGenre(game, genre) VALUES (1, 16);
INSERT INTO GameGenre(game, genre) VALUES (1, 17);
INSERT INTO GameGenre(game, genre) VALUES (1, 18);
INSERT INTO GameGenre(game, genre) VALUES (1, 19);
INSERT INTO GameGenre(game, genre) VALUES (1, 20);
INSERT INTO GameGenre(game, genre) VALUES (2, 3);
INSERT INTO GameGenre(game, genre) VALUES (2, 5);
INSERT INTO GameGenre(game, genre) VALUES (2, 6);
INSERT INTO GameGenre(game, genre) VALUES (2, 7);
INSERT INTO GameGenre(game, genre) VALUES (2, 8);
INSERT INTO GameGenre(game, genre) VALUES (2, 10);
INSERT INTO GameGenre(game, genre) VALUES (2, 11);
INSERT INTO GameGenre(game, genre) VALUES (2, 13);
INSERT INTO GameGenre(game, genre) VALUES (2, 15);
INSERT INTO GameGenre(game, genre) VALUES (2, 18);
INSERT INTO GameGenre(game, genre) VALUES (2, 20);
INSERT INTO GameGenre(game, genre) VALUES (2, 21);
INSERT INTO GameGenre(game, genre) VALUES (2, 22);
INSERT INTO GameGenre(game, genre) VALUES (2, 23);
INSERT INTO GameGenre(game, genre) VALUES (2, 24);
INSERT INTO GameGenre(game, genre) VALUES (2, 25);
INSERT INTO GameGenre(game, genre) VALUES (2, 26);
INSERT INTO GameGenre(game, genre) VALUES (2, 27);
INSERT INTO GameGenre(game, genre) VALUES (2, 28);
INSERT INTO GameGenre(game, genre) VALUES (2, 29);
INSERT INTO GameGenre(game, genre) VALUES (3, 2);
INSERT INTO GameGenre(game, genre) VALUES (3, 3);
INSERT INTO GameGenre(game, genre) VALUES (3, 5);
INSERT INTO GameGenre(game, genre) VALUES (3, 6);
INSERT INTO GameGenre(game, genre) VALUES (3, 7);
INSERT INTO GameGenre(game, genre) VALUES (3, 8);
INSERT INTO GameGenre(game, genre) VALUES (3, 10);
INSERT INTO GameGenre(game, genre) VALUES (3, 11);
INSERT INTO GameGenre(game, genre) VALUES (3, 13);
INSERT INTO GameGenre(game, genre) VALUES (3, 15);
INSERT INTO GameGenre(game, genre) VALUES (3, 20);
INSERT INTO GameGenre(game, genre) VALUES (3, 22);
INSERT INTO GameGenre(game, genre) VALUES (3, 23);
INSERT INTO GameGenre(game, genre) VALUES (3, 27);
INSERT INTO GameGenre(game, genre) VALUES (3, 30);
INSERT INTO GameGenre(game, genre) VALUES (3, 31);
INSERT INTO GameGenre(game, genre) VALUES (3, 32);
INSERT INTO GameGenre(game, genre) VALUES (3, 33);
INSERT INTO GameGenre(game, genre) VALUES (3, 34);
INSERT INTO GameGenre(game, genre) VALUES (3, 35);

INSERT INTO GameGenre(game, genre) VALUES (4, 36);
INSERT INTO GameGenre(game, genre) VALUES (4, 2);
INSERT INTO GameGenre(game, genre) VALUES (5, 37);
INSERT INTO GameGenre(game, genre) VALUES (5, 10);
INSERT INTO GameGenre(game, genre) VALUES (6, 2);
INSERT INTO GameGenre(game, genre) VALUES (6, 10);
INSERT INTO GameGenre(game, genre) VALUES (6, 38);
INSERT INTO GameGenre(game, genre) VALUES (6, 5);

INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('I said Horatio dies!', 'Defy the Narrator', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/291860/ea5af37a30833cc0d13da92166fa49f1f77bcc78.jpg', 1);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Which seat should I take?', 'Get a full squad of 6', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/291860/9cadde7234ee22da9e66bcb2f1f30e548afdb455.jpg', 1);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Karma for the King', 'Get Pip''s Revenge', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/291860/51c41cb0a09b642393d610cf9ffb73d1ffd85718.jpg', 1);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('I See Dead Pixies', 'Beat any team of Elites in the wild', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/291860/d4b93249a5d643511e8c0f6ef533e58cb32410d1.jpg', 1);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Blueberried Blocker', 'Horatio or Hailey reach level 20', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/291860/836c61f89f6fd9f363ef46036ae29cf53396fbac.jpg', 1);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Plays Well With Brothers', 'Get a Quadra Kill', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/291860/100207d93240f4db7805ac42cc7d2d61ca6655b5.jpg', 1);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Seriously Serious', 'Successfully complete a full Quest series', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/291860/b1c95a329b6d392221fb40824f8df2d8ac5c320f.jpg', 1);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Castle Crasher', 'Defeat a Fortress', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/291860/09db3837eb52682550f2b14e99d5800d98029b83.jpg', 1);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Odd Jobs', 'Complete 2 quests in one outing on the world map', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/291860/05ea64cdb5901a9a5b0fdac2ef613cdb1c400309.jpg', 1);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('#SkwadGoals', 'Recruit an Elite', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/291860/3cc67e995398d61cbcbf024b53ca9177c90d45c1.jpg', 1);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Shadows And Dust', 'Get 300 kills', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/291860/f2da0b824e14190fac3f434664452bbe7a92135c.jpg', 1);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Pocket Change', '19,999 Gold on-hand', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/291860/0598140251e12f10ff3a19ff15c133f47d19b19f.jpg', 1);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('So Fast So Murderous', 'Run over 10 enemies using the wagon''s nitro boost', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/291860/0213e7d807aa5a7f76fddb3a906ca8a4476e6efa.jpg', 1);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Nothing Personal', 'Win an online versus battle in The Pit', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/291860/316c027777a5d714be75670d810bf7215ff0af94.jpg', 1);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Just The Beginning', 'Complete the Story', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/291860/ded998dc71cfd363667c1b79faa44241e50d5075.jpg', 1);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Something Switchy Going On', 'Find a secret area in any worldmap', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/291860/6126dffc26657f24c6cb9357f24d716bd955ea61.jpg', 1);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('The Queen Will Be Pleased', 'Recruit 1 of every creature type', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/291860/2bd1176f735d28d42686448e41eec1b5af877a1b.jpg', 1);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('I''ve Seen Things', 'Reach level 80 with any gladiator', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/291860/73e7f10a9592a10fcb23ed40b4a2e8223b82fa38.jpg', 1);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('It''s Over 9 Thousand', 'Do 100 points of damage in a single turn', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/291860/64d7fe6e996b2c0d48473cf0cc8714cad49fe362.jpg', 1);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Odder Jobs', 'Complete 15 Bonus Missions on the world map', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/291860/be90424395ddb0cd41b95587caaa1b646f16266d.jpg', 1);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Honey Historian', 'Save a Replay', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/291860/fe6a1bb5d86ad34d55ed0c47d7067eac22131a7d.jpg', 1);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Stamina Strategist', 'Complete 5 quests in one outing on the world map', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/291860/6a7c17873cdf03cb4684e30b8f9d77e2cb60dda0.jpg', 1);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Are You Not Entertained?', 'Win the INSANE unfair challenge', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/291860/94d6d0c87fe9b840d92d5dd0673762489b2b93ce.jpg', 1);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('GG EZ', 'Defeat an Elite Team in PermaDeath', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/291860/7102526ba70633a4a2cf5d359ce6a04984762cf5.jpg', 1);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Tactician''s Intuition', 'Watch a Replay', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/291860/857a539e6b3293d03cff722c05281d3a0c502a50.jpg', 1);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Fearless Fighter', 'Win 20 Battles in PermaDeath', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/291860/36a3ec256ba1161e812ca9ec9f375040f37c76aa.jpg', 1);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('A Day In The Pit', 'Get more than 1234 Pit Points in a day.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/291860/9be3be2dee62cb24d838e3c8b55183103568a9c4.jpg', 1);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Cast Member', 'Complete the story''s opening sequence in any mode.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/238460/900ef7665e7a2b49f68bb285360256f2843847d4.jpg', 2);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Black Marketeer', 'Get yourself a cool new weapon.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/238460/5e0cebd31226034fe9cad057a320b9d2873a8acd.jpg', 2);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Nail File Cake', 'Free a fellow prisoner.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/238460/d1af4f9cc11d0a007b9e79a8ba353b484999e10b.jpg', 2);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Secret Finder', '', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/238460/f7b1c544152c5a71ddd6ed83ba4a64af2572a2e4.jpg', 2);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Prison Food', '', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/238460/47a1d8a22a0e20952cb587d76c1e36c2a01d4ce9.jpg', 2);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Traitor', '', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/238460/b65bb50a85c32f0b9592c9d240b7977806fcbede.jpg', 2);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Deadly Performer', 'Get 100 kills.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/238460/5c75a1d40b55f027162da1892f9fb35630c5174b.jpg', 2);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Consolation Prize', '', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/238460/fd86126b45309118e123ac00d46dfaa81d621761.jpg', 2);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Virtuoso', 'Get an A++ in 10 levels.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/238460/e58dce944c210d025b2e2f5d300e94dc13c9b5b1.jpg', 2);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Seasoned Performer', 'Complete the first four finales in any mode.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/238460/65b958e738d87987d2d2ae9930e314a6f435f218.jpg', 2);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Take A Bow', 'Complete an encore level in Story Mode.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/238460/aa003d3d3ac721d9f0e9c34d49382523f8cc0c94.jpg', 2);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('First Time Trader', 'Make a trade with someone.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/238460/1b71376aab844e8611434b2f3d5a72882c1a4525.jpg', 2);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Chicken Toucher', 'Play with the Behemoth or someone with this achievement in an online game.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/238460/5f98c1457f0ce2aeb72ba23ddc6e8c56235ade74.jpg', 2);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Armed and Dangerous', 'Collect all the weapons in the Gift Shop by unlocking or trading.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/238460/2fbda0a827a46f18ef75854e0b92517d72fc6b7e.jpg', 2);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Jail Breaker', 'Free 50 prisoners in the Gift Shop.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/238460/e6edf5147f25560f1f88f32f8030b3aa2cefa0e4.jpg', 2);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Melee Master', 'Successfully use every melee attack move.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/238460/1f0dd1cc4dff56eb95d95dda56bd7d6c4f01be1c.jpg', 2);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Hats Off', 'Get a letter grade in all eight finales in any mode.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/238460/2f96ed0c83cdc2eef004b30e0331cb934a97546e.jpg', 2);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Theater Manager', 'Download and host a game of user-created levels.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/238460/18253f22af43914117c1537dc9c034f292e3c423.jpg', 2);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Secret Hat Hunter', 'Collect 10 Golden Hats.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/238460/fafa18fcac71d98a869051e85f726b4d163090ac.jpg', 2);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Coop Star', 'Get a letter grade in every level (except Encores) in Normal Co-op Story Mode.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/238460/02033dc91eaebf65e82dfdb0ce4b365e4f455bb9.jpg', 2);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Theater Critic', 'Complete 10 user-created levels in a single Featured Story playlist.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/238460/06c4e75c757485cc27b1276dddc19295dfc00143.jpg', 2);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Solo Star', 'Get a letter grade in every level (except Encores) in Normal Solo Story Mode.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/238460/8a70125f6b8d8582dd86c3dd3b629eabd9a472db.jpg', 2);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Social Butterfly', 'Collect all the prisoners of one head shape.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/238460/e0ae895d04fa01520c25ab9f4319e7916db5a5a9.jpg', 2);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Weapons Master', 'Use each weapon successfully.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/238460/71e8e339efbc3773e7a52c9e8967e8f72ee5789d.jpg', 2);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('All Around Joe', 'Be on the winning team in one arena match of every mode.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/238460/ed48d5eb8efd48d6e12379f929dce991c5f7bc75.jpg', 2);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('The Professional', 'Be on the winning team in 100 arena matches.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/238460/8a95da27f9a060df462a3bf77ce0558950ee508c.jpg', 2);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Crowd Pleaser', 'Complete all the Encores in any mode.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/238460/f35fd326a35a53fa582932e2467d8d89cf69f8c5.jpg', 2);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Insane Solo Star', 'Get a letter grade in every level (except Encores) in insane solo story mode.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/238460/eff79809bac238b6377a72fd0bc254040bbc5e60.jpg', 2);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Freedom Hero', 'Free all the prisoners in the Gift Shop by unlocking or trading.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/238460/e0826075ff618c2e3620962ad108f7eb243ce966.jpg', 2);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Insane Coop Star', 'Get a letter grade in every level (except Encores) in insane co-op story mode.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/238460/56e65a6e6cafc5149e6f9268ffbd0e54ec418c9d.jpg', 2);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Melee Is Best', 'Defeat any end boss without using any magic.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/204360/a70982120497710c9073d41ce4b666522fbec23a.jpg', 3);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Maximum Firepower', 'Using a catapult, fling a knight with maximum power.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/204360/c7025e363d2899c7b4984c58d553d692de9c7acf.jpg', 3);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Deer Trainer', 'Navigate the Abandoned Mill without hitting any obstacles.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/204360/78339a8e62f9891dfd97d205c090ac28c6d0a627.jpg', 3);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Treasure Hunter', 'Find and dig up ten buried items.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/204360/2b893729cd1e2190587c752825691c1e7b9efa8f.jpg', 3);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Traditional', 'Complete the game using any character.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/204360/b16f1fb46ef9b7456032b53bb58f55bfd4596dc1.jpg', 3);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Medic!', 'In a 4 player game, resuscitate each of your fallen comrades at least once.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/204360/c9ec9f3f637725701493a07e522342e9b84ee9b1.jpg', 3);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('The Traitor', 'Defeat any boss by playing one of his own minions.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/204360/cec6631e15a809787c6a1f65164e46c84b160240.jpg', 3);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Kay Eye Ess Ess', 'Collect all 4 princesses'' kisses in a multiplayer game.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/204360/2d6079d9839b913c263b04addce2b80b0e90e54e.jpg', 3);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Animal Handler', 'Collect all the animal orbs.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/204360/9c546b6a060c7092c93a308e315f38f2d468727d.jpg', 3);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Conscientious Objector', 'Complete the Home Castle through Barbarian Boss areas without attacking any foes.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/204360/4e46c6ad4029efe324e24a4cde7184bea1fa8512.jpg', 3);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('The Final Countdown', 'Survive until 2:30 in a Back Off Barbarian match.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/204360/e5ef4ab7952566494b02109edd263cc567a4cf98.jpg', 3);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Arena Master', 'Win 40 Arena Online Matches.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/204360/129acacff51fa3e5f7f1167c2847828bdad1eda1.jpg', 3);
=======
INSERT INTO AppUser(email, password, name, birthdate, description, gender) VALUES ('alencar.costa@inf.ufrgs.br', 'alencar.costa', 'Alencar da Costa', '1999-03-09', 'Soco, soco, bate, bate\nSoco, soco, vira, vira\nSoco, bate, soco, vira\nSoco, bate, vira', 'm');
INSERT INTO AppUser(email, password, name, birthdate, description, gender) VALUES ('mwcamargo@inf.ufrgs.br', 'seninhaBrabo', 'Matheus Woeffel', '1998-10-29', 'Errados são aqueles que chegam no bagulho, tá ligado? Sem saber como é a segurança do ambiente.', 'm');
INSERT INTO AppUser(email, password, name, birthdate, description, gender) VALUES ('pablovittar@gmail.com', 'seuAmorMePegou', 'Pablo Vittar', '1994-11-01', 'Seu amor me pegou\nCê bateu tão forte com o teu amor\n Nocauteou, me tonteou\n Veio à tona, fui à lona, foi K.O.', 'f');
INSERT INTO AppUser(email, password, name, birthdate, description, gender) VALUES ('ronaldinho@gmail.com', 'ronaldinho123', 'Ronaldinho Gaúcho', '1980-03-21', 'Atualmente em reclusão, mas não somos todos presidiários do sistema?', 'm');

INSERT INTO Classification(userfrom,userto,type) VALUES (2,1,'d');
INSERT INTO Classification(userfrom,userto,type) VALUES (1,3,'s');
INSERT INTO Classification(userfrom,userto,type) VALUES (3,1,'l');
INSERT INTO Classification(userfrom,userto,type) VALUES (4,3,'l');
INSERT INTO Classification(userfrom,userto,type) VALUES (3,4,'l');
INSERT INTO Classification(userfrom,userto,type) VALUES (4,2,'l');
INSERT INTO Classification(userfrom,userto,type) VALUES (2,4,'s');

INSERT INTO Match(userOne,userTwo, isValid) VALUES (1,3,true);
INSERT INTO Match(userOne,userTwo, isValid) VALUES (3,4,false);
INSERT INTO Match(userOne,userTwo, isValid) VALUES (2,4,true);

INSERT INTO Message(match,sender, text) VALUES (1,1,'Oi linda, vi que você joga cs GO');
INSERT INTO Message(match,sender, text) VALUES (1,3,'Isso mesmo, nada peita minha awp amado');
INSERT INTO Message(match,sender, text) VALUES (1,1,'Vamo ver então, isso é pq vc n conhece o costinha pinada violenta');
INSERT INTO Message(match,sender, text) VALUES (3,2,'Eae. Tranquilo?');
INSERT INTO Message(match,sender, text) VALUES (3,2,'Vi que você tem a skin da Dragon Lore');
INSERT INTO Message(match,sender, text) VALUES (3,2,'Você dropou de caixa?');
INSERT INTO Message(match,sender, text) VALUES (3,4,'E ae');
INSERT INTO Message(match,sender, text) VALUES (3,4,'Não. Ganhei do menino ney');
INSERT INTO Message(match,sender, text) VALUES (3,2,'Quer vender?');

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
>>>>>>> 113f0b9ddd92233e512243ba8ac8548ccd0d93a0

INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Greenhorn', 'Earn 15,000g', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/413150/dac82a85ceb1493bb2155d41890b4a6099f5eaa5.jpg', 1);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Cowpoke', 'Earn 50,000g', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/413150/2a5c84271214a05435ea1c7a60bacc1cbbc5fa5a.jpg', 1);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Fisherman', 'Catch 10 different fish.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/413150/e3c6269d906e909415d31d5b7962166c0951509d.jpg', 1);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Mother Catch', 'Catch 100 fish.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/413150/cdc37596680321cfc1f5aef5f6c02e8384d07d62.jpg', 1);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Moving Up', 'Upgrade your house.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/413150/67f2c064873468b80c57218f0992c15f7d2fe83e.jpg', 1);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Points in Your Favor', 'Inflict 2,500 total points of damage to enemies', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/730/55650ec8f0cec4ea9b80d10e5ff420904b2a52a9.jpg', 2);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Shot With Their Pants Down', 'Kill an enemy while they are reloading', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/730/8348876e42a26000ec596a690ee962ff441f3d1f.jpg', 2);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('The Unstoppable Force', 'Kill four enemies within a single round', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/730/9f0100bf4168376212331c5177f3d22a30df12ae.jpg', 2);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Body Bagger', 'Kill 25 enemies', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/730/b11ef0453168cd3d10684e184004f71dcc0faa82.jpg', 2);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Newb World Order', 'Win ten rounds', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/730/9c759a9201a6fd54539f639e3815aa09a7c92d59.jpg', 2);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Mercy Killing', 'Kill Brutus, Warden of Axiom Prison.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/238960/daa9f834d636f840070d48f1aeb0b785f92905b3.jpg', 3);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('The Star of Wraeclast', 'Kill Merveil, the Siren.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/238960/e630c876dc24194e16eb2bcbdc936b18897ecda9.jpg', 3);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('One of a Kind', 'Equip a Unique item.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/238960/cba68127f72c1920934fec0215ed0f82ab7258fd.jpg', 3);
INSERT INTO Achievement(name, description, thumbnail, game) VALUES ('Cryomancer', 'Shatter 5 monsters with a single action.', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/apps/238960/e4e6440cd98a0f08f7906290fc952f6984b34867.jpg', 3);

<<<<<<< HEAD


INSERT INTO AppUser(email, password, name, birthdate, description, gender) VALUES ('nilo17@live.com', '70xZO9l6MvYEQGdd', 'Nilo Reis', '1966-9-9', 'Ut totam esse autem accusantium omnis quo nulla in aliquid. Odit aut et consequatur autem repellat qui dignissimos sed exercitationem. Beatae officiis ea quia.', 'm');
INSERT INTO AppUser(email, password, name, birthdate, description, gender) VALUES ('tainara_braga@yahoo.com', '6ZZyXrNRz8GQ1b4P', 'Tainara Braga', '1980-9-16', 'Nulla earum nesciunt libero et odit iure ipsum magnam. Consequatur dolores quae. Expedita eum eos enim. Sint quia porro vitae non. Inventore praesentium sequi quidem est placeat similique voluptates vel quisquam. Dolor est voluptas amet reprehenderit omnis aliquid.', 'f');
INSERT INTO AppUser(email, password, name, birthdate, description, gender) VALUES ('belmiro44@bol.com.br', '4ET0KmP9ocB9bh7l', 'Belmiro Costa', '1969-9-26', 'Est omnis officia molestias dolorem sint eius repellendus quisquam minus. Aut explicabo rerum perferendis vitae facilis culpa laudantium qui deserunt. Qui est at ipsam est maxime. Amet fuga nam quidem mollitia impedit non.', 'm');
INSERT INTO AppUser(email, password, name, birthdate, description, gender) VALUES ('camilo.costa@yahoo.com', 'hsrkLqYlZbhXeJb6', 'Camilo Costa', '1988-1-23', 'Reprehenderit dolor nam. Officia quas corrupti quis deserunt et est. Veritatis ipsam quam vitae temporibus incidunt. Ut itaque fugit est dolor officia dolore natus.', 'm');
INSERT INTO AppUser(email, password, name, birthdate, description, gender) VALUES ('onofre.reis83@bol.com.br', 'rb_g84wiMQrv4KSg', 'Onofre Reis', '1969-5-3', 'Ut dolorem ipsam. Quibusdam nihil dolores accusamus nisi similique est voluptas consequuntur et. Molestiae iste qui officiis minus aut nemo. Iure optio harum dolores et sit eum.', 'm');
INSERT INTO AppUser(email, password, name, birthdate, description, gender) VALUES ('benito_nogueira@live.com', 'glAS4z9RzPjBsNka', 'Benito Nogueira', '1945-10-6', 'Quia adipisci et eveniet doloribus explicabo consequuntur. Libero nulla eveniet eius consequatur ut. Dignissimos ullam omnis ex est nesciunt. Deleniti iusto quia nesciunt nulla error alias temporibus nihil. Fugiat qui eveniet.', 'm');
INSERT INTO AppUser(email, password, name, birthdate, description, gender) VALUES ('maira96@gmail.com', 'YjKH1sd9DsEVcbTW', 'Maira Costa', '1975-10-2', 'In nulla expedita culpa autem. Quod quia minus. Natus molestiae rerum non dolores officiis itaque quidem quisquam. Voluptatem voluptatibus hic et magni accusantium vitae mollitia. Sed sit et.', 'f');
INSERT INTO AppUser(email, password, name, birthdate, description, gender) VALUES ('ndia.reis@yahoo.com', 'moUFCWWVCG9iytQj', 'Nádia Reis', '1991-10-22', 'Dolorem voluptas mollitia. In et omnis similique quibusdam aut incidunt. Dolor tenetur dolorem eos asperiores architecto fugit sed. Amet tempora blanditiis distinctio quibusdam non qui. Tempore cum eos officiis dolorum sit necessitatibus laborum. Tempore et mollitia.', 'f');
INSERT INTO AppUser(email, password, name, birthdate, description, gender) VALUES ('amandina47@gmail.com', '1C8UCVOAZv7yZwAB', 'Amandina Braga', '1974-5-20', 'Architecto quam consequatur consequatur excepturi. Dolorum voluptate odio voluptas nam accusamus quam sed. Est nihil necessitatibus. Consequatur aut architecto incidunt repudiandae suscipit et alias dolores. Qui et facilis facilis.', 'f');
INSERT INTO AppUser(email, password, name, birthdate, description, gender) VALUES ('solange79@bol.com.br', 'G3HbqXKmCVR9tFgE', 'Solange Moreira', '1985-11-4', 'Et unde voluptatem dignissimos. Et aut facilis eos corporis. Atque exercitationem dolorem nihil illo eum magni culpa numquam.', 'f');
INSERT INTO AppUser(email, password, name, birthdate, description, gender) VALUES ('fabrzia25@hotmail.com', '10CbPruFJmolHrzw', 'Fabrízia Reis', '1994-11-30', 'Ipsum eum corporis praesentium. Repudiandae animi cumque facilis temporibus possimus rem provident asperiores. Iure sit corrupti qui. Et voluptatibus inventore non dolores. Expedita voluptas qui aliquam quos voluptatem maiores. Similique molestiae laborum nam animi ea.', 'f');
INSERT INTO AppUser(email, password, name, birthdate, description, gender) VALUES ('jacirene_saraiva58@yahoo.com', 'LKl66_qOFGH9896m', 'Jacirene Saraiva', '1937-1-25', 'Consequatur ipsum culpa eos voluptatum voluptates vero similique maiores incidunt. Repellat modi sed quis. Minima rem saepe aliquam blanditiis accusamus. Facere eos fuga qui nihil qui maiores consequatur sint soluta.', 'f');
INSERT INTO AppUser(email, password, name, birthdate, description, gender) VALUES ('estvo_franco88@bol.com.br', 'Sbr230YwnjXX_h2K', 'Estêvão Franco', '1963-4-11', 'Voluptate laborum a expedita excepturi reiciendis vel quod dolor. Omnis optio est magni. Nobis minima numquam maiores repellendus eum. Autem mollitia non. Non omnis harum eum iste delectus nobis. Tenetur dolore eos quo ea.', 'm');
INSERT INTO AppUser(email, password, name, birthdate, description, gender) VALUES ('lucy_albuquerque76@hotmail.com', 'dSwDQHTemiaK2arn', 'Lucy Albuquerque', '1945-5-12', 'Rem voluptatibus iure. Enim eveniet odit. Dolores et inventore asperiores.', 'f');
INSERT INTO AppUser(email, password, name, birthdate, description, gender) VALUES ('agostinho.carvalho@yahoo.com', 'Bg1MR6QbIQNvVsZs', 'Agostinho Carvalho', '1938-10-22', 'Aspernatur dolorem quas incidunt. Quod non quam sint. Laudantium fuga consequatur vitae sit est quia voluptatibus iusto.', 'm');

INSERT INTO AppUser(email, password, name, birthdate, description, gender) VALUES ('alencar.costa@inf.ufrgs.br', 'alencar.costa', 'Alencar da Costa', '1999-03-09', 'Soco, soco, bate, bate\nSoco, soco, vira, vira\nSoco, bate, soco, vira\nSoco, bate, vira', 'm');
INSERT INTO AppUser(email, password, name, birthdate, description, gender) VALUES ('mwcamargo@inf.ufrgs.br', 'seninhaBrabo', 'Matheus Woeffel', '1998-10-29', 'Errados são aqueles que chegam no bagulho, tá ligado? Sem saber como é a segurança do ambiente.', 'm');
INSERT INTO AppUser(email, password, name, birthdate, description, gender) VALUES ('pablovittar@gmail.com', 'seuAmorMePegou', 'Pablo Vittar', '1994-11-01', 'Seu amor me pegou\nCê bateu tão forte com o teu amor\n Nocauteou, me tonteou\n Veio à tona, fui à lona, foi K.O.', 'f');
INSERT INTO AppUser(email, password, name, birthdate, description, gender) VALUES ('ronaldinho@gmail.com', 'ronaldinho123', 'Ronaldinho Gaúcho', '1980-03-21', 'Atualmente em reclusão, mas não somos todos presidiários do sistema?', 'm');





INSERT INTO Photo(userid, url) VALUES (1, 'https://randomuser.me/api/portraits/men/79.jpg');
INSERT INTO Photo(userid, url) VALUES (1, 'https://randomuser.me/api/portraits/men/4.jpg');
INSERT INTO Photo(userid, url) VALUES (2, 'https://randomuser.me/api/portraits/women/3.jpg');
INSERT INTO Photo(userid, url) VALUES (2, 'https://randomuser.me/api/portraits/women/27.jpg');
INSERT INTO Photo(userid, url) VALUES (2, 'https://randomuser.me/api/portraits/women/5.jpg');
INSERT INTO Photo(userid, url) VALUES (3, 'https://randomuser.me/api/portraits/men/12.jpg');
INSERT INTO Photo(userid, url) VALUES (3, 'https://randomuser.me/api/portraits/men/22.jpg');
INSERT INTO Photo(userid, url) VALUES (4, 'https://randomuser.me/api/portraits/men/45.jpg');
INSERT INTO Photo(userid, url) VALUES (5, 'https://randomuser.me/api/portraits/men/17.jpg');
INSERT INTO Photo(userid, url) VALUES (5, 'https://randomuser.me/api/portraits/men/1.jpg');
INSERT INTO Photo(userid, url) VALUES (6, 'https://randomuser.me/api/portraits/men/65.jpg');
INSERT INTO Photo(userid, url) VALUES (6, 'https://randomuser.me/api/portraits/men/57.jpg');
INSERT INTO Photo(userid, url) VALUES (7, 'https://randomuser.me/api/portraits/women/85.jpg');
INSERT INTO Photo(userid, url) VALUES (7, 'https://randomuser.me/api/portraits/women/89.jpg');
INSERT INTO Photo(userid, url) VALUES (7, 'https://randomuser.me/api/portraits/women/90.jpg');
INSERT INTO Photo(userid, url) VALUES (8, 'https://randomuser.me/api/portraits/women/12.jpg');
INSERT INTO Photo(userid, url) VALUES (8, 'https://randomuser.me/api/portraits/women/9.jpg');
INSERT INTO Photo(userid, url) VALUES (8, 'https://randomuser.me/api/portraits/women/98.jpg');
INSERT INTO Photo(userid, url) VALUES (9, 'https://randomuser.me/api/portraits/women/95.jpg');
INSERT INTO Photo(userid, url) VALUES (9, 'https://randomuser.me/api/portraits/women/89.jpg');
INSERT INTO Photo(userid, url) VALUES (9, 'https://randomuser.me/api/portraits/women/63.jpg');
INSERT INTO Photo(userid, url) VALUES (10, 'https://randomuser.me/api/portraits/women/95.jpg');
INSERT INTO Photo(userid, url) VALUES (10, 'https://randomuser.me/api/portraits/women/68.jpg');
INSERT INTO Photo(userid, url) VALUES (11, 'https://randomuser.me/api/portraits/women/37.jpg');
INSERT INTO Photo(userid, url) VALUES (12, 'https://randomuser.me/api/portraits/women/80.jpg');
INSERT INTO Photo(userid, url) VALUES (12, 'https://randomuser.me/api/portraits/women/17.jpg');
INSERT INTO Photo(userid, url) VALUES (12, 'https://randomuser.me/api/portraits/women/22.jpg');
INSERT INTO Photo(userid, url) VALUES (13, 'https://randomuser.me/api/portraits/men/4.jpg');
INSERT INTO Photo(userid, url) VALUES (13, 'https://randomuser.me/api/portraits/men/86.jpg');
INSERT INTO Photo(userid, url) VALUES (14, 'https://randomuser.me/api/portraits/women/79.jpg');
INSERT INTO Photo(userid, url) VALUES (14, 'https://randomuser.me/api/portraits/women/5.jpg');
INSERT INTO Photo(userid, url) VALUES (14, 'https://randomuser.me/api/portraits/women/73.jpg');
INSERT INTO Photo(userid, url) VALUES (15, 'https://randomuser.me/api/portraits/men/53.jpg');

INSERT INTO Photo(userid, url, isValid) VALUES (16, 'https://avatars1.githubusercontent.com/u/16635772?s=460&u=9c2dab803275c232d8ceae334b85d14c76bb5f7e&v=4', true);
INSERT INTO Photo(userid, url, isValid) VALUES (17, 'https://bit.ly/2DmeLer', true);
INSERT INTO Photo(userid, url, isValid) VALUES (18, 'https://pm1.narvii.com/6781/44a59d1ed4f92109ae365c462adbc7490cc0c720v2_00.jpg', true);


INSERT INTO UserGame(userid, game, hoursPlayed, lastPlayedDate) VALUES (1, 3, 862, '2019-10-20 19:20:42');
INSERT INTO UserGame(userid, game, hoursPlayed, lastPlayedDate) VALUES (1, 1, 1767, '2020-01-05 23:14:41');
INSERT INTO UserGame(userid, game, hoursPlayed, lastPlayedDate) VALUES (2, 3, 1357, '2020-01-04 13:33:47');
INSERT INTO UserGame(userid, game, hoursPlayed, lastPlayedDate) VALUES (3, 1, 255, '2019-11-17 17:11:07');
INSERT INTO UserGame(userid, game, hoursPlayed, lastPlayedDate) VALUES (5, 1, 2785, '2020-07-03 14:02:42');
INSERT INTO UserGame(userid, game, hoursPlayed, lastPlayedDate) VALUES (5, 2, 1133, '2020-02-17 16:11:32');
INSERT INTO UserGame(userid, game, hoursPlayed, lastPlayedDate) VALUES (6, 2, 240, '2020-07-18 11:38:50');
INSERT INTO UserGame(userid, game, hoursPlayed, lastPlayedDate) VALUES (8, 1, 184, '2020-06-01 23:39:19');
INSERT INTO UserGame(userid, game, hoursPlayed, lastPlayedDate) VALUES (8, 3, 761, '2019-10-22 05:08:53');
INSERT INTO UserGame(userid, game, hoursPlayed, lastPlayedDate) VALUES (8, 2, 596, '2020-02-02 22:47:50');
INSERT INTO UserGame(userid, game, hoursPlayed, lastPlayedDate) VALUES (9, 1, 249, '2020-03-19 13:47:37');
INSERT INTO UserGame(userid, game, hoursPlayed, lastPlayedDate) VALUES (9, 3, 1231, '2020-09-04 18:56:56');
INSERT INTO UserGame(userid, game, hoursPlayed, lastPlayedDate) VALUES (10, 3, 1784, '2020-01-07 01:53:07');
INSERT INTO UserGame(userid, game, hoursPlayed, lastPlayedDate) VALUES (10, 2, 312, '2019-10-24 00:54:42');
INSERT INTO UserGame(userid, game, hoursPlayed, lastPlayedDate) VALUES (10, 1, 2284, '2020-01-26 19:21:44');
INSERT INTO UserGame(userid, game, hoursPlayed, lastPlayedDate) VALUES (11, 2, 692, '2019-11-29 21:12:47');
INSERT INTO UserGame(userid, game, hoursPlayed, lastPlayedDate) VALUES (11, 1, 218, '2019-09-23 18:40:40');
INSERT INTO UserGame(userid, game, hoursPlayed, lastPlayedDate) VALUES (11, 3, 2842, '2020-01-12 07:32:49');
INSERT INTO UserGame(userid, game, hoursPlayed, lastPlayedDate) VALUES (12, 1, 2821, '2019-09-14 14:23:06');
INSERT INTO UserGame(userid, game, hoursPlayed, lastPlayedDate) VALUES (13, 1, 1934, '2020-03-06 19:31:12');
INSERT INTO UserGame(userid, game, hoursPlayed, lastPlayedDate) VALUES (13, 3, 976, '2020-07-20 23:00:01');
INSERT INTO UserGame(userid, game, hoursPlayed, lastPlayedDate) VALUES (14, 3, 730, '2020-06-23 02:03:31');
INSERT INTO UserGame(userid, game, hoursPlayed, lastPlayedDate) VALUES (14, 2, 2967, '2020-02-16 02:44:44');
INSERT INTO UserGame(userid, game, hoursPlayed, lastPlayedDate) VALUES (14, 1, 558, '2019-12-10 15:39:18');
INSERT INTO UserGame(userid, game, hoursPlayed, lastPlayedDate) VALUES (15, 3, 170, '2019-12-14 22:20:26');

INSERT INTO UserGame(userid, game, lastPlayedDate, hoursPlayed) VALUES (16, 5, '2020-07-22 14:20:00', 1337);
INSERT INTO UserGame(userid, game, lastPlayedDate, hoursPlayed) VALUES (16, 4, '2019-03-22 14:20:00', 13);
INSERT INTO UserGame(userid, game, lastPlayedDate, hoursPlayed) VALUES (16, 6, '2020-04-21 14:20:00', 666);
INSERT INTO UserGame(userid, game, lastPlayedDate, hoursPlayed) VALUES (17, 4, '2020-07-15 14:20:00', 1000);
INSERT INTO UserGame(userid, game, lastPlayedDate, hoursPlayed) VALUES (17, 5, '2020-01-19 14:20:00', 9);
INSERT INTO UserGame(userid, game, lastPlayedDate, hoursPlayed) VALUES (18, 5, '2020-07-15 14:20:00', 323);


INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (1, 1, '2020-05-31 06:03:54');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (1, 2, '2019-12-06 18:22:05');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (3, 1, '2020-06-01 15:04:43');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (5, 1, '2020-02-25 13:34:33');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (5, 2, '2019-11-16 09:28:27');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (5, 3, '2019-12-27 16:44:46');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (5, 28, '2020-04-28 14:57:31');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (5, 29, '2020-01-06 20:59:36');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (5, 30, '2020-06-28 19:08:12');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (6, 28, '2020-06-27 08:31:32');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (6, 29, '2019-12-19 04:47:15');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (6, 30, '2020-03-25 03:43:21');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (6, 31, '2020-05-22 14:17:40');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (6, 32, '2019-09-27 18:19:53');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (8, 1, '2020-05-12 18:45:26');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (8, 58, '2020-06-03 06:58:47');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (8, 59, '2020-06-09 13:46:18');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (8, 60, '2019-12-21 08:12:07');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (8, 28, '2019-10-12 08:08:03');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (9, 1, '2020-03-24 16:35:38');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (9, 2, '2019-10-31 21:12:52');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (10, 1, '2020-07-26 04:33:31');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (10, 2, '2019-12-07 15:21:44');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (11, 1, '2019-11-19 08:00:42');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (11, 2, '2020-09-04 18:10:23');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (11, 3, '2019-11-03 15:42:48');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (11, 58, '2019-11-11 01:52:51');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (11, 59, '2019-11-18 02:56:17');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (11, 60, '2020-05-22 02:32:35');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (12, 1, '2019-10-17 08:01:27');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (12, 2, '2020-01-24 15:25:11');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (13, 58, '2019-10-09 01:05:29');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (13, 59, '2020-08-17 16:26:08');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (13, 60, '2019-10-03 12:37:12');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (14, 58, '2020-06-18 11:32:55');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (14, 59, '2020-03-12 18:56:36');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (14, 60, '2020-05-24 04:42:38');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (14, 61, '2020-01-14 19:11:49');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (14, 28, '2020-02-13 04:00:44');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (14, 1, '2020-03-10 12:54:31');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (14, 2, '2020-01-23 23:43:10');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (14, 3, '2019-10-27 23:16:10');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (15, 58, '2019-12-21 11:17:22');
INSERT INTO UserAchievement(userid, achievement, createdAt) VALUES (15, 59, '2020-07-24 09:39:27');

INSERT INTO UserAchievement(userid, achievement) VALUES (16, 76);
INSERT INTO UserAchievement(userid, achievement) VALUES (16, 77);
INSERT INTO UserAchievement(userid, achievement) VALUES (16, 78);
INSERT INTO UserAchievement(userid, achievement) VALUES (17, 70);
INSERT INTO UserAchievement(userid, achievement) VALUES (17, 71);
INSERT INTO UserAchievement(userid, achievement) VALUES (17, 72);

=======
INSERT INTO UserGame(userid, game, lastPlayedDate, hoursPlayed) VALUES (1, 2, '2020-07-22 14:20:00', 1337);
INSERT INTO UserGame(userid, game, lastPlayedDate, hoursPlayed) VALUES (1, 1, '2019-03-22 14:20:00', 13);
INSERT INTO UserGame(userid, game, lastPlayedDate, hoursPlayed) VALUES (1, 3, '2020-04-21 14:20:00', 666);
INSERT INTO UserGame(userid, game, lastPlayedDate, hoursPlayed) VALUES (2, 1, '2020-07-15 14:20:00', 1000);
INSERT INTO UserGame(userid, game, lastPlayedDate, hoursPlayed) VALUES (2, 2, '2020-01-19 14:20:00', 9);
INSERT INTO UserGame(userid, game, lastPlayedDate, hoursPlayed) VALUES (3, 2, '2020-07-15 14:20:00', 323);
>>>>>>> 113f0b9ddd92233e512243ba8ac8548ccd0d93a0

INSERT INTO Activity(userId,type,game,photo) VALUES (2,'g',1,NULL);
INSERT INTO Activity(userId,type,game,photo) VALUES (1,'p',NULL,1);
INSERT INTO Activity(userId,type,game,photo) VALUES (3,'p',NULL,3);

<<<<<<< HEAD
INSERT INTO Classification(userfrom,userto,type) VALUES (2,1,'d');
INSERT INTO Classification(userfrom,userto,type) VALUES (1,3,'s');
INSERT INTO Classification(userfrom,userto,type) VALUES (3,1,'l');
INSERT INTO Classification(userfrom,userto,type) VALUES (4,3,'l');
INSERT INTO Classification(userfrom,userto,type) VALUES (3,4,'l');
INSERT INTO Classification(userfrom,userto,type) VALUES (4,2,'l');
INSERT INTO Classification(userfrom,userto,type) VALUES (2,4,'s');

INSERT INTO Match(userOne,userTwo, isValid) VALUES (1,3,true);
INSERT INTO Match(userOne,userTwo, isValid) VALUES (3,4,false);
INSERT INTO Match(userOne,userTwo, isValid) VALUES (2,4,true);

INSERT INTO Message(match,sender, text) VALUES (1,1,'Oi linda, vi que você joga cs GO');
INSERT INTO Message(match,sender, text) VALUES (1,3,'Isso mesmo, nada peita minha awp amado');
INSERT INTO Message(match,sender, text) VALUES (1,1,'Vamo ver então, isso é pq vc n conhece o costinha pinada violenta');
INSERT INTO Message(match,sender, text) VALUES (3,2,'Eae. Tranquilo?');
INSERT INTO Message(match,sender, text) VALUES (3,2,'Vi que você tem a skin da Dragon Lore');
INSERT INTO Message(match,sender, text) VALUES (3,2,'Você dropou de caixa?');
INSERT INTO Message(match,sender, text) VALUES (3,4,'E ae');
INSERT INTO Message(match,sender, text) VALUES (3,4,'Não. Ganhei do menino ney');
INSERT INTO Message(match,sender, text) VALUES (3,2,'Quer vender?');

INSERT INTO GoldUser(userid,cpf,expiresAt,street,addressNumber,city,uf,cep) VALUES (1,'11111111111','2020-11-29','Travessa Jaguarão', 0, 'Teutônia', 'RS', '95890000');
INSERT INTO GoldUser(userid,cpf,expiresAt,street,addressNumber,city,uf,cep) VALUES (2,'22222222222','2020-12-29','Alameda Vespúcio', 25, 'Porto Alegre', 'RS', '90550031'); 
INSERT INTO GoldUser(userid,cpf,expiresAt,street,addressNumber,city,uf,cep) VALUES (3,'33333333333','2020-09-29','Avenida Dom Pedro', 35, 'São Paulo', 'SP', '08090284'); 

INSERT INTO Card(userId,name,number,expirationDate) VALUES (1,'Mastercard', '1234567890123456','2027-08-07');
INSERT INTO Card(userId,name,number,expirationDate) VALUES (2,'Visa', '9244567894125456','2027-09-07');
INSERT INTO Card(userId,name,number,expirationDate) VALUES (3,'Visa', '8888888888888888','2027-10-29');
=======
INSERT INTO UserAchievement(userid, achievement) VALUES (1, 7);
INSERT INTO UserAchievement(userid, achievement) VALUES (1, 8);
INSERT INTO UserAchievement(userid, achievement) VALUES (1, 9);
INSERT INTO UserAchievement(userid, achievement) VALUES (2, 1);
INSERT INTO UserAchievement(userid, achievement) VALUES (2, 2);
INSERT INTO UserAchievement(userid, achievement) VALUES (2, 3);
>>>>>>> 113f0b9ddd92233e512243ba8ac8548ccd0d93a0
