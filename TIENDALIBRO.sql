-- Crear la base de datos Tiendas_de_Libros
CREATE DATABASE Tiendas_de_Libros;

-- Usar la base de datos Tiendas_de_Libros
USE Tiendas_de_Libros;

-- Crear la tabla usuarios con la contraseña encriptada
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    contrasena VARCHAR(255),
    correo VARCHAR(100) UNIQUE,
    fechacreacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insertar un usuario con la contraseña encriptada
INSERT INTO usuarios (nombre, contrasena, correo)
VALUES ('jchavarin', SHA2('12345', 256), 'alfonso.chavarin@hotmail.com');

-- Crear la tabla Libros
CREATE TABLE Libros (
    ID_Libro INT AUTO_INCREMENT PRIMARY KEY,
    Titulo VARCHAR(255),
    Autor VARCHAR(255),
    Precio DECIMAL(10, 2),
    Editorial VARCHAR(255),
    Genero VARCHAR(50),
    Cantidad_Disponible INT,
    Año_Publicacion INT
);

-- Insertar los 8 libros en la tabla Libros
INSERT INTO Libros (Titulo, Autor, Precio, Editorial, Genero, Cantidad_Disponible, Año_Publicacion)
VALUES
('Hábitos Atómicos', 'James Clear', 299.00, 'Penguin Random House', 'Autoayuda', 10, 2018),
('La Biblioteca de la Medianoche', 'Matt Haig', 349.00, 'Editorial Planeta', 'Ficción', 8, 2020),
('El Club de las 5 de la Mañana', 'Robin Sharma', 279.00, 'Editorial Planeta', 'Desarrollo personal', 15, 2018),
('La Bailarina de Auschwitz', 'Edith Eger', 399.00, 'Editorial Planeta', 'Histórico', 12, 2017),
('Los Siete Maridos de Evelyn Hugo', 'Taylor Jenkins Reid', 349.00, 'Editorial Planeta', 'Ficción contemporánea', 6, 2017),
('El Alquimista', 'Paulo Coelho', 269.00, 'HarperOne', 'Filosofía', 20, 1988),
('1984', 'George Orwell', 299.00, 'Penguin Books', 'Distopía', 14, 1949)
