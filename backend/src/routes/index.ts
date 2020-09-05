import { Router } from 'express';
import query from '../db';
import getUsersBasicDetails from '../db/queries/getUsersBasicDetails';
import getUserMessages from '../db/queries/getUserMessages';
import getNoCommonGenresUsers from '../db/queries/getNoCommonGenresUsers';
import getUserActivityFeed from '../db/queries/getUserActivityFeed';

const routes = Router();

routes.post('/hello', (request, response) => {
  const { name } = request.body;

  const hello = {
    message: `Hello, ${name}`,
  };

  return response.json(hello);
});

routes.get('/hello', (request, response) => {
  const hello = {
    message: 'Hello! Backend here!',
  };
  console.log('> GET /hello');
  return response.json(hello);
});

routes.get('/mostPlayedGender/:username', async (request, response) => {
  const mostPlayerGenderQuery = `SELECT Genre.name, SUM(UserGame.hoursPlayed)
  FROM UserGame
  INNER JOIN AppUser ON AppUser.id = UserGame.userId
  INNER JOIN Game ON Game.id = UserGame.game
  INNER JOIN GameGenre ON GameGenre.game = Game.id
  INNER JOIN Genre ON Genre.id = GameGenre.genre
  WHERE appuser.name=$1 --User name here
  GROUP BY Genre.name
  HAVING SUM(UserGame.hoursPlayed) >= 1000
  ORDER BY SUM(UserGame.hoursPlayed) DESC`;

  try {
    const result = await query(mostPlayerGenderQuery, [request.params.username]);
    console.log(result);
    return response.json(result.rows);
  } catch (err) {
    console.log(err);
    response.status(400);
    return response.json({ error: err.message });
  }
});

routes.get('/suggestedUsersByGender/:username', async (request, response) => {
  const suggestedUsersByGenderQuery = `SELECT DISTINCT B.userid, B.name, B.birthdate, B.description, B.gender, B.photoId, B.url
  FROM BasicUserDetail B
  INNER JOIN UserGame ON UserGame.userid = B.userid
  INNER JOIN Game ON Game.id = UserGame.game
  INNER JOIN GameGenre ON GameGenre.game = Game.id
  WHERE B.name != $1
  AND B.userid NOT IN (SELECT DISTINCT Classification.userTo id
                         FROM Classification
                         INNER JOIN AppUser ON Classification.userFrom = AppUser.id
                         WHERE AppUser.name = $1
                        )
  AND GameGenre.genre IN (SELECT DISTINCT GameGenre.genre
                          FROM UserGame
                          INNER JOIN Game ON Game.id = UserGame.game
                          INNER JOIN GameGenre ON GameGenre.game = Game.id
                          INNER JOIN AppUser ON  UserGame.userid = AppUser.id
                          WHERE AppUser.name = $1
                         )
  ORDER BY B.userid;`;

  try {
    const result = await query(suggestedUsersByGenderQuery, [request.params.username]);
    return response.json(result.rows);
  } catch (err) {
    console.log(err);
    response.status(400);
    return response.json({ error: err.message });
  }
});

routes.get('/sharedAchievementsByUsers/:username1&:username2', async (request, response) => {
  const sharedAchievementsByUsersQuery = `SELECT AppUser.name, Achievement.name, Game.name as gamename, Achievement.thumbnail, Achievement.description
  FROM UserAchievement
  JOIN Achievement ON Achievement.id = UserAchievement.achievement
  JOIN Game ON Game.id = Achievement.game
  JOIN AppUser ON AppUser.id = UserAchievement.userId
  WHERE AppUser.name = $1 --First user name
  AND Achievement.id IN (SELECT Achievement
                        FROM UserAchievement
                        JOIN AppUser ON AppUser.id = UserAchievement.userId
                        WHERE AppUser.name = $2 --Second user name
                        );`;

  try {
    const result = await query(
      sharedAchievementsByUsersQuery,
      [request.params.username1, request.params.username2],
    );
    return response.json(result.rows);
  } catch (err) {
    console.log(err);
    response.status(400);
    return response.json({ error: err.message });
  }
});

routes.get('/getMessagesOfUserBySubstring/:username&:substring', async (request, response) => {
  const messagesOfUserBySubstringQuery = `SELECT  BasicUserDetail.userId AS userId, BasicUserDetail.name AS senderName, Match.id AS matchId, Message.text AS messageText
  FROM Message
  JOIN BasicUserDetail ON BasicUserDetail.userid = Message.sender
  JOIN Match ON Match.id = Message.match
  WHERE BasicUserDetail.name = $1 AND (Message.text ILIKE '%${request.params.substring}%');`;

  try {
    const result = await query(messagesOfUserBySubstringQuery, [request.params.username]);
    return response.json(result.rows);
  } catch (err) {
    console.log(err);
    response.status(400);
    return response.json({ error: err.message });
  }
});

routes.get('/getTopUsers', async (request, response) => {
  const getTopUsersQuery = `DROP VIEW IF EXISTS UserLikeTotal;

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
                   LIMIT 10);`;

  try {
    const result = await query(getTopUsersQuery, []);
    // Various comands yields a vector of results, hence we pick up only the last one
    return response.json(result[2].rows);
  } catch (err) {
    console.log(err);
    response.status(400);
    return response.json({ error: err.message });
  }
});

routes.get('/getAchievementCompletion/:username&:game', async (request, response) => {
  const getAchievementCompletionQuery = `SELECT CAST(COUNT(UserAchievement.achievement) AS float)
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
WHERE Game.name = $2 AND AppUser.name = $1
GROUP BY Game.name;`;

  try {
    const result = await query(
      getAchievementCompletionQuery,
      [request.params.username, request.params.game],
    );
    // Various comands yields a vector of results, hence we pick up only the last one
    return response.json(result.rows);
  } catch (err) {
    console.log(err);
    response.status(400);
    return response.json({ error: err.message });
  }
});

routes.get('/usersBasicDetails', async (request, response) => {
  try {
    const result = await getUsersBasicDetails();
    return response.json(result);
  } catch (error) {
    return response.status(400).json({ error: error.message });
  }
});

routes.get('/userMessages/:id', async (request, response) => {
  try {
    const { id } = request.params;
    const result = await getUserMessages(Number(id));
    return response.json(result);
  } catch (error) {
    return response.status(400).json({ error: error.message });
  }
});

routes.get('/noCommonGenresUsers/:id', async (request, response) => {
  try {
    const { id } = request.params;
    const result = await getNoCommonGenresUsers(Number(id));
    return response.json(result);
  } catch (error) {
    return response.status(400).json({ error: error.message });
  }
});

routes.get('/userActivityFeed/:id', async (request, response) => {
  try {
    const { id } = request.params;
    const result = await getUserActivityFeed(Number(id));
    return response.json(result);
  } catch (error) {
    return response.status(400).json({ error: error.message });
  }
});

export default routes;
