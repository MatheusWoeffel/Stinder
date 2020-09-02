--Número total de achievements
SELECT game.name, count(achievement.id) as num_achievements
FROM achievement 
JOIN game ON (game = game.id) 
WHERE game.name='Stardew Valley' 
GROUP BY game.name;

--% de realização de achievements por um dado usuário
SELECT CAST(count(userachievement.achievement) as float) / CAST(
                                                          (SELECT count(achievement.id) as num_achievements 
                                                          FROM achievement JOIN game ON (game = game.id) 
                                                          WHERE game.name='Stardew Valley' 
                                                          GROUP BY game.name)as float) * 100 as achievement_percentage 
FROM userachievement 
JOIN achievement ON(userachievement.achievement = achievement.id) 
JOIN game ON (achievement.game = game.id) 
WHERE game.name='Stardew Valley' AND userid=2 GROUP BY game.name;


-- Atividades dos match de um determinado user.
-- Utilizado na tela de Feed para visualizar as atividade que foram realizadas pelos matches do usuário logado
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
ORDER BY A.createdAt DESC



-- SUGESTÃO: View que relaciona os detalhes/informações basicos de um usuário.
-- Essas são as informações que aparecem no card de cada usuário durante a classificaçÀo.
-- Ao clicar em um card, um nova consulta será realizada buscando todas as informações do usuário.
-- Essa consulta trás as informações de nome, udadem decrição, genêro E a ÚLTIMA foto postada.
-- Ela assume que a última foto postada é aquela que será exibida como "foto de perfil" principal/atual.
DROP VIEW BasicUserDetail;

CREATE VIEW BasicUserDetail AS 
  SELECT U.id userId, U.name, U.birthdate, U.description, U.gender, P.id photoId, P.url
  FROM AppUser U
  LEFT JOIN Photo P ON P.userid = U.id
  WHERE P.id IS NULL OR P.id = (
    SELECT Photo.id FROM Photo
    INNER JOIN Activity ON Activity.photo = Photo.id
    WHERE Photo.isValid = true AND Activity.type = 'p' AND Photo.userId = U.id
    ORDER BY Activity.createdAt DESC
    LIMIT 1
	);


-- Essa consulta utiliza a VIEW anterior para buscar as mensagens de todos os matches de um usuário (logado)
-- A consulta trás as info como dados da mensagem enviada, match associado E as informações do usuário que enviou.
-- Sobre o usuário que buscou, é retornado o nome e a foto principal.
SELECT M.id, M.match, M.text, M.createdAt, B.userId, B.name, B.photoId, B.url
FROM Message M
INNER JOIN BasicUserDetail B ON B.userId = M.sender
INNER JOIN Match ON Match.id = M.match
WHERE Match.userOne = 2 OR Match.userTwo = 2
ORDER BY Match.id, M.createdAt DESC


-- Essa consulta retorna o ID dos usuários que não ainda não foram classificados pelo usuário logado E que
-- possuam algum gênero de jogo em comum.
-- O intuito dessa consulta seria trazer os IDs de usuários que podem ser mostrados durante a classificação
SELECT DISTINCT UserGame.userid FROM UserGame
INNER JOIN Game ON Game.id = UserGame.game
INNER JOIN GameGenre ON GameGenre.game = Game.id
WHERE UserGame.userid != 1 
AND UserGame.userid NOT IN (SELECT DISTINCT Classification.userTo id
                       FROM Classification 
                       WHERE Classification.userFrom = 1
                      )
AND GameGenre.genre IN (SELECT DISTINCT GameGenre.genre
                        FROM UserGame
                        INNER JOIN Game ON Game.id = UserGame.game
                        INNER JOIN GameGenre ON GameGenre.game = Game.id
                        WHERE UserGame.userid = 1
                       )
ORDER BY UserGame.userid

-- Uma melhora da consulta anterior para já buscar junto os dados basicos do usuário
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
ORDER BY B.userid

--Todos os usuários que não tem nenhum jogo em comum
SELECT id FROM appuser
EXCEPT
SELECT DISTINCT userid from usergame where game in (SELECT game from usergame where userid=3);

SELECT id, name from appuser as EXT where NOT EXISTS(
	SELECT game from usergame where userid=EXT.id and game in(SELECT game from usergame where userid=1)
);

--Seleciona os 10 usuários com mais likes/superlikes e suas informações mais importantes
SELECT userId, name, birthdate, description, gender, photoId, url 
FROM BasicUserDetail 
WHERE userId in(
								SELECT userTo FROM classification 
  							WHERE type in ('l', 's') 
  							GROUP BY userTo 
  							HAVING COUNT(userTo) > 1 --Podemos mudar para algum número especifico de likes
  							ORDER BY COUNT(userTo) DESC 
  							LIMIT 10
								);


--Todos os achievements em comum entre dois usuários. 
SELECT appuser.name, achievement.name, game.name as gamename, achievement.thumbnail, achievement.description 
FROM userachievement JOIN achievement ON(achievement = achievement.id) 
JOIN game ON(achievement.game = game.id)
JOIN appuser ON(userachievement.userid = appuser.id)
WHERE appuser.name='Matheus Woeffel' --First user name
and achievement.id IN(
											SELECT achievement FROM userachievement JOIN appuser ON (userachievement.userid = appuser.id)
  										WHERE appuser.name='Matheus Woeffel' --Second user name
											);

--Gêneros que determinado usuário jogou por mais de X horas.
--Retorna nome do gênero e total de horas jogadas neste gênero.
SELECT genre.name, SUM(usergame.hoursplayed) FROM usergame 
JOIN appuser ON (usergame.userid = appuser.id)
JOIN game ON (usergame.game = game.id)
JOIN gamegenre ON (game.id = gamegenre.game)
JOIN genre ON (gamegenre.genre = genre.id)
WHERE appuser.name='Matheus Woeffel' --User name here
GROUP BY genre.name HAVING SUM (usergame.hoursplayed) >= 1000 
ORDER BY SUM(usergame.hoursplayed) DESC;

SELECT  basicuserdetail.userid as userId, basicuserdetail.name as senderName, match.id as matchId, message.text as messageText
FROM message JOIN basicuserdetail ON (message.sender = basicuserdetail.userid)
JOIN match ON (message.match = match.id)
WHERE basicuserdetail.name = 'Alencar da Costa' and (message.text ILIKE '%Oi%');


 
