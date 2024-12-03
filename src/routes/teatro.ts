import { Router } from "express";

import { getTheatres, getTheatre, deleteTheatre, postTheatre, updateTheatre, getAccessibility, getSeatCount, getAllEvents, getEvent, deleteEvent, updateEvent, postEvent} from '../controlers/teatro'

const router = Router();

router.get('/', getTheatres)
router.get('/accessibility', getAccessibility)
router.get('/events', getAllEvents)
router.post('/event', postEvent)
router.get('/event/:id', getEvent)
router.get('/seat-count', getSeatCount)
router.delete('/event/:id', deleteEvent)
router.put('/event/:id', updateEvent)
router.get('/:id', getTheatre)
router.delete('/:id', deleteTheatre)
router.post('/', postTheatre)
router.put('/:id', updateTheatre)







export default router;