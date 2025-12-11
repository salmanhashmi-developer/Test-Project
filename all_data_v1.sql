-- MySQL dump 10.13  Distrib 5.7.44-48, for Linux (x86_64)
--
-- Host: localhost    Database: healthism_live
-- ------------------------------------------------------
-- Server version	5.7.44-48-log

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
/*!50717 SELECT COUNT(*) INTO @rocksdb_has_p_s_session_variables FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'performance_schema' AND TABLE_NAME = 'session_variables' */;
/*!50717 SET @rocksdb_get_is_supported = IF (@rocksdb_has_p_s_session_variables, 'SELECT COUNT(*) INTO @rocksdb_is_supported FROM performance_schema.session_variables WHERE VARIABLE_NAME=\'rocksdb_bulk_load\'', 'SELECT 0') */;
/*!50717 PREPARE s FROM @rocksdb_get_is_supported */;
/*!50717 EXECUTE s */;
/*!50717 DEALLOCATE PREPARE s */;
/*!50717 SET @rocksdb_enable_bulk_load = IF (@rocksdb_is_supported, 'SET SESSION rocksdb_bulk_load = 1', 'SET @rocksdb_dummy_bulk_load = 0') */;
/*!50717 PREPARE s FROM @rocksdb_enable_bulk_load */;
/*!50717 EXECUTE s */;
/*!50717 DEALLOCATE PREPARE s */;

--
-- Table structure for table `Dentist`
--

DROP TABLE IF EXISTS `Dentist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Dentist` (
  `id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `ref_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `rating` varchar(255) DEFAULT NULL,
  `reply` varchar(255) DEFAULT NULL,
  `replied_at` varchar(255) DEFAULT NULL,
  `status_id` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Final Review`
--

DROP TABLE IF EXISTS `Final Review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Final Review` (
  `user_id` varchar(255) DEFAULT NULL,
  `ref_id` varchar(255) DEFAULT NULL,
  `service_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `rating` varchar(255) DEFAULT NULL,
  `reply` varchar(255) DEFAULT NULL,
  `replied_at` varchar(255) DEFAULT NULL,
  `status_id` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `app_dashboard`
--

DROP TABLE IF EXISTS `app_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_dashboard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('Slide','Brand','Banner','Tips','Lab_Slide','Lab_Offer','SBS_Slide','Top_Banner','Pharmacy_Banner','Exclusive_Deal') DEFAULT NULL,
  `name` varchar(70) DEFAULT NULL,
  `file` varchar(100) DEFAULT NULL,
  `file_type` enum('Image','Video') DEFAULT NULL,
  `sort_order` smallint(3) DEFAULT NULL,
  `data_json` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `app_dashboard_copy1`
--

DROP TABLE IF EXISTS `app_dashboard_copy1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_dashboard_copy1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('Slide','Brand','Banner','Tips') DEFAULT NULL,
  `name` varchar(70) DEFAULT NULL,
  `file` varchar(100) DEFAULT NULL,
  `file_type` enum('Image','Video') DEFAULT NULL,
  `sort_order` smallint(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `app_version`
--

DROP TABLE IF EXISTS `app_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_version` (
  `id` smallint(4) NOT NULL AUTO_INCREMENT,
  `ask_update` bit(1) DEFAULT NULL,
  `force_update` bit(1) DEFAULT NULL,
  `message` varchar(250) DEFAULT NULL,
  `version` varchar(15) DEFAULT NULL,
  `version_title` varchar(30) DEFAULT NULL,
  `whats_new` varchar(255) DEFAULT NULL,
  `platform_id` smallint(3) DEFAULT NULL,
  `app_id` smallint(3) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `application_constant`
--

DROP TABLE IF EXISTS `application_constant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `application_constant` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `type` varchar(40) DEFAULT NULL,
  `value` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(70) DEFAULT NULL,
  `parent_id` smallint(3) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `sort_order` smallint(3) DEFAULT NULL,
  `active` bit(1) DEFAULT b'1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `category_09-05-2023`
--

DROP TABLE IF EXISTS `category_09-05-2023`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_09-05-2023` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(70) DEFAULT NULL,
  `parent_id` smallint(3) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `sort_order` smallint(3) DEFAULT NULL,
  `active` bit(1) DEFAULT b'1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `charge_type`
--

DROP TABLE IF EXISTS `charge_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charge_type` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `id` smallint(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `active` bit(1) DEFAULT b'1',
  `state_id` int(9) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4826 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `city_copy1`
--

DROP TABLE IF EXISTS `city_copy1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city_copy1` (
  `id` smallint(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `active` bit(1) DEFAULT b'1',
  `state_id` int(9) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4826 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `common_service`
--

DROP TABLE IF EXISTS `common_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `common_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(70) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `mobile` varchar(12) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address1` varchar(200) DEFAULT NULL,
  `address2` varchar(200) DEFAULT NULL,
  `area` varchar(50) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `latitude` varchar(18) DEFAULT NULL,
  `longitude` varchar(18) DEFAULT NULL,
  `discount` decimal(8,2) DEFAULT NULL,
  `category_id` smallint(3) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `virtual_location` bit(1) DEFAULT b'0',
  `status_id` smallint(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `import_data_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5751 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `common_service_details`
--

DROP TABLE IF EXISTS `common_service_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `common_service_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `common_service_id` int(11) NOT NULL,
  `description` text,
  `timing_json` json DEFAULT NULL,
  `gallery_json` json DEFAULT NULL,
  `additional_search_json` json DEFAULT NULL,
  `pancard_number` varchar(25) DEFAULT NULL,
  `pancard_document` varchar(70) DEFAULT NULL,
  `gst_number` varchar(25) DEFAULT NULL,
  `gst_certificate` varchar(100) DEFAULT NULL,
  `bank_account_number` varchar(30) DEFAULT NULL,
  `bank_account_name` varchar(100) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `bank_ifsc_code` varchar(20) DEFAULT NULL,
  `cash_booking_allowed` bit(1) DEFAULT NULL,
  `cancellation_allowed` bit(1) DEFAULT NULL,
  `cancel_policy` json DEFAULT NULL,
  `cancel_policy_setting` json DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5746 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `common_service_enquiry`
--

DROP TABLE IF EXISTS `common_service_enquiry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `common_service_enquiry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `common_service_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `appointment_date` date DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `status_id` smallint(3) DEFAULT NULL,
  `remark_json` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `common_service_mapping`
--

DROP TABLE IF EXISTS `common_service_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `common_service_mapping` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `category_id` smallint(3) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `common_service_search`
--

DROP TABLE IF EXISTS `common_service_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `common_service_search` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `common_service_id` int(11) DEFAULT NULL,
  `category_id` smallint(3) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=36015 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `corporate_company`
--

DROP TABLE IF EXISTS `corporate_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `corporate_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `contact_no` varchar(15) DEFAULT NULL,
  `contact_person_no` varchar(15) DEFAULT NULL,
  `no_of_employee` varchar(5) DEFAULT NULL,
  `email_id` varchar(50) DEFAULT NULL,
  `contact_person` varchar(70) DEFAULT NULL,
  `cin` varchar(30) DEFAULT NULL,
  `gstno` varchar(30) DEFAULT NULL,
  `status_id` smallint(3) DEFAULT NULL,
  `ref_code` varchar(25) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `corporate_company_branch`
--

DROP TABLE IF EXISTS `corporate_company_branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `corporate_company_branch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `corporate_enquiry`
--

DROP TABLE IF EXISTS `corporate_enquiry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `corporate_enquiry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `company_name` varchar(70) DEFAULT NULL,
  `no_of_employee` varchar(5) DEFAULT NULL,
  `contact_person` varchar(70) DEFAULT NULL,
  `contact_no` varchar(15) DEFAULT NULL,
  `email_id` varchar(50) DEFAULT NULL,
  `status_id` smallint(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `corporate_subscription`
--

DROP TABLE IF EXISTS `corporate_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `corporate_subscription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subscription_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `qty` int(5) DEFAULT NULL,
  `used` int(5) DEFAULT NULL,
  `amount` decimal(6,2) DEFAULT NULL,
  `tax` decimal(6,2) DEFAULT NULL,
  `order_id` varchar(30) DEFAULT NULL,
  `status_id` smallint(3) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(70) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `designation`
--

DROP TABLE IF EXISTS `designation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `designation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(70) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `first_name` varchar(35) DEFAULT NULL,
  `middle_name` varchar(35) DEFAULT NULL,
  `last_name` varchar(35) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(65) DEFAULT NULL,
  `specialization` enum('Orthopaedics','Dietician','Gynaecologist','Pulmonologist','ENT','General Physician','Ophthalmologist','Oncologist','Dermatologist','Pediatrician','Dentist','Neurologist','Urologist','Physiotherapist','Cardiologist','Psychiatrist','Radiologist','Anesthisia','Internal Medicine','Sexologist','Gastroenterologist','Ayurveda','Homeopathy') DEFAULT NULL,
  `sub_category_id` varchar(30) DEFAULT NULL,
  `short_desc` text,
  `photo` varchar(70) DEFAULT NULL,
  `gender` enum('Male','Female','Transgender') DEFAULT NULL,
  `experience` decimal(3,1) DEFAULT NULL,
  `status_id` smallint(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `code` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `userid_unique` (`user_id`) USING BTREE COMMENT 'user doctor one to one relation'
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doctor_appointment_booking`
--

DROP TABLE IF EXISTS `doctor_appointment_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor_appointment_booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_subscription_id` int(11) DEFAULT NULL,
  `hospital_id` int(11) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `user_patient_id` int(11) DEFAULT NULL,
  `patient_name` varchar(120) DEFAULT NULL,
  `patient_mobile` varchar(12) DEFAULT NULL,
  `doctor_hospital_slot_id` int(11) DEFAULT NULL,
  `appointment_date` date DEFAULT NULL,
  `appointment_time` time DEFAULT NULL,
  `appointment_start` timestamp NULL DEFAULT NULL,
  `appointment_end` timestamp NULL DEFAULT NULL,
  `amount` decimal(12,2) DEFAULT NULL,
  `tax` decimal(8,2) DEFAULT NULL,
  `refund_amount` double(8,2) DEFAULT NULL,
  `discount` decimal(12,2) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `is_video` bit(1) DEFAULT b'0',
  `status_id` smallint(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doctor_copy1`
--

DROP TABLE IF EXISTS `doctor_copy1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor_copy1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `first_name` varchar(35) DEFAULT NULL,
  `middle_name` varchar(35) DEFAULT NULL,
  `last_name` varchar(35) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(65) DEFAULT NULL,
  `specialization` enum('Orthopaedics','Dietician','Gynaecologist','Pulmonologist','ENT','General Physician','Ophthalmologist','Oncologist','Dermatologist','Pediatrician','Dentist','Neurologist','Urologist','Physiotherapist','Cardiologist','Psychiatrist','Radiologist','Anesthisia','Internal Medicine','Sexologist','Gastroenterologist','Ayurveda','Homeopathy') DEFAULT NULL,
  `sub_category_id` varchar(30) DEFAULT NULL,
  `short_desc` text,
  `photo` varchar(70) DEFAULT NULL,
  `gender` enum('Male','Female','Transgender') DEFAULT NULL,
  `experience` decimal(3,1) DEFAULT NULL,
  `status_id` smallint(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `code` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `userid_unique` (`user_id`) USING BTREE COMMENT 'user doctor one to one relation'
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doctor_details`
--

DROP TABLE IF EXISTS `doctor_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_id` int(11) NOT NULL,
  `description` text,
  `registration_number` varchar(50) DEFAULT NULL,
  `registration_council` enum('Andhra Pradesh Medical Council','Arunachal Pradesh Medical Council','Assam Medical Council','Bhopal Medical Council','Bihar Medical Council','Bombay Medical Council','Chandigarh Medical Council','Chhattisgarh Medical Council','Delhi Medical Council','Goa Medical Council','Gujarat Medical Council','Haryana Medical Council','Himachal Pradesh Medical Council','Hyderabad Medical Council','Jharkhand Medical Council','Karnataka Medical Council','Madhya Pradesh Medical Council','Madras Medical Council','Mahakoshal Medical Council','Maharashtra Medical Council','Medical Council of India','Medical Council of Tanganyika','Mizoram Medical Council','Mysore Medical Council','Nagaland Medical Council','Orissa Council of Medical Registration','Pondicherry Medical Council','Punjab Medical Council','Rajasthan Medical Council','Sikkim Medical Council','Tamil Nadu Medical Council','Telangana Medical Council','Uttar Pradesh Medical Council','Uttarakhand Medical Council','Vidharba Medical Council','West Bengal Medical Council','') DEFAULT NULL,
  `registration_date` date DEFAULT NULL,
  `registration_proof` varchar(70) DEFAULT NULL,
  `last_degree_obtained` varchar(100) DEFAULT NULL,
  `date_of_completion` date DEFAULT NULL,
  `college_institute_name` varchar(150) DEFAULT NULL,
  `qualification_certificates` varchar(70) DEFAULT NULL,
  `aadhar_card_no` varchar(20) DEFAULT NULL,
  `aadhar_card_document` varchar(70) DEFAULT NULL,
  `pan_card_no` varchar(20) DEFAULT NULL,
  `pan_card_document` varchar(70) DEFAULT NULL,
  `service_json` json DEFAULT NULL,
  `specialization_json` json DEFAULT NULL,
  `education_json` json DEFAULT NULL,
  `membership_json` json DEFAULT NULL,
  `experience_json` json DEFAULT NULL,
  `registration_json` json DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doctor_hospital_block_slot`
--

DROP TABLE IF EXISTS `doctor_hospital_block_slot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor_hospital_block_slot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_id` int(11) DEFAULT NULL,
  `hospital_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `doctor_hospital_slot_id` int(11) DEFAULT NULL,
  `from_time` time DEFAULT NULL,
  `to_time` time DEFAULT NULL,
  `is_video` bit(1) DEFAULT b'0',
  `is_offline` bit(1) DEFAULT b'0',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doctor_hospital_mapping`
--

DROP TABLE IF EXISTS `doctor_hospital_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor_hospital_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_id` int(11) DEFAULT NULL,
  `hospital_id` int(11) DEFAULT NULL,
  `timing_json` json DEFAULT NULL,
  `fees` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `video_consultation_available` bit(1) DEFAULT b'0',
  `slot_type` enum('Day','Date') DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `doctor_hospital_unique` (`doctor_id`,`hospital_id`) USING BTREE COMMENT 'hospital and doctor mapping only one time'
) ENGINE=InnoDB AUTO_INCREMENT=277 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doctor_hospital_slot`
--

DROP TABLE IF EXISTS `doctor_hospital_slot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor_hospital_slot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_id` int(11) DEFAULT NULL,
  `hospital_id` int(11) DEFAULT NULL,
  `day` enum('Mon','Tue','Wed','Thu','Fri','Sat','Sun') DEFAULT NULL,
  `date` date DEFAULT NULL,
  `from_time` time DEFAULT NULL,
  `to_time` time DEFAULT NULL,
  `is_video` bit(1) DEFAULT b'0',
  `is_offline` bit(1) DEFAULT b'0',
  `status_id` smallint(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=38198 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `app_id` smallint(3) DEFAULT NULL,
  `platform_id` smallint(3) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `health_track`
--

DROP TABLE IF EXISTS `health_track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `health_track` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `step` varchar(255) DEFAULT NULL,
  `calories` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2059 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospital` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(70) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address1` varchar(150) DEFAULT NULL,
  `address2` varchar(150) DEFAULT NULL,
  `area` varchar(50) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `latitude` varchar(18) DEFAULT NULL,
  `longitude` varchar(18) DEFAULT NULL,
  `cash_booking_allowed` bit(1) DEFAULT b'1',
  `cancellation_allowed` bit(1) DEFAULT b'1',
  `cancel_policy` json DEFAULT NULL,
  `cancel_policy_setting` json DEFAULT NULL,
  `type` enum('Hospital','Clinic') DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `status_id` smallint(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=276 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hospital_details`
--

DROP TABLE IF EXISTS `hospital_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospital_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_id` int(11) NOT NULL,
  `gallery_json` json DEFAULT NULL,
  `pancard_number` varchar(25) DEFAULT NULL,
  `pancard_document` varchar(70) DEFAULT NULL,
  `gst_number` varchar(25) DEFAULT NULL,
  `gst_certificate` varchar(255) DEFAULT NULL,
  `bank_account_number` varchar(30) DEFAULT NULL,
  `bank_account_name` varchar(100) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `bank_ifsc_code` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=276 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lab`
--

DROP TABLE IF EXISTS `lab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `contact_person` varchar(150) DEFAULT NULL,
  `name` varchar(70) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `mobile` varchar(12) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `area` varchar(50) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `virtual_location` bit(1) DEFAULT NULL,
  `discount` smallint(3) DEFAULT NULL,
  `self_test_available` bit(1) DEFAULT NULL,
  `cash_booking_allowed` bit(1) DEFAULT b'1',
  `cancellation_allowed` bit(1) DEFAULT b'1',
  `cancel_policy` json DEFAULT NULL,
  `cancel_policy_setting` json DEFAULT NULL,
  `status_id` smallint(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `common_service_id` int(11) DEFAULT NULL,
  `sub_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `userid_unique` (`user_id`) USING BTREE COMMENT 'user lab one to one relation',
  KEY `lab_id_index` (`id`) USING BTREE,
  KEY `lab_parent_id_index` (`parent_id`) USING BTREE,
  KEY `lab_self_test_available_index` (`self_test_available`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4105 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lab_block_slot`
--

DROP TABLE IF EXISTS `lab_block_slot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lab_block_slot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lab_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `lab_slot_id` int(11) DEFAULT NULL,
  `is_home_collection` bit(1) DEFAULT b'0',
  `is_offline` bit(1) DEFAULT b'0',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lab_booking`
--

DROP TABLE IF EXISTS `lab_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lab_booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_subscription_id` int(11) DEFAULT NULL,
  `lab_id` int(11) DEFAULT NULL,
  `lab_parent_id` int(11) DEFAULT NULL,
  `user_patient_id` int(11) DEFAULT NULL,
  `patient_name` varchar(120) DEFAULT NULL,
  `patient_mobile` varchar(12) DEFAULT NULL,
  `lab_slot_id` int(11) DEFAULT NULL,
  `appointment_date` date DEFAULT NULL,
  `appointment_time` time DEFAULT NULL,
  `address` json DEFAULT NULL,
  `amount` decimal(12,2) DEFAULT NULL,
  `tax` decimal(8,2) DEFAULT NULL,
  `refund_amount` double(8,2) DEFAULT NULL,
  `discount` decimal(12,2) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `is_home_collection` bit(1) DEFAULT b'0',
  `status_id` smallint(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lab_booking_details`
--

DROP TABLE IF EXISTS `lab_booking_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lab_booking_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lab_booking_id` int(11) DEFAULT NULL,
  `lab_id` int(11) DEFAULT NULL,
  `lab_parent_id` int(11) DEFAULT NULL,
  `test_id` int(11) DEFAULT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `tax` decimal(8,2) DEFAULT NULL,
  `discount` decimal(8,2) DEFAULT NULL,
  `refund_amount` decimal(8,2) DEFAULT NULL,
  `status_id` smallint(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=538 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lab_copy1`
--

DROP TABLE IF EXISTS `lab_copy1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lab_copy1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `contact_person` varchar(150) DEFAULT NULL,
  `name` varchar(70) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `mobile` varchar(12) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `area` varchar(50) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `virtual_location` bit(1) DEFAULT NULL,
  `discount` smallint(3) DEFAULT NULL,
  `self_test_available` bit(1) DEFAULT NULL,
  `cash_booking_allowed` bit(1) DEFAULT b'1',
  `cancellation_allowed` bit(1) DEFAULT b'1',
  `cancel_policy` json DEFAULT NULL,
  `cancel_policy_setting` json DEFAULT NULL,
  `status_id` smallint(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `common_service_id` int(11) DEFAULT NULL,
  `sub_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `userid_unique` (`user_id`) USING BTREE COMMENT 'user lab one to one relation',
  KEY `lab_id_index` (`id`) USING BTREE,
  KEY `lab_parent_id_index` (`parent_id`) USING BTREE,
  KEY `lab_self_test_available_index` (`self_test_available`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4103 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lab_details`
--

DROP TABLE IF EXISTS `lab_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lab_details` (
  `lab_id` int(11) NOT NULL,
  `description` text,
  `gallery_json` json DEFAULT NULL,
  `timing_json` json DEFAULT NULL,
  `nabl_document` varchar(70) DEFAULT NULL,
  `mou_document` varchar(70) DEFAULT NULL,
  `pancard_number` varchar(25) DEFAULT NULL,
  `pancard_document` varchar(70) DEFAULT NULL,
  `gst_number` varchar(25) DEFAULT NULL,
  `gst_certificate` varchar(70) DEFAULT NULL,
  `bank_account_number` varchar(25) DEFAULT NULL,
  `bank_account_name` varchar(100) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `bank_ifsc_code` varchar(20) DEFAULT NULL,
  `permissions_json` json DEFAULT NULL,
  `common_service_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`lab_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lab_details_old`
--

DROP TABLE IF EXISTS `lab_details_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lab_details_old` (
  `lab_id` int(11) NOT NULL,
  `description` text,
  `gallery_json` json DEFAULT NULL,
  `timing_json` json DEFAULT NULL,
  `nabl_document` varchar(70) DEFAULT NULL,
  `mou_document` varchar(70) DEFAULT NULL,
  `pancard_number` varchar(25) DEFAULT NULL,
  `pancard_document` varchar(70) DEFAULT NULL,
  `gst_number` varchar(25) DEFAULT NULL,
  `gst_certificate` varchar(70) DEFAULT NULL,
  `bank_account_number` varchar(25) DEFAULT NULL,
  `bank_account_name` varchar(100) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `bank_ifsc_code` varchar(20) DEFAULT NULL,
  `permissions_json` json DEFAULT NULL,
  PRIMARY KEY (`lab_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lab_old`
--

DROP TABLE IF EXISTS `lab_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lab_old` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `contact_person` varchar(150) DEFAULT NULL,
  `name` varchar(70) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `mobile` varchar(12) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address1` varchar(150) DEFAULT NULL,
  `address2` varchar(150) DEFAULT NULL,
  `area` varchar(50) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `virtual_location` bit(1) DEFAULT NULL,
  `discount` smallint(3) DEFAULT NULL,
  `self_test_available` bit(1) DEFAULT NULL,
  `cash_booking_allowed` bit(1) DEFAULT b'1',
  `cancellation_allowed` bit(1) DEFAULT b'1',
  `cancel_policy` json DEFAULT NULL,
  `cancel_policy_setting` json DEFAULT NULL,
  `status_id` smallint(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `userid_unique` (`user_id`) USING BTREE COMMENT 'user lab one to one relation'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lab_search`
--

DROP TABLE IF EXISTS `lab_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lab_search` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lab_id` int(11) DEFAULT NULL,
  `lab_parent_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20954 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lab_slot`
--

DROP TABLE IF EXISTS `lab_slot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lab_slot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lab_id` int(11) DEFAULT NULL,
  `day` enum('Mon','Tue','Wed','Thu','Fri','Sat','Sun') DEFAULT NULL,
  `date` date DEFAULT NULL,
  `from_time` time DEFAULT NULL,
  `to_time` time DEFAULT NULL,
  `is_home_collection` bit(1) DEFAULT b'0',
  `is_offline` bit(1) DEFAULT b'0',
  `charge` decimal(6,2) DEFAULT NULL,
  `status_id` smallint(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=459421 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lab_test`
--

DROP TABLE IF EXISTS `lab_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lab_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `test_master_id` int(11) DEFAULT NULL,
  `import_id` int(11) DEFAULT NULL,
  `lab_id` int(11) DEFAULT NULL,
  `lab_parent_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `alias_name` varchar(150) DEFAULT NULL,
  `test_count` smallint(3) DEFAULT NULL,
  `test_json` json DEFAULT NULL,
  `description` text,
  `gender` varchar(50) DEFAULT NULL,
  `requirement` varchar(150) DEFAULT NULL,
  `preparation` text,
  `body_part` varchar(150) DEFAULT NULL,
  `disease_name` varchar(150) DEFAULT NULL,
  `is_package` bit(1) DEFAULT NULL,
  `package_category` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `home_collection` bit(1) DEFAULT NULL,
  `e_report_hours` smallint(3) DEFAULT NULL,
  `sort_order` smallint(3) DEFAULT NULL,
  `status_id` smallint(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `lab_id_index` (`lab_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4163 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lab_test_master`
--

DROP TABLE IF EXISTS `lab_test_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lab_test_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `alias_name` varchar(150) DEFAULT NULL,
  `test_count` smallint(3) DEFAULT NULL,
  `test_json` json DEFAULT NULL,
  `description` text,
  `gender` varchar(50) DEFAULT NULL,
  `requirement` varchar(150) DEFAULT NULL,
  `preparation` text,
  `body_part` varchar(150) DEFAULT NULL,
  `disease_name` varchar(150) DEFAULT NULL,
  `is_package` bit(1) DEFAULT NULL,
  `package_category` varchar(100) DEFAULT NULL,
  `status_id` smallint(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=994 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `created_for` int(11) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `sub_type` varchar(30) DEFAULT NULL,
  `log_detail` text,
  `ip` varchar(50) DEFAULT NULL,
  `extra_detail` text,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=669 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `medicine_quotation`
--

DROP TABLE IF EXISTS `medicine_quotation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicine_quotation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_upload_id` int(11) DEFAULT NULL,
  `comment_json` json DEFAULT NULL,
  `medicine_json` json DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(70) DEFAULT NULL,
  `sort_order` smallint(3) DEFAULT NULL,
  `active` bit(1) DEFAULT b'1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `menu_based_service`
--

DROP TABLE IF EXISTS `menu_based_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_based_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `contact_person` varchar(150) DEFAULT NULL,
  `name` varchar(70) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `mobile` varchar(12) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `area` varchar(50) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `discount` smallint(3) DEFAULT NULL,
  `self_facility_available` bit(1) DEFAULT NULL,
  `cash_booking_allowed` bit(1) DEFAULT b'1',
  `cancellation_allowed` bit(1) DEFAULT b'1',
  `cancel_policy` json DEFAULT NULL,
  `cancel_policy_setting` json DEFAULT NULL,
  `category_id` smallint(3) DEFAULT NULL,
  `gender` enum('Male','Female','Unisex') DEFAULT NULL,
  `status_id` smallint(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `common_service_id` int(11) DEFAULT NULL,
  `sub_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `userid_unique` (`user_id`) USING BTREE COMMENT 'user lab one to one relation'
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `menu_based_service_block_slot`
--

DROP TABLE IF EXISTS `menu_based_service_block_slot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_based_service_block_slot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_based_service_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `menu_based_service_slot_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `menu_based_service_booking`
--

DROP TABLE IF EXISTS `menu_based_service_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_based_service_booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_subscription_id` int(11) DEFAULT NULL,
  `menu_based_service_id` int(11) DEFAULT NULL,
  `menu_based_service_parent_id` int(11) DEFAULT NULL,
  `menu_based_service_category_id` smallint(3) DEFAULT NULL,
  `user_member_id` int(11) DEFAULT NULL,
  `member_name` varchar(120) DEFAULT NULL,
  `member_mobile` varchar(12) DEFAULT NULL,
  `menu_based_service_slot_id` int(11) DEFAULT NULL,
  `appointment_date` date DEFAULT NULL,
  `appointment_time` time DEFAULT NULL,
  `amount` decimal(12,2) DEFAULT NULL,
  `tax` decimal(8,2) DEFAULT NULL,
  `refund_amount` double(8,2) DEFAULT NULL,
  `discount` decimal(12,2) DEFAULT NULL,
  `status_id` smallint(3) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `menu_based_service_booking_details`
--

DROP TABLE IF EXISTS `menu_based_service_booking_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_based_service_booking_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_based_service_booking_id` int(11) DEFAULT NULL,
  `menu_based_service_id` int(11) DEFAULT NULL,
  `menu_based_service_parent_id` int(11) DEFAULT NULL,
  `menu_based_service_facility_id` int(11) DEFAULT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `tax` decimal(8,2) DEFAULT NULL,
  `discount` decimal(8,2) DEFAULT NULL,
  `refund_amount` decimal(8,2) DEFAULT NULL,
  `status_id` smallint(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `menu_based_service_details`
--

DROP TABLE IF EXISTS `menu_based_service_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_based_service_details` (
  `menu_based_service_id` int(11) NOT NULL,
  `description` text,
  `gallery_json` json DEFAULT NULL,
  `timing_json` json DEFAULT NULL,
  `pancard_number` varchar(25) DEFAULT NULL,
  `pancard_document` varchar(70) DEFAULT NULL,
  `gst_number` varchar(25) DEFAULT NULL,
  `gst_certificate` varchar(70) DEFAULT NULL,
  `bank_account_number` varchar(25) DEFAULT NULL,
  `bank_account_name` varchar(100) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `bank_ifsc_code` varchar(20) DEFAULT NULL,
  `permissions_json` json DEFAULT NULL,
  `common_service_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`menu_based_service_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `menu_based_service_facility`
--

DROP TABLE IF EXISTS `menu_based_service_facility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_based_service_facility` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_based_service_id` int(11) DEFAULT NULL,
  `menu_based_service_parent_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text,
  `gender` enum('Male','Female','Unisex') DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `is_package` bit(1) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL COMMENT 'fix category',
  `facility_count` smallint(3) DEFAULT NULL,
  `detail_json` json DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `sort_order` smallint(3) DEFAULT NULL,
  `status_id` smallint(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `import_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2835 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `menu_based_service_search`
--

DROP TABLE IF EXISTS `menu_based_service_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_based_service_search` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_based_service_id` int(11) DEFAULT NULL,
  `menu_based_service_parent_id` int(11) DEFAULT NULL,
  `category_id` smallint(3) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=259 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `menu_based_service_slot`
--

DROP TABLE IF EXISTS `menu_based_service_slot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_based_service_slot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_based_service_id` int(11) DEFAULT NULL,
  `day` enum('Mon','Tue','Wed','Thu','Fri','Sat','Sun') DEFAULT NULL,
  `date` date DEFAULT NULL,
  `from_time` time DEFAULT NULL,
  `to_time` time DEFAULT NULL,
  `status_id` smallint(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11342 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `extra_data` json DEFAULT NULL,
  `notification_type` enum('USER','DOCTOR_APPOINTMENT','SUBSCRIPTION_PLAN','LAB_TEST') DEFAULT NULL,
  `platform_id` smallint(3) DEFAULT NULL,
  `app_id` smallint(3) DEFAULT NULL,
  `response` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=878 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `notification_gateway`
--

DROP TABLE IF EXISTS `notification_gateway`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification_gateway` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `notification_read_log`
--

DROP TABLE IF EXISTS `notification_read_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification_read_log` (
  `user_id` int(11) NOT NULL,
  `notification_id` int(11) DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `notification_template`
--

DROP TABLE IF EXISTS `notification_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bcc_address` varchar(250) DEFAULT NULL,
  `cc_address` varchar(100) DEFAULT NULL,
  `from_address` varchar(50) DEFAULT NULL,
  `reply_to` varchar(30) DEFAULT NULL,
  `subject` varchar(250) DEFAULT NULL,
  `html_body` text,
  `email_gateway_id` smallint(3) DEFAULT NULL,
  `app_notification_text` varchar(400) DEFAULT NULL,
  `sms_text` varchar(400) DEFAULT NULL,
  `sms_gateway_id` smallint(3) DEFAULT NULL,
  `dlt_templateid` varchar(25) DEFAULT NULL,
  `whats_app_text` varchar(400) CHARACTER SET utf8mb4 DEFAULT NULL,
  `whats_app_gateway_id` smallint(3) DEFAULT NULL,
  `service` enum('USER','DOCTOR_APPOINTMENT','SUBSCRIPTION_PLAN','LAB_TEST','COMMON_SERVICE','CORPORATE') DEFAULT NULL,
  `alert_type` enum('SIGN_IN_OTP','EMAIL_UPDATE_OTP','DONE','CANCELLED','RESCHEDULE','REMINDER','MEMBER_ADD','WELCOME','UPGRADED','SP_8_DONE','SIGNING_TIPS','PRESCRIPTION_UPLOAD') DEFAULT NULL,
  `sub_type` varchar(50) DEFAULT NULL,
  `extra_param` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `notification_template_copy1`
--

DROP TABLE IF EXISTS `notification_template_copy1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification_template_copy1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bcc_address` varchar(250) DEFAULT NULL,
  `cc_address` varchar(100) DEFAULT NULL,
  `from_address` varchar(50) DEFAULT NULL,
  `reply_to` varchar(30) DEFAULT NULL,
  `subject` varchar(250) DEFAULT NULL,
  `html_body` text,
  `email_gateway_id` smallint(3) DEFAULT NULL,
  `app_notification_text` varchar(400) DEFAULT NULL,
  `sms_text` varchar(400) DEFAULT NULL,
  `sms_gateway_id` smallint(3) DEFAULT NULL,
  `dlt_templateid` varchar(25) DEFAULT NULL,
  `whats_app_text` varchar(400) CHARACTER SET utf8mb4 DEFAULT NULL,
  `whats_app_gateway_id` smallint(3) DEFAULT NULL,
  `service` enum('USER','DOCTOR_APPOINTMENT','SUBSCRIPTION_PLAN','LAB_TEST','COMMON_SERVICE') DEFAULT NULL,
  `alert_type` enum('SIGN_IN_OTP','EMAIL_UPDATE_OTP','DONE','CANCELLED','RESCHEDULE','REMINDER','MEMBER_ADD','WELCOME','UPGRADED','SP_8_DONE') DEFAULT NULL,
  `sub_type` varchar(50) DEFAULT NULL,
  `extra_param` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `notification_template_copy2`
--

DROP TABLE IF EXISTS `notification_template_copy2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification_template_copy2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bcc_address` varchar(250) DEFAULT NULL,
  `cc_address` varchar(100) DEFAULT NULL,
  `from_address` varchar(50) DEFAULT NULL,
  `reply_to` varchar(30) DEFAULT NULL,
  `subject` varchar(250) DEFAULT NULL,
  `html_body` text,
  `email_gateway_id` smallint(3) DEFAULT NULL,
  `app_notification_text` varchar(400) DEFAULT NULL,
  `sms_text` varchar(400) DEFAULT NULL,
  `sms_gateway_id` smallint(3) DEFAULT NULL,
  `dlt_templateid` varchar(25) DEFAULT NULL,
  `whats_app_text` varchar(400) CHARACTER SET utf8mb4 DEFAULT NULL,
  `whats_app_gateway_id` smallint(3) DEFAULT NULL,
  `service` enum('USER','DOCTOR_APPOINTMENT','SUBSCRIPTION_PLAN','LAB_TEST','COMMON_SERVICE') DEFAULT NULL,
  `alert_type` enum('SIGN_IN_OTP','EMAIL_UPDATE_OTP','DONE','CANCELLED','RESCHEDULE','REMINDER','MEMBER_ADD','WELCOME','UPGRADED','SP_8_DONE') DEFAULT NULL,
  `sub_type` varchar(50) DEFAULT NULL,
  `extra_param` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `offer`
--

DROP TABLE IF EXISTS `offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `offer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `discount_type` int(11) NOT NULL DEFAULT '0',
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `fix_code` bit(1) NOT NULL DEFAULT b'0',
  `max_code_use` int(11) NOT NULL DEFAULT '0',
  `max_code_use_per_user` smallint(4) NOT NULL DEFAULT '0',
  `min_txn_amount` decimal(12,2) DEFAULT NULL,
  `max_discount_qty` decimal(12,2) NOT NULL DEFAULT '0.00',
  `max_discount_txn` decimal(12,2) NOT NULL DEFAULT '0.00',
  `max_offer_use` int(11) NOT NULL DEFAULT '0',
  `max_discount_per_user` decimal(12,2) NOT NULL DEFAULT '0.00',
  `max_offer_use_per_user` smallint(4) NOT NULL DEFAULT '0',
  `used_count` smallint(4) NOT NULL DEFAULT '0',
  `is_active` bit(1) NOT NULL DEFAULT b'0',
  `service_ids` varchar(255) DEFAULT NULL,
  `alert_quantity` smallint(4) NOT NULL DEFAULT '50',
  `description` varchar(100) DEFAULT NULL,
  `locked_count` smallint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `offer_code`
--

DROP TABLE IF EXISTS `offer_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `offer_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) DEFAULT NULL,
  `offer_id` int(11) NOT NULL DEFAULT '0',
  `status_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `expiration_time` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `voucher_code_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `offer_code_track`
--

DROP TABLE IF EXISTS `offer_code_track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `offer_code_track` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `benifit_amount` decimal(12,2) DEFAULT NULL,
  `benifit_time` datetime DEFAULT NULL,
  `complimentary_offer_code` varchar(15) DEFAULT NULL,
  `offer_id` int(11) DEFAULT NULL,
  `order_amount` decimal(12,2) DEFAULT NULL,
  `order_id` varchar(20) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `offer_code_id` int(11) DEFAULT NULL,
  `status_id` smallint(9) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_1lfe0w70iriqg0vkmyjwwb0be` (`offer_code_id`) USING BTREE,
  KEY `FK_guotpr48g158vkimx3ii608n7` (`status_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `offer_detail`
--

DROP TABLE IF EXISTS `offer_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `offer_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` bit(1) NOT NULL DEFAULT b'0',
  `color_code` varchar(10) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `display_expiry` bit(1) NOT NULL DEFAULT b'0',
  `display_used_count` bit(1) NOT NULL DEFAULT b'0',
  `how_to_apply` varchar(2000) DEFAULT NULL,
  `image_url` varchar(200) DEFAULT NULL,
  `offer_id` int(11) NOT NULL DEFAULT '0',
  `promo_code` varchar(17) DEFAULT NULL,
  `terms_and_condition` text,
  `title` varchar(50) DEFAULT NULL,
  `display_index` tinyint(4) NOT NULL DEFAULT '0',
  `meta_description` varchar(200) DEFAULT NULL,
  `meta_keyword` varchar(300) DEFAULT NULL,
  `meta_title` varchar(100) DEFAULT NULL,
  `slug` varchar(70) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_charges`
--

DROP TABLE IF EXISTS `order_charges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_charges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `service_id` smallint(3) DEFAULT NULL,
  `order_id` bigint(32) DEFAULT NULL,
  `order_detail_id` bigint(32) DEFAULT NULL,
  `charge_type_id` smallint(3) DEFAULT NULL,
  `name` varchar(70) DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `service_id` smallint(3) DEFAULT NULL,
  `ref_id` int(11) DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `coupon_amount` double(8,2) DEFAULT NULL,
  `wallet_amount` double(8,2) DEFAULT NULL,
  `pg_amount` double(8,2) NOT NULL DEFAULT '0.00',
  `paid_amount` double(8,2) DEFAULT NULL,
  `refund_amount` double(8,2) DEFAULT NULL,
  `cancellation_charge` double(8,2) DEFAULT NULL,
  `tax` double(8,2) DEFAULT NULL,
  `charges` double(8,2) DEFAULT NULL,
  `status_id` smallint(3) DEFAULT NULL,
  `tracking_status_id` smallint(3) DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `remark_color_code` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `histories_json` json DEFAULT NULL,
  `tracking_json` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=788 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_histories`
--

DROP TABLE IF EXISTS `order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_detail_id` int(11) DEFAULT NULL,
  `type` enum('ORDER','PAYMENT','TRACKING','ORDER_DETAIL') CHARACTER SET utf8 DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `remark` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5605 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_payment`
--

DROP TABLE IF EXISTS `order_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_mode_id` smallint(3) DEFAULT NULL,
  `pg_amount` double(8,2) DEFAULT NULL COMMENT 'Amount Received by Payment gateway',
  `refund_amount` double(8,2) DEFAULT NULL,
  `pg_reference_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `pg_response` text CHARACTER SET utf8,
  `pg_refund_response` text CHARACTER SET utf8,
  `status_id` smallint(3) DEFAULT NULL,
  `payment_sync_retry_count` smallint(3) DEFAULT NULL,
  `ip_address` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=788 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_code` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_subscription_id` int(11) DEFAULT NULL,
  `service_id` smallint(3) DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL COMMENT 'Here grand_total has total values of order_details.\r\n\r\nsuppose 1 order has two items. it has two entries in order_details\r\nand each has individual price, but here in order table has sum of both the item''s price',
  `charges` double(8,2) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `remark` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `remark_color_code` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `description_json` json DEFAULT NULL,
  `transaction_json` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=788 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `payment_mode`
--

DROP TABLE IF EXISTS `payment_mode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_mode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `properties_json` json DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `status_id` smallint(3) DEFAULT NULL,
  `display_index` smallint(3) DEFAULT NULL,
  `service_id` varbinary(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2871 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `platform`
--

DROP TABLE IF EXISTS `platform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `platform` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `code` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `report_problem`
--

DROP TABLE IF EXISTS `report_problem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_problem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `service_id` smallint(3) DEFAULT NULL,
  `ref_id` int(11) DEFAULT NULL,
  `description` text,
  `type` varchar(100) DEFAULT NULL,
  `status_id` smallint(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `report_problem_type`
--

DROP TABLE IF EXISTS `report_problem_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_problem_type` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `ref_id` int(11) DEFAULT NULL,
  `service_id` smallint(3) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text,
  `rating` tinyint(3) DEFAULT NULL,
  `reply` varchar(255) DEFAULT NULL,
  `replied_at` timestamp NULL DEFAULT NULL,
  `status_id` smallint(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2407 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `review_copy1`
--

DROP TABLE IF EXISTS `review_copy1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review_copy1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `ref_id` int(11) DEFAULT NULL,
  `service_id` smallint(3) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text,
  `rating` tinyint(3) DEFAULT NULL,
  `reply` varchar(255) DEFAULT NULL,
  `replied_at` timestamp NULL DEFAULT NULL,
  `status_id` smallint(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1503 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `salon_import`
--

DROP TABLE IF EXISTS `salon_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salon_import` (
  `main_sub` varchar(255) DEFAULT NULL,
  `sub_id` varchar(255) DEFAULT NULL,
  `id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `city_id` varchar(255) DEFAULT NULL,
  `state_id` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `virtual_location` bit(1) DEFAULT NULL,
  `status_id` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `description` text,
  `timing_json` text,
  `gallery_json` text,
  `additional_search_json` varchar(255) DEFAULT NULL,
  `pancard_number` varchar(255) DEFAULT NULL,
  `pancard_document` varchar(255) DEFAULT NULL,
  `gst_number` varchar(255) DEFAULT NULL,
  `gst_certificate` varchar(255) DEFAULT NULL,
  `bank_account_number` varchar(255) DEFAULT NULL,
  `bank_account_name` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `bank_ifsc_code` varchar(255) DEFAULT NULL,
  `cash_booking_allowed` bit(1) DEFAULT NULL,
  `cancellation_allowed` bit(1) DEFAULT NULL,
  `cancel_policy` varchar(255) DEFAULT NULL,
  `cancel_policy_setting` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `table_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `service_amenity`
--

DROP TABLE IF EXISTS `service_amenity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_amenity` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `category_id` smallint(3) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sms_log`
--

DROP TABLE IF EXISTS `sms_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `sms_content` varchar(500) DEFAULT NULL,
  `gateway_id` int(11) DEFAULT NULL,
  `response` text,
  `mobile` varchar(255) DEFAULT NULL,
  `notification_template_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4599 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `spa_import`
--

DROP TABLE IF EXISTS `spa_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spa_import` (
  `main_sub` varchar(255) DEFAULT NULL,
  `sub_id` varchar(255) DEFAULT NULL,
  `id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `city_id` varchar(255) DEFAULT NULL,
  `state_id` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `virtual_location` bit(1) DEFAULT NULL,
  `status_id` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `description` text,
  `timing_json` text,
  `gallery_json` text,
  `additional_search_json` varchar(255) DEFAULT NULL,
  `pancard_number` varchar(255) DEFAULT NULL,
  `pancard_document` varchar(255) DEFAULT NULL,
  `gst_number` varchar(255) DEFAULT NULL,
  `gst_certificate` varchar(255) DEFAULT NULL,
  `bank_account_number` varchar(255) DEFAULT NULL,
  `bank_account_name` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `bank_ifsc_code` varchar(255) DEFAULT NULL,
  `cash_booking_allowed` bit(1) DEFAULT NULL,
  `cancellation_allowed` bit(1) DEFAULT NULL,
  `cancel_policy` varchar(255) DEFAULT NULL,
  `cancel_policy_setting` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state` (
  `id` smallint(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `active` bit(1) DEFAULT b'1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `state_copy1`
--

DROP TABLE IF EXISTS `state_copy1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state_copy1` (
  `id` smallint(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `active` bit(1) DEFAULT b'1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sub_menu`
--

DROP TABLE IF EXISTS `sub_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_menu` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(70) DEFAULT NULL,
  `action_json` json DEFAULT NULL,
  `sort_order` smallint(3) DEFAULT NULL,
  `active` bit(1) DEFAULT b'1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `member` smallint(3) DEFAULT NULL,
  `validity_in_days` smallint(3) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `terms` json DEFAULT NULL,
  `status_id` smallint(3) DEFAULT NULL,
  `plan_type` enum('MONTHLY','YEARLY') DEFAULT NULL,
  `display_index` smallint(3) DEFAULT NULL,
  `card_prefix` varchar(4) DEFAULT NULL,
  `user_type_id` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `subscription_16-03-2024`
--

DROP TABLE IF EXISTS `subscription_16-03-2024`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription_16-03-2024` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `member` smallint(3) DEFAULT NULL,
  `validity_in_days` smallint(3) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `terms` json DEFAULT NULL,
  `status_id` smallint(3) DEFAULT NULL,
  `plan_type` enum('MONTHLY','YEARLY') DEFAULT NULL,
  `display_index` smallint(3) DEFAULT NULL,
  `card_prefix` varchar(4) DEFAULT NULL,
  `user_type_id` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `subscription_based_service`
--

DROP TABLE IF EXISTS `subscription_based_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription_based_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `category_id` smallint(3) DEFAULT NULL,
  `contact_person` varchar(150) DEFAULT NULL,
  `name` varchar(70) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `mobile` varchar(12) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address1` varchar(150) DEFAULT NULL,
  `address2` varchar(150) DEFAULT NULL,
  `area` varchar(50) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `discount` smallint(3) DEFAULT NULL,
  `self_facility_available` bit(1) DEFAULT NULL,
  `cash_booking_allowed` bit(1) DEFAULT b'1',
  `cancellation_allowed` bit(1) DEFAULT b'1',
  `cancel_policy` json DEFAULT NULL,
  `cancel_policy_setting` json DEFAULT NULL,
  `sub_category_ids` varchar(50) DEFAULT NULL,
  `amenity_ids` varchar(50) DEFAULT NULL,
  `free_trial` bit(1) DEFAULT b'0',
  `gender` enum('Male','Female','Unisex') DEFAULT NULL,
  `status_id` smallint(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `userid_unique` (`user_id`) USING BTREE COMMENT 'user lab one to one relation'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `subscription_based_service_booking`
--

DROP TABLE IF EXISTS `subscription_based_service_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription_based_service_booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_subscription_id` int(11) DEFAULT NULL,
  `subscription_based_service_id` int(11) DEFAULT NULL,
  `subscription_based_service_parent_id` int(11) DEFAULT NULL,
  `user_member_id` int(11) DEFAULT NULL,
  `member_name` varchar(120) DEFAULT NULL,
  `member_mobile` varchar(12) DEFAULT NULL,
  `appointment_date` date DEFAULT NULL,
  `amount` decimal(12,2) DEFAULT NULL,
  `tax` decimal(8,2) DEFAULT NULL,
  `refund_amount` double(8,2) DEFAULT NULL,
  `discount` decimal(12,2) DEFAULT NULL,
  `status_id` smallint(3) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `subscription_based_service_booking_details`
--

DROP TABLE IF EXISTS `subscription_based_service_booking_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription_based_service_booking_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subscription_based_service_booking_id` int(11) DEFAULT NULL,
  `subscription_based_service_id` int(11) DEFAULT NULL,
  `subscription_based_service_parent_id` int(11) DEFAULT NULL,
  `subscription_based_service_facility_id` int(11) DEFAULT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `tax` decimal(8,2) DEFAULT NULL,
  `discount` decimal(8,2) DEFAULT NULL,
  `refund_amount` decimal(8,2) DEFAULT NULL,
  `status_id` smallint(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `subscription_based_service_details`
--

DROP TABLE IF EXISTS `subscription_based_service_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription_based_service_details` (
  `subscription_based_service_id` int(11) NOT NULL,
  `description` text,
  `gallery_json` json DEFAULT NULL,
  `timing_json` json DEFAULT NULL,
  `pancard_number` varchar(25) DEFAULT NULL,
  `pancard_document` varchar(70) DEFAULT NULL,
  `gst_number` varchar(25) DEFAULT NULL,
  `gst_certificate` varchar(70) DEFAULT NULL,
  `bank_account_number` varchar(25) DEFAULT NULL,
  `bank_account_name` varchar(100) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `bank_ifsc_code` varchar(20) DEFAULT NULL,
  `permissions_json` json DEFAULT NULL,
  PRIMARY KEY (`subscription_based_service_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `subscription_based_service_facility`
--

DROP TABLE IF EXISTS `subscription_based_service_facility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription_based_service_facility` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subscription_based_service_id` int(11) DEFAULT NULL,
  `subscription_based_service_parent_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text,
  `gender` enum('Male','Female','Unisex') DEFAULT NULL,
  `days` varchar(50) DEFAULT NULL,
  `sub_category_ids` varchar(100) DEFAULT NULL,
  `calories_burn` varchar(30) DEFAULT NULL,
  `result` text,
  `note` text,
  `detail_json` json DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `sort_order` smallint(3) DEFAULT NULL,
  `status_id` smallint(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `subscription_based_service_search`
--

DROP TABLE IF EXISTS `subscription_based_service_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription_based_service_search` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subscription_based_service_id` int(11) DEFAULT NULL,
  `subscription_based_service_parent_id` int(11) DEFAULT NULL,
  `category_id` smallint(3) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(35) DEFAULT NULL,
  `last_name` varchar(35) DEFAULT NULL,
  `email` varchar(65) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `blood_group` enum('A+','A-','B+','B-','AB+','AB-','O+','O-') DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  `photo` varchar(70) DEFAULT NULL,
  `user_type_id` smallint(3) DEFAULT NULL,
  `status_id` smallint(3) DEFAULT NULL,
  `ref_code` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unique_mobile` (`mobile`,`user_type_id`) USING BTREE COMMENT 'user type wise unique mobile no',
  UNIQUE KEY `unique_email` (`email`,`user_type_id`) USING BTREE COMMENT 'user type wise unique email'
) ENGINE=InnoDB AUTO_INCREMENT=2217 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_access`
--

DROP TABLE IF EXISTS `user_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_access` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `menu_id` smallint(3) NOT NULL DEFAULT '0',
  `sub_menu_id` smallint(3) NOT NULL DEFAULT '0',
  `action_json` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`menu_id`,`sub_menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_address`
--

DROP TABLE IF EXISTS `user_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `type` enum('Home','Work','Other') DEFAULT NULL,
  `address_1` varchar(150) DEFAULT NULL,
  `address_2` varchar(150) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `state_id` int(9) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `city_id` int(9) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_copy1`
--

DROP TABLE IF EXISTS `user_copy1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_copy1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(35) DEFAULT NULL,
  `last_name` varchar(35) DEFAULT NULL,
  `email` varchar(65) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `blood_group` enum('A+','A-','B+','B-','AB+','AB-','O+','O-') DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  `photo` varchar(70) DEFAULT NULL,
  `user_type_id` smallint(3) DEFAULT NULL,
  `status_id` smallint(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unique_mobile` (`mobile`,`user_type_id`) USING BTREE COMMENT 'user type wise unique mobile no',
  UNIQUE KEY `unique_email` (`email`,`user_type_id`) USING BTREE COMMENT 'user type wise unique email'
) ENGINE=InnoDB AUTO_INCREMENT=811 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_details` (
  `user_id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `permission_json` json DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_device_mapping`
--

DROP TABLE IF EXISTS `user_device_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_device_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `device_id` varchar(100) DEFAULT NULL,
  `registration_id` varchar(200) DEFAULT NULL,
  `app_id` smallint(3) DEFAULT NULL,
  `platform_id` smallint(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_id` smallint(3) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1985 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_family_member`
--

DROP TABLE IF EXISTS `user_family_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_family_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `user_subscription_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `first_name` varchar(35) DEFAULT NULL,
  `last_name` varchar(35) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `relation` enum('GRAND FATHER','GRAND MOTHER','FATHER','MOTHER','WIFE','HUSBAND','SISTER','BROTHER','SON','DAUGHTER','COUSIN','AUNT','UNCLE','GUEST','OTHER') DEFAULT NULL,
  `status_id` smallint(3) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_medical_history`
--

DROP TABLE IF EXISTS `user_medical_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_medical_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `service_ref_id` int(11) DEFAULT NULL,
  `ref_id` int(11) DEFAULT NULL,
  `service_id` smallint(3) DEFAULT NULL,
  `uploaded_by` int(11) DEFAULT NULL,
  `status_id` smallint(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=313 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_medical_history_mapping`
--

DROP TABLE IF EXISTS `user_medical_history_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_medical_history_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_medical_history_id` int(11) DEFAULT NULL,
  `original_file_name` varchar(250) DEFAULT NULL,
  `file` varchar(250) DEFAULT NULL,
  `medicine` varchar(250) DEFAULT NULL,
  `days` smallint(3) DEFAULT NULL,
  `qty` smallint(3) DEFAULT NULL,
  `frequency_json` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=315 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_patient_mapping`
--

DROP TABLE IF EXISTS `user_patient_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_patient_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `first_name` varchar(35) DEFAULT NULL,
  `last_name` varchar(35) DEFAULT NULL,
  `email` varchar(65) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `blood_group` enum('A+','A-','B+','B-','AB+','AB-','O+','O-') DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  `relation` enum('GRAND FATHER','GRAND MOTHER','FATHER','MOTHER','WIFE','HUSBAND','SISTER','BROTHER','SON','DAUGHTER','COUSIN','AUNT','UNCLE','GUEST','OTHER','SELF') DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT b'0',
  `status_id` smallint(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2099 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_status_log`
--

DROP TABLE IF EXISTS `user_status_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_status_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `remark_private` varchar(255) DEFAULT NULL,
  `remark_public` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status_id` smallint(3) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_subscription`
--

DROP TABLE IF EXISTS `user_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_subscription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subscription_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `card_no` varchar(20) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `status_id` smallint(3) DEFAULT NULL,
  `amount` decimal(6,2) DEFAULT NULL,
  `tax` decimal(6,2) DEFAULT NULL,
  `order_id` varchar(30) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=500 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_subscription_16-03-2024`
--

DROP TABLE IF EXISTS `user_subscription_16-03-2024`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_subscription_16-03-2024` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subscription_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `card_no` varchar(20) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `status_id` smallint(3) DEFAULT NULL,
  `amount` decimal(6,2) DEFAULT NULL,
  `tax` decimal(6,2) DEFAULT NULL,
  `order_id` varchar(30) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=444 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_type`
--

DROP TABLE IF EXISTS `user_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_type` (
  `id` smallint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_upload`
--

DROP TABLE IF EXISTS `user_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_upload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `service_ref_id` int(11) DEFAULT NULL,
  `user_patient_id` int(11) DEFAULT NULL,
  `ref_id` int(11) DEFAULT NULL,
  `service_id` smallint(3) DEFAULT NULL,
  `uploaded_by` int(11) DEFAULT NULL,
  `file_json` text,
  `status_id` smallint(3) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `user_remark` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping routines for database 'healthism_live'
--
/*!50003 DROP FUNCTION IF EXISTS `haversine` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `haversine`(`lat1` double,`lon1` double,`lat2` double,`lon2` double) RETURNS double
BEGIN
-- 	#Routine body goes here...
-- 	DECLARE dLat DECIMAL(18,15);
-- 	DECLARE dLon DECIMAL(18,15);
-- 
-- 	SET dLat = RADIANS(lat2- lat1);
-- 	SET dLon = RADIANS(lon2- lon1);
-- 	
-- 	SET lat1 = RADIANS(lat1);
-- 	SET lon1 = RADIANS(lon1);
-- 	
-- 	RETURN 6371 * (2 * ASIN(SQRT(POW(SIN(dLat/2),2) + POW(SIN(dLon/2),2) * COS(lat1) * COS(lat2)))) * 1000;
-- 	RETURN RADIANS(lon2- lon1);
RETURN (6371 * acos( cos( radians (lat1) ) * cos( radians ( lat2 ) ) * cos( radians ( lon1 ) - radians (lon2) ) + sin( radians (lat1) ) * sin( radians ( lat2 ) ) ))*1000;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50112 SET @disable_bulk_load = IF (@is_rocksdb_supported, 'SET SESSION rocksdb_bulk_load = @old_rocksdb_bulk_load', 'SET @dummy_rocksdb_bulk_load = 0') */;
/*!50112 PREPARE s FROM @disable_bulk_load */;
/*!50112 EXECUTE s */;
/*!50112 DEALLOCATE PREPARE s */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-11 19:10:14
