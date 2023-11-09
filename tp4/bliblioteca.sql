CREATE TABLE Alumno (
    Legajo INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Apellido VARCHAR(100),
    Email VARCHAR(100)
);


CREATE TABLE Editorial (
    ID_Editorial INT PRIMARY KEY,
    Codigo VARCHAR(50),
    Nombre VARCHAR(100)
);


CREATE TABLE Libro (
    ISBN VARCHAR(50) PRIMARY KEY,
    Titulo VARCHAR(100),
    id_Editorial INT REFERENCES Editorial(id_Editorial)
);


CREATE TABLE Leer (
    AlumnoLegajo INT REFERENCES Alumno(Legajo),
    LibroISBN VARCHAR(50) REFERENCES Libro(ISBN),
    PRIMARY KEY (AlumnoLegajo, LibroISBN)
);




INSERT INTO Alumno VALUES (1, 'milagros', 'pilar', 'milipilar@hotmail.com');
INSERT INTO Alumno VALUES (2, 'perro', 'malvado', 'perromalvado@hotmail.com');


INSERT INTO Editorial VALUES (1, '101', 'Editorial estrada');
INSERT INTO Editorial VALUES (2, '202', 'Editorial puerto de palo');


INSERT INTO Libro VALUES ('ISBN001', 'manuelita', 1);
INSERT INTO Libro VALUES ('ISBN002', 'el diario de ana frank', 2);


INSERT INTO Leer VALUES (1, 'ISBN001');
INSERT INTO Leer VALUES (2, 'ISBN001');
INSERT INTO Leer VALUES (2, 'ISBN002');
