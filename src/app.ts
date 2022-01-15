import express from 'express';
import cors from 'cors';

import * as plansController from './controllers/plansController';

const app = express();
app.use(cors());
app.use(express.json());

app.get('/plans', plansController.getNewPlans);

export default app;
