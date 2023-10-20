import { Router } from "express";
import { book } from "./controller.js";

export const router = Router();

router.get("/books", book.getAll);
router.get("/books/:id", book.getOne);
router.post("/book", book.add);
router.put("/book", book.update);
router.delete("/book", book.delete);