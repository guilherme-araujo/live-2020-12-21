import { Router, Request, Response, NextFunction } from 'express'
import { Sequelize, DataTypes } from 'sequelize'
import app from './app'


const db = new Sequelize('livecoding', 'postgres', 'myPassword', {
    host: 'localhost',
    dialect: 'postgres'
})

const Pilots = db.define('pilots', {
    name: {
        type: DataTypes.STRING,
        allowNull: false
    },
    mass: {
        type: DataTypes.NUMBER,
        allowNull: false
    },
    height: {
        type: DataTypes.NUMBER,
        allowNull: false
    }
})

const Vehicles = db.define('vehicles', {
    name: {
        type: DataTypes.STRING,
        allowNull: false
    },
    manufacturer: {
        type: DataTypes.STRING,
        allowNull: false
    },
    passengers: {
        type: DataTypes.NUMBER,
        allowNull: true
    }
})

Pilots.belongsToMany(Vehicles, { through: 'pilot_vehicles' })
Vehicles.belongsToMany(Pilots, { through: 'pilot_vehicles' })


try {
    Pilots.sync()
    Vehicles.sync()
} catch (e) {
    console.log('n sincronizou')
}

const router = Router()

router.get('/', (req, res) => {
    res.json({ oi: "oi" })
})

router.get('/pilots', async (req, res) => {
    const pilots = await Pilots.findAll({include: Vehicles})
    console.log(pilots)
    res.json(pilots)
})

router.post('/pilot', async (req, res) => {
    
    const { name, mass, height, vehicles} = req.body.pilot

    const pilot = await Pilots.create({
        name,
        mass, 
        height
    })
    vehicles.forEach(element => {
        
    });
    res.status(201).send()
})

export default router