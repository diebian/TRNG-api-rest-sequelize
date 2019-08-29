import { Router } from 'express'
import { createBrand } from '../controllers/brands.controller'

const router = Router();

router.post('/', createBrand );

export default router;