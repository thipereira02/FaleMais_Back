import * as simulationsRepository from '../repositories/simulationsRepository';
import { simulationSchema } from '../schemas/SimulationSchema';

function calculateValues(minutes: number, oldPrice: number, planPrice: number, newPrice: number) {
  const withoutPlan: number = parseFloat((minutes * oldPrice).toFixed(2));
  let withPlan: number;
  let economy: number = 0;

  if (minutes > planPrice) withPlan = parseFloat(((minutes - planPrice) * newPrice).toFixed(2));
  else withPlan = 0;
  economy = parseFloat((withoutPlan - withPlan).toFixed(2));

  return { withoutPlan, withPlan, economy };
}

export async function simulation(originId: number, destinationId: number, minutes: number, planId: number):Promise<false | {}> {
  const isValid = simulationSchema.validate({ originId, destinationId, minutes, planId });
  if (isValid.error !== undefined) return null;

  const getPrice = await simulationsRepository.getPrice(originId, destinationId);
  if (!getPrice) return false;
  const newPrice = Number(getPrice.map((g) => g.newPrice));
  const oldPrice = Number(getPrice.map((g) => g.oldPrice));

  const getPlanPrice = await simulationsRepository.getPlanPrice(planId);
  if (!getPlanPrice) return false;
  const planPrice = Number(getPlanPrice.map((g) => g.price));

  const { withoutPlan, withPlan, economy } = calculateValues(minutes, oldPrice, planPrice, newPrice);

  const simulate = await simulationsRepository.simulate(originId, destinationId, minutes, planId, withoutPlan, withPlan, economy);

  let destination: string;
  if (simulate.destinationId === 1) destination = '11';
  else if (simulate.destinationId === 2) destination = '16';
  else if (simulate.destinationId === 3) destination = '17';
  else if (simulate.destinationId === 4) destination = '18';

  const result = {
    id: simulate.id,
    origin: simulate.origin,
    destination,
    minutes: simulate.minutes,
    plan: simulate.plan,
    withoutPlan: simulate.withoutPlan,
    withPlan: simulate.withPlan,
    economy: simulate.economy,
  };
  return result;
}
