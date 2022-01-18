import express from 'express';

import * as codesController from '../controllers/codesController';

const router = express.Router();

router.get('/originCodes', codesController.getOriginCodes);
router.get('/destinationCodes/:originId', codesController.getDestinationCodes);

export default router;
