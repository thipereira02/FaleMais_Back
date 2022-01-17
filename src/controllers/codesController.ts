/* eslint-disable consistent-return */
import { Response, Request } from 'express';

import * as codesService from '../services/codesService';

export async function getOriginCodes(req: Request, res: Response) {
  try {
    const codes = await codesService.getOriginCodes();
    if (!codes) return res.sendStatus(404);

    return res.status(200).send(codes);
  } catch (error) {
    console.log(error);
    return res.sendStatus(500);
  }
}

export async function getDestinationCodes(req: Request, res: Response) {
  try {
    const originCode = Number(req.params.originId);

    const codes = await codesService.getDestinationCodes(originCode);
    if (!codes) return res.sendStatus(404);

    return res.status(200).send(codes);
  } catch (error) {
    console.log(error);
    return res.sendStatus(500);
  }
}
