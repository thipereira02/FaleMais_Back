/* eslint-disable consistent-return */
import { Response, Request } from 'express';

import { SimulationInterface } from '../interfaces/SimulationInterface';
import * as simulationsService from '../services/simulationsService';

export async function makeSimulation(req: Request, res: Response) {
  try {
    const { originId, destinationId, minutes, planId } = req.body as SimulationInterface;

    const simulation = await simulationsService.simulation(originId, destinationId, minutes, planId);
    if (simulation === null) return res.sendStatus(400);
    if (simulation === false) return res.sendStatus(404);

    return res.status(201).send(simulation);
  } catch (error) {
    console.log(error);
    return res.sendStatus(500);
  }
}
