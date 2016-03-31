/*
SQLyog Enterprise - MySQL GUI v7.02 
MySQL - 5.0.67-community-nt : Database - ias_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`ias_db` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ias_db`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `admin_id` int(11) default NULL,
  `user_name` varchar(30) default NULL,
  `password` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`admin_id`,`user_name`,`password`) values (1,'root','123456');

/*Table structure for table `agent` */

DROP TABLE IF EXISTS `agent`;

CREATE TABLE `agent` (
  `agent_id` int(11) NOT NULL,
  `name` varchar(30) default NULL,
  `user_name` varchar(50) default NULL,
  `authorized` tinyint(1) default NULL,
  `DOB` date default NULL,
  `policy_id` int(11) default NULL,
  `password` varchar(40) default NULL,
  `address` varchar(100) default NULL,
  `contact_no` varchar(11) default NULL,
  PRIMARY KEY  (`agent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `agent` */

insert  into `agent`(`agent_id`,`name`,`user_name`,`authorized`,`DOB`,`policy_id`,`password`,`address`,`contact_no`) values (1,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `auto_apply` */

DROP TABLE IF EXISTS `auto_apply`;

CREATE TABLE `auto_apply` (
  `vehi_year` varchar(10) default NULL,
  `vehi_name` varchar(20) default NULL,
  `model_no` varchar(20) default NULL,
  `driver_name` varchar(15) default NULL,
  `lname` varchar(25) default NULL,
  `dob` date default NULL,
  `gender` varchar(15) default NULL,
  `education` varchar(40) default NULL,
  `married` varchar(10) default NULL,
  `lic_active` varchar(10) default NULL,
  `filing` varchar(15) default NULL,
  `ticket` varchar(20) default NULL,
  `address` varchar(50) default NULL,
  `city` varchar(25) default NULL,
  `state` varchar(25) default NULL,
  `fname` varchar(30) default NULL,
  `contact` varchar(15) default NULL,
  `email` varchar(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auto_apply` */

insert  into `auto_apply`(`vehi_year`,`vehi_name`,`model_no`,`driver_name`,`lname`,`dob`,`gender`,`education`,`married`,`lic_active`,`filing`,`ticket`,`address`,`city`,`state`,`fname`,`contact`,`email`) values ('1995','sdf','1254','asdffda','fdsa','1994-01-01','F','Less then High school','yes','no','yes','yes','asdf','tyu','Punjab','gfds','123654789','amit@gmail.com'),('1965','asdff','adfg','asdf','gfd','1993-01-01','F','Less then High school','yes','no','no','no','sdfgsdfg','gfd','Andhra Pradesh','ytre','456987321','amit@gmail.com'),('2012','asdf','gfsda','asdf','q3r','1989-01-04','F','Some or No high school','yes','yes','yes','yes','vbnm','asdfasdf','Andhra Pradesh','asdf','456982317','kanika@gmail.com'),('2011','jkvh','bkjbk','kjbkj','kjbkj','1993-01-01','F','Some or No high school',NULL,NULL,NULL,NULL,'','','Select','','',''),('2011','jkvh','bkjbk','kjbkj','kjbkj','1993-01-01','F','Some or No high school','yes','yes','yes','yes','dfgh','mnbv','Maharastra','cvbn','123654789','kanika@gmail.com'),('2011','fghj','kjhg','n','jhgf','1990-01-01','F','Less then High school',NULL,NULL,NULL,NULL,'','','Select','','',''),('2011','fghj','kjhg','n','jhgf','1990-01-01','F','Less then High school','yes','yes','yes','yes','dfghj','cvb','Assam','erty','547896321','kanika@gmail.com'),('2011','fghj','kjhg','n','jhgf','1990-01-01','F','Less then High school','yes','yes','yes','yes','dfghj','cvb','Assam','erty','547896321','kanika@gmail.com');

/*Table structure for table `auto_policy` */

DROP TABLE IF EXISTS `auto_policy`;

CREATE TABLE `auto_policy` (
  `plan_id` int(11) NOT NULL,
  `name` varchar(50) default NULL,
  `interest_rate` float default NULL,
  `recovery_percentage` float default NULL,
  PRIMARY KEY  (`plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auto_policy` */

/*Table structure for table `client` */

DROP TABLE IF EXISTS `client`;

CREATE TABLE `client` (
  `client_id` int(11) NOT NULL,
  `client_name` varchar(30) default NULL,
  `user_name` varchar(50) default NULL,
  `client_address` varchar(100) default NULL,
  `contact_no` varchar(11) default NULL,
  `password` varchar(50) default NULL,
  PRIMARY KEY  (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `client` */

/*Table structure for table `health_apply` */

DROP TABLE IF EXISTS `health_apply`;

CREATE TABLE `health_apply` (
  `fname` varchar(25) default NULL,
  `lname` varchar(20) default NULL,
  `gender` varchar(10) default NULL,
  `dob` date default NULL,
  `smoke` varchar(10) default NULL,
  `spouse` varchar(10) default NULL,
  `medical` varchar(50) default NULL,
  `children` varchar(10) default NULL,
  `hostld` varchar(10) default NULL,
  `occupation` varchar(40) default NULL,
  `income` varchar(20) default NULL,
  `howner` varchar(15) default NULL,
  `address` varchar(50) default NULL,
  `city` varchar(25) default NULL,
  `state` varchar(25) default NULL,
  `contact` varchar(14) default NULL,
  `email` varchar(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `health_apply` */

insert  into `health_apply`(`fname`,`lname`,`gender`,`dob`,`smoke`,`spouse`,`medical`,`children`,`hostld`,`occupation`,`income`,`howner`,`address`,`city`,`state`,`contact`,`email`) values ('z6ttt6t','z5rf5gt','M','2013-02-03','no','yes','Liver Disease','2','yes','Scientist','150000','yes','dfgbtbgrv','rgggbrb','J & k','768566768','hbffrj@gmail.com');

/*Table structure for table `home_policy` */

DROP TABLE IF EXISTS `home_policy`;

CREATE TABLE `home_policy` (
  `plan_id` int(11) NOT NULL,
  `name` varchar(50) default NULL,
  `interest_rate` float default NULL,
  `recovery_percentage` float default NULL,
  PRIMARY KEY  (`plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `home_policy` */

/*Table structure for table `homeapply` */

DROP TABLE IF EXISTS `homeapply`;

CREATE TABLE `homeapply` (
  `tofowner` varchar(10) default NULL,
  `totenture` varchar(15) default NULL,
  `howold` varchar(15) default NULL,
  `address` varchar(75) default NULL,
  `city` varchar(15) default NULL,
  `state` varchar(15) default NULL,
  `fname` varchar(20) default NULL,
  `email` varchar(30) default NULL,
  `contact` varchar(14) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `homeapply` */

insert  into `homeapply`(`tofowner`,`totenture`,`howold`,`address`,`city`,`state`,`fname`,`email`,`contact`) values ('rented','1','yes','asdvbn','iuyt','Sikkim','cvbn','amit@gmail.com','7896541235'),('owned','1','no','asdf','jaipur','Rajasthan','amit','amit@gmail.com','741052563');

/*Table structure for table `house` */

DROP TABLE IF EXISTS `house`;

CREATE TABLE `house` (
  `house_id` int(11) NOT NULL auto_increment,
  `house_no` int(11) default NULL,
  `client_id` int(11) default NULL,
  `plan_id` int(11) NOT NULL,
  `agent_id` int(11) default NULL,
  `total_price` int(11) default NULL,
  `premium` float default NULL,
  `premium_type` varchar(15) default NULL,
  `reg_date` date default NULL,
  `issue_date` date default NULL,
  `years` int(11) default NULL,
  PRIMARY KEY  (`house_id`,`plan_id`),
  UNIQUE KEY `house_id` (`house_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `house` */

/*Table structure for table `l_apply` */

DROP TABLE IF EXISTS `l_apply`;

CREATE TABLE `l_apply` (
  `fname` varchar(20) default NULL,
  `lname` varchar(20) default NULL,
  `gender` varchar(10) default NULL,
  `dob` date default NULL,
  `spouse` varchar(15) default NULL,
  `children` varchar(2) default NULL,
  `occupation` varchar(50) default NULL,
  `howner` varchar(10) default NULL,
  `lifeowner` varchar(10) default NULL,
  `prop_time` varchar(20) default NULL,
  `address` varchar(20) default NULL,
  `city` varchar(10) default NULL,
  `state` varchar(10) default NULL,
  `email` varchar(30) default NULL,
  `contact` varchar(15) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `l_apply` */

insert  into `l_apply`(`fname`,`lname`,`gender`,`dob`,`spouse`,`children`,`occupation`,`howner`,`lifeowner`,`prop_time`,`address`,`city`,`state`,`email`,`contact`) values ('amit','jangir','Male','0000-00-00','no','0','asdf','sadf','adsf','asdf','asdf','asdf','adf','asdf','asdf'),('amit','jangir','M','2014-01-03','yes','3','Student','yes','on','yes','asdf','asdfff','Meghlya','amit5010jangir@gmail.com','985471236'),('amit','asdff','M','1998-03-02','no','0','Unemployed','yes','on','yes','lkjhgfd','qwertyui','Manipur','amit@gmail.com','2587456319');

/*Table structure for table `life_policy` */

DROP TABLE IF EXISTS `life_policy`;

CREATE TABLE `life_policy` (
  `plan_id` int(11) NOT NULL,
  `name` varchar(50) default NULL,
  `interest_rate` float default NULL,
  `recovery_percentage` float default NULL,
  PRIMARY KEY  (`plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `life_policy` */

/*Table structure for table `person` */

DROP TABLE IF EXISTS `person`;

CREATE TABLE `person` (
  `client_id` int(11) NOT NULL,
  `agent_id` varchar(50) default NULL,
  `plan_id` int(11) NOT NULL,
  `total_price` int(11) default NULL,
  `premium` int(11) default NULL,
  `premium_type` varchar(15) default NULL,
  `issue_date` date default NULL,
  `years` int(11) default NULL,
  PRIMARY KEY  (`client_id`,`plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `person` */

/*Table structure for table `policy` */

DROP TABLE IF EXISTS `policy`;

CREATE TABLE `policy` (
  `policy_id` int(11) NOT NULL,
  `policy_name` varchar(50) default NULL,
  PRIMARY KEY  (`policy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `policy` */

insert  into `policy`(`policy_id`,`policy_name`) values (1,'Life Policy'),(2,'Auto Policy'),(3,'Home Policy'),(4,'Health Policy');

/*Table structure for table `premium_paid` */

DROP TABLE IF EXISTS `premium_paid`;

CREATE TABLE `premium_paid` (
  `txn_id` int(11) NOT NULL auto_increment,
  `client_id` int(11) default NULL,
  `policy_id` int(11) default NULL,
  `plan_id` int(11) default NULL,
  `premium` int(11) default NULL,
  `txn_date` date default NULL,
  PRIMARY KEY  (`txn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `premium_paid` */

/*Table structure for table `vehicle` */

DROP TABLE IF EXISTS `vehicle`;

CREATE TABLE `vehicle` (
  `vehicle_id` int(11) NOT NULL auto_increment,
  `model_no` varchar(50) default NULL,
  `client_id` int(11) default NULL,
  `agent_id` int(11) default NULL,
  `plan_id` int(11) NOT NULL,
  `total_price` int(11) default NULL,
  `premium` float default NULL,
  `premium_type` varchar(15) default NULL,
  `reg_date` date default NULL,
  `issue_date` date default NULL,
  `years` int(11) default NULL,
  PRIMARY KEY  (`vehicle_id`,`plan_id`),
  UNIQUE KEY `vehicle_id` (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `vehicle` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
