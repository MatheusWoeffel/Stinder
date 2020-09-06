import query from '../../index';

interface Classification {
  userfrom: number;
  userto: number;
  type: string;
  createdat: string;
}

async function getClassifications(): Promise<Classification[]> {
  try {
    const select = 'SELECT * FROM Classification';

    const result = await query<Classification>(select, []);

    return result.rows;
  } catch (err) {
    console.log(err.message);
    return [];
  }
}

export default getClassifications;
