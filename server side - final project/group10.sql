CREATE DATABASE  IF NOT EXISTS `group10` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `group10`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: group10
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `contact_us_submissions`
--

DROP TABLE IF EXISTS `contact_us_submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_us_submissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lastname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phonenumber` varchar(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `massage` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_us_submissions`
--

LOCK TABLES `contact_us_submissions` WRITE;
/*!40000 ALTER TABLE `contact_us_submissions` DISABLE KEYS */;
INSERT INTO `contact_us_submissions` VALUES (1,'ליאור','בר','0526673445','liorbar@gmail.com','בבקשה לחזור אליי. רוצה התייעצות בנוגע להחלקה'),(2,'נועה','חרוב','0536678285','noa6@gmail.com','רוצה לקבוע תסרוקת כלה'),(3,'חני','נחמן','0526743337','hanina6@walla.co.il','רוצה התייעצות בנוגע לתסרוקת לאמא של כלה'),(4,'רעות','לוי','0537892654','reut12@gmail.com','בבקשה להתקשר רוצה לקבוע תור'),(5,'ענבל','שטיין','0524717223','inbal99@walla.co.il','מחפשת ספר שילווה אותי ביום החתונה'),(25,'ליאור','עוקב','0546652276','liorokev21@gmail.com','היי, מעוניינת לקבוע תור בבקשה לחזור אליי 0546652276');
/*!40000 ALTER TABLE `contact_us_submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery` (
  `id` int NOT NULL AUTO_INCREMENT,
  `imageBig` varchar(50) DEFAULT NULL,
  `imageSmall` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery`
--

LOCK TABLES `gallery` WRITE;
/*!40000 ALTER TABLE `gallery` DISABLE KEYS */;
INSERT INTO `gallery` VALUES (1,'media/img1.jpg','media/img1small.jpg'),(2,'media/img2.jpg','media/img2small.jpg'),(3,'media/img3.jpg','media/img3small.jpg'),(4,'media/img4.jpg','media/img4small.jpg'),(5,'media/img5.jpg','media/img5small.jpg'),(6,'media/img6.jpg','media/img6small.jpg'),(7,'media/img7.jpg','media/img7small.jpg'),(8,'media/img8.jpg','media/img8small.jpg'),(9,'media/img9.jpg','media/img9small.jpg'),(10,'media/img10.jpg','media/img10small.jpg'),(11,'media/img11.jpg','media/img11small.jpg'),(12,'media/img12.jpg','media/img12small.jpg'),(13,'media/img13.jpg','media/img13small.jpg'),(14,'media/img14.jpg','media/img14small.jpg'),(15,'media/img15.jpg','media/img15small.jpg'),(16,'media/img16.jpg','media/img16small.jpg'),(17,'media/img17.jpg','media/img17small.jpg'),(18,'media/img18.jpg','media/img18small.jpg'),(19,'media/img19.jpg','media/img19small.jpg'),(20,'media/img20.jpg','media/img20small.jpg'),(21,'media/img21.jpg','media/img21small.jpg'),(22,'media/img22.jpg','media/img22small.jpg'),(23,'media/img23.jpg','media/img23small.jpg'),(24,'media/img24.jpg','media/img24small.jpg'),(25,'media/img25.jpg','media/img25small.jpg'),(26,'media/img26.jpg','media/img26small.jpg'),(27,'media/img27.jpg','media/img27small.jpg'),(28,'media/img28.jpg','media/img28small.jpg'),(29,'media/img29.jpg','media/img29small.jpg'),(30,'media/img30.jpg','media/img30small.jpg');
/*!40000 ALTER TABLE `gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `open_studio_submissions`
--

DROP TABLE IF EXISTS `open_studio_submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `open_studio_submissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fullname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `open_studio_submissions`
--

LOCK TABLES `open_studio_submissions` WRITE;
/*!40000 ALTER TABLE `open_studio_submissions` DISABLE KEYS */;
INSERT INTO `open_studio_submissions` VALUES (1,'אמנון צח','0546378222','amnon22@gmail.com','2021-01-16 17:23:31'),(2,'לירון אברהם','0534672888','liron6@walla.co.il','2021-01-16 17:23:31'),(3,'חן לוי','0523786453','chenle77@gmail.com','2021-01-16 17:23:31'),(4,'שמרית מור','0524415623','shimrit1@gmail.com','2021-01-16 17:23:31'),(5,'אורן אבוטבול','0526334111','orena55@walla.com','2021-01-16 17:23:31'),(6,'שני טל','0525998274','shanina@gmail.com','2021-01-16 17:23:31'),(10,'רן סלע','0506986294','ransela17@gmail.com','2021-02-06 17:25:17'),(11,'ליאור עוקב','0523354332','liorokev21@gmail.com','2021-02-06 18:40:30');
/*!40000 ALTER TABLE `open_studio_submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Hair Spa Rejuvenation','שמפו ספא','שמפו המסייע בחיזוק אורכי השיער ובהפחתת שבירת השיער. מותיר את שיערך בעל מגע חזק וגמיש!','images/product1.png'),(2,'Rich Nutrition Enriching','שמן לשיער','משחזר את מבנה השיער בצורה ממוקדת, מספק הגנה לטווח ארוך מפני נזקים חדשים וחום','images/product2.png'),(3,'Palmolive Naturals Healthy','שמפו ומרכך','הפורמולה המזינה של שמפו ומרכך עם תמציות וויטמין אלוורה, למראה שיער רענן ללא מאמץ לאורך כל היום.','images/product3.png'),(4,'hair acid balance','מסכה לשיער','מומלצת לטיפול מקצועי בשיער לאחר צביעה. השילוב הייחודי של תמציות ענבים ופירות הדר מספק טיפול מעולה והגנה על עוצמת הצבע.','images/product4.png'),(5,'Pantene 3 Minute Miracle','מרכך הקסם','מאפשר לך לשמור על השיער הצבוע שלך ולהחזיר לו את גוונו. זהו מרכך שחזק כמו מסיכה לשיער, והוא יכול ב180 שניות לעשות שיקום של נזק שהצטבר לאורך 90 יום.','images/product5.png');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recommends`
--

DROP TABLE IF EXISTS `recommends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recommends` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `details` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommends`
--

LOCK TABLES `recommends` WRITE;
/*!40000 ALTER TABLE `recommends` DISABLE KEYS */;
INSERT INTO `recommends` VALUES (1,'גלית סלע','מספרת ירין ששון היא רמה אחת מעל כולם, מרגע הכניסה למספרה את מרגישה שהגעת למקום רציני, אווירה משפחתית ונעימה והמקצועיות שעפה בחלל המספרה.'),(2,'עדן קבלי','כלקוחה קבועה של ירין, אין על המקצועיות ועל השירות שאני מקבלת. ממליצה בחום, פשוט מומחה לתספורות, גוונים ואיך לא גם החלקות. עשיתי החלקה יפנית לפני חצי שנה וכיום השיער חלק כאילו זה נעשה אתמול.'),(3,'ענבל חיון','תודה לירין ששון על התספורת המדהימה! קיבלתי עליה הרבה מחמאות והשיער נראה טבעי וחי. להסתפר אצל ירין זו חוויה נעימה עם אווירה רגועה..');
/*!40000 ALTER TABLE `recommends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fullname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'אייל דברשוילי','678910','ayald@post.bgu.ac.il','2021-01-16 14:26:13'),(3,'אבירם דהן','765432','avirad@post.bgu.ac.il','2021-01-16 14:26:13'),(4,'רן סלע','987321','ransel@post.bgu.ac.il','2021-01-16 14:26:13'),(5,'מתן סלע','123456','ransela17@gmail.com','2021-02-06 18:02:45'),(7,'ליאור עוקב','123456','liorokev21@gmail.com','2021-02-06 19:01:03');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-06 21:40:42
