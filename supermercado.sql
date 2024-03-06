-- Tabla de categorias
CREATE TABLE categoria (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL
);

-- Tabla de productos
CREATE TABLE producto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    descripcion TEXT,
    unidades_disponibles INT NOT NULL
);

-- Tabla de relación entre productos y categorias (many-to-many)
CREATE TABLE producto_categoria (
    producto_id INT,
    categoria_id INT,
    PRIMARY KEY (producto_id, categoria_id),
    FOREIGN KEY (producto_id) REFERENCES producto(id),
    FOREIGN KEY (categoria_id) REFERENCES categoria(id)
);

-- Tabla de canales
CREATE TABLE canal (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL
);

-- Insertar un registro en la tabla de canales
INSERT INTO canal (nombre) VALUES ('whatsapp');

-- Tabla de clientes
CREATE TABLE cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    direccion VARCHAR(255) NOT NULL
);

-- Tabla de pedidos
CREATE TABLE pedido (
    id INT AUTO_INCREMENT PRIMARY KEY,
    total DECIMAL(10, 2) NOT NULL,
    fecha DATE NOT NULL,
    cliente_id INT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES cliente(id)
);

-- Tabla de productos en un pedido (many-to-many)
CREATE TABLE pedido_producto (
    pedido_id INT,
    producto_id INT,
    cantidad INT NOT NULL,
    subtotal DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (pedido_id, producto_id),
    FOREIGN KEY (pedido_id) REFERENCES pedido(id),
    FOREIGN KEY (producto_id) REFERENCES producto(id)
);

ALTER TABLE pedido
ADD canal_id INT,
ADD FOREIGN KEY (canal_id) REFERENCES canal(id);

INSERT INTO canal (nombre) VALUES ('whatsapp');


-- Insert en tabla categoria
INSERT INTO categoria (nombre) VALUES ('Categoria 1');

-- Insert en tabla producto
INSERT INTO producto (nombre, precio, descripcion, unidades_disponibles) 
VALUES ('Producto 1', 10.99, 'Descripción del producto 1', 100);

-- Insert en tabla producto_categoria
INSERT INTO producto_categoria (producto_id, categoria_id) VALUES (1, 1);

-- Insert en tabla cliente
INSERT INTO cliente (nombre, telefono, direccion) 
VALUES ('Cliente 1', '123456789', 'Dirección cliente 1');

-- Insert en tabla pedido
INSERT INTO pedido (total, fecha, cliente_id, canal_id) 
VALUES (50.00, '2024-03-05', 1, 1);

-- Insert en tabla pedido_producto
INSERT INTO pedido_producto (pedido_id, producto_id, cantidad, subtotal) 
VALUES (1, 1, 2, 21.98);


SELECT * from cliente c