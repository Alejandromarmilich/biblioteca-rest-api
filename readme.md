# Talentos Digitales

### Alumno: Alejandro Herrera

# Actividad - Crear REST API

Después de ver el vídeo tutorial para construir y probar una **REST API** ([Ver video](https://www.youtube.com/watch?v=b-a7dRyymxw)), crear una API para la gestión de libros de una biblioteca. El modelo de datos a implementar es el siguiente
<img src="https://github.com/Alejandromarmilich/biblioteca-rest-api/blob/main/diagrama.png" alt="diagrama">

Consignas del trabajo:
1. Definir el esquema de la base de datos de acuerdo al diagrama proporcionado.
2. Cargar un lote de datos de prueba a la base de datos.
3. Desarrollar una REST API que implemente la lectura de los datos ingresados. Se espera que se realice dos operaciones: obtener todos los libros (getAll) y obtener un libro de acuerdo al número de identificación (id) proporcionado (getOne).
4. Subir el proyecto a un repositorio remoto público en Github

Para realizar la entrega de la tarea enviar un archivo de texto con el enlace al repositorio. Dentro del repositorio incluir una carpeta “script” con el código sql para generar el modelo de datos con su respectivo lote de prueba ([Ver video](https://www.youtube.com/watch?v=gWUTCzGU1Ig&t))

# Actividad integradora- REST API y GIT

Después de ver el vídeo tutorial para construir y probar una REST API ([Ver video](https://www.youtube.com/watch?v=b-a7dRyymxw)), crearuna API para la gestión de libros de una biblioteca.

## Consignas del trabajo:
1. De acuerdo al proyecto creado en la actividad “Crear REST API”, agregar las siguientes funcionalidades para la gestión de libros de la biblioteca.
a. Crear un libro incluyendo las características del modelo de datos.
b. Actualizar un libro.
c. Eliminar un libro proporcionando su ISBN.
d. Implementar el manejo de excepciones (try-catch) al recibir solicitudes incompatibles ([Ver video](https://www.youtube.com/watch?v=vZJlQzptBCo)). Por ejemplo, que en el alta se envíen atributosinexistentes en el modelo de datos (precio, stock, etc.), editar o eliminarcon ISBN de un libro no cargado, entre otras.
2. Versionar el código del proyecto de manera que existan como mínimo 5 commits. Ejemplos de mensajes de commits: configuración servicio base de datos, alta de libros, fix consulta SQL para baja de libro.
3. Subir cambios al repositorio remoto público en Github creado para la actividad“Crear REST API”.Para realizar la entrega de la tarea enviar un archivo de texto con el enlace al repositorio (mismo enlace de la entrega anterior).