/* eslint-disable no-undef */
import * as simulationsService from '../../src/services/simulationsService';
import * as simulationsRepository from '../../src/repositories/simulationsRepository';

describe('Simulations Service', () => {
  it('Should be truthy when plans are returned', async () => {
    jest.spyOn(simulationsRepository, 'getPrice').mockImplementationOnce(async () => []);
    jest.spyOn(simulationsRepository, 'getPlanPrice').mockImplementationOnce(async () => []);
    jest.spyOn(simulationsRepository, 'simulate').mockImplementationOnce(async () => []);

    const result = await simulationsService.simulation(1, 2, 20, 1);
    expect(result).toBeTruthy();
  });

  it('Should be falsy when getPrice returns false', async () => {
    jest.spyOn(simulationsRepository, 'getPrice').mockImplementationOnce(async () => false);
    jest.spyOn(simulationsRepository, 'getPlanPrice').mockImplementationOnce(async () => []);
    jest.spyOn(simulationsRepository, 'simulate').mockImplementationOnce(async () => []);

    const result = await simulationsService.simulation(1, 2, 20, 1);
    expect(result).toBeFalsy();
  });

  it('Should be falsy when getPlanPrice returns false', async () => {
    jest.spyOn(simulationsRepository, 'getPrice').mockImplementationOnce(async () => []);
    jest.spyOn(simulationsRepository, 'getPlanPrice').mockImplementationOnce(async () => [{}]);
    jest.spyOn(simulationsRepository, 'simulate').mockImplementationOnce(async () => []);

    const expected = {};
    const result = await simulationsService.simulation(1, 2, 20, 1);
    expect(result).toEqual(expect.objectContaining(expected));
  });

  it('Should be falsy when getPlanPrice returns false', async () => {
    jest.spyOn(simulationsRepository, 'getPrice').mockImplementationOnce(async () => []);
    jest.spyOn(simulationsRepository, 'getPlanPrice').mockImplementationOnce(async () => []);
    jest.spyOn(simulationsRepository, 'simulate').mockImplementationOnce(async () => [{}]);

    const expected = {};
    const result = await simulationsService.simulation(1, 2, 20, 1);
    expect(result).toEqual(expect.objectContaining(expected));
  });
});
