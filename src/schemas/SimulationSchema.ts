import joi from 'joi';

export const simulationSchema = joi.object({
  originId: joi.number().min(1).required(),
  destinationId: joi.number().min(1).required(),
  minutes: joi.number().min(1).required(),
  planId: joi.number().min(1).required(),
});
