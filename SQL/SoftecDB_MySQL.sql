-- MySQL dump 10.13  Distrib 8.4.6, for Linux (x86_64)
--
-- Host: localhost    Database: SoftecDB
-- ------------------------------------------------------
-- Server version	5.5.5-10.11.14-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Imagenes`
--

DROP TABLE IF EXISTS `Imagenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Imagenes` (
  `id_imagen` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_roca` int(11) NOT NULL,
  `id_luz` int(11) NOT NULL,
  `url_imagen` varchar(255) NOT NULL,
  `urlImagen` varchar(255) NOT NULL,
  PRIMARY KEY (`id_imagen`),
  KEY `Imagenes_FK_0_0` (`id_luz`),
  KEY `Imagenes_FK_1_0` (`id_roca`),
  CONSTRAINT `Imagenes_FK_0_0` FOREIGN KEY (`id_luz`) REFERENCES `TiposLuz` (`id_luz`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Imagenes_FK_1_0` FOREIGN KEY (`id_roca`) REFERENCES `Rocas` (`id_roca`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Imagenes`
--

LOCK TABLES `Imagenes` WRITE;
/*!40000 ALTER TABLE `Imagenes` DISABLE KEYS */;
INSERT INTO `Imagenes` VALUES (1,1,1,'./img/Caliza1.jpg',''),(2,2,1,'./img/Arenisca1.jpg',''),(3,3,1,'./img/Grafito1.jpg',''),(4,3,2,'./img/Grafito2.jpg',''),(5,4,1,'./img/Basalto1.jpg',''),(6,4,3,'./img/Basalto3.jpg',''),(7,5,1,'./img/Calcita1.jpg',''),(8,5,2,'./img/Calcita2.jpg',''),(9,6,1,'./img/Marmol1.jpg',''),(10,7,1,'./img/Obsidiana1.jpg',''),(11,8,1,'./img/Granito1.jpg','');
/*!40000 ALTER TABLE `Imagenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Previews`
--

DROP TABLE IF EXISTS `Previews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Previews` (
  `id_preview` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_roca` int(11) NOT NULL,
  `url_preview` varchar(255) NOT NULL,
  `urlPreview` varchar(255) NOT NULL,
  PRIMARY KEY (`id_preview`),
  KEY `Previews_FK_0_0` (`id_roca`),
  CONSTRAINT `Previews_FK_0_0` FOREIGN KEY (`id_roca`) REFERENCES `Rocas` (`id_roca`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Previews`
--

LOCK TABLES `Previews` WRITE;
/*!40000 ALTER TABLE `Previews` DISABLE KEYS */;
INSERT INTO `Previews` VALUES (1,1,'./img/preview/CalizaPrev.png',''),(2,2,'./img/preview/AreniscaPrev.png',''),(3,3,'./img/preview/GrafitoPrev.jpg',''),(4,4,'./img/preview/BasaltoPrev.jpg',''),(5,5,'./img/preview/CalcitaPrev.png',''),(6,6,'./img/preview/MarmolPrev.jpg',''),(7,7,'./img/preview/ObsidianaPrev.png',''),(8,1,'./img/preview/CalizaPrev.png',''),(9,2,'./img/preview/AreniscaPrev.png',''),(10,3,'./img/preview/GrafitoPrev.jpg',''),(11,4,'./img/preview/BasaltoPrev.jpg',''),(12,5,'./img/preview/CalcitaPrev.png',''),(13,6,'./img/preview/MarmolPrev.jpg',''),(14,7,'./img/preview/ObsidianaPrev.png',''),(15,1,'./img/preview/CalizaPrev.png',''),(16,2,'./img/preview/AreniscaPrev.png',''),(17,3,'./img/preview/GrafitoPrev.jpg',''),(18,4,'./img/preview/BasaltoPrev.jpg',''),(19,5,'./img/preview/CalcitaPrev.png',''),(20,6,'./img/preview/MarmolPrev.jpg',''),(21,7,'./img/preview/ObsidianaPrev.png',''),(22,1,'./img/preview/CalizaPrev.png',''),(23,2,'./img/preview/AreniscaPrev.png',''),(24,3,'./img/preview/GrafitoPrev.jpg',''),(25,4,'./img/preview/BasaltoPrev.jpg',''),(26,5,'./img/preview/CalcitaPrev.png',''),(27,6,'./img/preview/MarmolPrev.jpg',''),(28,7,'./img/preview/ObsidianaPrev.png',''),(29,8,'./img/preview/GranitoPrev.jpg','');
/*!40000 ALTER TABLE `Previews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Rocas`
--

DROP TABLE IF EXISTS `Rocas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Rocas` (
  `id_roca` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_roca` varchar(255) NOT NULL,
  `descripcion_roca` text DEFAULT NULL,
  PRIMARY KEY (`id_roca`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rocas`
--

LOCK TABLES `Rocas` WRITE;
/*!40000 ALTER TABLE `Rocas` DISABLE KEYS */;
INSERT INTO `Rocas` VALUES (1,'Caliza','La caliza es una roca sedimentaria compuesta principalmente por carbonato de calcio. Se forma a partir de restos de organismos marinos y sedimentos químicos. Es común en paisajes kársticos donde genera cuevas y cavernas. Su color claro y suavidad la vuelven útil en construcción y producción de cemento.'),(2,'Arenisca','La arenisca es una roca sedimentaria formada por granos de arena compactados y cementados con sílice, carbonato o arcilla. Presenta texturas variadas según el ambiente donde se formó, como ríos, desiertos o playas. Es resistente y ampliamente utilizada en la construcción debido a su durabilidad y apariencia natural.'),(3,'Grafito','El grafito es una forma cristalina del carbono, conocida por su textura suave y capacidad de conducir electricidad. Se forma bajo condiciones metamórficas y es esencial en aplicaciones industriales como lubricantes, baterías y lápices. Su estructura en capas permite que se deslice fácilmente, otorgándole su característica sensación grasosa.'),(4,'Basalto','El basalto es una roca ígnea volcánica de grano fino formada por el enfriamiento rápido del magma. Su color oscuro y alta densidad son característicos. Es común en regiones volcánicas y constituye gran parte del suelo oceánico. Su dureza lo hace útil en construcción, pavimentos y agregados industriales.'),(5,'Calcita','La calcita es un mineral compuesto de carbonato de calcio y uno de los principales componentes de muchas rocas sedimentarias. Presenta una gran variedad de formas cristalinas y es reconocida por su fácil exfoliación y reacción efervescente con ácidos. Se utiliza en la industria, agricultura y fabricación de vidrio.'),(6,'Marmol','El mármol es una roca metamórfica formada por la recristalización de la caliza bajo altas presiones y temperaturas. Su textura compacta y vetas características lo hacen un material apreciado en arquitectura y escultura. Es resistente, pulible y se encuentra en una amplia variedad de colores naturales dependiendo de sus impurezas.'),(7,'Obsidiana','La obsidiana es un vidrio volcánico formado por el enfriamiento extremadamente rápido de lava rica en sílice. Su superficie brillante y bordes afilados la hicieron útil para herramientas antiguas. Presenta colores oscuros con posibles iridiscencias. Hoy se emplea en artesanías, joyería y usos experimentales en instrumentos quirúrgicos.'),(8,'Granito','El granito es una roca ígnea plutónica formada por el enfriamiento lento del magma bajo la superficie terrestre. Está compuesto principalmente por cuarzo, feldespato y mica. Su dureza y resistencia lo hacen ideal para construcción, pavimentos y encimeras. Presenta colores variados según la proporción de sus minerales.');
/*!40000 ALTER TABLE `Rocas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TiposLuz`
--

DROP TABLE IF EXISTS `TiposLuz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TiposLuz` (
  `id_luz` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_luz` varchar(255) NOT NULL,
  PRIMARY KEY (`id_luz`),
  UNIQUE KEY `sqlite_autoindex_TiposLuz_1` (`tipo_luz`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TiposLuz`
--

LOCK TABLES `TiposLuz` WRITE;
/*!40000 ALTER TABLE `TiposLuz` DISABLE KEYS */;
INSERT INTO `TiposLuz` VALUES (2,'Escala de grises'),(1,'Luz natural'),(3,'Luz UV');
/*!40000 ALTER TABLE `TiposLuz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuarios`
--

DROP TABLE IF EXISTS `Usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(255) NOT NULL,
  `contrasena_hash` varchar(255) NOT NULL,
  `rol` int(11) DEFAULT 1,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `sqlite_autoindex_Usuarios_1` (`nombre_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuarios`
--

LOCK TABLES `Usuarios` WRITE;
/*!40000 ALTER TABLE `Usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `Usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagenes`
--

DROP TABLE IF EXISTS `imagenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imagenes` (
  `id_imagen` bigint(20) NOT NULL AUTO_INCREMENT,
  `url_imagen` varchar(255) NOT NULL,
  `id_roca` bigint(20) NOT NULL,
  `id_luz` int(11) NOT NULL,
  PRIMARY KEY (`id_imagen`),
  KEY `FKn915txxl3qcichtagbf0upww` (`id_roca`),
  KEY `FKhg4l45wtc0cr92ey5f4h8imyk` (`id_luz`),
  CONSTRAINT `FKhg4l45wtc0cr92ey5f4h8imyk` FOREIGN KEY (`id_luz`) REFERENCES `tipos_luz` (`id_luz`),
  CONSTRAINT `FKn915txxl3qcichtagbf0upww` FOREIGN KEY (`id_roca`) REFERENCES `rocas` (`id_roca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagenes`
--

LOCK TABLES `imagenes` WRITE;
/*!40000 ALTER TABLE `imagenes` DISABLE KEYS */;
/*!40000 ALTER TABLE `imagenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `previews`
--

DROP TABLE IF EXISTS `previews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `previews` (
  `id_preview` bigint(20) NOT NULL AUTO_INCREMENT,
  `url_preview` varchar(255) NOT NULL,
  `id_roca` bigint(20) NOT NULL,
  PRIMARY KEY (`id_preview`),
  KEY `FKg8ybx81ovw5o5remq80n569wg` (`id_roca`),
  CONSTRAINT `FKg8ybx81ovw5o5remq80n569wg` FOREIGN KEY (`id_roca`) REFERENCES `rocas` (`id_roca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `previews`
--

LOCK TABLES `previews` WRITE;
/*!40000 ALTER TABLE `previews` DISABLE KEYS */;
/*!40000 ALTER TABLE `previews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rocas`
--

DROP TABLE IF EXISTS `rocas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rocas` (
  `id_roca` bigint(20) NOT NULL AUTO_INCREMENT,
  `descripcion_roca` text DEFAULT NULL,
  `nombre_roca` varchar(255) NOT NULL,
  PRIMARY KEY (`id_roca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rocas`
--

LOCK TABLES `rocas` WRITE;
/*!40000 ALTER TABLE `rocas` DISABLE KEYS */;
/*!40000 ALTER TABLE `rocas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_luz`
--

DROP TABLE IF EXISTS `tipos_luz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipos_luz` (
  `id_luz` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_luz` varchar(255) NOT NULL,
  PRIMARY KEY (`id_luz`),
  UNIQUE KEY `UK_g0voau1j8e94qbuc1jp9l1gkl` (`tipo_luz`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_luz`
--

LOCK TABLES `tipos_luz` WRITE;
/*!40000 ALTER TABLE `tipos_luz` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipos_luz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `contrasena_hash` varchar(255) NOT NULL,
  `nombre_usuario` varchar(255) NOT NULL,
  `rol` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `UK_of5vabgukahdwmgxk4kjrbu98` (`nombre_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-12 13:15:21
