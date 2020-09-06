
import query from '../../index';

interface Match {
  id: number;
  userone: number;
  usertwo: number;
  isvalid: boolean;
  createdat: string;
}

async function getMatches(): Promise<Match[]> {
  try {
    const select = 'SELECT * FROM Match';
    const result = await query<Match>(select);

    return result.rows;
  } catch (err) {
    console.log(err.message);
    return [];
  }
}

export default getMatches;

