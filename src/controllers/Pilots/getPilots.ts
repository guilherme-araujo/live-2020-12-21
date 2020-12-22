import { Request, Response } from 'express'
import { Pilots, Vehicles } from '../../database'

export const getPilots = async (req: Request, res: Response) => {
  const pilots = await Pilots.findAll({ include: Vehicles })
  res.json(pilots)
}
