-- Crear base de datos
CREATE DATABASE Escuela;

-- Usar base de datos creada
USE Escuela;

-- Crear tabla Alumnos
CREATE TABLE Alumnos (
    AlumnoID INT,
    Nombre VARCHAR(100),
    FechaNacimiento DATE,
    Email VARCHAR(255)
);

-- Crear tabla Cursos
CREATE TABLE Cursos (
    CursoID INT,
    Nombre VARCHAR(100),
    Descripcion VARCHAR(255)
);

-- Crear tabla Inscripciones
CREATE TABLE Inscripciones (
    InscripcionID INT,
    AlumnoID INT,
    CursoID INT,
    FechaInscripcion DATE
);

-- Insertar datos en la tabla Alumnos
INSERT INTO Alumnos (AlumnoID, Nombre, FechaNacimiento, Email) VALUES
(1, 'Ana Garcia', '2000-01-15', 'ana.garcia@example.com'),
(2, 'Luis Perez', '1995-06-30', 'luis.perez@example.com'),
(3, 'Maria Lopez', NULL, 'maria.lopez@example.com'),
(4, 'Juan Martinez', '2005-03-22', 'juan.martinez@example.com');

-- Insertar datos en la tabla Cursos
INSERT INTO Cursos (CursoID, Nombre, Descripcion) VALUES
(1, 'Matemáticas', 'Curso de matemáticas básicas'),
(2, 'Historia', 'Curso de historia mundial'),
(3, NULL, 'Curso de ciencias');

-- Insertar datos en la tabla Inscripciones
INSERT INTO Inscripciones (InscripcionID, AlumnoID, CursoID, FechaInscripcion) VALUES
(1, 1, 1, '2024-05-01'),
(2, 2, 2, '2024-05-02'),
(3, 3, 3, '2024-05-03'),
(4, 4, 4, '2024-05-04'); -- CursoID 4 no existe

-- Agregar una clave primaria a la tabla Alumnos para que AlumnoID sea el identificador único.
ALTER TABLE Alumnos
ALTER COLUMN AlumnoID INT NOT NULL
ALTER TABLE Alumnos
ADD CONSTRAINT PK_Alumno PRIMARY KEY (AlumnoID)

-- Agregar una clave primaria a la tabla Cursos para que CursoID sea el identificador único.
ALTER TABLE Cursos
ALTER COLUMN CursoID INT NOT NULL
ALTER TABLE Cursos
ADD CONSTRAINT PK_Curso PRIMARY KEY (CursoID)

-- Agregar una clave primaria a la tabla Inscripciones para que InscripcionID sea el identificador único.
ALTER TABLE Inscripciones
ALTER COLUMN InscripcionID INT NOT NULL
ALTER TABLE Inscripciones
ADD CONSTRAINT PK_Inscripcion PRIMARY KEY (InscripcionID)

select * from Cursos;

-- Agregar una clave foránea a la tabla Inscripciones para que AlumnoID referencie a AlumnoID en la tabla Alumnos.
ALTER TABLE Inscripciones
ADD CONSTRAINT FK_Inscripciones_Alumnos FOREIGN KEY (AlumnoID) REFERENCES Alumnos(AlumnoID)


-- Agregar una clave foránea a la tabla Inscripciones para que CursoID referencie a CursoID en la tabla Cursos.

Select * from Inscripciones

UPDATE Cursos
SET Nombre='Programacion Intermedia II'
WHERE CursoID=3

INSERT INTO Cursos (CursoID, Nombre, Descripcion) VALUES
(4, 'Base de Datos', 'Curso de Base de datos')

ALTER TABLE Inscripciones
ADD CONSTRAINT FK_Inscripciones_Cursos FOREIGN KEY (CursoID) REFERENCES Cursos(CursoID)

-- Asegurar que el campo Email en la tabla Alumnos sea único.
ALTER TABLE Alumnos
ADD CONSTRAINT UQ_Email UNIQUE (Email) 

-- Asegurar que el campo Nombre en la tabla Cursos no sea nulo. *****
ALTER TABLE Cursos
ALTER COLUMN Nombre VARCHAR(100) NOT NULL

Select * from Alumnos;

-- Agregar un valor por defecto para la columna FechaInscripcion en la tabla Inscripciones para que sea la fecha actual si no se proporciona un valor.
ALTER TABLE Inscripciones
ADD CONSTRAINT DF_FechaInscripcion DEFAULT GETDATE() FOR FechaInscripcion

-- Asegurar que la columna FechaNacimiento en la tabla Alumnos no sea nula y que los alumnos tengan al menos 18 años.
ALTER TABLE Alumnos
ALTER COLUMN FechaNacimiento DATE NOT NULL
UPDATE Alumnos
SET FechaNacimiento='2003-05-02'
WHERE AlumnoID=3

ALTER TABLE Alumnos
ADD CONSTRAINT Check_Edad 
CHECK (DATEDIFF(YEAR,FechaNacimiento,GETDATE()) >=18)

SELECT Nombre, DATEDIFF(YEAR,FechaNacimiento,GETDATE()) AS Edad FROM Alumnos

select*from Alumnos

INSERT INTO Alumnos (AlumnoID, Nombre, FechaNacimiento, Email) VALUES
(6, 'A Garcia', '2005-01-15', 'a.garcia@example.com')

UPDATE Alumnos
SET FechaNacimiento='2003-05-02'
WHERE AlumnoID=3
  
-- Intentar insertar un alumno con una fecha de nacimiento nula:
-- Resultado esperado: 

-- Intentar insertar un alumno con menos de 18 años:
-- Resultado esperado: 

-- Intentar insertar un curso con un nombre nulo:
-- Resultado esperado: 

-- Intentar insertar una inscripción con un AlumnoID que no existe:
-- Resultado esperado:

-- Intentar insertar una inscripción con un CursoID que no existe:
-- Resultado esperado: 

-- Insertar una inscripción sin especificar FechaInscripcion:
-- Resultado esperado: 

-- Inserta un registro nuevo por cada tabla y ocupando los nuevos valores ingresados entre si.