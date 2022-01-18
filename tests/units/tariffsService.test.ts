/* eslint-disable no-undef */
import * as tariffsService from '../../src/services/tariffsService';
import * as tariffsRepository from '../../src/repositories/tariffsRepository';

describe('tariffs Service', () => {
  it('Should be truthy when tariffs are returned', async () => {
    jest.spyOn(tariffsRepository, 'getTariffs').mockImplementationOnce(async () => []);

    const result = await tariffsService.getTariffs();
    expect(result).toBeTruthy();
  });

  it('Should be falsy when tariffs arent returned', async () => {
    jest.spyOn(tariffsRepository, 'getTariffs').mockImplementationOnce(async () => false);

    const result = await tariffsService.getTariffs();
    expect(result).toBeFalsy();
  });
});
