import query from '../index';

interface Activity {
  activity: number;
  type: 'p' | 'g';
  createdat: string;
  userid: number;
  name: string;
  gameid?: number;
  gamename?: string;
  gamethumb?: string;
  photid?: number;
  photourl?: string;
}

async function getUserActivityFeed(id: number): Promise<Activity[]> {
  try {
    const select = `
    SELECT U.id activity, A.type, A.createdAt, A.userid userId, U.name,
           G.id gameId, G.name gamename, G.thumbnail gameThumb,
           P.id photoId, P.url photoUrl
    FROM Activity A
    INNER JOIN AppUser U ON U.id = A.userid
    LEFT JOIN Game G ON G.id = A.game
    LEFT JOIN Photo P ON P.id = A.photo
    WHERE A.userid IN (
        SELECT userTwo AS userId FROM Match
        WHERE userOne = $1
        UNION
        SELECT userOne AS userId FROM Match
        WHERE userTwo = $1
    )
    ORDER BY A.createdAt DESC`;

    const result = await query<Activity>(select, [id]);

    return result.rows;
  } catch (err) {
    console.log(err.message);
    return [];
  }
}

export default getUserActivityFeed;
