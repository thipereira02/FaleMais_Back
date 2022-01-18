import '../setup';
import connection from '../database';

export async function getTariffs() {
  const result = await connection.query(`
    SELECT "oldValues".*,
    codes.code AS origin,
    "oldValues"."destinationId" AS destination
    FROM "oldValues"
    JOIN codes
    ON "oldValues"."originId" = codes.id
  `);
  if (result.rowCount === 0) return false;
  return result.rows;
}
