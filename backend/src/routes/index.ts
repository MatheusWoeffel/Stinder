import { Router } from 'express';

const routes = Router();

routes.post('/hello', (request, response) => {
  const { name } = request.body;

  const hello = {
    message: `Hello, ${name}`,
  };

  return response.json(hello);
});

routes.get('/hello', (request, response) => {
  const hello = {
    message: 'Hello! Backend here!',
  };
  console.log('> GET /hello');
  return response.json(hello);
});

export default routes;
