import express from 'express'
import bodyParser from 'body-parser'
import router from './routes'
import { Pilots, Vehicles } from './database'
import auth from './utils/authorization'

const app = express()

try {
  Pilots.sync()
  Vehicles.sync()
} catch (e) {
  console.log('Database synchronization error!')
}

app.use(auth)
app.use(bodyParser.json())
app.use(router)

export default app
