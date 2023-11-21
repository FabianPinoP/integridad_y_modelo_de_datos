-- ejemplo para crear desde cero una tabla con PK

CREATE TABLE users(
 id INT PRIMARY KEY,
 nombre VARCHAR,
 edad INT
);

-- Para alterar una tabla existente

ALTER TABLE users ADD PRIMARY KEY (id)

-- como ejercicio Intenta ingresar 2 posts con el mismo id.

INSERT INTO users (nombre, edad) VALUES ('Juan', 20);
INSERT INTO users (id, nombre, edad) VALUES (1, 'luis', 30);

CREATE TABLE posts(
 id SERIAL PRIMARY KEY,
 titulo VARCHAR,
 contenido VARCHAR,
 user_id INT REFERENCES users(id)
);

-- insertemos un post asocialdo a un usuario

INSERT INTO posts (titulo, contenido, user_id) VALUES ('mi primer post', 'contenido', 1);

-- insertemos un post asocialdo a un usuario que no existe

INSERT INTO posts (titulo, contenido, user_id) VALUES ('mi primer post', 'contenido', 2);

-- para agregar borrado en cascada a una tabla existente primero buscamos el nombre de la constraint

SELECT constraint_name, table_name, column_name, ordinal_position FROM information_schema.key_column_usage 
WHERE table_name = 'posts';

-- luego borramos la constraint

ALTER TABLE posts DROP CONSTRAINT posts_user_id_fkey;

-- y la volvemos a crear con el borrado en cascada

ALTER TABLE posts
ADD CONSTRAINT fk_delete_cacades
FOREIGN KEY (user_id) 
REFERENCES users(id) ON DELETE CASCADE;

-- ejemplo de creacion de tabla intermedia

-- en una tabla intermedia el borrado en cascada va a depender de la tabla que se borre primero

-- vamos a crear una tabla intermedia entre el usuario y la tabla movies vamos a suponer que esto es un video club
-- y que un usuario puede tener muchas peliculas y una pelicula puede tener muchos usuarios que la van a arrendar 

-- primero creamos la tabla movies ya que es la que tiene la PK
CREATE TABLE movies(
 id INT PRIMARY KEY,
 nombre VARCHAR,
 director VARCHAR
);

-- luego creamos la tabla intermedia

CREATE TABLE users_movies(
  id SERIAL PRIMARY KEY,
 user_id INT REFERENCES users(id),
 movie_id INT REFERENCES movies(id),
);

-- ahora creamos un registro para la tabla movies

INSERT INTO movies (id, nombre, director) VALUES (1, 'pelicula 1', 'director 1');

-- ahora creamos un registro para la tabla users_movies

INSERT INTO users_movies (user_id, movie_id) VALUES (1, 1);

-- hacemos una consulta para ver como se relacionan los datos para extraer el nombre de la 
-- pelicula arrendada por el usuario con id 1

SELECT users.nombre AS nombre_usuario, movies.nombre AS nombre_pelicula
FROM users
JOIN users_movies ON users.id = users_movies.user_id
JOIN movies ON movies.id = users_movies.movie_id
WHERE users.id = 1;



