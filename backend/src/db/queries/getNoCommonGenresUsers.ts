import query from '../index';

interface User {
  id: number;
  name: string;
}

async function getNoCommonGenresUsers(id: number): Promise<User[]> {
  try {
    const select = `
    SELECT id, name
    FROM AppUser AS EXT
    WHERE id != $1 AND NOT EXISTS(
      SELECT * FROM UserGame
      JOIN GameGenre ON GameGenre.game = UserGame.game
      WHERE userId = EXT.id AND genre IN (SELECT DISTINCT genre
                                      FROM UserGame
                                      JOIN GameGenre ON GameGenre.game = UserGame.game
                                      WHERE userId = $1)
    )`;

    const result = await query<User>(select, [id]);

    return result.rows;
  } catch (err) {
    console.log(err.message);
    return [];
  }
}

export default getNoCommonGenresUsers;
