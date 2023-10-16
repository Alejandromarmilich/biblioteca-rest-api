import { pool } from "./database.js";

class BookController{

    async getAll(req, res){
        const [result] = await pool.query("SELECT * FROM libros");
        res.json(result);
    }

    async getOne(req, res){
        const bookId = req.params.id;
        const sql = "SELECT * FROM libros WHERE id = ?";

        try{
            const [result] = await pool.query(sql, [bookId]);
            if(result.length === 1){
                res.json(result[0]);
            }else{
                res.status(404).json({mensaje: "Libro no encontrado"})
            }
        }catch (error){
            res.status(500).json({ mmensaje: "Error al buscar el libro" })
        }
    }
}

export const book = new BookController();