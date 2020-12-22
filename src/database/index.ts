import { Sequelize, DataTypes } from 'sequelize'

const db = new Sequelize('livecoding', 'postgres', 'mysecretpassword', {
  host: 'localhost',
  dialect: 'postgres'
})

export const Pilots = db.define('pilots', {
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

export const Vehicles = db.define('vehicles', {
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

export default db
