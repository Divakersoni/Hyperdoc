-- MySQL dump 10.13  Distrib 5.5.49, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: hyperdoc
-- ------------------------------------------------------
-- Server version	5.5.49-0ubuntu0.12.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `group_id_refs_id_f4b32aac` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_6ba0f519` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_d043b34a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add book service',7,'add_bookservice'),(20,'Can change book service',7,'change_bookservice'),(21,'Can delete book service',7,'delete_bookservice'),(22,'Can add contact',8,'add_contact'),(23,'Can change contact',8,'change_contact'),(24,'Can delete contact',8,'delete_contact'),(25,'Can add talk',9,'add_talk'),(26,'Can change talk',9,'change_talk'),(27,'Can delete talk',9,'delete_talk'),(28,'Can add social',10,'add_social'),(29,'Can change social',10,'change_social'),(30,'Can delete social',10,'delete_social'),(31,'Can add register',11,'add_register'),(32,'Can change register',11,'change_register'),(33,'Can delete register',11,'delete_register'),(34,'Can add about',12,'add_about'),(35,'Can change about',12,'change_about'),(36,'Can delete about',12,'delete_about'),(37,'Can add country',13,'add_country'),(38,'Can change country',13,'change_country'),(39,'Can delete country',13,'delete_country'),(40,'Can add state',14,'add_state'),(41,'Can change state',14,'change_state'),(42,'Can delete state',14,'delete_state'),(43,'Can add city',15,'add_city'),(44,'Can change city',15,'change_city'),(45,'Can delete city',15,'delete_city'),(46,'Can add locality',16,'add_locality'),(47,'Can change locality',16,'change_locality'),(48,'Can delete locality',16,'delete_locality'),(49,'Can add person',17,'add_person'),(50,'Can change person',17,'change_person'),(51,'Can delete person',17,'delete_person'),(52,'Can add specialty',18,'add_specialty'),(53,'Can change specialty',18,'change_specialty'),(54,'Can delete specialty',18,'delete_specialty');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$12000$IMIacSQmxTOb$kpiQ+4sOeajByb2WpPW4tvYOcgEJ3dEZSC+TAeYk0P0=','2017-07-07 03:08:43',1,'hyperdoc','','','hyperdoc@gmail.com',1,1,'2017-07-04 06:36:39');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_6340c63c` (`user_id`),
  KEY `auth_user_groups_5f412f9a` (`group_id`),
  CONSTRAINT `group_id_refs_id_274b862c` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_40c41112` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_35d9ac25` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_4dc23c39` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_bookservice`
--

DROP TABLE IF EXISTS `contacts_bookservice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_bookservice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `phone` varchar(128) NOT NULL,
  `city` varchar(255) NOT NULL,
  `locality` varchar(255) NOT NULL,
  `current_path` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `added_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_bookservice`
--

LOCK TABLES `contacts_bookservice` WRITE;
/*!40000 ALTER TABLE `contacts_bookservice` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_bookservice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_contact`
--

DROP TABLE IF EXISTS `contacts_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(75) NOT NULL,
  `phone` varchar(128) NOT NULL,
  `current_path` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` longtext NOT NULL,
  `added_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_contact`
--

LOCK TABLES `contacts_contact` WRITE;
/*!40000 ALTER TABLE `contacts_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_register`
--

DROP TABLE IF EXISTS `contacts_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(75) NOT NULL,
  `phone` varchar(128) NOT NULL,
  `current_path` varchar(255) NOT NULL,
  `service` varchar(255) DEFAULT NULL,
  `message` longtext NOT NULL,
  `added_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_register`
--

LOCK TABLES `contacts_register` WRITE;
/*!40000 ALTER TABLE `contacts_register` DISABLE KEYS */;
INSERT INTO `contacts_register` VALUES (1,'Save Your Health','healthsaveyour@gmail.com','+919024413466','','BGWE','VFD','2017-07-04 07:11:03'),(2,'Save Your Health','healthsaveyour@gmail.com','+919024413466','','EWFW','VWEVG','2017-07-04 07:11:43');
/*!40000 ALTER TABLE `contacts_register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_social`
--

DROP TABLE IF EXISTS `contacts_social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_social` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_social` varchar(200) DEFAULT NULL,
  `first_url` varchar(200) DEFAULT NULL,
  `second_social` varchar(200) DEFAULT NULL,
  `second_url` varchar(200) DEFAULT NULL,
  `third_social` varchar(200) DEFAULT NULL,
  `third_url` varchar(200) DEFAULT NULL,
  `fourth_social` varchar(200) DEFAULT NULL,
  `fourth_url` varchar(200) DEFAULT NULL,
  `fifth_social` varchar(200) DEFAULT NULL,
  `fifth_url` varchar(200) DEFAULT NULL,
  `sixth_social` varchar(200) DEFAULT NULL,
  `sixth_url` varchar(200) DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `added_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_social`
--

LOCK TABLES `contacts_social` WRITE;
/*!40000 ALTER TABLE `contacts_social` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_social` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_talk`
--

DROP TABLE IF EXISTS `contacts_talk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_talk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(75) NOT NULL,
  `phone` varchar(128) NOT NULL,
  `current_path` varchar(255) NOT NULL,
  `added_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_talk`
--

LOCK TABLES `contacts_talk` WRITE;
/*!40000 ALTER TABLE `contacts_talk` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_talk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_93d2d1f8` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c0d12874` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-07-07 03:09:17',1,13,'1','India',1,''),(2,'2017-07-07 03:09:42',1,14,'1','Rajasthan',1,''),(3,'2017-07-07 03:10:03',1,15,'1','Jaipur',1,''),(4,'2017-07-07 03:10:20',1,16,'1','fdewdf',1,''),(5,'2017-07-07 03:10:40',1,18,'1','Phy',1,''),(6,'2017-07-07 03:11:43',1,17,'1','Dr. Raghunandan Naswaria (Active)',1,'');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'log entry','admin','logentry'),(2,'permission','auth','permission'),(3,'group','auth','group'),(4,'user','auth','user'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(7,'book service','contacts','bookservice'),(8,'contact','contacts','contact'),(9,'talk','contacts','talk'),(10,'social','contacts','social'),(11,'register','contacts','register'),(12,'about','homes','about'),(13,'country','locations','country'),(14,'state','locations','state'),(15,'city','locations','city'),(16,'locality','locations','locality'),(17,'person','persons','person'),(18,'specialty','specialities','specialty');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('fwkdqehkhhpgulh54wbad2y0rzt40vu4','Y2E2MTU0OTZmMjI2MzA3OGY5YzIyMDkzMmQyYzkzZmIxYmQ2Y2ExMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2017-07-21 03:08:43');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homes_about`
--

DROP TABLE IF EXISTS `homes_about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `homes_about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `short_desc` longtext NOT NULL,
  `about` longtext NOT NULL,
  `image_url` varchar(200) NOT NULL,
  `mission` longtext NOT NULL,
  `vision` longtext NOT NULL,
  `helps` longtext NOT NULL,
  `score` smallint(5) unsigned NOT NULL,
  `status` smallint(6) NOT NULL,
  `added_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homes_about`
--

LOCK TABLES `homes_about` WRITE;
/*!40000 ALTER TABLE `homes_about` DISABLE KEYS */;
/*!40000 ALTER TABLE `homes_about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations_city`
--

DROP TABLE IF EXISTS `locations_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `tag` varchar(200) DEFAULT NULL,
  `image_url` varchar(200) NOT NULL,
  `city_score` smallint(5) unsigned NOT NULL,
  `status` smallint(6) NOT NULL,
  `added_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `locations_city_d860be3c` (`country_id`),
  KEY `locations_city_5654bf12` (`state_id`),
  CONSTRAINT `country_id_refs_id_fdfe7072` FOREIGN KEY (`country_id`) REFERENCES `locations_country` (`id`),
  CONSTRAINT `state_id_refs_id_10cec7a9` FOREIGN KEY (`state_id`) REFERENCES `locations_state` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations_city`
--

LOCK TABLES `locations_city` WRITE;
/*!40000 ALTER TABLE `locations_city` DISABLE KEYS */;
INSERT INTO `locations_city` VALUES (1,1,1,'Jaipur','','',0,1,'2017-07-07 00:00:00');
/*!40000 ALTER TABLE `locations_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations_country`
--

DROP TABLE IF EXISTS `locations_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `tag` varchar(200) NOT NULL,
  `image_url` varchar(200) NOT NULL,
  `logo_url` varchar(200) NOT NULL,
  `country_score` smallint(5) unsigned NOT NULL,
  `status` smallint(6) NOT NULL,
  `added_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations_country`
--

LOCK TABLES `locations_country` WRITE;
/*!40000 ALTER TABLE `locations_country` DISABLE KEYS */;
INSERT INTO `locations_country` VALUES (1,'India','efef','fw','ef',0,1,'2017-07-07 08:39:09');
/*!40000 ALTER TABLE `locations_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations_locality`
--

DROP TABLE IF EXISTS `locations_locality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations_locality` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `tag` varchar(200) DEFAULT NULL,
  `image_url` varchar(200) NOT NULL,
  `locality_score` smallint(5) unsigned NOT NULL,
  `status` smallint(6) NOT NULL,
  `added_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `locations_locality_d860be3c` (`country_id`),
  KEY `locations_locality_5654bf12` (`state_id`),
  KEY `locations_locality_b376980e` (`city_id`),
  CONSTRAINT `city_id_refs_id_66f45f8a` FOREIGN KEY (`city_id`) REFERENCES `locations_city` (`id`),
  CONSTRAINT `country_id_refs_id_cc20b748` FOREIGN KEY (`country_id`) REFERENCES `locations_country` (`id`),
  CONSTRAINT `state_id_refs_id_78695655` FOREIGN KEY (`state_id`) REFERENCES `locations_state` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations_locality`
--

LOCK TABLES `locations_locality` WRITE;
/*!40000 ALTER TABLE `locations_locality` DISABLE KEYS */;
INSERT INTO `locations_locality` VALUES (1,1,1,1,'fdewdf','','',0,1,'2017-07-17 08:40:19');
/*!40000 ALTER TABLE `locations_locality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations_state`
--

DROP TABLE IF EXISTS `locations_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `tag` varchar(200) DEFAULT NULL,
  `image_url` varchar(200) NOT NULL,
  `state_score` smallint(5) unsigned NOT NULL,
  `status` smallint(6) NOT NULL,
  `added_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `locations_state_d860be3c` (`country_id`),
  CONSTRAINT `country_id_refs_id_a06711b1` FOREIGN KEY (`country_id`) REFERENCES `locations_country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations_state`
--

LOCK TABLES `locations_state` WRITE;
/*!40000 ALTER TABLE `locations_state` DISABLE KEYS */;
INSERT INTO `locations_state` VALUES (1,1,'Rajasthan','','',0,1,'2017-07-07 08:39:41');
/*!40000 ALTER TABLE `locations_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persons_person`
--

DROP TABLE IF EXISTS `persons_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persons_person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `locality_id` int(11) NOT NULL,
  `type` smallint(6) NOT NULL,
  `specialist_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `tag` varchar(100) NOT NULL,
  `degree` varchar(200) NOT NULL,
  `service` varchar(200) NOT NULL,
  `consultation_fee` int(10) unsigned NOT NULL,
  `consultation_off` int(10) unsigned NOT NULL,
  `consultation_actual` int(10) unsigned NOT NULL,
  `appointment_fee` int(10) unsigned NOT NULL,
  `appointment_off` int(10) unsigned NOT NULL,
  `appointment_actual` int(10) unsigned NOT NULL,
  `language` varchar(200) NOT NULL,
  `position` varchar(200) NOT NULL,
  `working` varchar(200) NOT NULL,
  `institutes` varchar(200) NOT NULL,
  `experience` int(10) unsigned NOT NULL,
  `about` longtext,
  `timing` longtext,
  `image_url` varchar(200) NOT NULL,
  `email` varchar(75) NOT NULL,
  `phone` varchar(128) NOT NULL,
  `address` longtext NOT NULL,
  `person_score` smallint(5) unsigned NOT NULL,
  `first_social` varchar(200) DEFAULT NULL,
  `second_social` varchar(200) DEFAULT NULL,
  `third_social` varchar(200) DEFAULT NULL,
  `fourth_social` varchar(200) DEFAULT NULL,
  `fifth_social` varchar(200) DEFAULT NULL,
  `video_url` varchar(200) NOT NULL,
  `map_url` varchar(200) NOT NULL,
  `status` smallint(6) NOT NULL,
  `added_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `persons_person_d860be3c` (`country_id`),
  KEY `persons_person_5654bf12` (`state_id`),
  KEY `persons_person_b376980e` (`city_id`),
  KEY `persons_person_0f50bb3a` (`locality_id`),
  KEY `persons_person_10a31840` (`specialist_id`),
  CONSTRAINT `city_id_refs_id_c4ada900` FOREIGN KEY (`city_id`) REFERENCES `locations_city` (`id`),
  CONSTRAINT `country_id_refs_id_48603751` FOREIGN KEY (`country_id`) REFERENCES `locations_country` (`id`),
  CONSTRAINT `locality_id_refs_id_d363d2e3` FOREIGN KEY (`locality_id`) REFERENCES `locations_locality` (`id`),
  CONSTRAINT `specialist_id_refs_id_d604e76f` FOREIGN KEY (`specialist_id`) REFERENCES `specialities_specialty` (`id`),
  CONSTRAINT `state_id_refs_id_2b647f51` FOREIGN KEY (`state_id`) REFERENCES `locations_state` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persons_person`
--

LOCK TABLES `persons_person` WRITE;
/*!40000 ALTER TABLE `persons_person` DISABLE KEYS */;
INSERT INTO `persons_person` VALUES (1,1,1,1,1,5,1,'Dr. Raghunandan Naswaria','dr-raghunandan-naswaria','MBBS, PG, NURSING','ef',0,0,0,0,0,0,'','','','',0,'','','','healthsaveyour@gmail.com','+919024413466','4A, Bajrang Colony, Jagatpura, Jaipur­ 302017, Rajasthan, India',0,'','','','','','','',1,'2017-07-26 08:41:42');
/*!40000 ALTER TABLE `persons_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specialities_specialty`
--

DROP TABLE IF EXISTS `specialities_specialty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specialities_specialty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `tag` varchar(100) NOT NULL,
  `about` longtext,
  `image_url` varchar(200) NOT NULL,
  `specialty_score` smallint(5) unsigned NOT NULL,
  `status` smallint(6) NOT NULL,
  `added_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialities_specialty`
--

LOCK TABLES `specialities_specialty` WRITE;
/*!40000 ALTER TABLE `specialities_specialty` DISABLE KEYS */;
INSERT INTO `specialities_specialty` VALUES (1,'Phy','edfe','','',0,1,'2017-07-07 08:40:36');
/*!40000 ALTER TABLE `specialities_specialty` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-07 13:12:09
