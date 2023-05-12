Create database afuturo;

-- Crear la tabla "Clientes"
CREATE TABLE Clientes (
  id_cliente INT PRIMARY KEY auto_increment,
  primer_nombre VARCHAR(100),
  primer_apellido VARCHAR(100),
  direccion VARCHAR(255)
);
-- creamos tabla de usuario
CREATE TABLE usuario (
  id_usuario INT auto_increment PRIMARY KEY,
  id_cliente INT,
  correo VARCHAR (50),
  password VARCHAR (50),
  FOREIGN KEY (id_cliente) REFERENCES Clientes (id_clientes)
);

-- Crear la tabla "Productos"
CREATE TABLE Productos (
  id_producto INT PRIMARY KEY auto_increment,
  nombre VARCHAR(100),
  precio int(10),
  categoria VARCHAR(50),
  color VARCHAR(50)
);


-- creamos tabla de ventas
CREATE TABLE ventas(
id_venta INT AUTO_INCREMENT PRIMARY KEY,
id_pedido INT,
id_producto INT,
cantidad INT,
precio_unitario INT,
fecha_venta DATE,
FOREIGN KEY (id_pedido) REFERENCES pedidos (id_proveedor),
FOREIGN KEY (id_producto) REFERENCES productos (id_proveedor)
);


