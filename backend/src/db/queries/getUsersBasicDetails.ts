import query from '../index';

interface UserBasicDetail {
  userid: number;
  name: string;
  birthdate: string;
  description: string;
  gender: 'f' | 'm';
  photoid: string;
  url: string;
  isgolduser: boolean;
}

async function getUsersBasicDetail(): Promise<UserBasicDetail[]> {
  try {
    const select = 'SELECT * FROM BasicUserDetail';
    const result = await query<UserBasicDetail>(select);

    return result.rows;
  } catch (err) {
    console.log(err.message);
    return [];
  }
}

export default getUsersBasicDetail;
