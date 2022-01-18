/* eslint-disable no-undef */
import '../../src/setup';

import { agent, clearDatabase, closeConnection } from '../utils/database';
import { insertCodes } from '../factories/codesFactory';
import { insertPlans } from '../factories/plansFactory';

beforeEach(async () => {
  await clearDatabase();
});

afterAll(async () => {
  await closeConnection();
});

describe('POST /simulation', () => {
  it('should answer with status 400 when originId is invalid', async () => {
    const body = {
      originId: 0,
      destinationId: 2,
      minutes: 20,
      planId: 1,
    };
    const response = await agent.post('/simulation').send(body);
    expect(response.status).toBe(400);
  });

  it('should answer with status 400 when destinationId is invalid', async () => {
    const body = {
      originId: 1,
      destinationId: 0,
      minutes: 20,
      planId: 1,
    };
    const response = await agent.post('/simulation').send(body);
    expect(response.status).toBe(400);
  });

  it('should answer with status 400 when minutes is invalid', async () => {
    const body = {
      originId: 1,
      destinationId: 1,
      minutes: 0,
      planId: 1,
    };
    const response = await agent.post('/simulation').send(body);
    expect(response.status).toBe(400);
  });

  it('should answer with status 400 when planId is invalid', async () => {
    const body = {
      originId: 1,
      destinationId: 2,
      minutes: 20,
      planId: 0,
    };
    const response = await agent.post('/simulation').send(body);
    expect(response.status).toBe(400);
  });

  it('should answer with status 201 when simulation is returned', async () => {
    await insertCodes();
    await insertPlans();
    const body = {
      originId: 1,
      destinationId: 2,
      minutes: 20,
      planId: 1,
    };
    const response = await agent.post('/simulation').send(body);
    expect(response.status).toBe(201);
  });
});
