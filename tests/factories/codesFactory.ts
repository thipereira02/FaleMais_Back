import connection from '../../src/database';

export async function insertCodes() {
  await connection.query(`
    INSERT INTO codes
    (code)
    VALUES ('11'),('16'),('17'),('18')
  `);
}

export async function insertCodesAndValue() {
  await connection.query(`
    INSERT INTO "oldValues"
    ("originId", "destinationId", price)
    VALUES (1, 2, 1.90)
  `);
}
