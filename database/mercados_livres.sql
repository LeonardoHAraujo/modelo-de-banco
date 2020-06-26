-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: mercados_livres
-- ------------------------------------------------------
-- Server version	10.4.11-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cupons`
--

DROP TABLE IF EXISTS `cupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(30) NOT NULL,
  `mercado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mercado` (`mercado`),
  CONSTRAINT `cupons_ibfk_1` FOREIGN KEY (`mercado`) REFERENCES `mini_mercado` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cupons`
--

LOCK TABLES `cupons` WRITE;
/*!40000 ALTER TABLE `cupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `cupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mini_mercado`
--

DROP TABLE IF EXISTS `mini_mercado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mini_mercado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) NOT NULL,
  `ramo` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ramo` (`ramo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mini_mercado`
--

LOCK TABLES `mini_mercado` WRITE;
/*!40000 ALTER TABLE `mini_mercado` DISABLE KEYS */;
/*!40000 ALTER TABLE `mini_mercado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos_publicados`
--

DROP TABLE IF EXISTS `produtos_publicados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos_publicados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_produto` varchar(20) NOT NULL,
  `quantidade_produto` int(11) NOT NULL,
  `mercado_que_publicou` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mercado_que_publicou` (`mercado_que_publicou`),
  CONSTRAINT `produtos_publicados_ibfk_1` FOREIGN KEY (`mercado_que_publicou`) REFERENCES `mini_mercado` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos_publicados`
--

LOCK TABLES `produtos_publicados` WRITE;
/*!40000 ALTER TABLE `produtos_publicados` DISABLE KEYS */;
/*!40000 ALTER TABLE `produtos_publicados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_adms`
--

DROP TABLE IF EXISTS `users_adms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_adms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_adms`
--

LOCK TABLES `users_adms` WRITE;
/*!40000 ALTER TABLE `users_adms` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_adms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_clientes`
--

DROP TABLE IF EXISTS `users_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `idade` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_clientes`
--

LOCK TABLES `users_clientes` WRITE;
/*!40000 ALTER TABLE `users_clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_gerentes`
--

DROP TABLE IF EXISTS `users_gerentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_gerentes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `mercado_gerenciado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mercado_gerenciado` (`mercado_gerenciado`),
  CONSTRAINT `users_gerentes_ibfk_1` FOREIGN KEY (`mercado_gerenciado`) REFERENCES `mini_mercado` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_gerentes`
--

LOCK TABLES `users_gerentes` WRITE;
/*!40000 ALTER TABLE `users_gerentes` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_gerentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendas`
--

DROP TABLE IF EXISTS `vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_comprador` int(11) DEFAULT NULL,
  `mercado_vendedor` int(11) DEFAULT NULL,
  `produto_vendido` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `nome_comprador` (`nome_comprador`),
  KEY `mercado_vendedor` (`mercado_vendedor`),
  KEY `produto_vendido` (`produto_vendido`),
  CONSTRAINT `vendas_ibfk_1` FOREIGN KEY (`nome_comprador`) REFERENCES `users_clientes` (`id`),
  CONSTRAINT `vendas_ibfk_2` FOREIGN KEY (`mercado_vendedor`) REFERENCES `mini_mercado` (`id`),
  CONSTRAINT `vendas_ibfk_3` FOREIGN KEY (`produto_vendido`) REFERENCES `produtos_publicados` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas`
--

LOCK TABLES `vendas` WRITE;
/*!40000 ALTER TABLE `vendas` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mercados_livres'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-15 22:06:06
