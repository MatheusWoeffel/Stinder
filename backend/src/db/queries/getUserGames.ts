import query from '../index';

interface Game {
  userid: number;
  lastplayeddate: string;
  hoursplayed: number;
  game: number;
  gamename: string;
  gamethumb: string;
  releasedate: string;
  developer: number;
  developername: string;
  developerthumb:string;
}

async function getUserGames(id: number): Promise<Game[]> {
  try {
    const select = `
    SELECT UG.userid, UG.lastPlayedDate, UG.hoursPlayed, UG.game,
          G.name gameName, G.thumbnail gameThumb, G.releaseDate, G.developer,
          D.name developerName, D.thumbnail developerThumb
    FROM UserGame UG
    INNER JOIN Game G ON G.id = UG.game
    INNER JOIN Developer D ON D.id = G.developer
    WHERE UG.hoursplayed > 0 AND UG.userid = $1
    ORDER BY UG.lastPlayedDate`;

    const result = await query<Game>(select, [id]);
    return result.rows;
  } catch (err) {
    console.log(err.message);
    return [];
  }
}

export default getUserGames;
