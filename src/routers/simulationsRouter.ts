import express from 'express';

import * as simulationsController from '../controllers/simulationsController';

const router = express.Router();

router.post('/simulation', simulationsController.makeSimulation);

export default router;
