import express, {Request, Response, NextFunction } from 'express'
import bodyParser from 'body-parser'
import router from './routes'

const app = express()



var auth = function (req: Request, res: Response, next: NextFunction) {
    if (req.header('Authorization')==='MOnkjnbB32143435795689754yuNEB'){
        next()
    }else {
        res.status(401).send()
    }
    
}

app.use(auth)
app.use(bodyParser.json())
app.use(router)

export default app