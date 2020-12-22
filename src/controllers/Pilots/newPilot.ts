import { Request, Response } from 'express'
import { Pilots } from '../../database'

export const newPilot = async (req: Request, res: Response) => {
  const { name, mass, height } = req.body.pilot

  await Pilots.create({
    name,
    mass,
    height
  })

  res.status(201).send()
}
