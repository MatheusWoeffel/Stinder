-- VISÃO
-- View que relaciona os detalhes/informações basicos de um usuário.
-- Essas são as informações que aparecem no card de cada usuário durante a classificaçÀo.
-- Ao clicar em um card, um nova consulta será realizada buscando todas as informações do usuário.
-- Essa consulta trás as informações de nome, udadem decrição, genêro E a ÚLTIMA foto postada.
-- Ela assume que a última foto postada é aquela que será exibida como "foto de perfil" principal/atual.
DROP VIEW BasicUserDetail;

CREATE VIEW BasicUserDetail AS 
  SELECT U.id userId, U.name, U.birthdate, U.description, U.gender, P.id photoId, P.url,
  			 (GoldUser.expiresAt IS NOT NULL AND GoldUser.expiresAt >= CURRENT_DATE) AS isGoldUser
  FROM AppUser U
  LEFT JOIN GoldUser ON GoldUser.userid = U.id
  LEFT JOIN Photo P ON P.userid = U.id
  WHERE P.id IS NULL OR P.id = (
    SELECT Photo.id FROM Photo
    INNER JOIN Activity ON Activity.photo = Photo.id
    WHERE Photo.isValid = true AND Activity.type = 'p' AND Photo.userId = U.id
    ORDER BY Activity.createdAt DESC
    LIMIT 1
	);





-- CONSULTAS
-- Essa consulta utiliza a VIEW anterior para buscar as mensagens de todos os matches de um usuário (logado)
-- A consulta trás as info como dados da mensagem enviada, match associado E as informações do usuário que enviou.
-- Sobre o usuário que buscou, é retornado o nome e a foto principal.

-- TODO: Alterar para buscar por nome de usuario???
SELECT M.id, M.match, M.text, M.createdAt, B.userId, B.name, B.photoId, B.url
FROM Message M
INNER JOIN BasicUserDetail B ON B.userId = M.sender
INNER JOIN Match ON Match.id = M.match
WHERE Match.userOne = 2 OR Match.userTwo = 2
ORDER BY Match.id, M.createdAt DESC;


-- Essa consulta retorna os dados dos usuários que não ainda não foram classificados pelo usuário logado E que
-- possuam algum gênero de jogo em comum.
-- O intuito dessa consulta seria trazer os IDs de usuários que podem ser mostrados durante a classificação
SELECT DISTINCT B.userid, B.name, B.birthdate, B.description, B.gender, B.photoId, B.url
FROM BasicUserDetail B
INNER JOIN UserGame ON UserGame.userid = B.userid
INNER JOIN Game ON Game.id = UserGame.game
INNER JOIN GameGenre ON GameGenre.game = Game.id
WHERE B.userid != 1 
AND B.userid NOT IN (SELECT DISTINCT Classification.userTo id
                       FROM Classification 
                       WHERE Classification.userFrom = 1
                      )
AND GameGenre.genre IN (SELECT DISTINCT GameGenre.genre
                        FROM UserGame
                        INNER JOIN Game ON Game.id = UserGame.game
                        INNER JOIN GameGenre ON GameGenre.game = Game.id
                        WHERE UserGame.userid = 1
                       )
ORDER BY B.userid;


--Todos os usuários que não tem nenhum jogo em comum
SELECT id FROM AppUser
EXCEPT
SELECT DISTINCT userId 
FROM UserGame 
WHERE game IN (SELECT game FROM UserGame WHERE userId = 3);

SELECT id, name 
FROM AppUser AS EXT 
WHERE NOT EXISTS(SELECT game
                FROM UserGame 
                WHERE userId = EXT.id AND game IN (SELECT game 
                                                  FROM UserGame
                                                  WHERE userId = 1)
                );




--Todos os achievements em comum entre dois usuários. 
SELECT AppUser.name, Achievement.name, Game.name as gamename, Achievement.thumbnail, Achievement.description 
FROM UserAchievement
JOIN Achievement ON Achievement.id = UserAchievement.achievement
JOIN Game ON Game.id = Achievement.game
JOIN AppUser ON AppUser.id = UserAchievement.userId
WHERE AppUser.name = 'Matheus Woeffel' --First user name
AND Achievement.id IN (SELECT Achievement 
                      FROM UserAchievement 
                      JOIN AppUser ON AppUser.id = UserAchievement.userId
  										WHERE AppUser.name = 'Matheus Woeffel' --Second user name
											);



-- Atividades dos match de um determinado user.
-- Utilizado na tela de Feed para visualizar as atividade que foram realizadas pelos matches do usuário logado
-- TODO: Talvez colocar para filtrar por nome ao inves de id?
SELECT U.id activity, A.type, A.createdAt, A.userid userId, U.name, G.id gameId, G.name gamename, G.thumbnail gameThumb, P.id photoId, P.url photoUrl
FROM Activity A
INNER JOIN AppUser U ON U.id = A.userid
LEFT JOIN Game G ON G.id = A.game
LEFT JOIN Photo P ON P.id = A.photo
WHERE A.userid IN (
  	SELECT userTwo AS userId FROM Match
    WHERE userOne = 3
    UNION
    SELECT userOne AS userId FROM Match
    WHERE userTwo = 3
)
ORDER BY A.createdAt DESC;

-- Porcentagem de achievements completados por usuário para algum jogo
-- TODO: pegar de todos os jogos?
SELECT CAST(COUNT(UserAchievement.achievement) AS float)
        /
        CAST((SELECT COUNT(Achievement.id) AS num_achievements 
              FROM Achievement
              JOIN Game ON Game.id = Achievement.game 
              WHERE Game.name = 'Stardew Valley' 
              GROUP BY Game.name)
            AS float) * 100 AS achievement_percentage 
FROM UserAchievement 
JOIN Achievement ON Achievement.id = UserAchievement.achievement 
JOIN Game ON Game.id = Achievement.game 
WHERE Game.name = 'Stardew Valley' AND userId = 2
GROUP BY Game.name;

-- Generos que o usuario mais joga. Totalizar as horas jogadas por genero e filtar (HAVING) 
-- por generos que totalizar mais do que um certo numero de horas, por exemplo 1000,
-- para classificarmos como Experts!
SELECT Genre.name, SUM(UserGame.hoursPlayed)
FROM UserGame
INNER JOIN AppUser ON AppUser.id = UserGame.userId
INNER JOIN Game ON Game.id = UserGame.game
INNER JOIN GameGenre ON GameGenre.game = Game.id
INNER JOIN Genre ON Genre.id = GameGenre.genre
WHERE appuser.name='Matheus Woeffel' --User name here
GROUP BY Genre.name
HAVING SUM(UserGame.hoursPlayed) >= 1000
ORDER BY SUM(UserGame.hoursPlayed) DESC;


-- Mensagens de um dado usuário que contem uma dada palavra
SELECT  BasicUserDetail.userId AS userId, BasicUserDetail.name AS senderName, Match.id AS matchId, Message.text AS messageText
FROM Message 
JOIN BasicUserDetail ON BasicUserDetail.userid = Message.sender
JOIN Match ON Match.id = Message.match
WHERE BasicUserDetail.name = 'Alencar da Costa' AND (Message.text ILIKE '%Oi%');

