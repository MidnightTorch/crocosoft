-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: pictures
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.20.04.2

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
-- Table structure for table `data`
--

DROP TABLE IF EXISTS `data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data` (
  `id` mediumint NOT NULL AUTO_INCREMENT,
  `description` json DEFAULT NULL,
  `path_to_picture` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data`
--

LOCK TABLES `data` WRITE;
/*!40000 ALTER TABLE `data` DISABLE KEYS */;
INSERT INTO `data` VALUES (3,'{\"id\": \"2.jpg\", \"type\": \"Капитализм\", \"year\": \"1922\", \"pagan\": false, \"topic\": \"Общая критика капитализма\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": false, \"bourgeois\": true, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"1\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": false}','screens/1922/1/2.jpg'),(10,'{\"id\": \"3.jpg\", \"type\": \"Антирелигиозная пропаганда\", \"year\": \"1922\", \"pagan\": false, \"topic\": \"Религия и просвещение\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": true, \"bourgeois\": false, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"1\", \"soviet ally\": false, \"enlightenment\": true, \"anciene_regime\": false, \"workers and peseants\": false}','screens/1922/1/3.jpg'),(11,'{\"id\": \"1.jpg\", \"type\": \"Политика\", \"year\": \"1922\", \"pagan\": false, \"topic\": \"Внешняя политика другой страны\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"Польша\", \" Финляндия\", \" Латвия\", \" Эстония\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": false, \"bourgeois\": false, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"Сикорский\"], \"publication\": \"2\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": false}','screens/1922/2/1.jpg'),(12,'{\"id\": \"1.jpg\", \"type\": \"Капитализм\", \"year\": \"1922\", \"pagan\": false, \"topic\": \"Противостояние буржуазии и рабочих\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": false, \"bourgeois\": true, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"5\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": true}','screens/1922/5/1.jpg'),(13,'{\"id\": \"2.jpg\", \"type\": \"Полтика\", \"year\": \"1922\", \"pagan\": false, \"topic\": \"Международные события\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"Китай\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": false, \"bourgeois\": false, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"5\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": false}','screens/1922/5/2.jpg'),(14,'{\"id\": \"1.jpg\", \"type\": \"Антирелигиозная пропаганда\", \"year\": \"1922\", \"pagan\": false, \"topic\": \"Религия против народа\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": true, \"bourgeois\": false, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"7\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": false}','screens/1922/7/1.jpg'),(17,'{\"id\": \"2.jpg\", \"type\": \"Антирелигиозная пропаганда\", \"year\": \"1922\", \"pagan\": false, \"topic\": \"Религия и просвещение\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": true, \"bourgeois\": false, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"7\", \"soviet ally\": false, \"enlightenment\": true, \"anciene_regime\": false, \"workers and peseants\": false}','screens/1922/7/2.jpg'),(18,'{\"id\": \"1.jpg\", \"type\": \"Антирелигиозная пропаганда\", \"year\": \"1922\", \"pagan\": false, \"topic\": \"Общая критика церкви\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": true, \"bourgeois\": false, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"9\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": false}','screens/1922/9/1.jpg'),(19,'{\"id\": \"2.jpg\", \"type\": \"Антирелигиозная пропаганда\", \"year\": \"1922\", \"pagan\": false, \"topic\": \"Церковь и алкоголь\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": true, \"bourgeois\": false, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"9\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": false}','screens/1922/9/2.jpg'),(20,'{\"id\": \"3.jpg\", \"type\": \"Капитализм\", \"year\": \"1922\", \"pagan\": false, \"topic\": \"Буржуазия и ресурсы СССР\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": false, \"bourgeois\": true, \"historical\": false, \"minorities\": false, \"inner enemy\": true, \"personality\": [\"\"], \"publication\": \"9\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": false}','screens/1922/9/3.jpg'),(21,'{\"id\": \"1.jpg\", \"type\": \"Антирелигиозная пропаганда\", \"year\": \"1922\", \"pagan\": false, \"topic\": \"Религия и полтикиа\", \"cosmos\": false, \"muslim\": true, \"ancient\": false, \"country\": [\"\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": true, \"bourgeois\": false, \"historical\": false, \"minorities\": false, \"inner enemy\": true, \"personality\": [\"\"], \"publication\": \"18\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": false}','screens/1922/18/1.jpg'),(22,'{\"id\": \"2.jpg\", \"type\": \"Антирелигиозная пропаганда\", \"year\": \"1922\", \"pagan\": false, \"topic\": \"Религия и полтикиа\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"Англия\", \" США\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": true, \"bourgeois\": false, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"18\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": true}','screens/1922/18/2.jpg'),(23,'{\"id\": \"1.jpg\", \"type\": \"Капитализм\", \"year\": \"1923\", \"pagan\": false, \"topic\": \"Борьба СССР с буржуями\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": true, \"feminism\": false, \"religion\": false, \"bourgeois\": true, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"1\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": false}','screens/1923/1/1.jpg'),(24,'{\"id\": \"1.jpg\", \"type\": \"Политика\", \"year\": \"1923\", \"pagan\": false, \"topic\": \"Международные события\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"Италия\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": false, \"bourgeois\": false, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"7\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": false}','screens/1923/7/1.jpg'),(25,'{\"id\": \"2.jpg\", \"type\": \"Капитализм\", \"year\": \"1923\", \"pagan\": false, \"topic\": \"Угнетение рабочих\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": false, \"bourgeois\": true, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"7\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": true}','screens/1923/7/2.jpg'),(26,'{\"id\": \"4.jpg\", \"type\": \"Капитализм\", \"year\": \"1923\", \"pagan\": false, \"topic\": \"Угнетение рабочих\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"Англия\", \" Франция\", \" Германия\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": false, \"bourgeois\": true, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"7\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": true}','screens/1923/7/4.jpg'),(27,'{\"id\": \"4.jpg\", \"type\": \"Капитализм\", \"year\": \"1923\", \"pagan\": false, \"topic\": \"Угнетение рабочих\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"Англия\", \" Франция\", \" Германия\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": false, \"bourgeois\": true, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"7\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": true}','screens/1923/7/4.jpg'),(28,'{\"id\": \"2.jpg\", \"type\": \"Антирелигиозная пропаганда\", \"year\": \"1923\", \"pagan\": false, \"topic\": \"Религия и алкоголь\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": true, \"bourgeois\": false, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"11\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": true}','screens/1923/11/2.jpg'),(29,'{\"id\": \"3.jpg\", \"type\": \"Антирелигиозная пропаганда\", \"year\": \"1923\", \"pagan\": false, \"topic\": \"Религия и политика\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": true, \"bourgeois\": false, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"11\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": false}','screens/1923/11/3.jpg'),(30,'{\"id\": \"1.jpg\", \"type\": \"Просвещение\", \"year\": \"1923\", \"pagan\": false, \"topic\": \"Эмансипация\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": true, \"religion\": false, \"bourgeois\": false, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"16\", \"soviet ally\": false, \"enlightenment\": true, \"anciene_regime\": false, \"workers and peseants\": false}','screens/1923/16/1.jpg'),(31,'{\"id\": \"2.jpg\", \"type\": \"Политика\", \"year\": \"1923\", \"pagan\": false, \"topic\": \"Международные события\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"Англия\", \" территория курдов\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": false, \"bourgeois\": false, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"16\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": false}','screens/1923/16/2.jpg'),(32,'{\"id\": \"1.jpg\", \"type\": \"Капитализм\", \"year\": \"1924\", \"pagan\": false, \"topic\": \"Внутренние буржуи\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": false, \"bourgeois\": true, \"historical\": false, \"minorities\": false, \"inner enemy\": true, \"personality\": [\"\"], \"publication\": \"2\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": false}','screens/1924/2/1.jpg'),(33,'{\"id\": \"1.jpg\", \"type\": \"Историческое\", \"year\": \"1924\", \"pagan\": false, \"topic\": \"Борьба с монархией\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": false, \"bourgeois\": false, \"historical\": true, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"4\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": true, \"workers and peseants\": true}','screens/1924/4/1.jpg'),(34,'{\"id\": \"2.jpg\", \"type\": \"Политика\", \"year\": \"1924\", \"pagan\": false, \"topic\": \"Борьба с внешней угрозой\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"Франция\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": true, \"feminism\": false, \"religion\": false, \"bourgeois\": false, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"Пуанкаре\"], \"publication\": \"4\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": false}','screens/1924/4/2.jpg'),(35,'{\"id\": \"1.jpg\", \"type\": \"Капитализм\", \"year\": \"1924\", \"pagan\": false, \"topic\": \"Угнетение рабочих\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": false, \"bourgeois\": true, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"9\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": true}','screens/1924/9/1.jpg'),(36,'{\"id\": \"3.jpg\", \"type\": \"Капитализм\", \"year\": \"1924\", \"pagan\": false, \"topic\": \"Внутренние буржуи\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": false, \"bourgeois\": true, \"historical\": false, \"minorities\": false, \"inner enemy\": true, \"personality\": [\"\"], \"publication\": \"12\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": false}','screens/1924/12/3.jpg'),(37,'{\"id\": \"4.jpg\", \"type\": \"Капитализм\", \"year\": \"1924\", \"pagan\": false, \"topic\": \"Борьба рабочих с буржуями\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": false, \"bourgeois\": true, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"12\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": true}','screens/1924/12/4.jpg'),(38,'{\"id\": \"1.jpg\", \"type\": \"Капитализм\", \"year\": \"1924\", \"pagan\": false, \"topic\": \"Борьба рабочих с буржуями\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": false, \"bourgeois\": true, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"15\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": true}','screens/1924/15/1.jpg'),(39,'{\"id\": \"1.jpg\", \"type\": \"Политика\", \"year\": \"1924\", \"pagan\": false, \"topic\": \"Внутрення политика другой страны\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"Италия\"], \"culture\": false, \"nuclear\": false, \"swastic\": true, \"Red army\": false, \"feminism\": false, \"religion\": false, \"bourgeois\": false, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"30\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": false}','screens/1924/30/1.jpg'),(40,'{\"id\": \"2.jpg\", \"type\": \"Политика\", \"year\": \"1925\", \"pagan\": false, \"topic\": \"Внутрення политика другой страны\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"Италия\", \" Англия\", \" Югославия\", \" Франция\", \" Германия\", \" Франция\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": false, \"bourgeois\": false, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"10\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": false}','screens/1925/10/2.jpg'),(41,'{\"id\": \"3.jpg\", \"type\": \"Капитализм\", \"year\": \"1925\", \"pagan\": false, \"topic\": \"Борьба рабочих с буржуями\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": false, \"bourgeois\": true, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"10\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": true}','screens/1925/10/3.jpg'),(42,'{\"id\": \"2.jpg\", \"type\": \"Самокритика\", \"year\": \"1925\", \"pagan\": false, \"topic\": \"Ситуация в союзных республиках\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": false, \"bourgeois\": false, \"historical\": false, \"minorities\": true, \"inner enemy\": true, \"personality\": [\"\"], \"publication\": \"18\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": false}','screens/1925/18/2.jpg'),(43,'{\"id\": \"1.jpg\", \"type\": \"Самокритика\", \"year\": \"1925\", \"pagan\": false, \"topic\": \"Бывшие люди\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": false, \"bourgeois\": false, \"historical\": false, \"minorities\": false, \"inner enemy\": true, \"personality\": [\"\"], \"publication\": \"20\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": false}','screens/1925/20/1.jpg'),(44,'{\"id\": \"1.jpg\", \"type\": \"Самокритика\", \"year\": \"1925\", \"pagan\": false, \"topic\": \"Бюрократизм\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": false, \"bourgeois\": false, \"historical\": false, \"minorities\": false, \"inner enemy\": true, \"personality\": [\"\"], \"publication\": \"25\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": false}','screens/1925/25/1.jpg'),(45,'{\"id\": \"3.jpg\", \"type\": \"Политика\", \"year\": \"1925\", \"pagan\": false, \"topic\": \"Внешняя угроза СССР\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"Англия\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": false, \"bourgeois\": false, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"Чемберлен\"], \"publication\": \"25\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": false}','screens/1925/25/3.jpg'),(46,'{\"id\": \"3.jpg\", \"type\": \"Самокритика\", \"year\": \"1925\", \"pagan\": false, \"topic\": \"Дефицит\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": false, \"bourgeois\": false, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"29\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": false}','screens/1925/29/3.jpg'),(47,'{\"id\": \"1.jpg\", \"type\": \"Антирелигиозная пропаганда\", \"year\": \"1925\", \"pagan\": false, \"topic\": \"Общая критика церкви\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": true, \"bourgeois\": false, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"40\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": false}','screens/1925/40/1.jpg'),(48,'{\"id\": \"3.jpg\", \"type\": \"Самокритика\", \"year\": \"1925\", \"pagan\": false, \"topic\": \"Бюрократизм\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": false, \"bourgeois\": false, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"40\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": false}','screens/1925/40/3.jpg'),(49,'{\"id\": \"1.jpg\", \"type\": \"Самокритика\", \"year\": \"1926\", \"pagan\": false, \"topic\": \"Дефицит\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": false, \"bourgeois\": false, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"20\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": false}','screens/1926/20/1.jpg'),(50,'{\"id\": \"1.jpg\", \"type\": \"Политика\", \"year\": \"1926\", \"pagan\": false, \"topic\": \"Внутрення политика другой страны\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"Польша\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": false, \"bourgeois\": false, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"40\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": false}','screens/1926/40/1.jpg'),(51,'{\"id\": \"1.jpg\", \"type\": \"Самокритика\", \"year\": \"1927\", \"pagan\": false, \"topic\": \"Коррупция\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": false, \"bourgeois\": false, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"2\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": false}','screens/1927/2/1.jpg'),(52,'{\"id\": \"1.jpg\", \"type\": \"Самокритика\", \"year\": \"1927\", \"pagan\": false, \"topic\": \"Неэффективность социальных служб\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": false, \"bourgeois\": false, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"9\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": false}','screens/1927/9/1.jpg'),(53,'{\"id\": \"1.jpg\", \"type\": \"Социальная критика\", \"year\": \"1928\", \"pagan\": false, \"topic\": \"Вандализм\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": false, \"bourgeois\": false, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"15\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": false}','screens/1928/15/1.jpg'),(54,'{\"id\": \"2.jpg\", \"type\": \"Самокритика\", \"year\": \"1928\", \"pagan\": false, \"topic\": \"Непотизм\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": false, \"bourgeois\": false, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"15\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": false}','screens/1928/15/2.jpg'),(55,'{\"id\": \"1.jpg\", \"type\": \"Антирелигиозная пропаганда\", \"year\": \"1929\", \"pagan\": false, \"topic\": \"Религия и просвещение\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": true, \"bourgeois\": false, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"18\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": false}','screens/1929/18/1.jpg'),(56,'{\"id\": \"1.jpg\", \"type\": \"Капитализм\", \"year\": \"1929\", \"pagan\": false, \"topic\": \"Общая критика капитализма\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": false, \"bourgeois\": false, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"28\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": false}','screens/1929/28/1.jpg'),(57,'{\"id\": \"2.jpg\", \"type\": \"Капитализм\", \"year\": \"1929\", \"pagan\": false, \"topic\": \"Общая критика капитализма\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": false, \"bourgeois\": true, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"28\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": true}','screens/1929/28/2.jpg'),(58,'{\"id\": \"3.jpg\", \"type\": \"Политика\", \"year\": \"1929\", \"pagan\": false, \"topic\": \"Критика других левых\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": false, \"bourgeois\": true, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"28\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": true}','screens/1929/28/3.jpg'),(59,'{\"id\": \"5.jpg\", \"type\": \"Политика\", \"year\": \"1929\", \"pagan\": false, \"topic\": \"Шарж\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"Германия\", \" США\", \" Китай\", \" Испания\", \" Болгария\", \" Венгрия\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": false, \"bourgeois\": false, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"Першинг\", \" Гитлер\", \" Чан Кай-Ши\", \" Примо Де-Ривера\", \" Цанков\", \" Хорти\"], \"publication\": \"28\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": false}','screens/1929/28/5.jpg'),(60,'{\"id\": \"6.jpg\", \"type\": \"Политика\", \"year\": \"1929\", \"pagan\": false, \"topic\": \"Международные события\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"Англия\", \" Япония\", \" США\", \" Китай\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": false, \"bourgeois\": false, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"28\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": false}','screens/1929/28/6.jpg'),(61,'{\"id\": \"7.jpg\", \"type\": \"Политика\", \"year\": \"1929\", \"pagan\": false, \"topic\": \"Внешняя угроза СССР\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\"\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": false, \"bourgeois\": false, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"28\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": false}','screens/1929/28/7.jpg'),(62,'{\"id\": \"8.jpg\", \"type\": \"Политика\", \"year\": \"1929\", \"pagan\": false, \"topic\": \"Внешняя угроза СССР\", \"cosmos\": false, \"muslim\": false, \"ancient\": false, \"country\": [\" Финляндия\", \" Франция\", \" Румыния\", \" Эстония\"], \"culture\": false, \"nuclear\": false, \"swastic\": false, \"Red army\": false, \"feminism\": false, \"religion\": false, \"bourgeois\": false, \"historical\": false, \"minorities\": false, \"inner enemy\": false, \"personality\": [\"\"], \"publication\": \"28\", \"soviet ally\": false, \"enlightenment\": false, \"anciene_regime\": false, \"workers and peseants\": false}','screens/1929/28/8.jpg');
/*!40000 ALTER TABLE `data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-29 13:06:56