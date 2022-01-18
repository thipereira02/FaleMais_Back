import * as plansRepository from '../repositories/plansRepository';

export async function getPlans():Promise<false | string[]> {
  const plans = await plansRepository.getPlans();
  if (!plans) return false;
  return plans;
}
