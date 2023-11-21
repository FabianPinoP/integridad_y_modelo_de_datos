INSERT INTO peliculas (id, nombre, anno) VALUES (1, 'Batman Begins',
2005);
INSERT INTO peliculas (id, nombre, anno) VALUES (2, 'Ghost', 1990);
INSERT INTO peliculas (id, nombre, anno) VALUES (3, 'Titanic', 1997);
INSERT INTO peliculas (id, nombre, anno) VALUES (4, 'Shrek', 2001);
INSERT INTO peliculas (id, nombre, anno) VALUES (5, 'The Revenant',
2015);
INSERT INTO tags (id, tag) VALUES (1, 'Aventura');
INSERT INTO tags (id, tag) VALUES (2, 'Drama');
INSERT INTO tags (id, tag) VALUES (3, 'Fantasia');
INSERT INTO tags (id, tag) VALUES (4, 'Acción');
INSERT INTO tags (id, tag) VALUES (5, 'Romance');


--------------------------------------------------------------------

INSERT INTO preguntas (id, pregunta, respuesta_correcta) VALUES (1,
'Cuantas patas tiene un gato?', 'Tiene 4 patas');
INSERT INTO preguntas (id, pregunta, respuesta_correcta) VALUES (2,
'Como hacen los perros?', 'Guau');
INSERT INTO preguntas (id, pregunta, respuesta_correcta) VALUES (3, 'Deque color es el pasto?', 'Verde');
INSERT INTO preguntas (id, pregunta, respuesta_correcta) VALUES (4,
'Cual es la capital de Chile?', 'Santiago');
INSERT INTO preguntas (id, pregunta, respuesta_correcta) VALUES (5, 'De
que pais son The Beatles?', 'Inglaterra');
INSERT INTO usuarios (id, nombre, edad) VALUES (1, 'Juan Perez', '25');
INSERT INTO usuarios (id, nombre, edad) VALUES (2, 'Maria Joaquina',
'30');
INSERT INTO usuarios (id, nombre, edad) VALUES (3, 'Pedro Diaz', '60');
INSERT INTO usuarios (id, nombre, edad) VALUES (4, 'Camila Gonzalez',
'35');
INSERT INTO usuarios (id, nombre, edad) VALUES (5, 'Rocio Sanchez',
'15');
INSERT INTO respuestas (id, respuesta, usuario_id, pregunta_id) VALUES
(1, 'Tiene 4 patas', 1,1);
INSERT INTO respuestas (id, respuesta, usuario_id, pregunta_id) VALUES
(2, 'Tiene 4 patas', 2, 1);
INSERT INTO respuestas (id, respuesta, usuario_id, pregunta_id) VALUES
(3, 'Guau', 3, 2);
INSERT INTO respuestas (id, respuesta, usuario_id, pregunta_id) VALUES
(4, 'Azul', 4,3);
INSERT INTO respuestas (id, respuesta, usuario_id, pregunta_id) VALUES
(5, 'Lota', 5, 4);