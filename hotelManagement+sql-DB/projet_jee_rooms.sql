
DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Available',
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,'Dreamscape Suite','Available','A cozy and elegant space'),(2,'Serenity Haven','Available','A tranquil retreat where you can relax and recharge in comfort'),(3,'Tranquility Retreat','Available','An inviting space perfect for unwinding after a long day '),(4,'Harmony Room','Booked','Experience a perfect balance of comfort and elegance'),(5,'Blissful Corner','Available','A delightful corner that exudes warmth and coziness'),(6,'Zen Look','Available','A minimalist space with soothing tones to help you find your inner peace');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;