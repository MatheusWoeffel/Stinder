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


--Alencar
SELECT M.id, M.match, M.text, M.createdAt, B.userId, B.name, B.photoId, B.url
FROM Message M
INNER JOIN BasicUserDetail B ON B.userId = M.sender
INNER JOIN Match ON Match.id = M.match
WHERE Match.userOne = 2 OR Match.userTwo = 2
ORDER BY Match.id, M.createdAt DESC;

-- Título: Usuários sugeridos para um dado usuário que tenham gêneros em comum.
-- Funcionalidade: Essa consulta retorna os dados dos usuários que não ainda não foram classificados pelo usuário logado E que
-- possuam algum gênero de jogo em comum.
-- Objetivo: O intuito dessa consulta seria trazer os IDs de usuários que podem ser mostrados durante a classificação de um dado usuário, para
-- que sejam apresentados.
SELECT DISTINCT B.userid, B.name, B.birthdate, B.description, B.gender, B.photoId, B.url
FROM BasicUserDetail B
INNER JOIN UserGame ON UserGame.userid = B.userid
INNER JOIN Game ON Game.id = UserGame.game
INNER JOIN GameGenre ON GameGenre.game = Game.id
WHERE B.name != 'Matheus Woeffel'
AND B.userid NOT IN (SELECT DISTINCT Classification.userTo id
                       FROM Classification 
                       INNER JOIN AppUser ON Classification.userFrom = AppUser.id
                       WHERE AppUser.name = 'Matheus Woeffel'
                      )
AND GameGenre.genre IN (SELECT DISTINCT GameGenre.genre
                        FROM UserGame
                        INNER JOIN Game ON Game.id = UserGame.game
                        INNER JOIN GameGenre ON GameGenre.game = Game.id
                        INNER JOIN AppUser ON  UserGame.userid = AppUser.id
                        WHERE AppUser.name = 'Matheus Woeffel'
                       )
ORDER BY B.userid;





--Todos os usuários que não tem nenhum gênero em comum, o intuito desta consulta seria filtrar
--Alencar
SELECT id, name 
FROM AppUser AS EXT 
WHERE id != 4 AND NOT EXISTS(
  SELECT * FROM UserGame 
  JOIN GameGenre ON GameGenre.game = UserGame.game
  WHERE userId = EXT.id AND genre IN (SELECT DISTINCT genre
                                  FROM UserGame 
                                  JOIN GameGenre ON GameGenre.game = UserGame.game
                                  WHERE userId = 4)
); --Necessário para o caso do usuário em questão não possuir jogos.(Vai dar "unmatch" em todos exceto nele mesmo);



-- Título: Achievements em comum entre dois usuários.
-- Funcionalidade: Essa consulta retorna todos os achievements em comum entre dois usuários.
-- Objetivo: O intuito dessa consulta seria descobrir que achievements dois usuários já atingiram, sendo essa informação mostrada no card
-- do usuário mostrado, servindo como potenciais assuntos que os dois usuários podem conversar sobre.
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
--Alencar
SELECT A.id activity, A.type, A.createdAt, A.userid userId, U.name, G.id gameId, G.name gamename, G.thumbnail gameThumb, P.id photoId, P.url photoUrl
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

-- Título: Buscar porcentagem de completamento de achievements de um dado jogo
-- Funcionalidade: Essa consulta retorna a porcentagem de completamento dos achievements de um dado jogo para um dado usuário.
-- Objetivo: O intuito dessa consulta seria mostrar o quanto um usuário já completou de um dado jogo, dando uma informação do nível de "expertise"
-- do usuário naquele dado jogo.
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
JOIN AppUser ON UserAchievement.userId = AppUser.id
WHERE Game.name = 'Stardew Valley' AND AppUser.name = 'Matheus Woeffel'
GROUP BY Game.name;

-- Generos que o usuario mais joga. Totalizar as horas jogadas por genero e filtar (HAVING) 
-- por generos que totalizar mais do que um certo numero de horas, por exemplo 1000,
-- para classificarmos como Experts!
--Alencar
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

-- Título: Buscar Mensagem de um usuário por substring
-- Funcionalidade: Essa consulta retorna as mensagens enviadas por um dado usuário, que contém uma determinada substring.
-- Objetivo: O intuito dessa consulta seria trazer mensagens enviadas de um dado usuário com potenciais palavras ofensivas, para que 
-- em caso de denúncia, possa-se avaliar o comportamento do usuário.
SELECT  BasicUserDetail.userId AS userId, BasicUserDetail.name AS senderName, Match.id AS matchId, Message.text AS messageText
FROM Message 
JOIN BasicUserDetail ON BasicUserDetail.userid = Message.sender
JOIN Match ON Match.id = Message.match
WHERE BasicUserDetail.name = 'Alencar da Costa' AND (Message.text ILIKE '%Oi%');


-- TODO:Verificar se essa vai entrar e se a pesquisa vai ser por id de usuario ou nome
-- Buscar detalhes completos dos jogos de um usuário
--ALencar
SELECT UG.userid, UG.lastPlayedDate, UG.hoursPlayed, UG.game,
G.name gameName, G.thumbnail gameThumb, G.releaseDate, G.developer, 
D.name developerName, D.thumbnail developerThumb
FROM UserGame UG
INNER JOIN Game G ON G.id = UG.game
INNER JOIN Developer D ON D.id = G.developer
WHERE UG.hoursplayed > 0 AND UG.userid = 1
ORDER BY UG.lastPlayedDate;


-- Título: Top Usuários do Momento
-- Funcionalidade: Essa consulta retorna os usuários mais bem classificados do aplicativo. Os 10 usuarios com a quantidade de likes superior a media de likes por usuario
-- Objetivo: O intuito dessa consulta seria mostrar "top users" em uma seção específica do aplicativo, como recomendação de usuários
-- para membros Gold.

--Utilizamos essa view para facilitar a consulta posterior. Ela retorna o total de classificações por usuário, e o número de classificações positivas.
DROP VIEW IF EXISTS UserLikeTotal;

CREATE VIEW UserLikeTotal AS 
  SELECT userTo as userId,
  			 COUNT(*) FILTER (WHERE type != 'd') total_positives,
         COUNT(*) total_classifications
  FROM Classification
  GROUP BY userTo;


SELECT * FROM BasicUserDetail
WHERE userId IN (SELECT userTo FROM Classification
                 WHERE type != 'd'
                 GROUP BY userTo
                 HAVING COUNT(*) > (SELECT AVG(total_positives)
                                    FROM UserLikeTotal)
                 ORDER BY COUNT(*) DESC
                 LIMIT 10);