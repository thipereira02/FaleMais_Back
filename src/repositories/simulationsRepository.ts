import '../setup';
import connection from '../database';

export async function getPrice(originId: number, destinationId: number):Promise<any[] | false> {
  const price = await connection.query(`
    SELECT "oldPrice", "newPrice"
    FROM "oldValues"
    WHERE "originId" = $1
    AND "destinationId" = $2
  `, [originId, destinationId]);
  if (price.rowCount === 0) return false;
  return price.rows;
}

export async function getPlanPrice(plan: number):Promise<any[] | false> {
  const price = await connection.query(`
    SELECT price
    FROM plans
    WHERE id = $1
  `, [plan]);
  if (price.rowCount === 0) return false;
  return price.rows;
}

export async function simulate(originId: number, destinationId: number, minutes: number, planId: number, withoutPlan: number, withPlan: number, economy:number) {
  const insert = await connection.query(`
    INSERT INTO simulations
    ("originId", "destinationId", minutes, "planId", "withoutPlan", "withPlan", economy)
    VALUES ($1, $2, $3, $4, $5, $6, $7)
    RETURNING id
  `, [originId, destinationId, minutes, planId, withoutPlan, withPlan, economy]);
  const { id } = insert.rows[0];

  const simulation = await connection.query(`
    SELECT simulations.*,
    codes.code AS origin,
    plans.name AS plan
    FROM simulations
    JOIN codes
    ON simulations."originId" = codes.id
    JOIN plans
    ON simulations."planId" = plans.id
    WHERE simulations.id = $1
  `, [id]);
  return simulation.rows[0];
}
