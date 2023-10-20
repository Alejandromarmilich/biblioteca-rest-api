import { pool } from "./database.js";

class BookController {
  async getAll(req, res) {
    try {
      const [result] = await pool.query("SELECT * FROM libros");
      res.json(result);
    } catch (error) {
      res.status(500).json({ mensaje: "Error al obtener la lista de libros" });
    }
  }

  async getOne(req, res) {
    const bookId = req.params.id;
    const sql = "SELECT * FROM libros WHERE id = ?";
    try {
      const [result] = await pool.query(sql, [bookId]);
      if (result.length === 1) {
        res.json(result[0]);
      } else {
        res.status(404).json({ mensaje: "Libro no encontrado" });
      }
    } catch (error) {
      res.status(500).json({ mensaje: "Error al buscar el libro" });
    }
  }

  async add(req, res) {
    try {
      const book = req.body;
      const [result] = await pool.query(
        `INSERT INTO Libros(name, author, category, year, ISBN) VALUES (?, ?, ?, ?, ?)`,
        [book.name, book.author, book.category, book.year, book.ISBN]
      );
      res.json({ "id insertado": result.insertId });
    } catch (error) {
      res.status(500).json({ mensaje: "Error al agregar el libro" });
    }
  }

  async update(req, res) {
    try {
      const book = req.body;
      const [result] = await pool.query(
        `UPDATE Libros SET name=(?), author=(?), category=(?), year=(?), ISBN=(?) WHERE id=(?)`,
        [book.name, book.author, book.category, book.year, book.ISBN, book.id]
      );
      if (result.affectedRows > 0) {
        res.json({ "Registros actualizados": result.changedRows });
      } else {
        res.status(404).json({ mensaje: "Libro no encontrado" });
      }
    } catch (error) {
      res.status(500).json({ mensaje: "Error al actualizar el libro" });
    }
  }

  async delete(req, res) {
    try {
      const book = req.body;
      const [result] = await pool.query(`DELETE FROM Libros WHERE ISBN = (?)`, [
        book.ISBN,
      ]);
      if (result.affectedRows > 0) {
        res.json({ message: `Libro ISBN: ${book.ISBN} ha sido eliminado` });
      } else {
        res
          .status(404)
          .json({ mensaje: `No existe un libro con el ISBN: ${book.ISBN}` });
      }
    } catch (error) {
      res.status(500).json({ mensaje: "Error al eliminar el libro" });
    }
  }
}

export const book = new BookController();
