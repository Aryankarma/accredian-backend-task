-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: localhost    Database: referralsystem
-- ------------------------------------------------------
-- Server version	8.0.41-0ubuntu0.24.04.1

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
-- Table structure for table `Referral`
--

DROP TABLE IF EXISTS `Referral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Referral` (
  `id` int NOT NULL AUTO_INCREMENT,
  `referrerName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refereeName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refereeEmail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Referral`
--

LOCK TABLES `Referral` WRITE;
/*!40000 ALTER TABLE `Referral` DISABLE KEYS */;
INSERT INTO `Referral` VALUES (1,'John Doe','Jane Smith','janesmith@example.com','Full Stack Web Development','2025-02-25 09:38:46.767'),(2,'John Doe','Jane Smith','janesmith@example.com','Full Stack Web Development','2025-02-25 09:39:37.937'),(3,'John Doe','Jane Smith','janesmith@example.com','Full Stack Web Development','2025-02-25 09:43:26.791'),(4,'Aryan Karma','Vijay Sharma','vijaysharma@gmail.com','Full Stack Web Development','2025-02-25 09:45:54.031'),(5,'Vijay Sharma','Aryan Karma','ayrankarma29@gmail.com','Full Stack Web Development','2025-02-25 09:46:47.146'),(6,'Vijay Sharma','Aryan Karma','aryankarma29@gmail.com','Full Stack Web Development','2025-02-25 09:47:36.240'),(7,'aryankarma','vijaysharma','aryankarma20@gmail.com','Data Structures & Algorithms Mastery','2025-02-25 11:02:51.535'),(8,'aryankarma','vijaysharma','aryankarma20@gmail.com','Data Structures & Algorithms Mastery','2025-02-25 11:04:04.312'),(9,'aryankarma','vijaysharma','aryankarma20@gmail.com','Advanced JavaScript & Frontend Frameworks','2025-02-25 11:04:35.018'),(10,'aryankarma','vijayshekharsharma','aryankarma29@gmail.com','Select a Course','2025-02-25 11:09:59.214');
/*!40000 ALTER TABLE `Referral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_prisma_migrations`
--

DROP TABLE IF EXISTS `_prisma_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_prisma_migrations`
--

LOCK TABLES `_prisma_migrations` WRITE;
/*!40000 ALTER TABLE `_prisma_migrations` DISABLE KEYS */;
INSERT INTO `_prisma_migrations` VALUES ('7053bb9b-db2a-4ee0-9f3d-5d1981d2885c','2e43839f37a72975d32576917d694b84307a05ff7fc84a524dc2d52cd2a6aa68','2025-02-25 09:38:19.767','20250225093819_init',NULL,NULL,'2025-02-25 09:38:19.736',1),('f743ec99-bbf0-4e4a-bd61-c9e97ed1515a','46376d2fecf32f87a06ef7054802c535f64e8a8256f479608c3f99d07ac55db9','2025-02-25 10:49:31.699','20250225104931_remove_referrer_email',NULL,NULL,'2025-02-25 10:49:31.655',1);
/*!40000 ALTER TABLE `_prisma_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-25 16:48:50
