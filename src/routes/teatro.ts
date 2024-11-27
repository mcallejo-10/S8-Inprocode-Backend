import { Router } from "express";

import { getTheatres, getTheatre, deleteTheatre, postTheatre, updateTheatre, getAccessibility, getSeatCount, getEvents} from '../controlers/teatro'

const router = Router();

router.get('/', getTheatres)
router.get('/accessibility', getAccessibility)
router.get('/events', getEvents)
router.get('/seat-count', getSeatCount)
router.get('/:id', getTheatre)
router.delete('/:id', deleteTheatre)
router.post('/', postTheatre)
router.put('/:id', updateTheatre)







export default router;