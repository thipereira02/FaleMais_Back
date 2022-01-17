import '../setup';
import connection from '../database';

export async function getOriginCodes():Promise<false | string[]> {
  const result = await connection.query(`
    SELECT *
    FROM codes
  `);
  if (result.rowCount === 0) return false;
  return result.rows;
}

export async function getDestinationCodes(originCode: number):Promise<false | string[]> {
  const result = await connection.query(`
    SELECT "oldValues".id, codes.code
    AS code
    FROM "oldValues"
    JOIN codes
    ON "oldValues"."destinationId" = codes.id
    WHERE "oldValues"."originId" = $1
  `, [originCode]);
  if (result.rowCount === 0) return false;
  return result.rows;
}
