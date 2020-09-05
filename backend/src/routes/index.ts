import { Router, response } from 'express';
import { query } from '../db'

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

routes.get('/mostPlayedGender/:username', async (request, response)=> {

  const mostPlayerGenderQuery = `SELECT Genre.name, SUM(UserGame.hoursPlayed)
  FROM UserGame
  INNER JOIN AppUser ON AppUser.id = UserGame.userId
  INNER JOIN Game ON Game.id = UserGame.game
  INNER JOIN GameGenre ON GameGenre.game = Game.id
  INNER JOIN Genre ON Genre.id = GameGenre.genre
  WHERE appuser.name=$1 --User name here
  GROUP BY Genre.name
  HAVING SUM(UserGame.hoursPlayed) >= 1000
  ORDER BY SUM(UserGame.hoursPlayed) DESC`
  
  try{
    const result = await query(mostPlayerGenderQuery,[request.params.username])
    console.log(result);
    return response.json(result.rows);
  }

  catch(err){
    console.log(err);
    response.status(400);
    return response.json({error: err.message});
  }
 
});


routes.get("/suggestedUsersByGender/:username", async (request,response) => {
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

  try{
    let result = await query(suggestedUsersByGenderQuery,[request.params.username]);
    return response.json(result.rows);
  }
  catch(err){
    console.log(err);
    response.status(400);
    return response.json({error: err.message});
  }
});

routes.get("/sharedAchievementsByUsers/:username1&:username2", async (request,response) => {
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

  try{
    let result = await query(sharedAchievementsByUsersQuery,[request.params.username1, request.params.username2]);
    return response.json(result.rows);
  }
  catch(err){
    console.log(err);
    response.status(400);
    return response.json({error: err.message});
  }
});

export default routes;
