/* eslint-disable no-undef */
import * as codesService from '../../src/services/codesService';
import * as codesRepository from '../../src/repositories/codesRepository';

describe('Codes Service', () => {
  it('Should be truthy when origin codes are returned', async () => {
    jest.spyOn(codesRepository, 'getOriginCodes').mockImplementationOnce(async () => []);

    const result = await codesService.getOriginCodes();
    expect(result).toBeTruthy();
  });

  it('Should be falsy when origin codes are not returned', async () => {
    jest.spyOn(codesRepository, 'getOriginCodes').mockImplementationOnce(async () => false);

    const result = await codesService.getOriginCodes();
    expect(result).toBeFalsy();
  });

  it('Should be truthy when origin codes are returned', async () => {
    jest.spyOn(codesRepository, 'getDestinationCodes').mockImplementationOnce(async () => []);

    const result = await codesService.getDestinationCodes(1);
    expect(result).toBeTruthy();
  });

  it('Should be falsy when origin codes are not returned', async () => {
    jest.spyOn(codesRepository, 'getDestinationCodes').mockImplementationOnce(async () => false);

    const result = await codesService.getDestinationCodes(1);
    expect(result).toBeFalsy();
  });
});
