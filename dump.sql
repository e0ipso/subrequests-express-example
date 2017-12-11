# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.5.5-10.2.10-MariaDB)
# Database: test
# Generation Time: 2017-12-11 10:28:54 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table customer
# ------------------------------------------------------------

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;

INSERT INTO `customer` (`Id`, `Address`, `Country`, `Phone`, `Created_on`, `Updated_on`, `User_id`)
VALUES
	(1,'Great place','Japan',1234567451,'2017-12-10 08:05:46','2017-12-10 08:05:46',2),
	(2,'Calle del awesome','Spain',1547654321,'2017-12-10 08:05:46','2017-12-10 08:05:46',1),
	(3,'Home','',1234567451,'2017-12-10 11:43:50','2017-12-10 11:43:50',3),
	(4,'Not sure','New!',1234567451,'2017-12-10 11:43:50','2017-12-10 11:43:50',5),
	(5,'The beach','Japan',1232132444,'2017-12-10 11:44:40','2017-12-10 11:44:40',4);

/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user
# ------------------------------------------------------------

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `Name`, `Last_name`, `Github_handle`)
VALUES
	(1,'Christian','Lopez','penyaskito'),
	(2,'Pedro','Cambra','pcambra'),
	(3,'Mateu','Aguiló','e0ipso'),
	(4,'Pako','García','pakmanlh'),
	(5,'Cristina','Chumillas','ckrina');

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
