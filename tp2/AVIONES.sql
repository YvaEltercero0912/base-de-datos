CREATE TABLE Pilotos (
    ID_Piloto SERIAL PRIMARY KEY,
    Nombre VARCHAR(100),
    HorasVuelo INT,
    Base VARCHAR(50)
);


CREATE TABLE MiembrosTripulacion (
    ID_Miembro SERIAL PRIMARY KEY,
    Nombre VARCHAR(100),
    Base VARCHAR(50)
);


CREATE TABLE Aviones (
    ID_Avion SERIAL PRIMARY KEY,
    Tipo VARCHAR(50),
    BaseMantenimiento VARCHAR(50)
);


CREATE TABLE Vuelos (
    ID_Vuelo SERIAL PRIMARY KEY,
    Origen VARCHAR(50),
    Destino VARCHAR(50),
    HoraSalida TIME,
    Fecha DATE,
    ID_Avion INT REFERENCES Aviones(ID_Avion),
    ID_Piloto INT REFERENCES Pilotos(ID_Piloto),
    ID_Miembro INT REFERENCES MiembrosTripulacion(ID_Miembro)
);
