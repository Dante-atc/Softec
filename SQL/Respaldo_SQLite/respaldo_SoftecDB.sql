PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE Usuarios (
    id_usuario INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre_usuario TEXT NOT NULL UNIQUE,
    contrasena_hash TEXT NOT NULL,
    rol INTEGER DEFAULT 1
);
CREATE TABLE Rocas (
    id_roca INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre_roca TEXT NOT NULL,
    descripcion_roca TEXT
);
INSERT INTO Rocas VALUES(1,'Caliza','La caliza es una roca sedimentaria compuesta principalmente por carbonato de calcio. Se forma a partir de restos de organismos marinos y sedimentos químicos. Es común en paisajes kársticos donde genera cuevas y cavernas. Su color claro y suavidad la vuelven útil en construcción y producción de cemento.');
INSERT INTO Rocas VALUES(2,'Arenisca','La arenisca es una roca sedimentaria formada por granos de arena compactados y cementados con sílice, carbonato o arcilla. Presenta texturas variadas según el ambiente donde se formó, como ríos, desiertos o playas. Es resistente y ampliamente utilizada en la construcción debido a su durabilidad y apariencia natural.');
INSERT INTO Rocas VALUES(3,'Grafito','El grafito es una forma cristalina del carbono, conocida por su textura suave y capacidad de conducir electricidad. Se forma bajo condiciones metamórficas y es esencial en aplicaciones industriales como lubricantes, baterías y lápices. Su estructura en capas permite que se deslice fácilmente, otorgándole su característica sensación grasosa.');
INSERT INTO Rocas VALUES(4,'Basalto','El basalto es una roca ígnea volcánica de grano fino formada por el enfriamiento rápido del magma. Su color oscuro y alta densidad son característicos. Es común en regiones volcánicas y constituye gran parte del suelo oceánico. Su dureza lo hace útil en construcción, pavimentos y agregados industriales.');
INSERT INTO Rocas VALUES(5,'Calcita','La calcita es un mineral compuesto de carbonato de calcio y uno de los principales componentes de muchas rocas sedimentarias. Presenta una gran variedad de formas cristalinas y es reconocida por su fácil exfoliación y reacción efervescente con ácidos. Se utiliza en la industria, agricultura y fabricación de vidrio.');
INSERT INTO Rocas VALUES(6,'Marmol','El mármol es una roca metamórfica formada por la recristalización de la caliza bajo altas presiones y temperaturas. Su textura compacta y vetas características lo hacen un material apreciado en arquitectura y escultura. Es resistente, pulible y se encuentra en una amplia variedad de colores naturales dependiendo de sus impurezas.');
INSERT INTO Rocas VALUES(7,'Obsidiana','La obsidiana es un vidrio volcánico formado por el enfriamiento extremadamente rápido de lava rica en sílice. Su superficie brillante y bordes afilados la hicieron útil para herramientas antiguas. Presenta colores oscuros con posibles iridiscencias. Hoy se emplea en artesanías, joyería y usos experimentales en instrumentos quirúrgicos.');
INSERT INTO Rocas VALUES(8,'Granito','El granito es una roca ígnea plutónica formada por el enfriamiento lento del magma bajo la superficie terrestre. Está compuesto principalmente por cuarzo, feldespato y mica. Su dureza y resistencia lo hacen ideal para construcción, pavimentos y encimeras. Presenta colores variados según la proporción de sus minerales.');
CREATE TABLE Imagenes (
    id_imagen INTEGER PRIMARY KEY AUTOINCREMENT,
    id_roca INTEGER NOT NULL,
    id_luz INTEGER NOT NULL,
    url_imagen TEXT NOT NULL,
    
    FOREIGN KEY (id_roca) REFERENCES Rocas(id_roca)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    
    FOREIGN KEY (id_luz) REFERENCES TiposLuz(id_luz)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
INSERT INTO Imagenes VALUES(1,1,1,'./img/Caliza1.jpg');
INSERT INTO Imagenes VALUES(2,2,1,'./img/Arenisca1.jpg');
INSERT INTO Imagenes VALUES(3,3,1,'./img/Grafito1.jpg');
INSERT INTO Imagenes VALUES(4,3,2,'./img/Grafito2.jpg');
INSERT INTO Imagenes VALUES(5,4,1,'./img/Basalto1.jpg');
INSERT INTO Imagenes VALUES(6,4,3,'./img/Basalto3.jpg');
INSERT INTO Imagenes VALUES(7,5,1,'./img/Calcita1.jpg');
INSERT INTO Imagenes VALUES(8,5,2,'./img/Calcita2.jpg');
INSERT INTO Imagenes VALUES(9,6,1,'./img/Marmol1.jpg');
INSERT INTO Imagenes VALUES(10,7,1,'./img/Obsidiana1.jpg');
INSERT INTO Imagenes VALUES(11,8,1,'./img/Granito1.jpg');
CREATE TABLE TiposLuz (
    id_luz INTEGER PRIMARY KEY AUTOINCREMENT,
    tipo_luz TEXT NOT NULL UNIQUE
);
INSERT INTO TiposLuz VALUES(1,'Luz natural');
INSERT INTO TiposLuz VALUES(2,'Escala de grises');
INSERT INTO TiposLuz VALUES(3,'Luz UV');
CREATE TABLE Previews (
    id_preview INTEGER PRIMARY KEY AUTOINCREMENT,
    id_roca INTEGER NOT NULL,
    url_preview TEXT NOT NULL,

    FOREIGN KEY (id_roca) REFERENCES Rocas(id_roca)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
INSERT INTO Previews VALUES(1,1,'./img/preview/CalizaPrev.png');
INSERT INTO Previews VALUES(2,2,'./img/preview/AreniscaPrev.png');
INSERT INTO Previews VALUES(3,3,'./img/preview/GrafitoPrev.jpg');
INSERT INTO Previews VALUES(4,4,'./img/preview/BasaltoPrev.jpg');
INSERT INTO Previews VALUES(5,5,'./img/preview/CalcitaPrev.png');
INSERT INTO Previews VALUES(6,6,'./img/preview/MarmolPrev.jpg');
INSERT INTO Previews VALUES(7,7,'./img/preview/ObsidianaPrev.png');
INSERT INTO Previews VALUES(8,1,'./img/preview/CalizaPrev.png');
INSERT INTO Previews VALUES(9,2,'./img/preview/AreniscaPrev.png');
INSERT INTO Previews VALUES(10,3,'./img/preview/GrafitoPrev.jpg');
INSERT INTO Previews VALUES(11,4,'./img/preview/BasaltoPrev.jpg');
INSERT INTO Previews VALUES(12,5,'./img/preview/CalcitaPrev.png');
INSERT INTO Previews VALUES(13,6,'./img/preview/MarmolPrev.jpg');
INSERT INTO Previews VALUES(14,7,'./img/preview/ObsidianaPrev.png');
INSERT INTO Previews VALUES(15,1,'./img/preview/CalizaPrev.png');
INSERT INTO Previews VALUES(16,2,'./img/preview/AreniscaPrev.png');
INSERT INTO Previews VALUES(17,3,'./img/preview/GrafitoPrev.jpg');
INSERT INTO Previews VALUES(18,4,'./img/preview/BasaltoPrev.jpg');
INSERT INTO Previews VALUES(19,5,'./img/preview/CalcitaPrev.png');
INSERT INTO Previews VALUES(20,6,'./img/preview/MarmolPrev.jpg');
INSERT INTO Previews VALUES(21,7,'./img/preview/ObsidianaPrev.png');
INSERT INTO Previews VALUES(22,1,'./img/preview/CalizaPrev.png');
INSERT INTO Previews VALUES(23,2,'./img/preview/AreniscaPrev.png');
INSERT INTO Previews VALUES(24,3,'./img/preview/GrafitoPrev.jpg');
INSERT INTO Previews VALUES(25,4,'./img/preview/BasaltoPrev.jpg');
INSERT INTO Previews VALUES(26,5,'./img/preview/CalcitaPrev.png');
INSERT INTO Previews VALUES(27,6,'./img/preview/MarmolPrev.jpg');
INSERT INTO Previews VALUES(28,7,'./img/preview/ObsidianaPrev.png');
INSERT INTO Previews VALUES(29,8,'./img/preview/GranitoPrev.jpg');
INSERT INTO sqlite_sequence VALUES('Rocas',8);
INSERT INTO sqlite_sequence VALUES('TiposLuz',3);
INSERT INTO sqlite_sequence VALUES('Imagenes',11);
INSERT INTO sqlite_sequence VALUES('Previews',29);
COMMIT;
