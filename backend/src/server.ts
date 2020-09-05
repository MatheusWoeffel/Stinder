import express from 'express';
import 'dotenv/config';
import cors from 'cors';
import routes from './routes';

const app = express();

app.use(cors());

app.use(routes);

app.listen(3232, () => {
  console.log('🚀 Server up and running on port 3232.');
});
