import express from 'express';
import cors from 'cors';

import plansRouter from './routers/plansRouter';
import codesRouter from './routers/codesRouter';
import simulationsRouter from './routers/simulationsRouter';
import tariffsRouter from './routers/tariffsRouter';

const app = express();
app.use(cors());
app.use(express.json());

app.use(plansRouter);
app.use(codesRouter);
app.use(simulationsRouter);
app.use(tariffsRouter);

export default app;
