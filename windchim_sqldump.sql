-- MySQL dump 10.13  Distrib 5.6.13, for Win64 (x86_64)
--
-- Host: localhost    Database: windchimp
-- ------------------------------------------------------
-- Server version	5.5.15

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
-- Table structure for table `banner_slider_master`
--

DROP TABLE IF EXISTS `banner_slider_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banner_slider_master` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `banner_id` varchar(45) NOT NULL,
  `banner_name` varchar(45) DEFAULT NULL,
  `banner_link` varchar(500) DEFAULT NULL,
  `location` varchar(1000) DEFAULT NULL,
  `discription` varchar(1000) DEFAULT NULL,
  `others` varchar(1000) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_dt` timestamp NULL DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `modified_dt` timestamp NULL DEFAULT NULL,
  `del_flag` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `org_id_UNIQUE` (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner_slider_master`
--

LOCK TABLES `banner_slider_master` WRITE;
/*!40000 ALTER TABLE `banner_slider_master` DISABLE KEYS */;
INSERT INTO `banner_slider_master` VALUES (1,'windchim_1','banner1','http://192.168.0.237:8090/windchim/ImageHandlerServlet?entity=slider&img=1.jpg','Lucknow','windchim school','www.windchimeseducation.com','SYSTEM','2017-01-22 18:30:00',NULL,NULL,'F'),(2,'windchim_2','banner2','http://192.168.0.237:8090/windchim/ImageHandlerServlet?entity=slider&img=2.jpg','Lucknow','windchim school','www.windchimeseducation.com','SYSTEM','2017-01-22 18:30:00',NULL,NULL,'F'),(3,'windchim_3','banner3','http://192.168.0.237:8090/windchim/ImageHandlerServlet?entity=slider&img=3.jpg','Lucknow','windchim school','www.windchimeseducation.com','SYSTEM','2017-01-22 18:30:00',NULL,NULL,'F'),(4,'windchim_4','banner4','http://192.168.0.237:8090/windchim/ImageHandlerServlet?entity=slider&img=4.jpg','Lucknow','windchim school','www.windchimeseducation.com','SYSTEM','2017-01-22 18:30:00',NULL,NULL,'F');
/*!40000 ALTER TABLE `banner_slider_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch_master`
--

DROP TABLE IF EXISTS `branch_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branch_master` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `branch_id` varchar(4) NOT NULL,
  `branch_address` varchar(200) DEFAULT NULL,
  `latitude` varchar(45) DEFAULT NULL,
  `longitude` varchar(45) DEFAULT NULL,
  `branch_type` varchar(45) DEFAULT NULL,
  `mobile_no` varchar(15) DEFAULT NULL,
  `email_id` varchar(100) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_dt` timestamp NULL DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `modified_dt` timestamp NULL DEFAULT NULL,
  `del_flag` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `branch_id_UNIQUE` (`branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch_master`
--

LOCK TABLES `branch_master` WRITE;
/*!40000 ALTER TABLE `branch_master` DISABLE KEYS */;
INSERT INTO `branch_master` VALUES (1,'1','B1/244 Sec G,Jankipuram, Luknow',NULL,NULL,'Head Branch','8400512444','info@windchimeseducation.com','SYSTEM','2017-03-03 07:59:04','SYSTEM','2017-03-03 07:59:04','F'),(2,'2','House no-133, Sec-8B,Vrindavan Yojna-2,Near Shaheed Path, Lucknow',NULL,NULL,'Franchisee Office','7880670854','info@windchimeseducation.com','SYSTEM','2017-03-03 07:59:04','SYSTEM','2017-03-03 07:59:04','F'),(3,'3','C133, Sec G, in front of Multu Activity Park,Near Zonal Park, Lda Road, Lucknow',NULL,NULL,'Franchisee Office','91701411111','info@windchimeseducation.com','SYSTEM','2017-03-03 07:59:04','SYSTEM','2017-03-03 07:59:04','F'),(4,'4','1284, Sector 6,Bahadurgarh - 124507 Haryana',NULL,NULL,'Franchisee Office','9215155333','info@windchimeseducation.com','SYSTEM','2017-03-03 07:59:04','SYSTEM','2017-03-03 07:59:04','F');
/*!40000 ALTER TABLE `branch_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `broadcast_topic_master`
--

DROP TABLE IF EXISTS `broadcast_topic_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `broadcast_topic_master` (
  `id` varchar(255) NOT NULL,
  `broadcast_id` varchar(255) NOT NULL,
  `broadcast_topic_name` varchar(255) NOT NULL,
  `broadcast_topic` varchar(255) NOT NULL,
  `broadcast_topic_discription` varchar(255) DEFAULT NULL,
  `others` varchar(255) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL,
  `del_flag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `org_id_UNIQUE` (`broadcast_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `broadcast_topic_master`
--

LOCK TABLES `broadcast_topic_master` WRITE;
/*!40000 ALTER TABLE `broadcast_topic_master` DISABLE KEYS */;
INSERT INTO `broadcast_topic_master` VALUES ('1','1','General Broadcast','/topics/general','General broadcast',NULL,'2017-03-03 13:29:04','SYSTEM','SYSTEM','2017-03-03 13:29:04','F'),('2','2','Promotional Broadcast','/topics/promotion','Promotion broadcast',NULL,'2017-03-03 13:29:04','SYSTEM','SYSTEM','2017-03-03 13:29:04','F'),('3','3','Event Broadcast','/topics/event','Event broadcast',NULL,'2017-03-03 13:29:04','SYSTEM','SYSTEM','2017-03-03 13:29:04','F');
/*!40000 ALTER TABLE `broadcast_topic_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `connect_master`
--

DROP TABLE IF EXISTS `connect_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `connect_master` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email_id` varchar(45) DEFAULT NULL,
  `mobile_no` varchar(500) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_dt` timestamp NULL DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `modified_dt` timestamp NULL DEFAULT NULL,
  `del_flag` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `connect_master`
--

LOCK TABLES `connect_master` WRITE;
/*!40000 ALTER TABLE `connect_master` DISABLE KEYS */;
INSERT INTO `connect_master` VALUES (8,'1485933486777','info.paalan@gmail.com','8828228072','nice to have paalan','SYSTEM','2017-03-05 13:40:08','SYSTEM','2017-03-05 13:40:08','F');
/*!40000 ALTER TABLE `connect_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_details_master`
--

DROP TABLE IF EXISTS `device_details_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device_details_master` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `imei_no` varchar(30) NOT NULL,
  `device_id` varchar(255) DEFAULT NULL,
  `device_model` varchar(255) DEFAULT NULL,
  `notification_id` varchar(255) DEFAULT NULL,
  `os_version` varchar(255) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_dt` timestamp NULL DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `modified_dt` timestamp NULL DEFAULT NULL,
  `del_flag` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_device_id_UNIQUE` (`device_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_details_master`
--

LOCK TABLES `device_details_master` WRITE;
/*!40000 ALTER TABLE `device_details_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_details_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_master`
--

DROP TABLE IF EXISTS `event_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_master` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `event_id` varchar(45) DEFAULT NULL,
  `event_title` varchar(45) DEFAULT NULL,
  `event_sub_title` varchar(1000) DEFAULT NULL,
  `event_category` varchar(1000) DEFAULT NULL,
  `event_discription` varchar(1000) DEFAULT NULL,
  `event_startdt` timestamp NULL DEFAULT NULL,
  `event_enddt` timestamp NULL DEFAULT NULL,
  `event_location` varchar(2000) DEFAULT NULL,
  `event_img1` varchar(500) DEFAULT NULL,
  `event_img2` varchar(500) DEFAULT NULL,
  `event_img3` varchar(500) DEFAULT NULL,
  `event_img4` varchar(500) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_dt` timestamp NULL DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `modified_dt` timestamp NULL DEFAULT NULL,
  `del_flag` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `event_id_UNIQUE` (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_master`
--

LOCK TABLES `event_master` WRITE;
/*!40000 ALTER TABLE `event_master` DISABLE KEYS */;
INSERT INTO `event_master` VALUES (1,'1','Mothers day','Celebration at lucknow branch','Ethnic','Mother\'s day','2017-03-03 07:59:04','2017-03-03 12:59:04','Lucknow branch','http://192.168.0.237:8090/windchim/ImageHandlerServlet?entity=slider&img=1.jpg','http://192.168.0.237:8090/windchim/ImageHandlerServlet?entity=slider&img=1.jpg','http://192.168.0.237:8090/windchim/ImageHandlerServlet?entity=slider&img=1.jpg','http://192.168.0.237:8090/windchim/ImageHandlerServlet?entity=slider&img=1.jpg','SYSTEM','2017-03-03 07:59:04','SYSTEM','2017-03-03 07:59:04','F'),(2,'2','Father\'s day','Celebration at lucknow branch','Ethnic','Father\'s day','2017-03-07 07:59:04','2017-03-07 12:59:04','Lucknow branch','http://192.168.0.237:8090/windchim/ImageHandlerServlet?entity=slider&img=1.jpg','http://192.168.0.237:8090/windchim/ImageHandlerServlet?entity=slider&img=1.jpg','http://192.168.0.237:8090/windchim/ImageHandlerServlet?entity=slider&img=1.jpg','http://192.168.0.237:8090/windchim/ImageHandlerServlet?entity=slider&img=1.jpg','SYSTEM','2017-03-03 07:59:04','SYSTEM','2017-03-03 07:59:04','F');
/*!40000 ALTER TABLE `event_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_broadcast_master`
--

DROP TABLE IF EXISTS `student_broadcast_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_broadcast_master` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `enrollment_id` varchar(45) NOT NULL,
  `branch_id` varchar(45) DEFAULT NULL,
  `class_name` varchar(500) DEFAULT NULL,
  `imei_no` varchar(1000) DEFAULT NULL,
  `device_id` varchar(1000) DEFAULT NULL,
  `notification_id` varchar(1000) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_dt` timestamp NULL DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `modified_dt` timestamp NULL DEFAULT NULL,
  `del_flag` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `windchimp_student_notifi_uni_key` (`enrollment_id`,`branch_id`,`class_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_broadcast_master`
--

LOCK TABLES `student_broadcast_master` WRITE;
/*!40000 ALTER TABLE `student_broadcast_master` DISABLE KEYS */;
INSERT INTO `student_broadcast_master` VALUES (1,'WCPS306','1','PG','','7c6e7e6acd3eb403','ez5TOtg13cQ:APA91bFNOlMlOp44gh1-5c0sM5NXezZwd5_OrsgzeTk4k0wDv8A_7o8vNIaTJgxwZjMa2N_7rOP7JF42dvnBBQboXJZvtb2P9wi-fLnF6Xxfvr58LiqQutc7AgfUD60jlx9BMb6CSM1A','SYSTEM','2017-03-19 09:18:56','SYSTEM','2017-03-19 12:47:40','F');
/*!40000 ALTER TABLE `student_broadcast_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_homework_master`
--

DROP TABLE IF EXISTS `student_homework_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_homework_master` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `homework_id` varchar(45) NOT NULL,
  `branch_id` varchar(5) DEFAULT NULL,
  `class_name` varchar(5) DEFAULT NULL,
  `homework_dt` timestamp NULL DEFAULT NULL,
  `homework_discription` varchar(2000) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_dt` timestamp NULL DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `modified_dt` timestamp NULL DEFAULT NULL,
  `del_flag` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `windchimp_student_homework_uni_key` (`homework_id`,`branch_id`,`class_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_homework_master`
--

LOCK TABLES `student_homework_master` WRITE;
/*!40000 ALTER TABLE `student_homework_master` DISABLE KEYS */;
INSERT INTO `student_homework_master` VALUES (1,'PG_1','1','PG','2017-03-03 07:59:04','Solve two puzzles, do homework of english','SYSTEM','2017-03-03 07:59:04',NULL,NULL,'F');
/*!40000 ALTER TABLE `student_homework_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_profile_master`
--

DROP TABLE IF EXISTS `student_profile_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_profile_master` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `enrollment_id` varchar(45) NOT NULL,
  `branch_id` varchar(5) DEFAULT NULL,
  `class_name` varchar(5) DEFAULT NULL,
  `father_no` varchar(10) DEFAULT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `mother_no` varchar(10) DEFAULT NULL,
  `mother_name` varchar(100) DEFAULT NULL,
  `joining_dt` timestamp NULL DEFAULT NULL,
  `birth_dt` timestamp NULL DEFAULT NULL,
  `permanent_address` varchar(500) DEFAULT NULL,
  `temp_address` varchar(500) DEFAULT NULL,
  `is_day_boarding` varchar(2) DEFAULT NULL,
  `is_van` varchar(2) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_dt` timestamp NULL DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `modified_dt` timestamp NULL DEFAULT NULL,
  `del_flag` varchar(2) DEFAULT NULL,
  `student_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `windchimp_student_profile_uni_key` (`enrollment_id`,`branch_id`,`class_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_profile_master`
--

LOCK TABLES `student_profile_master` WRITE;
/*!40000 ALTER TABLE `student_profile_master` DISABLE KEYS */;
INSERT INTO `student_profile_master` VALUES (1,'WCPS306','1','PG','7709642004','RAMAN','7709642004','RAMAN','2017-03-03 07:59:04','2017-03-03 07:59:04','Mumbai',NULL,'Y','Y','system','2017-03-03 07:59:04','system','2017-03-03 07:59:04','F','raman');
/*!40000 ALTER TABLE `student_profile_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_register_master`
--

DROP TABLE IF EXISTS `student_register_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_register_master` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `enrollment_id` varchar(45) NOT NULL,
  `branch_id` varchar(45) DEFAULT NULL,
  `class_name` varchar(500) DEFAULT NULL,
  `father_no` varchar(1000) DEFAULT NULL,
  `discription` varchar(1000) DEFAULT NULL,
  `mother_no` varchar(1000) DEFAULT NULL,
  `password` varchar(1000) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_dt` timestamp NULL DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `modified_dt` timestamp NULL DEFAULT NULL,
  `del_flag` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `windchimp_reg_uni_key` (`enrollment_id`,`branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_register_master`
--

LOCK TABLES `student_register_master` WRITE;
/*!40000 ALTER TABLE `student_register_master` DISABLE KEYS */;
INSERT INTO `student_register_master` VALUES (1,'WCPS306','1','PG','9792972333','','9792972333',NULL,'SYSTEM','2017-03-03 07:59:04',NULL,'2017-03-03 07:59:04','F'),(2,'WCPS318','1','PN','9792972333',NULL,'9792972333',NULL,'SYSTEM','2017-03-03 07:59:04',NULL,'2017-03-03 07:59:04','F'),(3,'windchimes2017','1',NULL,NULL,NULL,NULL,'admin123','SYSTEM','2017-03-03 07:59:04',NULL,'2017-03-03 07:59:04','F');
/*!40000 ALTER TABLE `student_register_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_master`
--

DROP TABLE IF EXISTS `survey_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_master` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email_id` varchar(45) DEFAULT NULL,
  `mobile_no` varchar(12) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `child_name` varchar(100) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_dt` timestamp NULL DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `modified_dt` timestamp NULL DEFAULT NULL,
  `del_flag` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_master`
--

LOCK TABLES `survey_master` WRITE;
/*!40000 ALTER TABLE `survey_master` DISABLE KEYS */;
INSERT INTO `survey_master` VALUES (9,'raman gupta','info.paalan@gmail.com','8828228072','nice to have paalan','abahy gupta','412-413, Palm spring, malad west','SYSTEM','2017-03-19 10:57:41','SYSTEM','2017-03-19 10:57:41','F');
/*!40000 ALTER TABLE `survey_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `welcome_screen_master`
--

DROP TABLE IF EXISTS `welcome_screen_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `welcome_screen_master` (
  `id` varchar(255) NOT NULL,
  `screen_id` varchar(255) DEFAULT NULL,
  `screen_name` varchar(255) DEFAULT NULL,
  `screen_text` varchar(255) DEFAULT NULL,
  `screen_img_link` varchar(255) DEFAULT NULL,
  `screen_seq` varchar(255) DEFAULT NULL,
  `text1` varchar(255) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL,
  `del_flag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `welcome_screen_master`
--

LOCK TABLES `welcome_screen_master` WRITE;
/*!40000 ALTER TABLE `welcome_screen_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `welcome_screen_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-22 23:15:57
