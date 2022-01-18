/* eslint-disable consistent-return */
import { Response, Request } from 'express';

import * as tariffsService from '../services/tariffsService';

export async function getTariffs(req: Request, res: Response) {
  try {
    const tariffs = await tariffsService.getTariffs();
    if (tariffs === false) return res.sendStatus(404);

    return res.status(201).send(tariffs);
  } catch (error) {
    console.log(error);
    return res.sendStatus(500);
  }
}
