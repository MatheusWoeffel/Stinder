import { Pool, QueryConfig, QueryResult } from 'pg';

const pool = new Pool({
  user: process.env.DB_USER,
  host: process.env.DB_HOST,
  database: process.env.DB_DATABASE,
  password: process.env.DB_PASSWORD,
  port: Number(process.env.DB_PORT) || 5432,
});

async function query<T>(text: string | QueryConfig, params?: any): Promise<QueryResult<T>> {
  return pool.query<T>(text, params);
}

export default query;
