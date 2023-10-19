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
            res.status(500).json({ mensaje: "Error al buscar el libro" })
        }
    }

    async add(req, res){
        const book = req.body;
        const result = await pool.query(
            `INSERT INTO Libros(name, author, category, year, ISBN) VALUES (?, ?, ?, ?, ?)`,
            [book.name, book.author, book.category, book.year, book.ISBN]
        );
        res.json({ "Id insertado": result.insertId });
    }

}

export const book = new BookController();