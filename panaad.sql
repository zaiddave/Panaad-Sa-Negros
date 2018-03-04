-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 12, 2016 at 01:22 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `panaad`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `user_id` int(5) NOT NULL AUTO_INCREMENT,
  `fname` text NOT NULL,
  `mname` text NOT NULL,
  `lname` text NOT NULL,
  `contact_info` text NOT NULL,
  `role` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `fname`, `mname`, `lname`, `contact_info`, `role`, `username`, `password`, `date_modified`) VALUES
(3, 'jeffred', 'pacheco', 'lim', '099909999 updated', 'admin', 'admin', '0c909a141f1f2c0a1cb602b0b2d7d050', '2016-05-12 15:35:05'),
(4, 'sarah123', 'sarah', 'as', 'asf', 'admin', 'sarah123', '123', '0000-00-00 00:00:00'),
(5, 'sarah123', 'sarah', 'as', 'asf', 'admin', 'sarah123', '202cb962ac59075b964b07152d234b70', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE IF NOT EXISTS `candidates` (
  `ca_id` int(11) NOT NULL AUTO_INCREMENT,
  `ca_name` text NOT NULL,
  `ca_city` text NOT NULL,
  `ca_desc` text NOT NULL,
  `ca_age` text NOT NULL,
  `c_year` int(4) NOT NULL,
  `source` text NOT NULL,
  `status` text NOT NULL,
  `edited_by` text NOT NULL,
  `posted_by` text NOT NULL,
  `picture` text NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`ca_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`ca_id`, `ca_name`, `ca_city`, `ca_desc`, `ca_age`, `c_year`, `source`, `status`, `edited_by`, `posted_by`, `picture`, `date_modified`) VALUES
(4, 'Jessa Grace Carmona Casabuena', 'Bacolod City', '  Gwapa   Gwapa   Gwapa   Gwapa   Gwapa   Gwapa   Gwapa   Gwapa   ', '19', 2016, 'The Tourism Office', 'confirmed', 'arlene', 'arlene', '1359-news1.jpg', '2016-05-12 16:04:06'),
(5, 'MHG', 'AF', ' JHJ  ', 'JHG', 0, 'JHG', 'confirmed', 'arlene', 'arlene', '78066-news1.jpg', '2016-05-12 17:23:25'),
(6, 'h', 'h', 'h ', 'h', 0, 'hh', 'pending', 'arlene', 'arlene', '23242-news.jpg', '2016-05-12 17:24:49');

-- --------------------------------------------------------

--
-- Table structure for table `directory`
--

CREATE TABLE IF NOT EXISTS `directory` (
  `d_id` int(5) NOT NULL AUTO_INCREMENT,
  `city` text NOT NULL,
  `officer` text NOT NULL,
  `phone` text NOT NULL,
  `fax` text NOT NULL,
  `email` text NOT NULL,
  `source` text NOT NULL,
  `status` text NOT NULL,
  `edited_by` text NOT NULL,
  `posted_by` text NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `directory`
--

INSERT INTO `directory` (`d_id`, `city`, `officer`, `phone`, `fax`, `email`, `source`, `status`, `edited_by`, `posted_by`, `date_modified`) VALUES
(30, 'Bacolod City', 'Arlene', '707-01-70 hahahaha', 'hahahaha', 'arlenealabado604@yahoo.com', 'The Tourism Office', 'confirmed', 'arlene', 'arlene', '2016-05-12 17:19:03'),
(31, 'M,B', 'JB', 'KJB', 'B', 'KB', 'B', 'pending', 'arlene', 'arlene', '2016-05-12 17:22:52');

-- --------------------------------------------------------

--
-- Table structure for table `festival_dances`
--

CREATE TABLE IF NOT EXISTS `festival_dances` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `festival_name` text NOT NULL,
  `festival_desc` text NOT NULL,
  `source` text NOT NULL,
  `status` text NOT NULL,
  `edited_by` text NOT NULL,
  `posted_by` text NOT NULL,
  `picture` text NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `festival_dances`
--

INSERT INTO `festival_dances` (`f_id`, `festival_name`, `festival_desc`, `source`, `status`, `edited_by`, `posted_by`, `picture`, `date_modified`) VALUES
(2, 'Maskara Festival ', '         nami nami   nami nami   nami nami   nami nami   nami nami   nami nami   nami nami   nami nami   nami nami   nami nami   nami nami   nami nami   nami nami   nami nami   nami nami   nami nami          ', 'asdfgasdf', 'confirmed', 'arlene', 'arlene', '64794-news1.jpg', '2016-05-12 17:08:37'),
(3, 'KJHKJ', 'JKG ', ',H', 'pending', 'arlene', 'arlene', '17281-news.jpg', '2016-05-12 17:22:11');

-- --------------------------------------------------------

--
-- Table structure for table `lgu`
--

CREATE TABLE IF NOT EXISTS `lgu` (
  `l_id` int(11) NOT NULL AUTO_INCREMENT,
  `l_city` text NOT NULL,
  `l_desc` text NOT NULL,
  `products` text NOT NULL,
  `trivias` text NOT NULL,
  `source` text NOT NULL,
  `status` text NOT NULL,
  `edited_by` text NOT NULL,
  `posted_by` text NOT NULL,
  `picture` text NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `lgu`
--

INSERT INTO `lgu` (`l_id`, `l_city`, `l_desc`, `products`, `trivias`, `source`, `status`, `edited_by`, `posted_by`, `picture`, `date_modified`) VALUES
(3, 'Bacolod City', '  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  ', '  Kalamay   ', '  Did you know that?   ', 'The Tourism Office', 'confirmed', 'arlene', 'arlene', '29532-news1.jpg', '2016-05-12 16:41:44'),
(4, 'M', 'JGJH ', 'JGKJ ', 'GK ', 'KHL', 'pending', 'arlene', 'arlene', '73163-news1.jpg', '2016-05-12 17:21:26');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `gov_id` int(5) NOT NULL AUTO_INCREMENT,
  `gov_name` text NOT NULL,
  `designation` text NOT NULL,
  `message_content` text NOT NULL,
  `source` text NOT NULL,
  `status` text NOT NULL,
  `edited_by` text NOT NULL,
  `posted_by` text NOT NULL,
  `date_modified` text NOT NULL,
  PRIMARY KEY (`gov_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`gov_id`, `gov_name`, `designation`, `message_content`, `source`, `status`, `edited_by`, `posted_by`, `date_modified`) VALUES
(2, 'Arlene Garay Alabado Villaplaza 123', 'Governor, Negros Occidental', '  To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   ', 'The Tourism Office', 'confirmed', 'arlene', 'arlene', '2016-05-12 16:45:40'),
(3, 'JHKJ', 'JBGK', 'JGK ', 'JKJ', 'pending', 'arlene', 'arlene', '2016-05-12 17:22:26');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `n_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `picture` text NOT NULL,
  `caption` text NOT NULL,
  `content` text NOT NULL,
  `source` text NOT NULL,
  `status` text NOT NULL,
  `edited_by` text NOT NULL,
  `posted_by` text NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`n_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`n_id`, `title`, `picture`, `caption`, `content`, `source`, `status`, `edited_by`, `posted_by`, `date_modified`) VALUES
(16, 'Murcia, Cadiz Top Panaad Folkdance Competition updated', '92982-news.jpg', 'Folkdancers from Cadiz City with their winning piece â€œLikod Likodâ€ during the Philippine Folkdance Competition, recently. */ Francis MuÃ±oz photo', '    The Municipality of Murcia was hailed champion in the Rural Category with their performance Kumakaret and the City of Cadiz topped the Maria Clara Category with their winning piece â€œLikod Likodâ€ during the 23rd Panaad sa Negros Philippine Folkdance Competition, recently.\r\n\r\nThe Municipalities of Manapla and Salvador Benedicto with their respective rural folkdances â€œSakutingâ€ and â€œAbarurayâ€ placed 2nd and 3rd, while Talisay, Bacolod, Hinigaran, Toboso and La Castellana received consolation prizes.\r\n\r\nIn the Maria Clara Category, Kabankalan Cityâ€™s Habanera BotoleÃ±a and San Carlos Cityâ€™s Jota Quirino bagged the 2nd and 3rd place respectively.\r\n\r\nConsolation prizes were given to Binalbagan, Silay, Himamaylan, Sagay and Bago.\r\n\r\nManapla was awarded Best in Costume and Murcia was awarded Best in Performance for the Rural Category while Binalbagan and Silay bagged the Best in Costume and Best in Performance, respectively, for the Maria Clara Category.\r\n\r\nCadiz Cityâ€™s Dr. Randyll Villones and Murciaâ€™s Carmelo Escototo were awarded Best Trainers for the Maria Clara and Rural Category, respectively.\r\n\r\nThe first place winner in the Rural Category received P35,000 while the 2nd and 3rd placers received 25,000 and 20,000 pesos respectively.\r\n\r\nFor the Maria Clara Category, the first place winner received P45,000 while 2nd and 3rd place received P30,000 and P25,000 respectively.\r\n\r\nAll consolation winners received P5,000 each.*/Capitol News    ', 'Publicity and Documentation', 'confirmed', 'arlene', 'arlene', '2016-05-12 15:53:00'),
(17, 'fsf', '2713-news.jpg', ' fqqf', 'wf', 'sgw', 'pending', 'arlene', 'arlene', '2016-05-12 17:19:53');

-- --------------------------------------------------------

--
-- Table structure for table `pending_candidates`
--

CREATE TABLE IF NOT EXISTS `pending_candidates` (
  `ca_id` int(11) NOT NULL AUTO_INCREMENT,
  `ca_name` text NOT NULL,
  `ca_city` text NOT NULL,
  `ca_desc` text NOT NULL,
  `ca_age` text NOT NULL,
  `c_year` int(4) NOT NULL,
  `source` text NOT NULL,
  `status` text NOT NULL,
  `edited_by` text NOT NULL,
  `posted_by` text NOT NULL,
  `picture` text NOT NULL,
  `reg_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`ca_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `pending_candidates`
--

INSERT INTO `pending_candidates` (`ca_id`, `ca_name`, `ca_city`, `ca_desc`, `ca_age`, `c_year`, `source`, `status`, `edited_by`, `posted_by`, `picture`, `reg_id`, `comment`, `date_modified`) VALUES
(3, 'Jessa Grace Carmona Casabuena', 'Bacolod City', ' Gwapa   Gwapa   Gwapa   Gwapa   Gwapa   Gwapa   Gwapa   Gwapa  ', '19', 2016, 'The Tourism Office', 'confirmed', 'arlene', 'arlene', '1359-news1.jpg', 4, ' desc too short', '2016-05-12 16:03:49'),
(4, 'MHG', 'AF', 'JHJ ', 'JHG', 0, 'JHG', 'confirmed', 'arlene', 'arlene', '78066-news1.jpg', 5, '', '2016-05-12 17:20:47'),
(5, 'h', 'h', 'h ', 'h', 0, 'hh', 'denied', 'arlene', 'arlene', '23242-news.jpg', 6, '', '2016-05-12 17:25:24');

-- --------------------------------------------------------

--
-- Table structure for table `pending_directory`
--

CREATE TABLE IF NOT EXISTS `pending_directory` (
  `d_id` int(5) NOT NULL AUTO_INCREMENT,
  `city` text NOT NULL,
  `officer` text NOT NULL,
  `phone` text NOT NULL,
  `fax` text NOT NULL,
  `email` text NOT NULL,
  `source` text NOT NULL,
  `status` text NOT NULL,
  `edited_by` text NOT NULL,
  `posted_by` text NOT NULL,
  `reg_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `pending_directory`
--

INSERT INTO `pending_directory` (`d_id`, `city`, `officer`, `phone`, `fax`, `email`, `source`, `status`, `edited_by`, `posted_by`, `reg_id`, `comment`, `date_modified`) VALUES
(1, 'Bacolod City', 'Arlene', '707-01-70 hahahaha', 'hahahaha', 'arlenealabado604@yahoo.com', 'The Tourism Office', 'confirmed', 'arlene', 'arlene', 30, ' change phone number', '2016-05-12 17:18:50'),
(2, 'M,B', 'JB', 'KJB', 'B', 'KB', 'B', 'denied', 'arlene', 'arlene', 31, '', '2016-05-12 17:25:07');

-- --------------------------------------------------------

--
-- Table structure for table `pending_festival_dances`
--

CREATE TABLE IF NOT EXISTS `pending_festival_dances` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `festival_name` text NOT NULL,
  `festival_desc` text NOT NULL,
  `source` text NOT NULL,
  `status` text NOT NULL,
  `edited_by` text NOT NULL,
  `posted_by` text NOT NULL,
  `picture` text NOT NULL,
  `reg_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `pending_festival_dances`
--

INSERT INTO `pending_festival_dances` (`f_id`, `festival_name`, `festival_desc`, `source`, `status`, `edited_by`, `posted_by`, `picture`, `reg_id`, `comment`, `date_modified`) VALUES
(2, 'Maskara Festival ', '        nami nami   nami nami   nami nami   nami nami   nami nami   nami nami   nami nami   nami nami   nami nami   nami nami   nami nami   nami nami   nami nami   nami nami   nami nami   nami nami         ', 'asdfgasdf', 'confirmed', 'arlene', 'arlene', '64794-news1.jpg', 2, ' desc too short', '2016-05-12 17:08:21'),
(3, 'KJHKJ', 'JKG ', ',H', 'denied', 'arlene', 'arlene', '17281-news.jpg', 3, '', '2016-05-12 17:24:07');

-- --------------------------------------------------------

--
-- Table structure for table `pending_lgu`
--

CREATE TABLE IF NOT EXISTS `pending_lgu` (
  `l_id` int(11) NOT NULL AUTO_INCREMENT,
  `l_city` text NOT NULL,
  `l_desc` text NOT NULL,
  `products` text NOT NULL,
  `trivias` text NOT NULL,
  `source` text NOT NULL,
  `status` text NOT NULL,
  `edited_by` text NOT NULL,
  `posted_by` text NOT NULL,
  `picture` text NOT NULL,
  `reg_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `pending_lgu`
--

INSERT INTO `pending_lgu` (`l_id`, `l_city`, `l_desc`, `products`, `trivias`, `source`, `status`, `edited_by`, `posted_by`, `picture`, `reg_id`, `comment`, `date_modified`) VALUES
(2, 'Bacolod City', ' nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami  nami nami ', ' Kalamay  ', ' Did you know that?  ', 'The Tourism Office', 'confirmed', 'arlene', 'arlene', '29532-news1.jpg', 3, ' desc too short', '2016-05-12 16:27:08'),
(3, 'M', 'JGJH ', 'JGKJ ', 'GK ', 'KHL', 'denied', 'arlene', 'arlene', '73163-news1.jpg', 4, '', '2016-05-12 17:24:00');

-- --------------------------------------------------------

--
-- Table structure for table `pending_message`
--

CREATE TABLE IF NOT EXISTS `pending_message` (
  `gov_id` int(5) NOT NULL AUTO_INCREMENT,
  `gov_name` text NOT NULL,
  `designation` text NOT NULL,
  `message_content` text NOT NULL,
  `source` text NOT NULL,
  `status` text NOT NULL,
  `edited_by` text NOT NULL,
  `posted_by` text NOT NULL,
  `reg_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_modified` text NOT NULL,
  PRIMARY KEY (`gov_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `pending_message`
--

INSERT INTO `pending_message` (`gov_id`, `gov_name`, `designation`, `message_content`, `source`, `status`, `edited_by`, `posted_by`, `reg_id`, `comment`, `date_modified`) VALUES
(2, 'Arlene Garay Alabado Villaplaza', 'Governor, Negros Occidental', ' To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   To GOD be the glory!  ', 'The Tourism Office', 'confirmed', 'arlene', 'arlene', 2, ' message too short', '2016-05-12 16:43:33'),
(3, 'Arlene Garay Alabado Villaplaza 123', 'Governor, Negros Occidental', '  To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   To GOD be the glory!   ', 'The Tourism Office', 'confirmed', 'arlene', 'arlene', 2, '', '2016-05-12 16:44:07'),
(4, 'JHKJ', 'JBGK', 'JGK ', 'JKJ', 'denied', 'arlene', 'arlene', 3, '', '2016-05-12 17:24:13');

-- --------------------------------------------------------

--
-- Table structure for table `pending_news`
--

CREATE TABLE IF NOT EXISTS `pending_news` (
  `n_id` int(5) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `picture` text NOT NULL,
  `caption` text NOT NULL,
  `content` text NOT NULL,
  `source` text NOT NULL,
  `status` text NOT NULL,
  `edited_by` text NOT NULL,
  `posted_by` text NOT NULL,
  `reg_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`n_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `pending_news`
--

INSERT INTO `pending_news` (`n_id`, `title`, `picture`, `caption`, `content`, `source`, `status`, `edited_by`, `posted_by`, `reg_id`, `comment`, `date_modified`) VALUES
(33, 'Murcia, Cadiz Top Panaad Folkdance Competition', '92982-news.jpg', 'Folkdancers from Cadiz City with their winning piece â€œLikod Likodâ€ during the Philippine Folkdance Competition, recently. */ Francis MuÃ±oz photo', ' The Municipality of Murcia was hailed champion in the Rural Category with their performance Kumakaret and the City of Cadiz topped the Maria Clara Category with their winning piece â€œLikod Likodâ€ during the 23rd Panaad sa Negros Philippine Folkdance Competition, recently.\r\n\r\nThe Municipalities of Manapla and Salvador Benedicto with their respective rural folkdances â€œSakutingâ€ and â€œAbarurayâ€ placed 2nd and 3rd, while Talisay, Bacolod, Hinigaran, Toboso and La Castellana received consolation prizes.\r\n\r\nIn the Maria Clara Category, Kabankalan Cityâ€™s Habanera BotoleÃ±a and San Carlos Cityâ€™s Jota Quirino bagged the 2nd and 3rd place respectively.\r\n\r\nConsolation prizes were given to Binalbagan, Silay, Himamaylan, Sagay and Bago.\r\n\r\nManapla was awarded Best in Costume and Murcia was awarded Best in Performance for the Rural Category while Binalbagan and Silay bagged the Best in Costume and Best in Performance, respectively, for the Maria Clara Category.\r\n\r\nCadiz Cityâ€™s Dr. Randyll Villones and Murciaâ€™s Carmelo Escototo were awarded Best Trainers for the Maria Clara and Rural Category, respectively.\r\n\r\nThe first place winner in the Rural Category received P35,000 while the 2nd and 3rd placers received 25,000 and 20,000 pesos respectively.\r\n\r\nFor the Maria Clara Category, the first place winner received P45,000 while 2nd and 3rd place received P30,000 and P25,000 respectively.\r\n\r\nAll consolation winners received P5,000 each.*/Capitol News ', 'Publicity and Documentation', 'confirmed', 'arlene', 'arlene', 16, 'Change picture', '2016-05-12 15:47:38'),
(34, 'Murcia, Cadiz Top Panaad Folkdance Competition updated', '92982-news.jpg', 'Folkdancers from Cadiz City with their winning piece â€œLikod Likodâ€ during the Philippine Folkdance Competition, recently. */ Francis MuÃ±oz photo', '   The Municipality of Murcia was hailed champion in the Rural Category with their performance Kumakaret and the City of Cadiz topped the Maria Clara Category with their winning piece â€œLikod Likodâ€ during the 23rd Panaad sa Negros Philippine Folkdance Competition, recently.\r\n\r\nThe Municipalities of Manapla and Salvador Benedicto with their respective rural folkdances â€œSakutingâ€ and â€œAbarurayâ€ placed 2nd and 3rd, while Talisay, Bacolod, Hinigaran, Toboso and La Castellana received consolation prizes.\r\n\r\nIn the Maria Clara Category, Kabankalan Cityâ€™s Habanera BotoleÃ±a and San Carlos Cityâ€™s Jota Quirino bagged the 2nd and 3rd place respectively.\r\n\r\nConsolation prizes were given to Binalbagan, Silay, Himamaylan, Sagay and Bago.\r\n\r\nManapla was awarded Best in Costume and Murcia was awarded Best in Performance for the Rural Category while Binalbagan and Silay bagged the Best in Costume and Best in Performance, respectively, for the Maria Clara Category.\r\n\r\nCadiz Cityâ€™s Dr. Randyll Villones and Murciaâ€™s Carmelo Escototo were awarded Best Trainers for the Maria Clara and Rural Category, respectively.\r\n\r\nThe first place winner in the Rural Category received P35,000 while the 2nd and 3rd placers received 25,000 and 20,000 pesos respectively.\r\n\r\nFor the Maria Clara Category, the first place winner received P45,000 while 2nd and 3rd place received P30,000 and P25,000 respectively.\r\n\r\nAll consolation winners received P5,000 each.*/Capitol News   ', 'Publicity and Documentation', 'confirmed', 'arlene', 'arlene', 16, '', '2016-05-12 15:50:34'),
(35, 'fsf', '2713-news.jpg', ' fqqf', 'wf', 'sgw', 'denied', 'arlene', 'arlene', 17, '', '2016-05-12 17:23:05');

-- --------------------------------------------------------

--
-- Table structure for table `pending_schedule`
--

CREATE TABLE IF NOT EXISTS `pending_schedule` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` text NOT NULL,
  `s_type` text NOT NULL,
  `c_date` text NOT NULL,
  `c_venue` text NOT NULL,
  `c_year` year(4) NOT NULL,
  `source` text NOT NULL,
  `status` text NOT NULL,
  `edited_by` text NOT NULL,
  `posted_by` text NOT NULL,
  `reg_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `pending_schedule`
--

INSERT INTO `pending_schedule` (`s_id`, `c_name`, `s_type`, `c_date`, `c_venue`, `c_year`, `source`, `status`, `edited_by`, `posted_by`, `reg_id`, `comment`, `date_modified`) VALUES
(31, 'Latin Dance Competition', 'during', 'April 20, 2016', 'Panaad Stadium', 2016, 'The Tourism Office', 'confirmed', 'arlene', 'arlene', 29, ' The title is wrongly spelled', '2016-05-12 15:55:55'),
(32, 'Boxing updated', 'pre-panaad', 'April 20, 2016', 'Panaad Park', 2016, 'The Tourism Office', 'confirmed', 'arlene', 'arlene', 31, ' title too short', '2016-05-12 15:59:11'),
(33, 'cAC', 'during', 'FAFA', 'AF', 0000, 'AF', 'denied', 'arlene', 'arlene', 32, '', '2016-05-12 17:23:15'),
(34, 'j', 'pre-panaad', 'j', 'j', 0000, 'j', 'denied', 'arlene', 'arlene', 33, '', '2016-05-12 17:25:14');

-- --------------------------------------------------------

--
-- Table structure for table `pending_winners`
--

CREATE TABLE IF NOT EXISTS `pending_winners` (
  `win_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` text NOT NULL,
  `win_name` text NOT NULL,
  `win_city` text NOT NULL,
  `win_rank` text NOT NULL,
  `win_prize` text NOT NULL,
  `co_name` text NOT NULL,
  `co_position` text NOT NULL,
  `c_year` year(4) NOT NULL,
  `source` text NOT NULL,
  `status` text NOT NULL,
  `edited_by` text NOT NULL,
  `posted_by` text NOT NULL,
  `reg_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`win_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `pending_winners`
--

INSERT INTO `pending_winners` (`win_id`, `c_name`, `win_name`, `win_city`, `win_rank`, `win_prize`, `co_name`, `co_position`, `c_year`, `source`, `status`, `edited_by`, `posted_by`, `reg_id`, `comment`, `date_modified`) VALUES
(3, 'lin-ay', 'Kriscel Dela Mata Alabe', 'Bacolod City', 'Lin-ay Sang Negros 2016', '', '', '', 2016, 'The Tourism Office', 'confirmed', 'arlene', 'arlene', 2, ' change city', '2016-05-12 16:23:49'),
(4, 'Boxing', 'Andre Corugda', 'Bacolod City', '1st Place', '1000', 'Andre Corugda', '', 2016, 'The Manila Bulletin', 'confirmed', 'arlene', 'arlene', 3, ' Change name', '2016-05-12 16:47:39'),
(5, 'lin-ay', 'LI', 'MJGK', ',KLKHO', '', '', '', 0000, 'KJH', 'denied', 'arlene', 'arlene', 4, '', '2016-05-12 17:32:32'),
(6, 'HJGK', 'JHG', 'HG', 'JJG', 'JHG', 'JHG', '', 0000, 'JHG', 'denied', 'arlene', 'arlene', 5, '', '2016-05-12 17:24:23'),
(7, 'lin-ay', 'haha', 'haha', 'hahahah', '', '', '', 0000, 'haha', 'denied', 'arlene', 'arlene', 6, '', '2016-05-12 17:32:40');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE IF NOT EXISTS `schedule` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` text NOT NULL,
  `s_type` text NOT NULL,
  `c_date` text NOT NULL,
  `c_venue` text NOT NULL,
  `c_year` year(4) NOT NULL,
  `source` text NOT NULL,
  `status` text NOT NULL,
  `edited_by` text NOT NULL,
  `posted_by` text NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`s_id`, `c_name`, `s_type`, `c_date`, `c_venue`, `c_year`, `source`, `status`, `edited_by`, `posted_by`, `date_modified`) VALUES
(31, 'Boxing updated', 'pre-panaad', 'April 20, 2016', 'Panaad Park', 2016, 'The Tourism Office', 'confirmed', 'arlene', 'arlene', '2016-05-12 15:59:23'),
(32, 'cAC', 'during', 'FAFA', 'AF', 0000, 'AF', 'pending', 'arlene', 'arlene', '2016-05-12 17:20:19'),
(33, 'j', 'pre-panaad', 'j', 'j', 0000, 'j', 'pending', 'arlene', 'arlene', '2016-05-12 17:25:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` text NOT NULL,
  `mname` text NOT NULL,
  `lname` text NOT NULL,
  `contact_info` text NOT NULL,
  `account_role` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `mname`, `lname`, `contact_info`, `account_role`, `username`, `password`, `date_modified`) VALUES
(15, 'arlene', 'Garay', 'Alabado', '-----', 'Editor', 'arlene', '19edd12cbb120007b2c1215b02700e99', '2016-05-12 15:36:56');

-- --------------------------------------------------------

--
-- Table structure for table `winners`
--

CREATE TABLE IF NOT EXISTS `winners` (
  `win_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` text NOT NULL,
  `win_name` text NOT NULL,
  `win_city` text NOT NULL,
  `win_rank` text NOT NULL,
  `win_prize` text NOT NULL,
  `co_name` text NOT NULL,
  `co_position` text NOT NULL,
  `c_year` year(4) NOT NULL,
  `source` text NOT NULL,
  `status` text NOT NULL,
  `edited_by` text NOT NULL,
  `posted_by` text NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`win_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `winners`
--

INSERT INTO `winners` (`win_id`, `c_name`, `win_name`, `win_city`, `win_rank`, `win_prize`, `co_name`, `co_position`, `c_year`, `source`, `status`, `edited_by`, `posted_by`, `date_modified`) VALUES
(2, 'lin-ay', 'Kriscel Dela Mata Alabe', 'Bacolod City', 'Lin-ay Sang Negros 2016', '', '', '', 2016, 'The Tourism Office', 'confirmed', 'arlene', 'arlene', '2016-05-12 16:24:02'),
(3, 'Boxing', 'Andre Corugda', 'Bacolod City', '1st Place', '1000', 'Andre Corugda', '', 2016, 'The Manila Bulletin', 'confirmed', 'arlene', 'arlene', '2016-05-12 16:47:54'),
(4, 'lin-ay', 'LI', 'MJGK', ',KLKHO', '', '', '', 0000, 'KJH', 'pending', 'arlene', 'arlene', '2016-05-12 17:21:03'),
(5, 'HJGK', 'JHG', 'HG', 'JJG', 'JHG', 'JHG', '', 0000, 'JHG', 'pending', 'arlene', 'arlene', '2016-05-12 17:21:47'),
(6, 'lin-ay', 'haha', 'haha', 'hahahah', '', '', '', 0000, 'haha', 'pending', 'arlene', 'arlene', '2016-05-12 17:32:26');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
