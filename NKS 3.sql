-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 25, 2023 at 03:17 PM
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
-- Database: `nks`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `bName` char(25) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `PoP` char(50) DEFAULT NULL,
  `DoT` date DEFAULT NULL,
  `sDept` char(25) DEFAULT NULL,
  `sTime` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`bName`, `email`, `PoP`, `DoT`, `sDept`, `sTime`) VALUES
('masula frank', 'frankmas23@gmail.com', 'consultation', '2023-05-13', 'cardiology', '03:30pm');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

DROP TABLE IF EXISTS `contactus`;
CREATE TABLE IF NOT EXISTS `contactus` (
  `cName` char(25) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `subject` char(100) DEFAULT NULL,
  `mNo` char(15) DEFAULT NULL,
  `message` char(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`cName`, `email`, `subject`, `mNo`, `message`) VALUES
('kigozi frank', 'kigzfran2@gmail.com', 'checkup', '789543234', 'i have back pain and i wnt to check it out cause it is causing me pain');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
CREATE TABLE IF NOT EXISTS `doctors` (
  `Dname` char(25) DEFAULT NULL,
  `Dcourse` char(25) DEFAULT NULL,
  `Dept` char(30) DEFAULT NULL,
  `Email` char(50) DEFAULT NULL,
  `Insta` char(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`Dname`, `Dcourse`, `Dept`, `Email`, `Insta`) VALUES
('Dr. Mable Nabuuma F', 'consultant', 'childcare', 'flaviamble@gmail.com', 'flaviamable'),
('Dr. Sandra Nankya', 'MBBS', 'neurology and cardiology', 'sandranankya53@gmail.com', '1silence2022'),
('Dr Racheal Namakula', 'MBBS,MS,DNB', 'General sugery and Orthopedics', 'namakularach@gmail.com', 'Asher5a'),
('Dr Ratifah Namirembe', 'MBBS', ' health checkup', 'namiremberatifa4@gmail.com', 'ratifan'),
('Dr Bryan Kyeyune', 'MD', 'Dermatology', 'kyeyunebryan439@gmail.com', 'bryank'),
('Dr Isaac Ordur', 'MBBS,MS,MD', 'Eye specilaist', 'isaacordur43@gmail.com', 'kevinO'),
('Dr Xiao Zhan', 'MBBS', 'CCU & ICU', 'sandranankya53@gamil.com', 'xz_1991x'),
('Dr Haraman Masaba', 'MBBS', 'health checkup', 'harmanmasaba@gmail.com', 'harman45');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `email` varchar(25) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mothers`
--

DROP TABLE IF EXISTS `mothers`;
CREATE TABLE IF NOT EXISTS `mothers` (
  `pName` char(25) DEFAULT NULL,
  `wardNo` char(5) DEFAULT NULL,
  `DoD` date DEFAULT NULL,
  `addr` char(25) DEFAULT NULL,
  `NoC` char(5) DEFAULT NULL,
  `Gender` char(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mothers`
--

INSERT INTO `mothers` (`pName`, `wardNo`, `DoD`, `addr`, `NoC`, `Gender`) VALUES
('Mary Namakula', '101', '1990-08-20', 'najera', '2', 'F&M'),
('Emily Kabana', '102', '1988-05-12', 'Gayaza', '1', 'F'),
('Prossy Namirembe', '102', '2000-09-12', 'Nakulabye', '1', 'F');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `pName` char(25) NOT NULL,
  `addr` char(25) NOT NULL,
  `Disease` char(25) NOT NULL,
  `Ward` char(25) DEFAULT NULL,
  `Doctor` char(25) DEFAULT NULL,
  `DoB` date DEFAULT NULL,
  `action` char(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`pName`, `addr`, `Disease`, `Ward`, `Doctor`, `DoB`, `action`) VALUES
('John SSentamu', 'muyenga', 'Hypertension', 'cardiology', 'Dr sandra N', '1980-05-10', 'delete'),
('Ronny Wamala', 'wandegeya', 'fractured bone', 'Orthopedics', 'Dr. Racheal.N', '1992-12-15', 'delete'),
('james Harry', 'Nansana', 'Chicken pox', 'family dept', 'Dr Mable N', '2001-12-06', 'delete');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
CREATE TABLE IF NOT EXISTS `registration` (
  `fName` char(15) DEFAULT NULL,
  `lName` char(15) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `Password` varchar(25) DEFAULT NULL,
  `Cpassword` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`fName`, `lName`, `email`, `Password`, `Cpassword`) VALUES
('mable', 'nankya', 'mablenak435@gmail.com', '11mabsa', '11mabsa');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
