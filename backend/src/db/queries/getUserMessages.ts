import query from '../index';

interface Message {
  id: number;
  match: number;
  text: string;
  createdat: string;
  userid: number;
  name: string;
  photoid: number;
  url: string;
}

async function getUserMessages(id: number): Promise<Message[]> {
  try {
    const select = `
    SELECT M.id, M.match, M.text, M.createdAt,
           B.userId, B.name, B.photoId, B.url
    FROM Message M
    INNER JOIN BasicUserDetail B ON B.userId = M.sender
    INNER JOIN Match ON Match.id = M.match
    WHERE Match.userOne = $1 OR Match.userTwo = $1
    ORDER BY Match.id, M.createdAt DESC`;

    const result = await query<Message>(select, [id]);

    return result.rows;
  } catch (err) {
    console.log(err.message);
    return [];
  }
}

export default getUserMessages;
