/* eslint-disable consistent-return */
import { Response, Request } from 'express';

import * as plansService from '../services/plansService';

export async function getNewPlans(req: Request, res: Response) {
  try {
    const plans = await plansService.getPlans();
    if (!plans) return res.sendStatus(404);

    return res.status(200).send(plans);
  } catch (error) {
    console.log(error);
    return res.sendStatus(500);
  }
}
