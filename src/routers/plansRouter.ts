import express from 'express';

import * as plansController from '../controllers/plansController';

const router = express.Router();

router.get('/plans', plansController.getNewPlans);

export default router;
