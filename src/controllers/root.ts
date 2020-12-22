import { Request, Response } from 'express'

export const root = (req: Request, res: Response) => {
  res.json({ oi: 'Ok' })
}
