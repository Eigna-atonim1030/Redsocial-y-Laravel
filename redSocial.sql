CREATE TABLE usuario (
    id_usuario INT (10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (30) NOT NULL,
    biografia VARCHAR (100) NOT NULL,
    genero VARCHAR (10) NOT NULL,
    email VARCHAR (50) NOT NULL
);

CREATE TABLE amigo (
    id_amigo INT (10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (30) NOT NULL,
    genero VARCHAR (10) NOT NULL,
    biografia VARCHAR (100) NOT NULL,
    email VARCHAR (50) NOT NULL
);

CREATE TABLE usuario_amigo (
      id_usuario_amigo INT(20)PRIMARY KEY NOT NULL AUTO_INCREMENT,
      id_usuario INT(10) NOT NULL,
     id_amigo INT(10) NOT NULL,
      FOREIGN KEY (id_usuario) REFERENCES usuario (id_usuario) ON DELETE CASCADE,
      FOREIGN KEY (id_amigo) REFERENCES amigo (id_amigo) ON DELETE CASCADE
);

CREATE TABLE comentario(
    id_comentario INT(10)PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_usuario INT,
    fecha VARCHAR (20) NOT NULL,
    texto VARCHAR(2000) NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario (id_usuario) ON DELETE CASCADE
);

CREATE TABLE publicacion (
    id_publicacion INT(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_usuario INT,
    formato_imagen VARCHAR(20) NOT NULL,
    formato_video VARCHAR(20) NOT NULL,
    numero_reacciones BIGINT(100) NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario (id_usuario) ON DELETE CASCADE
);

CREATE TABLE comentario_publicacion(
    id_comentario_publicacion INT(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_publicacion INT,
    id_comentario INT,
    FOREIGN KEY (id_publicacion) REFERENCES publicacion (id_publicacion) ON DELETE CASCADE,
      FOREIGN KEY (id_comentario) REFERENCES comentario (id_comentario) ON DELETE CASCADE
);

INSERT INTO usuario (nombre, biografia, genero,  email) VALUES
(1,'Mino',"21","mino@gmail.com","Femenino","cuantasestrellas"."hay en"),
(2,'Kalil',"12","ksz@gmail.com","Masculino","cielocuantas"."habran en"),
(3,'Krigtian',"33","kritian@gmail.com","Masculino","elfondodel"."mar"),
(4,'Boli',"24","boli@gmail.com","Masculino","aquesedebe"."el azul del cielo");
(5,'Kevin',"13","kevin@gmail.com","Masculino","yporque"."tambien");

INSERT INTO amigo(id_amigo,nombre,descripcion,genero,email) VALUES
(1,'Felipe',"es azul","Masculino","teby@gmail.com"),
(2,'Esteban',"el","Masculino","teby@gmail.com"),
(3,'Kaleft',"mar","Masculino","teby@gmail.com"),
(4,'Diego',"hay tantas preguntas","Masculino","teby@gmail.com"),
(5,'Emanuel',"tantos mundos","Masculino","teby@gmail.com");


INSERT INTO comentario(id_comentario, descripcion, fecha, id_usuario)VALUES
(1,"por explorar", "01/10/2001",2),
(2,"que quisiera ser", "02/02/2022",3),
(3,"un superbuzo", "03/03/2023",4),
(4,"para conocer los", "04/04/2004",5),
(5,"caballitos del mar", "05/05/2005",6);

INSERT INTO publicacion(id_publicacion,fecha, url_imagen)VALUES
(1,"05/11/2005","yquisiera/ser/un","gran/piloto", "111", 1),
(2,"04/12/2024","atodas/lasnubes/poder","saludar/pero", "222", 2),
(3,"03/13/2023","lo/quemas/quisiera","hacer/es", "333", 3),
(4,"02/14/2022","poner/la/imaginacion","a/volar", "444", 4),
(5,"02/14/2021","y/ser/por","siempre/doki", "555", 5);

INSERT INTO comentario_publicacion(id_comentario_publicacion,id_publicacion) VALUES
(5,5,5),
(4,4,4),
(3,3,3),
(2,2,2),
(1,1,1);

UPDATE usuario SET email = 'cafa@gmail.com' WHERE id_usuario = 1;
UPDATE usuario SET email = 'cro345@gmail.com' WHERE id_usuario = 2;
UPDATE usuario SET email = 'duki013@gmail.com' WHERE id_usuario = 3;
UPDATE usuario SET email = 'fjfo145@gmail.com' WHERE id_usuario = 4;
UPDATE usuario SET email = 'cooi453@gmail.com' WHERE id_usuario = 5;

DELETE FROM publicacion WHERE id_publicacion = 1;
DELETE FROM publicacion WHERE id_publicacion = 2;
DELETE FROM publicacion WHERE id_publicacion = 3;
DELETE FROM publicacion WHERE id_publicacion = 4;
DELETE FROM publicacion WHERE id_publicacion = 5;
