CREATE TABLE Marcas (
    ID_Marca SERIAL PRIMARY KEY,
    Nombre VARCHAR(100)
);


CREATE TABLE Modelos (
    ID_Modelo SERIAL PRIMARY KEY,
    ID_Marca INT REFERENCES Marcas(ID_Marca),
    Nombre VARCHAR(100),
    Precio DECIMAL(10, 2),
    Descuento DECIMAL(5, 2),
    Potencia INT,
    Cilindrada INT
   
);


CREATE TABLE Equipamiento (
    ID_Equipamiento SERIAL PRIMARY KEY,
    Nombre VARCHAR(100)
);


CREATE TABLE Extras (
    ID_Extra SERIAL PRIMARY KEY,
    Nombre VARCHAR(100),
    Precio DECIMAL(10, 2)
);


CREATE TABLE ModeloEquipamiento (
    ID_Modelo INT REFERENCES Modelos(ID_Modelo),
    ID_Equipamiento INT REFERENCES Equipamiento(ID_Equipamiento),
    PRIMARY KEY (ID_Modelo, ID_Equipamiento)
);


CREATE TABLE ModeloExtras (
    ID_Modelo INT REFERENCES Modelos(ID_Modelo),
    ID_Extra INT REFERENCES Extras(ID_Extra),
    PRIMARY KEY (ID_Modelo, ID_Extra)
);


CREATE TABLE Automoviles (
    Bastidor VARCHAR(50) PRIMARY KEY,
    ID_Modelo INT REFERENCES Modelos(ID_Modelo),
    Disponible BOOLEAN
);


CREATE TABLE Concesionarios (
    ID_Concesionario SERIAL PRIMARY KEY,
    Nombre VARCHAR(100)
);


CREATE TABLE ServiciosOficiales (
    ID_Servicio SERIAL PRIMARY KEY,
    ID_Concesionario INT REFERENCES Concesionarios(ID_Concesionario),
    Nombre VARCHAR(100),
    Domicilio VARCHAR(255),
    CUIT VARCHAR(20)
);


CREATE TABLE Vendedores (
    ID_Vendedor SERIAL PRIMARY KEY,
    ID_Concesionario INT REFERENCES Concesionarios(ID_Concesionario),
    Nombre VARCHAR(100),
    DNI VARCHAR(20),
    Domicilio VARCHAR(255)
);


CREATE TABLE Ventas (
    ID_Venta SERIAL PRIMARY KEY,
    AutomovilBastidor VARCHAR(50) REFERENCES Automoviles(Bastidor),
    ID_Vendedor INT REFERENCES Vendedores(ID_Vendedor) NULL,
    ID_Servicio INT REFERENCES ServiciosOficiales(ID_Servicio) NULL,
    PrecioVenta DECIMAL(10, 2),
    ModoPago VARCHAR(20),
    FechaEntrega DATE,
    Matricula VARCHAR(20),
    Stock BOOLEAN
);


