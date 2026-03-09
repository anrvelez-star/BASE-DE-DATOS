CREATE TABLE Productos (
    id INT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    descripcion TEXT
);

CREATE TABLE Clientes (
    id INT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    telefono VARCHAR(15)
);

CREATE TABLE Ventas (
    id INT PRIMARY KEY,
    id_cliente INT,
    id_producto INT,
    cantidad INT NOT NULL,
    fecha DATETIME NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id),
    FOREIGN KEY (id_producto) REFERENCES Productos(id)
);

CREATE TABLE VentasPorCiudad (
    id INT PRIMARY KEY,
    ciudad VARCHAR(255) NOT NULL,
    total_ventas DECIMAL(10, 2) NOT NULL
);

CREATE TABLE MedioDePago (
    id INT PRIMARY KEY,
    tipo VARCHAR(255) NOT NULL,
    descripcion TEXT
);