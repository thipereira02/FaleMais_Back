import express from 'express';
import cors from 'cors';

import * as plansController from './controllers/plansController';
import * as codesController from './controllers/codesController';
import * as simulationsController from './controllers/simulationsController';
import * as tariffsController from './controllers/tariffsController';

const app = express();
app.use(cors());
app.use(express.json());

app.get('/plans', plansController.getNewPlans);
app.get('/originCodes', codesController.getOriginCodes);
app.get('/destinationCodes/:originId', codesController.getDestinationCodes);
app.post('/simulation', simulationsController.makeSimulation);
app.get('/tariffs', tariffsController.getTariffs);

export default app;
