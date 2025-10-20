//*Script para crear la DB en sqlite en caso de que no jale la que subi, ponganlo en execute sql y corranlo*//
PRAGMA foreign_keys = ON;

CREATE TABLE IF NOT EXISTS Usuarios (
    id_usuario INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre_usuario TEXT NOT NULL UNIQUE,
    contrasena_hash TEXT NOT NULL,
    rol INTEGER DEFAULT 1
);

CREATE TABLE IF NOT EXISTS Rocas (
    id_roca INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre_roca TEXT NOT NULL,
    descripcion_roca TEXT
);

CREATE TABLE IF NOT EXISTS TiposLuz (
    id_luz INTEGER PRIMARY KEY AUTOINCREMENT,
    id_roca INTEGER NOT NULL,
    tipo_luz TEXT,
    
    FOREIGN KEY (id_roca) REFERENCES Rocas(id_roca)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Imagenes (
    id_imagen INTEGER PRIMARY KEY AUTOINCREMENT,
    id_roca INTEGER NOT NULL,
    id_luz INTEGER NOT NULL,
    url_imagen TEXT NOT NULL,
    
    -- Relación con Rocas
    FOREIGN KEY (id_roca) REFERENCES Rocas(id_roca)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    
    -- Relación con TiposLuz
    FOREIGN KEY (id_luz) REFERENCES TiposLuz(id_luz)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);