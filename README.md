# Solución en SQL para la gestión de productos, proveedores y pedidos de TeLoVendo

Este proyecto es una solución en SQL para la gestión de productos, proveedores y pedidos de TeLoVendo, una empresa que recibe productos de diferentes proveedores para comercializarlos.

## Estructura de la base de datos

La solución consta de las siguientes tablas:

### Tabla "proveedores"

- id_proveedor INT PRIMARY KEY auto_increment,
- nombre_representante VARCHAR(100),
- nombre_corporativo VARCHAR(100),
- categoria VARCHAR(50),
- correo_factura VARCHAR(255)

### Tabla "productos"

 - id_producto INT PRIMARY KEY auto_increment,
 - nombre VARCHAR(100),
 - precio INT(10),
 - categoria VARCHAR(50),
 - color VARCHAR(50)

### Tabla "proveedores_productos"

  - id_proveedor INT,
  - id_producto INT,
  - stock INT,
  - FOREIGN KEY (id_proveedor) REFERENCES Proveedores (id_proveedor),
  - FOREIGN KEY (id_producto) REFERENCES Productos (id_producto)
  
Esta tabla establece una relación muchos a muchos entre proveedores y productos.

### Tabla "clientes"

  - id_cliente INT PRIMARY KEY auto_increment,
  - primer_nombre VARCHAR(100),
  - primer_apellido VARCHAR(100),
  - direccion VARCHAR(255)

## Funcionalidades

La solución en SQL permite realizar las siguientes operaciones:

- Registrar nuevos proveedores y productos.
- Asignar productos a proveedores.
- Consultar el producto con más stock.
- Cambiar la categoría de productos más popular por 'Electrónica y computación'.

## Funcionalidades a Futuro
- Registrar nuevos clientes y realizar pedidos.
- Asignar productos a pedidos y registrar ventas.

## Integrantes
- Kevin Oyola
- José Henríquez
- Manuel Chavez
- Fabián Collao
