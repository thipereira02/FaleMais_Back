/* eslint-disable no-param-reassign */
import * as tariffsRepository from '../repositories/tariffsRepository';

export async function getTariffs(): Promise<false | string[]> {
  const result = await tariffsRepository.getTariffs();
  if (!result) return false;

  result.forEach((r) => {
    if (r.destination === 1) r.destination = '11';
    else if (r.destination === 2) r.destination = '16';
    else if (r.destination === 3) r.destination = '17';
    else if (r.destination === 4) r.destination = '18';
  });

  return result;
}
