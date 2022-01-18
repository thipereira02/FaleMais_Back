import connection from '../../src/database';

export async function insertPlans() {
  await connection.query(`
    INSERT INTO plans
    (name, price)
    VALUES ('FaleMais30', 30),('FaleMais60', 60),('FaleMais120', 120)
  `);
}
