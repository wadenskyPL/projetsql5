-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Aug 28, 2023 at 01:20 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `management_employees`
--

-- --------------------------------------------------------

--
-- Table structure for table `departement`
--

DROP TABLE IF EXISTS `departement`;
CREATE TABLE IF NOT EXISTS `departement` (
  `id_departement` int(11) NOT NULL AUTO_INCREMENT,
  `non` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_departement`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departement`
--

INSERT INTO `departement` (`id_departement`, `non`) VALUES
(1, 'vente'),
(2, 'marketing'),
(3, 'ressources humaines'),
(4, 'technologie'),
(5, 'comptabilite');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `id_employer` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `departement` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_employer`),
  KEY `departement` (`departement`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id_employer`, `first_name`, `last_name`, `email`, `hire_date`, `departement`) VALUES
(1, 'Toussaint', 'Alex', 'alextoussaint@gmail.com', '2022-06-10', 1),
(2, 'jean', 'Markenson', 'markensonje.@gmail.com', '2019-08-27', 2),
(3, 'Louitil', 'Maryse', 'maryseLo10@gmail.com', '2019-06-14', 4),
(4, 'Louis', 'Mirlane', 'mirlandelou.@gmail.com', '2019-06-14', 2),
(5, 'Pierre', 'Anne Sarah', 'sarahpAnne@gmail.com', '2023-02-10', 4),
(6, 'Alexandre', 'James', 'jamesAlex101@gmail.com', '2020-04-25', 2),
(7, 'Orelien', 'junie', 'junieorelien@gmail.com', '2023-08-17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

DROP TABLE IF EXISTS `salaries`;
CREATE TABLE IF NOT EXISTS `salaries` (
  `id_salarie` int(11) NOT NULL AUTO_INCREMENT,
  `employer` int(11) DEFAULT NULL,
  `salary_amount` decimal(10,0) DEFAULT NULL,
  `efective_date` date DEFAULT NULL,
  PRIMARY KEY (`id_salarie`),
  KEY `employer` (`employer`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salaries`
--

INSERT INTO `salaries` (`id_salarie`, `employer`, `salary_amount`, `efective_date`) VALUES
(1, 1, '5000', '2023-07-30'),
(2, 2, '37002', '2023-06-19'),
(3, 2, '5745', '2022-10-12'),
(4, 2, '5745', '2022-06-10'),
(5, 2, '5757', '2022-07-10');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
