/*
SQLyog - Free MySQL GUI v5.17
Host - 8.0.26 : Database - food_factory
*********************************************************************
Server version : 8.0.26
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `food_factory`;

USE `food_factory`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `bills` */

DROP TABLE IF EXISTS `bills`;

CREATE TABLE `bills` (
  `bid` int NOT NULL AUTO_INCREMENT,
  `cName` varchar(100) DEFAULT NULL,
  `tableNo` varchar(10) DEFAULT NULL,
  `totalAmount` varchar(100) DEFAULT NULL,
  `bdate` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Table structure for table `customerdetail` */

DROP TABLE IF EXISTS `customerdetail`;

CREATE TABLE `customerdetail` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `custName` varchar(100) DEFAULT NULL,
  `custMobile` varchar(20) DEFAULT NULL,
  `cdate` varchar(20) DEFAULT NULL,
  `cTime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Table structure for table `fooddetails` */

DROP TABLE IF EXISTS `fooddetails`;

CREATE TABLE `fooddetails` (
  `fid` int NOT NULL AUTO_INCREMENT,
  `dishName` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `FoodCategory` varchar(100) DEFAULT NULL,
  `MenuCategory` varchar(100) DEFAULT NULL,
  `info` varchar(500) DEFAULT NULL,
  `img` mediumblob,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Table structure for table `orderdetail` */

DROP TABLE IF EXISTS `orderdetail`;

CREATE TABLE `orderdetail` (
  `oid` int NOT NULL AUTO_INCREMENT,
  `dishname` varchar(100) DEFAULT NULL,
  `foodcate` varchar(100) DEFAULT NULL,
  `menucate` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `qnt` varchar(50) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `order_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `review_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tableNo` int DEFAULT NULL,
  `Dtime` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Table structure for table `plates` */

DROP TABLE IF EXISTS `plates`;

CREATE TABLE `plates` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `noofplate` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Table structure for table `review` */

DROP TABLE IF EXISTS `review`;

CREATE TABLE `review` (
  `rid` int NOT NULL AUTO_INCREMENT,
  `menu` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `rating` varchar(10) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  `rDate` varchar(20) DEFAULT NULL,
  `rTime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Table structure for table `staffdetail` */

DROP TABLE IF EXISTS `staffdetail`;

CREATE TABLE `staffdetail` (
  `sid` int NOT NULL AUTO_INCREMENT,
  `StaffName` varchar(100) DEFAULT NULL,
  `StaffEmail` varchar(100) DEFAULT NULL,
  `Staffmobile` varchar(100) DEFAULT NULL,
  `Staffsalary` varchar(100) DEFAULT NULL,
  `StaffType` varchar(100) DEFAULT NULL,
  `StaffInfo` varchar(500) DEFAULT NULL,
  `img` mediumblob,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
