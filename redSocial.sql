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