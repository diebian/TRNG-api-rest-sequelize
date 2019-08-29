import Sequelize from 'sequelize'
import { sequelize } from '../database/database'

const Heroes = sequelize.define('heroes', {
    id: {
        type: Sequelize.INTEGER,
        autoIncrement: true,
        primaryKey: true
    },
    name: {
        type: Sequelize.TEXT,
    },
    skills: {
        type: Sequelize.TEXT
    },
    state: {
        type: Sequelize.BOOLEAN
    },
    brandid: {
        type: Sequelize.INTEGER
    }
}, {
    timestamps: false
});

export default Heroes;