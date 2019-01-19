-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: handykrew
-- ------------------------------------------------------
-- Server version	5.7.14-log

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `address_no` int(11) NOT NULL AUTO_INCREMENT,
  `address_line1` varchar(45) NOT NULL,
  `address_line2` varchar(45) NOT NULL,
  `city_no` int(11) NOT NULL,
  `state_no` int(11) NOT NULL,
  `zip` int(11) NOT NULL,
  `country` varchar(15) NOT NULL,
  `created_by` varchar(25) NOT NULL,
  `created_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_modified_by` varchar(25) NOT NULL,
  `last_modified_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`address_no`),
  KEY `ADDRESS_CITY_NO_idx` (`city_no`),
  KEY `ADDRESS_STATE_NO_idx` (`state_no`),
  CONSTRAINT `ADDRESS_CITY_NO_FK` FOREIGN KEY (`city_no`) REFERENCES `cities` (`city_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ADDRESS_STATE_NO_FK` FOREIGN KEY (`state_no`) REFERENCES `state` (`state_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `city_no` int(11) NOT NULL AUTO_INCREMENT,
  `city_nm` varchar(25) NOT NULL,
  `status` bit(1) NOT NULL,
  `created_by` varchar(25) NOT NULL,
  `created_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_modified_by` varchar(25) NOT NULL,
  `last_modified_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`city_no`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'warangal','','ravi','2018-09-03 18:30:00','ravi','2018-09-03 18:30:00'),(2,'warangal','','ravi','2018-09-03 18:30:00','ravi','2018-09-03 18:30:00'),(3,'warangal','','ravi','2018-09-03 18:30:00','ravi','2018-09-03 18:30:00');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csr_and_technician_details`
--

DROP TABLE IF EXISTS `csr_and_technician_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csr_and_technician_details` (
  `user_account_no` int(11) NOT NULL,
  `alt_mobile_no` varchar(11) NOT NULL,
  `alt_email_address` varchar(25) NOT NULL,
  `alt_contact_address_no` int(11) DEFAULT NULL,
  `experience` int(11) NOT NULL,
  `designation_no` int(11) NOT NULL,
  `unique_identification_type` varchar(15) NOT NULL,
  `unique_identification_data` varchar(15) NOT NULL,
  `gender` bit(1) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `created_by` varchar(25) NOT NULL,
  `created_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_modified_by` varchar(25) NOT NULL,
  `last_modified_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`user_account_no`),
  UNIQUE KEY `alt_email_address_UNIQUE` (`alt_email_address`),
  KEY `ALT_CONTACT_ADDRESS_NO_FK_idx` (`alt_contact_address_no`),
  KEY `DESIGNATION_NO_idx` (`designation_no`),
  CONSTRAINT `CSR_AND_TECHNICIAN_DETAILS_ALT_CONTACT_ADDRESS_NO_FK` FOREIGN KEY (`alt_contact_address_no`) REFERENCES `address` (`address_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `CSR_AND_TECHNICIAN_DETAILS_DESIGNATION_NO` FOREIGN KEY (`designation_no`) REFERENCES `designation` (`designation_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `CSR_AND_TECHNICIAN_DETAILS_USER_ACCOUNT_NO_FK` FOREIGN KEY (`user_account_no`) REFERENCES `user_account` (`user_account_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csr_and_technician_details`
--

LOCK TABLES `csr_and_technician_details` WRITE;
/*!40000 ALTER TABLE `csr_and_technician_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `csr_and_technician_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `designation`
--

DROP TABLE IF EXISTS `designation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `designation` (
  `designation_no` int(11) NOT NULL AUTO_INCREMENT,
  `designation_nm` varchar(25) NOT NULL,
  `role_no` int(11) NOT NULL,
  `description` varchar(45) NOT NULL,
  `created_by` varchar(25) NOT NULL,
  `created_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_modified_by` varchar(25) NOT NULL,
  `last_modified_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`designation_no`),
  KEY `DESIGNATION_ROLE_NO_FK_idx` (`role_no`),
  CONSTRAINT `DESIGNATION_ROLE_NO_FK` FOREIGN KEY (`role_no`) REFERENCES `role` (`role_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `designation`
--

LOCK TABLES `designation` WRITE;
/*!40000 ALTER TABLE `designation` DISABLE KEYS */;
/*!40000 ALTER TABLE `designation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `role_no` int(11) NOT NULL AUTO_INCREMENT,
  `role_nm` varchar(10) NOT NULL,
  `description` varchar(45) NOT NULL,
  `created_by` varchar(25) NOT NULL,
  `created_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_modified_by` varchar(25) NOT NULL,
  `last_modified_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`role_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service` (
  `service_no` int(11) NOT NULL AUTO_INCREMENT,
  `service_name` varchar(45) NOT NULL,
  `description` varchar(75) NOT NULL,
  `service_logo_bytes` blob NOT NULL,
  `service_logo_type` varchar(10) NOT NULL,
  `status` bit(1) NOT NULL,
  `created_by` varchar(25) NOT NULL,
  `created_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_modified_by` varchar(25) NOT NULL,
  `last_modified_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`service_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_categories`
--

DROP TABLE IF EXISTS `service_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_categories` (
  `category_no` int(11) NOT NULL AUTO_INCREMENT,
  `category_nm` varchar(45) NOT NULL,
  `description` varchar(75) NOT NULL,
  `category_logo_bytes` blob NOT NULL,
  `category_logo_type` varchar(10) NOT NULL,
  `fixed_charges` double NOT NULL,
  `required_inspection` bit(1) NOT NULL,
  `inspection_charges` double NOT NULL,
  `is_emergency_service` bit(1) NOT NULL,
  `average_resolution_time` time NOT NULL,
  `warranty_in_days` int(11) DEFAULT NULL,
  `service_no` int(11) NOT NULL,
  `created_by` varchar(25) NOT NULL,
  `created_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_modified_by` varchar(25) NOT NULL,
  `last_modified_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`category_no`),
  KEY `SERVICE_CATEGORIES_SERVICE_NO_idx` (`service_no`),
  CONSTRAINT `SERVICE_CATEGORIES_SERVICE_NO` FOREIGN KEY (`service_no`) REFERENCES `service` (`service_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_categories`
--

LOCK TABLES `service_categories` WRITE;
/*!40000 ALTER TABLE `service_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_category_fields`
--

DROP TABLE IF EXISTS `service_category_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_category_fields` (
  `service_category_no` int(11) NOT NULL,
  `field_no` int(11) NOT NULL AUTO_INCREMENT,
  `sequence_no` int(11) NOT NULL,
  `field_name` varchar(45) NOT NULL,
  `field_type` varchar(45) NOT NULL,
  `data_type` varchar(45) NOT NULL,
  `required` bit(1) NOT NULL,
  `status` bit(1) NOT NULL,
  `created_by` varchar(25) NOT NULL,
  `created_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_modified_by` varchar(25) NOT NULL,
  `last_modified_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`field_no`),
  UNIQUE KEY `field_name_UNIQUE` (`field_name`),
  UNIQUE KEY `service_category_no_UNIQUE` (`service_category_no`),
  CONSTRAINT `SERVICE_CATEGORY_FIELDS_SERVICE_CATEGORY_FIELD_NO_FK` FOREIGN KEY (`service_category_no`) REFERENCES `service_categories` (`category_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_category_fields`
--

LOCK TABLES `service_category_fields` WRITE;
/*!40000 ALTER TABLE `service_category_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_category_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_category_fields_lov`
--

DROP TABLE IF EXISTS `service_category_fields_lov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_category_fields_lov` (
  `field_no` int(11) NOT NULL,
  `field_lable` varchar(45) NOT NULL,
  `field_value` varchar(45) NOT NULL,
  PRIMARY KEY (`field_no`),
  CONSTRAINT `SERVICE_CATEGORY_FIELDS_LOV_FIELD_NO` FOREIGN KEY (`field_no`) REFERENCES `service_category_fields` (`field_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_category_fields_lov`
--

LOCK TABLES `service_category_fields_lov` WRITE;
/*!40000 ALTER TABLE `service_category_fields_lov` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_category_fields_lov` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_locations`
--

DROP TABLE IF EXISTS `service_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_locations` (
  `service_no` int(11) NOT NULL,
  `city_no` int(11) NOT NULL,
  `status` bit(1) NOT NULL,
  `created_by` varchar(25) NOT NULL,
  `created_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_modified_by` varchar(25) NOT NULL,
  `last_modified_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`service_no`),
  KEY `SERVICE_LOCATIONS_CITY_NO_FK_idx` (`city_no`),
  CONSTRAINT `SERVICE_LOCATIONS_CITY_NO_FK` FOREIGN KEY (`city_no`) REFERENCES `cities` (`city_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `SERVICE_LOCATIONS_SERVICE_NO_FK` FOREIGN KEY (`service_no`) REFERENCES `service` (`service_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_locations`
--

LOCK TABLES `service_locations` WRITE;
/*!40000 ALTER TABLE `service_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_request`
--

DROP TABLE IF EXISTS `service_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_request` (
  `service_request_no` int(11) NOT NULL AUTO_INCREMENT,
  `service_request_date` date NOT NULL,
  `category_no` int(11) NOT NULL,
  `service_request_address_no` int(11) NOT NULL,
  `available_start_hour` time NOT NULL,
  `available_end_hour` time NOT NULL,
  `is_emergency_request` bit(1) NOT NULL,
  `estimated_hours_completion` int(11) DEFAULT NULL,
  `estimated_amount` double NOT NULL,
  `technician_no` int(11) DEFAULT NULL,
  `description` varchar(250) NOT NULL,
  `service_request_completed_date` date DEFAULT NULL,
  `status` int(11) NOT NULL,
  `comments` varchar(250) DEFAULT NULL,
  `contact_no` varchar(11) NOT NULL,
  `user_account_no` int(11) NOT NULL,
  `created_by` varchar(25) NOT NULL,
  `created_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_modified_by` varchar(25) NOT NULL,
  `last_modified_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`service_request_no`),
  KEY `SERVICE_REQUEST_CATEGORY_NO_FK_idx` (`category_no`),
  KEY `SERVICE_REQUEST_SERVICE_REQ_ADDRESS_NO_FK_idx` (`service_request_address_no`),
  KEY `SERVICE_REQUEST_TECHNICIAN_NO_FK_idx` (`technician_no`),
  KEY `SERVICE_REQUEST_USER_ACCOUNT_NO_FK_idx` (`user_account_no`),
  KEY `SERVICE_REQUEST_WORK_ORDER_STATUS_NO_FK_idx` (`status`),
  CONSTRAINT `SERVICE_REQUEST_CATEGORY_NO_FK` FOREIGN KEY (`category_no`) REFERENCES `service_categories` (`category_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `SERVICE_REQUEST_SERVICE_REQ_ADDRESS_NO_FK` FOREIGN KEY (`service_request_address_no`) REFERENCES `address` (`address_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `SERVICE_REQUEST_TECHNICIAN_NO_FK` FOREIGN KEY (`technician_no`) REFERENCES `user_account` (`user_account_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `SERVICE_REQUEST_USER_ACCOUNT_NO_FK` FOREIGN KEY (`user_account_no`) REFERENCES `user_account` (`user_account_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `SERVICE_REQUEST_WORK_ORDER_STATUS_NO_FK` FOREIGN KEY (`status`) REFERENCES `work_order_status` (`work_order_status_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_request`
--

LOCK TABLES `service_request` WRITE;
/*!40000 ALTER TABLE `service_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_request_attachements`
--

DROP TABLE IF EXISTS `service_request_attachements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_request_attachements` (
  `service_request_no` int(11) NOT NULL,
  `attachement_no` int(11) NOT NULL AUTO_INCREMENT,
  `attachement_bytes` blob,
  `attachement_types` varchar(10) DEFAULT NULL,
  `created_by` varchar(25) NOT NULL,
  `created_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_modified_by` varchar(25) NOT NULL,
  `last_modified_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`attachement_no`),
  KEY `SERV_REQ_ATTACHEMENTS_SERV_REQ_NO_FK_idx` (`service_request_no`),
  CONSTRAINT `SERV_REQ_ATTACHEMENTS_SERV_REQ_NO_FK` FOREIGN KEY (`service_request_no`) REFERENCES `service_request` (`service_request_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_request_attachements`
--

LOCK TABLES `service_request_attachements` WRITE;
/*!40000 ALTER TABLE `service_request_attachements` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_request_attachements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_request_feedback`
--

DROP TABLE IF EXISTS `service_request_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_request_feedback` (
  `service_request_no` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `comments` varchar(250) NOT NULL,
  `created_by` varchar(25) NOT NULL,
  `created_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_modified_by` varchar(25) NOT NULL,
  `last_modified_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  UNIQUE KEY `service_request_no_UNIQUE` (`service_request_no`),
  CONSTRAINT `SERV_REQ_FEEDBACK_SERV_REQ_NO_FK` FOREIGN KEY (`service_request_no`) REFERENCES `service_request` (`service_request_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_request_feedback`
--

LOCK TABLES `service_request_feedback` WRITE;
/*!40000 ALTER TABLE `service_request_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_request_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_request_fields_data`
--

DROP TABLE IF EXISTS `service_request_fields_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_request_fields_data` (
  `service_request_no` int(11) NOT NULL,
  `field_no` int(11) NOT NULL,
  `field_value` varchar(20) NOT NULL,
  `created_by` varchar(25) NOT NULL,
  `created_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_modified_by` varchar(25) NOT NULL,
  `last_modified_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`service_request_no`),
  KEY `SERV_REQ_FIELDS_DATA_FIELD_NO_FK_idx` (`field_no`),
  CONSTRAINT `SERV_REQ_FIELDS_DATA_FIELD_NO_FK` FOREIGN KEY (`field_no`) REFERENCES `service_category_fields` (`field_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `SERV_REQ_FIELD_DATA_SERV_REQ_NO_FK` FOREIGN KEY (`service_request_no`) REFERENCES `service_request` (`service_request_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_request_fields_data`
--

LOCK TABLES `service_request_fields_data` WRITE;
/*!40000 ALTER TABLE `service_request_fields_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_request_fields_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_request_inspection`
--

DROP TABLE IF EXISTS `service_request_inspection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_request_inspection` (
  `service_request_no` int(11) NOT NULL,
  `inspection_technician_no` int(11) NOT NULL AUTO_INCREMENT,
  `inspection_date` date NOT NULL,
  `customer_name` varchar(45) NOT NULL,
  `customer_contact_no` varchar(11) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `standing_instructions` varchar(250) DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `inspection_charge` double DEFAULT NULL,
  `created_by` varchar(25) NOT NULL,
  `created_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_modified_by` varchar(25) NOT NULL,
  `last_modified_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`inspection_technician_no`),
  UNIQUE KEY `service_request_no_UNIQUE` (`service_request_no`),
  CONSTRAINT `SERVICE_REQUEST_INSPECTION_INSP_TECHNICIAN_NO_FK` FOREIGN KEY (`inspection_technician_no`) REFERENCES `user_account` (`user_account_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_request_inspection`
--

LOCK TABLES `service_request_inspection` WRITE;
/*!40000 ALTER TABLE `service_request_inspection` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_request_inspection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_request_refunds`
--

DROP TABLE IF EXISTS `service_request_refunds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_request_refunds` (
  `service_request_refund_no` int(11) NOT NULL AUTO_INCREMENT,
  `service_request_no` int(11) NOT NULL,
  `complaint_no` int(11) NOT NULL,
  `description` varchar(250) NOT NULL,
  `refund_amount` double NOT NULL,
  `authorized_by` int(11) DEFAULT NULL,
  `created_by` varchar(25) NOT NULL,
  `created_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_modified_by` varchar(25) NOT NULL,
  `last_modified_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`service_request_refund_no`),
  UNIQUE KEY `complaint_no_UNIQUE` (`complaint_no`),
  KEY `SERV_REQ_REFUND_SERV_REQ_NO_FK_idx` (`service_request_no`),
  KEY `SERV_REQ_REFUND_AUTHORIZED_BY_FK_idx` (`authorized_by`),
  CONSTRAINT `SERV_REQ_REFUND_AUTHORIZED_BY_FK` FOREIGN KEY (`authorized_by`) REFERENCES `user_account` (`user_account_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `SERV_REQ_REFUND_COMPLAINT_NO_FK` FOREIGN KEY (`complaint_no`) REFERENCES `workorder_complaint` (`complaint_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `SERV_REQ_REFUND_SERV_REQ_NO_FK` FOREIGN KEY (`service_request_no`) REFERENCES `service_request` (`service_request_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_request_refunds`
--

LOCK TABLES `service_request_refunds` WRITE;
/*!40000 ALTER TABLE `service_request_refunds` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_request_refunds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spare_parts_details`
--

DROP TABLE IF EXISTS `spare_parts_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spare_parts_details` (
  `spare_part_no` int(11) NOT NULL AUTO_INCREMENT,
  `spare_part_nm` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  `quantity` int(11) NOT NULL,
  `cost` double NOT NULL,
  `block` varchar(3) NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `created_by` varchar(25) NOT NULL,
  `created_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_modified_by` varchar(25) NOT NULL,
  `last_modified_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`spare_part_no`),
  KEY `SPARE_PARTS_DETAILS_INVOICE_NO_FK_idx` (`invoice_no`),
  CONSTRAINT `SPARE_PARTS_DETAILS_INVOICE_NO_FK` FOREIGN KEY (`invoice_no`) REFERENCES `spare_parts_invoice` (`invoice_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spare_parts_details`
--

LOCK TABLES `spare_parts_details` WRITE;
/*!40000 ALTER TABLE `spare_parts_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `spare_parts_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spare_parts_invoice`
--

DROP TABLE IF EXISTS `spare_parts_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spare_parts_invoice` (
  `invoice_no` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_bill_no` int(11) NOT NULL,
  `invoice_dt` date NOT NULL,
  `invoice_quantity` int(11) NOT NULL,
  `invoice_amount` double NOT NULL,
  `merchant_name` varchar(75) NOT NULL,
  `merchant_contact_no` varchar(11) NOT NULL,
  `created_by` varchar(25) NOT NULL,
  `created_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_modified_by` varchar(25) NOT NULL,
  `last_modified_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`invoice_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spare_parts_invoice`
--

LOCK TABLES `spare_parts_invoice` WRITE;
/*!40000 ALTER TABLE `spare_parts_invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `spare_parts_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state` (
  `state_no` int(11) NOT NULL AUTO_INCREMENT,
  `state_nm` varchar(25) NOT NULL,
  `status` bit(1) NOT NULL,
  `created_by` varchar(25) NOT NULL,
  `created_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_modified_by` varchar(25) NOT NULL,
  `last_modified_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`state_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `technician_service_categories`
--

DROP TABLE IF EXISTS `technician_service_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `technician_service_categories` (
  `technician_account_no` int(11) NOT NULL,
  `category_no` int(11) NOT NULL,
  KEY `TECH_SERV_CATG_TECH_ACC_NO_FK_idx` (`technician_account_no`),
  KEY `TECH_SERV_CATG_CATG_NO_FK_idx` (`category_no`),
  CONSTRAINT `TECH_SERV_CATG_CATG_NO_FK` FOREIGN KEY (`category_no`) REFERENCES `service_categories` (`category_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `TECH_SERV_CATG_TECH_ACC_NO_FK` FOREIGN KEY (`technician_account_no`) REFERENCES `user_account` (`user_account_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technician_service_categories`
--

LOCK TABLES `technician_service_categories` WRITE;
/*!40000 ALTER TABLE `technician_service_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `technician_service_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_account`
--

DROP TABLE IF EXISTS `user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_account` (
  `user_account_no` int(11) NOT NULL AUTO_INCREMENT,
  `primary_email_address (UNQ)` varchar(25) NOT NULL,
  `password` varchar(15) NOT NULL,
  `primary_mobile_nbr` varchar(11) NOT NULL,
  `first_nm` varchar(20) DEFAULT NULL,
  `last_nm` varchar(20) DEFAULT NULL,
  `contact_address_no` int(11) DEFAULT NULL,
  `role_no` int(11) NOT NULL,
  `registered_dt` date NOT NULL,
  `activation_dt` date NOT NULL,
  `activation_code` varchar(10) NOT NULL,
  `status` varchar(1) NOT NULL,
  `created_by` varchar(25) NOT NULL,
  `created_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_modified_by` varchar(25) NOT NULL,
  `last_modified_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`user_account_no`),
  UNIQUE KEY `primary_email_address (UNQ)_UNIQUE` (`primary_email_address (UNQ)`),
  KEY `CONTACT_ADDRESS_NO_FK_idx` (`contact_address_no`),
  KEY `ROLE_NO_FK_idx` (`role_no`),
  CONSTRAINT `USER_ACCOUNT_CONTACT_ADDRESS_NO_FK` FOREIGN KEY (`contact_address_no`) REFERENCES `address` (`address_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `USER_ACCOUNT_ROLE_NO_FK` FOREIGN KEY (`role_no`) REFERENCES `role` (`role_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_account`
--

LOCK TABLES `user_account` WRITE;
/*!40000 ALTER TABLE `user_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_order_status`
--

DROP TABLE IF EXISTS `work_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work_order_status` (
  `work_order_status_no` int(11) NOT NULL AUTO_INCREMENT,
  `work_order_status` varchar(15) NOT NULL,
  `description` varchar(100) NOT NULL,
  `created_by` varchar(25) NOT NULL,
  `created_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_modified_by` varchar(25) NOT NULL,
  `last_modified_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`work_order_status_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_order_status`
--

LOCK TABLES `work_order_status` WRITE;
/*!40000 ALTER TABLE `work_order_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `work_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workorder`
--

DROP TABLE IF EXISTS `workorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workorder` (
  `work_order_no` int(11) NOT NULL AUTO_INCREMENT,
  `service_request_no` int(11) NOT NULL,
  `technician_no` int(11) NOT NULL,
  `work_order_created_date` date NOT NULL,
  `start_date` date NOT NULL,
  `estimated_hours` int(11) NOT NULL,
  `description` varchar(250) NOT NULL,
  `work_order_status_no` int(11) NOT NULL,
  `created_by` varchar(25) NOT NULL,
  `created_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_modified_by` varchar(25) NOT NULL,
  `last_modified_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`work_order_no`),
  KEY `WORKORDER_SERVICE_REQ_NO_FK_idx` (`service_request_no`),
  KEY `WORKORDER_TECH_NO_FK_idx` (`technician_no`),
  KEY `WORKORDER_STATUS_NO_FK_idx` (`work_order_status_no`),
  CONSTRAINT `WORKORDER_SERVICE_REQ_NO_FK` FOREIGN KEY (`service_request_no`) REFERENCES `service_request` (`service_request_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `WORKORDER_STATUS_NO_FK` FOREIGN KEY (`work_order_status_no`) REFERENCES `work_order_status` (`work_order_status_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `WORKORDER_TECH_NO_FK` FOREIGN KEY (`technician_no`) REFERENCES `user_account` (`user_account_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workorder`
--

LOCK TABLES `workorder` WRITE;
/*!40000 ALTER TABLE `workorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `workorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workorder_activity_log`
--

DROP TABLE IF EXISTS `workorder_activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workorder_activity_log` (
  `workorder_activity_log_no` int(11) NOT NULL AUTO_INCREMENT,
  `work_order_no` int(11) NOT NULL,
  `user_account_no` int(11) NOT NULL,
  `activity_log` varchar(45) DEFAULT NULL,
  `activity_log_date` date NOT NULL,
  `notes` varchar(250) DEFAULT NULL,
  `comments` varchar(250) DEFAULT NULL,
  `work_order_status_no` int(11) NOT NULL,
  `created_by` varchar(25) NOT NULL,
  `created_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_modified_by` varchar(25) NOT NULL,
  `last_modified_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`workorder_activity_log_no`),
  KEY `WORKORDER_ACTIVITY_LOG_WORK_ORDER_NO_FK_idx` (`work_order_no`),
  KEY `WORKORDER_ACTIVITY_LOG_USER_ACC_NO_FK_idx` (`user_account_no`),
  KEY `WORKORDER_ACTIVITY_LOG_WORK_ORDER_STATUS_NO_FK_idx` (`work_order_status_no`),
  CONSTRAINT `WORKORDER_ACTIVITY_LOG_USER_ACC_NO_FK` FOREIGN KEY (`user_account_no`) REFERENCES `user_account` (`user_account_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `WORKORDER_ACTIVITY_LOG_WORK_ORDER_NO_FK` FOREIGN KEY (`work_order_no`) REFERENCES `workorder` (`work_order_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `WORKORDER_ACTIVITY_LOG_WORK_ORDER_STATUS_NO_FK` FOREIGN KEY (`work_order_status_no`) REFERENCES `work_order_status` (`work_order_status_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workorder_activity_log`
--

LOCK TABLES `workorder_activity_log` WRITE;
/*!40000 ALTER TABLE `workorder_activity_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `workorder_activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workorder_complaint`
--

DROP TABLE IF EXISTS `workorder_complaint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workorder_complaint` (
  `workorder_no` int(11) NOT NULL,
  `complaint_no` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(250) NOT NULL,
  `contact_no` int(11) NOT NULL,
  `contact_person` varchar(45) NOT NULL,
  `complaint_raised_dt` date NOT NULL,
  `status` bit(1) NOT NULL,
  `resolution_information` varchar(45) NOT NULL,
  `created_by` varchar(25) NOT NULL,
  `created_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_modified_by` varchar(25) NOT NULL,
  `last_modified_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`complaint_no`),
  UNIQUE KEY `workorder_no_UNIQUE` (`workorder_no`),
  CONSTRAINT `WORKORDER_COMPLAINT_WORK_ORDER_NO_FK` FOREIGN KEY (`workorder_no`) REFERENCES `workorder` (`work_order_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workorder_complaint`
--

LOCK TABLES `workorder_complaint` WRITE;
/*!40000 ALTER TABLE `workorder_complaint` DISABLE KEYS */;
/*!40000 ALTER TABLE `workorder_complaint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workorder_spares`
--

DROP TABLE IF EXISTS `workorder_spares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workorder_spares` (
  `workorder_spares_no` int(11) NOT NULL,
  `workorder_no` int(11) NOT NULL,
  `spare_part_nm` varchar(45) NOT NULL,
  `description` varchar(100) NOT NULL,
  `cost` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_by` varchar(25) NOT NULL,
  `created_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_modified_by` varchar(25) NOT NULL,
  `last_modified_dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`workorder_spares_no`,`workorder_no`),
  KEY `WORKORDER_SPARES_WORKORDER_NO_FK_idx` (`workorder_no`),
  CONSTRAINT `WORKORDER_SPARES_NO_FK` FOREIGN KEY (`workorder_spares_no`) REFERENCES `spare_parts_details` (`spare_part_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `WORKORDER_SPARES_WORKORDER_NO_FK` FOREIGN KEY (`workorder_no`) REFERENCES `workorder` (`work_order_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workorder_spares`
--

LOCK TABLES `workorder_spares` WRITE;
/*!40000 ALTER TABLE `workorder_spares` DISABLE KEYS */;
/*!40000 ALTER TABLE `workorder_spares` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-05 16:23:54
