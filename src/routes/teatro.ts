import { Router } from "express";

import { getTheatres, getTheatre, deleteTheatre, postTheatre, updateTheatre, getAccessibility, getSeatCount, getAllEvents, getEvent, deleteEvent, updateEvent} from '../controlers/teatro'

const router = Router();

router.get('/', getTheatres)
router.get('/accessibility', getAccessibility)
router.get('/events', getAllEvents)
router.get('/event/:id', getEvent)
router.get('/seat-count', getSeatCount)
router.get('/:id', getTheatre)
router.delete('/event/:id', deleteEvent)
router.post('/event', postTheatre)
router.put('/event/:id', updateEvent)
router.delete('/:id', deleteTheatre)
router.post('/', postTheatre)
router.put('/:id', updateTheatre)







export default router;