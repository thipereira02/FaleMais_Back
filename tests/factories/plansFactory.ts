import connection from '../../src/database';

export async function insertPlans() {
  await connection.query(`
    INSERT INTO plans
    (name)
    VALUES ('FaleMais30'),('FaleMais60'),('FaleMais120');
  `);
}
