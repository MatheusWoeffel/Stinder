import { Pool } from 'pg';


const pool = new Pool({
    user: 'postgres',
    host: 'localhost',
    database: 'stinder',
    password: 'Fireware123',
    port: 5432,
  });

  const query = (text, params) => pool.query(text, params);

export { query };




  