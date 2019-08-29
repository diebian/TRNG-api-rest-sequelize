import { Router } from 'express'
import { createBrand } from '../controllers/brands.ctrl'

const router = Router();

router.post('/', createBrand );

export default router;