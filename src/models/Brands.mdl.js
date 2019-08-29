import Sequelize from 'sequelize'
import { sequelize } from '../database/database'

import Heroes from './Heroes.mdl'

const Brands = sequelize.define('brands', {
    id: {
        type: Sequelize.INTEGER,
        autoIncrement: true,
        primaryKey: true
    },
    name: {
        type: Sequelize.TEXT,
    },
    priority: {
        type: Sequelize.INTEGER
    },
    description: {
        type: Sequelize.TEXT
    },
    premiere: {
        type: Sequelize.DATE
    }
}, {
    timestamps: false
});

Brands.hasMany(Heroes, {
    foreingKey: 'brandid',
    sourceKey: 'id'
})

Heroes.belongsTo(Brands, {
    foreingKey: 'brandid',
    sourceKey: 'id'
})

export default Brands;