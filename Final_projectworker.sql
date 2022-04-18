-- MySQL dump 10.13  Distrib 5.7.12, for osx10.9 (x86_64)
--
-- Host: localhost    Database: IS445_practice1
-- ------------------------------------------------------
-- Server version	5.7.14

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
-- Table structure for table `project_worker`
--

DROP TABLE IF EXISTS `project_worker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_worker` (
  `project_id` text,
  `worker_id` text,
  `joindate` date DEFAULT NULL,
  `leavedate` date DEFAULT NULL,
  `performance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_worker`
--

LOCK TABLES `project_worker` WRITE;
/*!40000 ALTER TABLE `project_worker` DISABLE KEYS */;
INSERT INTO `project_worker` VALUES ('p1','w01','2001-01-01','2001-01-10',10),('p1','w01','2006-01-10','2009-01-01',5),('p1','w02','2004-01-01','2006-01-10',4),('p1','w03','2002-01-01','2006-03-03',7),('p2','w05','1999-05-05','2004-05-25',9),('p2','w12','2000-04-03','2004-04-04',2),('p4','w03','1996-03-04','1999-04-04',3),('p4','w03','2000-06-06','2009-07-07',2),('p4','w06','1997-06-06','2008-06-06',5),('p4','w07','2004-07-07','2009-08-08',7),('p5','w01','2006-04-05','2008-06-06',7),('p5','w08','2006-11-11','2007-11-11',9),('p5','w09','2006-11-10','2008-11-10',5),('p5','w10','2007-05-05','2007-06-07',2),('p5','w12','2006-06-07','2007-08-09',5);
/*!40000 ALTER TABLE `project_worker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `project_id` text,
  `project_name` text,
  `capacity` int(11) DEFAULT NULL,
  `startdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES ('p1','aa',5,'2000-01-01'),('p2','bb',4,'1999-05-01'),('p3','cc',5,'2003-11-12'),('p4','dd',2,'1995-01-27'),('p5','ee',7,'2005-11-11'),('p6','ff',6,'2009-11-11');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workers`
--

DROP TABLE IF EXISTS `workers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workers` (
  `Worker_id` text,
  `Worker_name` text,
  `Gender` text,
  `CompanyJoindate` date DEFAULT NULL,
  `Birthdate` date DEFAULT NULL,
  `Birthcity` text,
  `supervisor_id` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workers`
--

LOCK TABLES `workers` WRITE;
/*!40000 ALTER TABLE `workers` DISABLE KEYS */;
INSERT INTO `workers` VALUES ('w01','mx','m','1995-05-17','1980-01-01','Austin','w04'),('w02','red','f','2003-02-18','1970-09-01','Pittsburgh','w04'),('w03','fed','m','1994-03-11','1975-02-23','Boston','w04'),('w04','gain','m','2005-05-05','1975-08-16','Los Angeles','w05'),('w05','meo','m','1998-05-15','1978-11-12','New York','w12'),('w06','mao','m','1997-05-03','1989-12-12','New York','w04'),('w07','polly','f','2002-05-03','1978-11-14','San Francisco','w03'),('w08','max','m','2006-05-26','1981-01-04','Seattle','w02'),('w09','drudge','f','2002-09-04','1976-12-07','Los Angeles','w01'),('w10','max','f','2007-05-04','1980-01-01','Denver','w09'),('w11','fed','m','2012-05-02','1975-01-02','Anaheim','w12'),('w12','bull','f','2005-08-11','1989-12-12','Denver',NULL);
/*!40000 ALTER TABLE `workers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-05  8:35:29
