/* eslint-disable no-undef */
import '../../src/setup';

import { agent, clearDatabase, closeConnection } from '../utils/database';
import { insertPlans } from '../factories/plansFactory';

beforeEach(async () => {
  await clearDatabase();
});

afterAll(async () => {
  await closeConnection();
});

describe('GET /plans', () => {
  it('should answer with status 404 when there arent plans to be showed', async () => {
    const response = await agent.get('/plans');
    expect(response.status).toBe(404);
  });

  it('should answer with status 200 when the plans are returned', async () => {
    await insertPlans();
    const response = await agent.get('/plans');
    expect(response.status).toBe(200);
  });
});
