/* eslint-disable no-undef */
import * as plansService from '../../src/services/plansService';
import * as plansRepository from '../../src/repositories/plansRepository';

describe('Plans Service', () => {
  it('Should be truthy when plans are returned', async () => {
    jest.spyOn(plansRepository, 'getPlans').mockImplementationOnce(async () => []);

    const result = await plansService.getPlans();
    expect(result).toBeTruthy();
  });

  it('Should be falsy when plans are not returned', async () => {
    jest.spyOn(plansRepository, 'getPlans').mockImplementationOnce(async () => false);

    const result = await plansService.getPlans();
    expect(result).toBeFalsy();
  });
});
