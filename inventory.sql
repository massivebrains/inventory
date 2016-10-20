-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2016 at 12:44 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblcategories`
--

CREATE TABLE IF NOT EXISTS `tblcategories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tblcategories`
--

INSERT INTO `tblcategories` (`category_id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Drugs', '2016-10-01 00:00:00', '0000-00-00 00:00:00'),
(2, 'Wears', '2016-10-01 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

CREATE TABLE IF NOT EXISTS `tblorders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) NOT NULL,
  `order_details` text NOT NULL,
  `order_total` double NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL,
  `order_number` varchar(10) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tblorders`
--

INSERT INTO `tblorders` (`order_id`, `customer_name`, `order_details`, `order_total`, `created_at`, `updated_at`, `order_number`) VALUES
(1, 'Olaiya Segun Paul', '[{"product_id":"6","product_price":"43","qty":"12"},{"product_id":"6","product_price":"43","qty":"5"},{"product_id":"7","product_price":"4061","qty":"21"},{"product_id":"14","product_price":"7887","qty":"4"},{"product_id":"16","product_price":"9894","qty":"20"},{"product_id":"18","product_price":"3184","qty":"13"}]', 356832, '2016-10-19 22:00:33', '0000-00-00 00:00:00', '13857962'),
(2, 'Tunde Kilani', '[{"product_id":"5","product_price":"6905","qty":"4"},{"product_id":"7","product_price":"4061","qty":"13"},{"product_id":"14","product_price":"7887","qty":"5"}]', 119848, '2016-10-19 22:01:35', '0000-00-00 00:00:00', '49371805');

-- --------------------------------------------------------

--
-- Table structure for table `tblproducts`
--

CREATE TABLE IF NOT EXISTS `tblproducts` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_price` double NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=67 ;

--
-- Dumping data for table `tblproducts`
--

INSERT INTO `tblproducts` (`product_id`, `product_name`, `category_id`, `product_price`, `created_at`, `updated_at`) VALUES
(1, 'Viagra', 1, 1689, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Meloxicam', 1, 8289, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Alprazolam', 1, 3829, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Fluticasone Propionate', 1, 4544, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Clonazepam', 1, 6905, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Gabapentin', 1, 43, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Doxycycline Hyclate', 1, 4061, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Zolpidem Tartrate', 1, 5044, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Ciprofloxacin HCl', 1, 2100, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'APAP/Codeine', 1, 8954, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Ibuprofen (Rx)', 1, 8674, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Singulair', 1, 1119, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Januvia', 1, 2850, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Famotidine', 1, 7887, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Zyprexa', 1, 4016, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Lisinopril', 1, 9894, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Sertraline HCl', 1, 4527, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Lorazepam', 1, 3184, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Lyrica', 1, 1119, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Oxycodone HCl', 1, 2546, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Carisoprodol', 1, 2732, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Lantus', 1, 1774, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Azithromycin', 1, 5409, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Namenda', 1, 3714, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Penicillin VK', 1, 2054, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Risperidone', 1, 4213, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Pravastatin Sodium', 1, 2700, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Benicar HCT', 1, 2763, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Promethazine HCl', 1, 9060, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Citalopram HBR', 1, 2101, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Vytorin', 1, 7288, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Hydrocodone/APAP', 1, 875, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Folic Acid', 1, 7249, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Hydrochlorothiazide', 1, 7733, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Proair HFA', 1, 1094, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Metformin HCl', 1, 1095, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Naproxen', 1, 4021, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Triamterene/Hydrochlorothiazide', 1, 4087, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Metoprolol Succinatee', 1, 5784, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Cyclobenzaprin HCl', 1, 9928, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Fluoxetine HCl', 1, 8871, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Allopurinol', 1, 6139, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Crestor', 1, 2834, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Simvastatin', 1, 8069, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Prednisone', 1, 9247, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Tricor', 1, 3877, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Levoxyl', 1, 3325, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Sulfamethoxazole/Trimethoprim', 1, 2368, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Gianvi', 1, 3650, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Triamcinolone Acetonide', 1, 2335, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Levothyroxine Sodium', 1, 5894, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Diazepam', 1, 8436, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Omeprazole (Rx)', 1, 7244, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Cymbalta', 1, 6678, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'LevothyroxineSodium', 1, 7813, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Potassium Chloride', 1, 5322, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Nasonex', 1, 5816, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Enalapril Maleate', 1, 5950, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Amlodipine Besylate', 1, 8221, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Furosemide', 1, 3956, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'Lovastatin', 1, 8735, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Suboxone', 1, 721, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'Tri-Sprintec', 1, 7851, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'Carvedilol', 1, 8174, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'Lidoderm', 1, 5060, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'Digoxin', 1, 5195, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
