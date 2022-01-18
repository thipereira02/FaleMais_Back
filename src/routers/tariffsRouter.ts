import express from 'express';

import * as tariffsController from '../controllers/tariffsController';

const router = express.Router();

router.get('/tariffs', tariffsController.getTariffs);

export default router;
