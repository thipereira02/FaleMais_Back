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

describe('GET /tariffs', () => {
  it('should answer with status 404 when there arent tariffs to be showed', async () => {
    const response = await agent.get('/tariffs');
    expect(response.status).toBe(404);
  });

  it('should answer with status 200 when tariffs are returned', async () => {
    await insertCodes();
    await insertCodesAndValue();
    const response = await agent.get('/tariffs');
    expect(response.status).toBe(200);
  });
});
