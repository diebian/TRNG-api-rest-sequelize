import express, { json } from 'express'
import morgan from 'morgan'

// imports routes
import brandRoutes from './routes/brands';
import heroeRoutes from './routes/heroes';

const app = express();

// middlewares 
app.use(morgan('dev'));
app.use(json());

//routes
app.use('/api/brands', brandRoutes);
app.use('/api/heroes', heroeRoutes);

export default app;