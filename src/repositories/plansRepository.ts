import '../setup';
import connection from '../database';

export async function getPlans():Promise<false | string[]> {
  const result = await connection.query(`
    SELECT *
    FROM plans
  `);
  if (result.rowCount === 0) return false;
  return result.rows;
}
