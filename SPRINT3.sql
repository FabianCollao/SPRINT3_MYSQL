# Crear la base de datos
CREATE DATABASE sprint3_grupo7;

# Crear usuario
CREATE USER 'adolfo_root'@'localhost' IDENTIFIED BY 'adolfo1234';

# Crear los privilegios del usuario adolfo
GRANT CREATE, ALTER, DROP, INSERT, DELETE, UPDATE, SELECT ON sprint3_grupo7.* TO 'adolfo_root'@'localhost';

USE sprint3_grupo7;
# Crear la tabla "Proveedores"
CREATE TABLE Proveedores (
  id_proveedor INT PRIMARY KEY auto_increment,
  nombre_representante VARCHAR(100),
  nombre_corporativo VARCHAR(100),
  categoria VARCHAR(50),
  correo_factura VARCHAR(255)
);

#Crear tabla Contacto-Proveedores
CREATE TABLE Contacto_Proveedor(
id_contacto INT PRIMARY KEY auto_increment,
id_proveedor INT,
nombre_contacto1 VARCHAR(50),
telefono_1 INT(9),
nombre_contacto2 VARCHAR (50),
telefono_2 INT(9),
FOREIGN KEY (id_proveedor) REFERENCES Proveedores (id_proveedor)
);

# Crear la tabla "Clientes"
CREATE TABLE Clientes (
  id_cliente INT PRIMARY KEY auto_increment,
  primer_nombre VARCHAR(100),
  primer_apellido VARCHAR(100),
  direccion VARCHAR(255)
);

# Crear la tabla "Productos"
CREATE TABLE Productos (
  id_producto INT PRIMARY KEY auto_increment,
  nombre VARCHAR(100),
  precio INT(10),
  categoria VARCHAR(50),
  color VARCHAR(50)
);

# Crear la tabla "Proveedores-Productos"
CREATE TABLE Proveedores_productos(
  id_proveedor INT,
  id_producto INT,
  stock INT,
  FOREIGN KEY (id_proveedor) REFERENCES Proveedores (id_proveedor),
  FOREIGN KEY (id_producto) REFERENCES Productos (id_producto)
);

#################################################################################
#					INSERTAMOS DATOS A LAS TABLAS								#
#################################################################################

#PROVEDORES
INSERT INTO Proveedores (nombre_representante, nombre_corporativo, categoria, correo_factura) VALUES
('Juan Pérez', 'ABC S.A.',  'Informática', 'jorge@abc.com'),
('María García', 'XYZ C.A.', 'Electrónica', 'andres@xyz.com'),
('Pedro Gómez', 'MNO S.R.L.', 'Electrónica', 'ana@mno.com'),
('Luisa Rodríguez', 'PQR S.A.',  'Electrónica', 'cristina@pqr.com'),
('Miguel Torres', 'DEF C.A.', 'Tarjetas de Regalo', 'jose@def.com'),
('Ana González', 'HIJ S.A.', 'Licencias', 'carlos@hij.com'),
('Fernando López', 'STU C.A.', 'Licencias', 'laura@stu.com');

#CONTACTO_PROVEEDOR
INSERT INTO Contacto_Proveedor (id_proveedor, nombre_contacto1, telefono_1, nombre_contacto2, telefono_2) VALUES
(1, 'Juan Pérez', 123456789, 'Miguel Sánchez', 987654321),
(2, 'María García', 234567890, 'Carla Torres', 876543219),
(3, 'Pedro Gómez', 345678901, 'Fernando López', 765432198),
(4, 'Luisa Rodríguez', 456789012, 'Gustavo Sánchez', 654321987),
(5, 'Miguel Torres', 567890123, 'Marta Jiménez', 543219876),
(6, 'Ana González', 678901234, 'Jorge Soto', 432198765),
(7, 'Fernando López', 789012345, 'Paula Rivas', 321987654);

#Clientes
INSERT INTO Clientes (primer_nombre, primer_apellido, direccion) VALUES
('Juan', 'García', 'Calle 12, Número 34'),
('María', 'Martínez', 'Avenida 5, Número 67'),
('Carlos', 'González', 'Calle 9, Número 22'),
('Lucía', 'Torres', 'Carrera 3, Número 45'),
('Pedro', 'Sánchez', 'Calle 7, Número 89'),
('Ana', 'López', 'Avenida 8, Número 12'),
('Luis', 'Ramírez', 'Calle 10, Número 56'),
('Sofía', 'Pérez', 'Carrera 4, Número 78'),
('Jorge', 'Gómez', 'Calle 11, Número 23'),
('Marta', 'García', 'Avenida 6, Número 89'),
('Fernando', 'Martínez', 'Calle 2, Número 56'),
('Laura', 'González', 'Carrera 1, Número 78'),
('Roberto', 'Torres', 'Calle 8, Número 34'),
('Mónica', 'Sánchez', 'Avenida 2, Número 67'),
('David', 'Ramírez', 'Carrera 3, Número 90');

#Productos
INSERT INTO Productos (nombre, precio, categoria, color) VALUES
('Laptop ASUS', 900, 'Informática', 'Negro'),
('Monitor Samsung', 250, 'Informática', 'Blanco'),
('Cámara Canon', 500, 'Electrónica', 'Plateado'),
('Tablet Apple', 800, 'Electrónica', 'Gris'),
('Impresora HP', 150, 'Electrónica', 'Blanco'),
('Smartphone Samsung', 700, 'Electrónica', 'Negro'),
('Disco Duro Externo', 120, 'Electrónica', 'Negro'),
('Licencia Windows 10 PRO', 300, 'Licencias', 'Plateado'),
('Licencia Oficce 365 Anual', 60, 'Licencias', 'Negro'),
('Tarjeta Playstation $50 USD', 100, 'Tarjeta de Regalo', 'Negro'),
('Tarjeta Steam $50.000 CLP', 30, 'Tarjeta de Regalo', 'Negro'),
('Tarjeta Nintendo eshop $50 USD', 80, 'Tarjeta de Regalo', 'Negro'),
('Router TP-LINK 65465', 200, 'Informática', 'Negro'),
('Parlante JBL', 150, 'Electrónica', 'Negro'),
('Webcam Logitech', 70, 'Electrónica', 'Negro');

#Proveedor_Productos
INSERT INTO Proveedores_Productos (id_proveedor, id_producto, stock) VALUES
(1, 1, 100),
(1, 2, 50),
(2, 3, 200),
(3, 4, 20),
(2, 5, 30),
(3, 6, 40),
(3, 7, 500),
(6, 8, 100),
(7, 9, 150),
(5, 10, 80),
(5, 11, 90),
(5, 12, 70),
(1, 13, 10),
(4, 14, 5),
(4, 15, 25);

# Sentencias para visualizar la información de todas las tablas
SELECT * FROM Clientes;
SELECT * FROM contacto_proveedor;
SELECT * FROM productos;
SELECT * FROM Proveedores;
SELECT * FROM Proveedores_productos;

#- Cuál es la categoría de productos que más se repite.
SELECT categoria, COUNT( id_producto ) AS total
FROM  productos
GROUP BY categoria
ORDER BY total DESC;

#- Cuáles son los productos con mayor stock
Select productos.id_producto,nombre,categoria,stock from productos
INNER JOIN proveedores_productos
ON productos.id_producto = proveedores_productos.id_producto
ORDER BY stock desc;
/*Usamos el join para unir la tabla productos con proveedores_productos, en donde coincida el id, para obtener el stock*/


#- Qué color de producto es más común en nuestra tienda.
SELECT color, COUNT( id_producto ) AS total
FROM  productos
GROUP BY color
ORDER BY total DESC
LIMIT 1;

#- Cual o cuales son los proveedores con menor stock de productos.
SELECT proveedores.id_proveedor, proveedores.nombre_corporativo, stock 
FROM proveedores
INNER JOIN proveedores_productos
ON proveedores.id_proveedor = proveedores_productos.id_proveedor
ORDER BY stock asc;

#- Cambien la categoría de productos más popular por ‘Electrónica y computación’.

SELECT * FROM productos;
UPDATE productos SET categoria="Electrónica y computación" 
WHERE categoria=(
SELECT categoria FROM productos
INNER JOIN proveedores_productos
ON productos.id_producto = proveedores_productos.id_producto
ORDER BY stock DESC 
LIMIT 1);
Select * from productos;



