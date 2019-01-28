-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: hu_sprint
-- ------------------------------------------------------
-- Server version	5.7.13-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(45) NOT NULL,
  `order_user` varchar(45) DEFAULT NULL,
  `order_file` varchar(45) DEFAULT NULL,
  `order_source` varchar(45) DEFAULT NULL,
  `order_pages` varchar(45) DEFAULT NULL,
  `order_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,'IO-0003','012345','ISEM 501_Lecture notes.ppt','local','15-18 both sides color','2018-06-19 16:30:00'),(2,'IO-0002','012345','ISEM 510_Assignment.doc','local','2-4 one sides B/W','2018-04-06 16:00:00'),(3,'IO-0001','012345','SCRUM Certificate.pdf','online','1 one sides color','2018-01-03 13:00:00');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_info`
--

DROP TABLE IF EXISTS `student_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Student_Id` decimal(10,0) NOT NULL,
  `Student_FName` varchar(45) DEFAULT NULL,
  `Student_MName` varchar(45) DEFAULT NULL,
  `Student_LName` varchar(45) DEFAULT NULL,
  `Student_Email` varchar(45) DEFAULT NULL,
  `Student_Contact` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='contains the student information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_info`
--

LOCK TABLES `student_info` WRITE;
/*!40000 ALTER TABLE `student_info` DISABLE KEYS */;
INSERT INTO `student_info` VALUES (1,12345,'Harry','','Kumar','Harry.Kumar@my.Harrisburgu.edu','3142153264'),(2,12346,'Manish','R.','Kumar','Manish.Kumar@my.Harrisburgu.edu','5622362653'),(3,12347,'Nitesh','K','Reddy','Nitesh.K.Reddy@my.Harrisburgu.edu','5234589874');
/*!40000 ALTER TABLE `student_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_info` (
  `User_Id` int(11) NOT NULL AUTO_INCREMENT,
  `User_student_Id` decimal(10,0) NOT NULL,
  `User_Name` varchar(45) DEFAULT NULL,
  `User_Password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`User_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES (1,12345,'HKumar','Harry$Kumar789'),(2,12346,'MRKumar','M$RKumar46'),(3,12347,'NReddy','N@R7895');
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_submission`
--

DROP TABLE IF EXISTS `user_submission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_submission` (
  `Submission_id` int(11) NOT NULL AUTO_INCREMENT,
  `Submission_date` datetime NOT NULL,
  `Submission_amount` int(10) DEFAULT NULL,
  `Submission_To` varchar(45) DEFAULT NULL,
  `student_Id` decimal(10,0) NOT NULL,
  PRIMARY KEY (`Submission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_submission`
--

LOCK TABLES `user_submission` WRITE;
/*!40000 ALTER TABLE `user_submission` DISABLE KEYS */;
INSERT INTO `user_submission` VALUES (1,'2018-01-05 18:00:00',500,'ALK',12346),(2,'2018-05-08 08:00:00',500,'ALB',12346),(3,'2018-01-09 15:00:00',1000,'ALK',12347),(4,'2018-02-08 10:00:00',100,'ALB',12345);
/*!40000 ALTER TABLE `user_submission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'hu_sprint'
--

--
-- Dumping routines for database 'hu_sprint'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-27 20:59:01
