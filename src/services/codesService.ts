import * as codesRepository from '../repositories/codesRepository';

export async function getOriginCodes(): Promise<false | string[]> {
  const codes = await codesRepository.getOriginCodes();
  if (!codes) return false;
  return codes;
}

export async function getDestinationCodes(originCode: number): Promise<false | string[]> {
  const codes = await codesRepository.getDestinationCodes(originCode);
  if (!codes) return false;
  return codes;
}
