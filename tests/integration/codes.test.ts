/* eslint-disable no-undef */
import '../../src/setup';

import { agent, clearDatabase, closeConnection } from '../utils/database';
import { insertCodes, insertCodesAndValue } from '../factories/codesFactory';

beforeEach(async () => {
  await clearDatabase();
});

afterAll(async () => {
  await closeConnection();
});

describe('GET /originCodes', () => {
  it('should answer with status 404 when there arent codes to be showed', async () => {
    const response = await agent.get('/originCodes');
    expect(response.status).toBe(404);
  });

  it('should answer with status 200 when origin codes are returned', async () => {
    await insertCodes();
    const response = await agent.get('/originCodes');
    expect(response.status).toBe(200);
  });
});

describe('GET /destinationCodes', () => {
  it('should answer with status 404 when doesnt exist code with the origin code ID passed', async () => {
    const response = await agent.get('/destinationCodes/0');
    expect(response.status).toBe(404);
  });

  it('should answer with status 200 when the destination codes are returned', async () => {
    await insertCodes();
    await insertCodesAndValue();
    const response = await agent.get('/destinationCodes/1');
    expect(response.status).toBe(200);
  });
});
