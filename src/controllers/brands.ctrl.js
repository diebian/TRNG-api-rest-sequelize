import Brands from '../models/Brands.mdl'

export async function createBrand(req, res) { 
    const { name, priority, description, premiere } = req.body;

    try {
        let newBrand = await Brands.create({
            name,
            priority,
            description,
            premiere
        });

        if (newBrand) {
            res.json({
                message: 'Registro creado',
                data: newBrand
            });
        }
    } catch (e) {
        console.log(e);
        res.status(500).json({
            message: 'Ha ocurrido un error'
        });

    }


};