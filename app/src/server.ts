import express from 'express';
import routes from './routes';

const app = express();

app.use(routes);

app.listen(3232, () => {
  console.log('🚀 Server up and running on port 3232.');
});
