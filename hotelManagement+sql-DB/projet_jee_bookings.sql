
DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `arrival_date` date NOT NULL,
  `departure_date` date NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `chambre_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,'2024-12-07','2024-12-08','kougjjj','Dreamscape Suite','2024-12-06 10:32:43'),(2,'2024-12-08','2024-12-17','rubiooo','Serenity Haven','2024-12-06 10:47:12'),(3,'2024-12-07','2024-12-21','kougud','Dreamscape Suite','2024-12-06 11:07:36'),(5,'2024-12-22','2024-12-29','soufiane','Serenity Haven','2024-12-08 13:20:43');
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;
