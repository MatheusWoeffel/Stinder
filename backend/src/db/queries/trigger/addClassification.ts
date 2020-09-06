import query from '../../index';

interface Classification {
  userfrom: number;
  userto: number;
  type: 's' | 'l' | 'd';
}

interface DatabaseClassification extends Classification {
  createdat: string;
}

async function addClassification(classification: Classification): Promise<boolean> {
  try {
    const select = `
      INSERT INTO Classification(userfrom, userto, type)
      VALUES ($1, $2, $3) RETURNING *
    `;

    const { userfrom, userto, type } = classification;

    const result = await query<DatabaseClassification>(select, [userfrom, userto, type]);

    return result.rowCount > 0;
  } catch (err) {
    console.log(err.message);
    return false;
  }
}

export default addClassification;
