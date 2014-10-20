-- phpMyAdmin SQL Dump
-- version 3.3.2deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 19, 2011 at 06:24 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.2-1ubuntu4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lugulu`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(50) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`, `login_time`) VALUES
('945c5ea5d0f2bf80abd2fb1354586b4a', '220.181.108.157', 'Baiduspider+(+http://www.baidu.com/search/spider.h', 1295190794, '', '2011-01-16 09:13:14'),
('31f9d6a479ffb72cf54896175e664459', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKi', 1297350935, '', '2011-02-10 18:15:35'),
('a86036f872fa230440c6ebb24ba206b6', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKi', 1295194977, 'a:8:{s:10:"first_name";s:7:"Anthony";s:9:"last_name";s:6:"Nandaa";s:5:"email";s:20:"profnandaa@gmail.com";s:5:"phone";s:10:"0728590438";s:8:"time_reg";s:19:"2011-01-08 09:56:43";s:6:"active";s:1:"0";s:3:"mid";s:2:"10";s:12:"is_logged_in";s:1:"1";}', '2011-01-16 18:50:11');

-- --------------------------------------------------------

--
-- Table structure for table `edu_level`
--

CREATE TABLE IF NOT EXISTS `edu_level` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `edu_level`
--


-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `descr` text,
  `time` varchar(50) DEFAULT NULL,
  `venue` varchar(30) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  `time_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`eid`),
  KEY `mid` (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `event`
--


-- --------------------------------------------------------

--
-- Table structure for table `e_comment`
--

CREATE TABLE IF NOT EXISTS `e_comment` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) DEFAULT NULL,
  `eid` int(11) DEFAULT NULL,
  `comment` text,
  `time_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cid`),
  KEY `mid` (`mid`),
  KEY `eid` (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `e_comment`
--


-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE IF NOT EXISTS `group` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `gcid` int(11) DEFAULT NULL,
  `activities` text,
  `contact_person` varchar(40) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `members` int(11) DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  `year_established` int(11) DEFAULT NULL,
  `time_reg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`gid`),
  KEY `mid` (`mid`),
  KEY `gcid` (`gcid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `group`
--


-- --------------------------------------------------------

--
-- Table structure for table `group_cat`
--

CREATE TABLE IF NOT EXISTS `group_cat` (
  `gcid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`gcid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `group_cat`
--


-- --------------------------------------------------------

--
-- Table structure for table `idea`
--

CREATE TABLE IF NOT EXISTS `idea` (
  `iid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `descr` text,
  `mid` int(11) DEFAULT NULL,
  `time_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`iid`),
  KEY `mid` (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `idea`
--


-- --------------------------------------------------------

--
-- Table structure for table `i_comment`
--

CREATE TABLE IF NOT EXISTS `i_comment` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) DEFAULT NULL,
  `iid` int(11) DEFAULT NULL,
  `comment` text,
  `time_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cid`),
  KEY `mid` (`mid`),
  KEY `iid` (`iid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `i_comment`
--


-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE IF NOT EXISTS `job` (
  `jid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(40) DEFAULT NULL,
  `descr` text,
  `eid` int(11) DEFAULT NULL,
  `dead_line` date DEFAULT NULL,
  `send_to` text,
  `mid` int(11) DEFAULT NULL,
  `time_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`jid`),
  KEY `mid` (`mid`),
  KEY `eid` (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `job`
--


-- --------------------------------------------------------

--
-- Table structure for table `j_comment`
--

CREATE TABLE IF NOT EXISTS `j_comment` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) DEFAULT NULL,
  `jid` int(11) DEFAULT NULL,
  `comment` text,
  `time_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cid`),
  KEY `mid` (`mid`),
  KEY `jid` (`jid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `j_comment`
--


-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(30) DEFAULT NULL,
  `l_name` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `fb` varchar(100) DEFAULT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `profession` varchar(30) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `eid` int(11) DEFAULT NULL,
  `pri_school` varchar(100) DEFAULT NULL,
  `high_school` varchar(100) DEFAULT NULL,
  `college` varchar(100) DEFAULT NULL,
  `course` varchar(30) DEFAULT NULL,
  `time_reg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `password` varchar(40) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '0',
  `villager` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`mid`),
  UNIQUE KEY `email` (`email`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`mid`, `f_name`, `l_name`, `phone`, `email`, `fb`, `twitter`, `profession`, `cid`, `eid`, `pri_school`, `high_school`, `college`, `course`, `time_reg`, `password`, `active`, `villager`) VALUES
(10, 'Anthony', 'Nandaa', '0728590438', 'profnandaa@gmail.com', 'http://facebook.com/profnandaa', 'http://twitter.com/profnandaa', 'IT', NULL, NULL, 'Lugulu Boarding Primary School', 'Friends School Kamusinga', 'University of Nairobi', 'BSc. Computer Science', '2011-01-08 09:56:43', '81dc9bdb52d04dc20036dbd8313ed055', 0, 1),
(11, 'Leah', 'Atim', '0728883857', 'batimleah@yahoo.com', '', '', '', NULL, NULL, 'Lugulu boarding primary school', 'Friends school kamusinga', '', '', '2011-01-09 10:50:17', '0f5c53852c54e0975cb8674c72d9404d', 0, 1),
(12, 'Joy', 'Carole', '0725022780', 'jy_carole@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-01-09 10:55:09', '8c64e82f0c9323e3e4f7319d86854d61', 0, 1),
(13, 'nelson', 'lubisiy', '8870750748', 'nelsonwanjala@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-01-09 12:19:31', '979f88b7b478c58d0fa6fd4f0d49abb4', 0, 1),
(14, 'Michael', 'Murumba', '+254734589971', 'mmurumba@gmail.com', 'http://www.facebook.com/profile.php?refid=7', 'http://www.twitter.com/mmurumba', 'Journalist/PR consultant', NULL, NULL, 'Lugulu Mixed Primary', 'Teremi Boys High', 'K I M C', 'Mass Communication', '2011-01-09 14:30:07', '10546afe24e09662b3217bcc485946a7', 0, 1),
(15, 'Mathew', 'Egessa', '0724396442', 'egessa.mathew@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-01-09 15:03:11', 'fa9d12ff1bb7c99c1e0edc29d8cbbb33', 0, 2),
(16, 'Muraya', 'Kamau', '0724213205', 'martin@itech2020.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-01-09 23:09:21', '2e2c37a1f5a897cbf3c81720cc29eeae', 1, 1),
(17, 'Eugene', 'Mechumo', '0700314800', 'Mechumo@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-01-09 23:38:05', '09b36052074995ca5779f24723aa3795', 1, 1),
(18, 'Izzoh', 'Magari', '0751966748', 'isaac_magari@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-01-09 23:47:12', '3646f0f3096cd5455d5b4201e7189dd7', 1, 1),
(19, 'Gilbert', 'juma', '0726108015', 'zdymkalla@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-01-10 01:13:30', '0a2432d1b5b372d5ef13febd30566b70', 0, 1),
(20, 'caroline', 'mugerwa', '+12162692041', 'cmugerwa@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-01-10 09:22:32', '2b46165851f75f7be714f0a6d8a08fd1', 0, 1),
(21, 'Esther', 'Butts', '0720987323', 'brendarembo@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-01-10 22:22:56', 'af8c3b7222725f20a92e32a8398c1246', 0, 1),
(22, 'Naphtal', 'Wanyonyi', '+254725486156', 'wanaphtal@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-01-12 02:59:00', '0540cfa35c1cafc25a96f465aca9a9fc', 0, 1),
(23, 'Joseph', 'Tawai', '+254727936256', 'wextawy@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-01-14 11:03:37', 'f458efd31fba2701229749200d53eac0', 0, 1),
(25, 'Joseph', 'Tawai', '+254727936256', 'josephtawai@lugulu.net', '', '', 'Banker', NULL, NULL, 'Lugulu Boarding', 'F.S.K', 'U.o.N', '', '2011-01-14 11:06:40', 'f458efd31fba2701229749200d53eac0', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE IF NOT EXISTS `notice` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(100) DEFAULT NULL,
  `notice` text,
  `mid` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT '1',
  `time_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`nid`),
  KEY `mid` (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `notice`
--


-- --------------------------------------------------------

--
-- Table structure for table `n_comment`
--

CREATE TABLE IF NOT EXISTS `n_comment` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) DEFAULT NULL,
  `nid` int(11) DEFAULT NULL,
  `comment` text,
  `time_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cid`),
  KEY `mid` (`mid`),
  KEY `nid` (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `n_comment`
--


-- --------------------------------------------------------

--
-- Table structure for table `orbituary`
--

CREATE TABLE IF NOT EXISTS `orbituary` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `descr` text,
  `date` date DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  `time_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`oid`),
  KEY `mid` (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `orbituary`
--


-- --------------------------------------------------------

--
-- Table structure for table `o_comment`
--

CREATE TABLE IF NOT EXISTS `o_comment` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) DEFAULT NULL,
  `oid` int(11) DEFAULT NULL,
  `comment` text,
  `time_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cid`),
  KEY `mid` (`mid`),
  KEY `oid` (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `o_comment`
--


-- --------------------------------------------------------

--
-- Table structure for table `prof_cat`
--

CREATE TABLE IF NOT EXISTS `prof_cat` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `prof_cat`
--


-- --------------------------------------------------------

--
-- Table structure for table `wedding`
--

CREATE TABLE IF NOT EXISTS `wedding` (
  `wid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `descr` text,
  `venue` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  `time_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`wid`),
  KEY `mid` (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wedding`
--


-- --------------------------------------------------------

--
-- Table structure for table `w_comment`
--

CREATE TABLE IF NOT EXISTS `w_comment` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) DEFAULT NULL,
  `wid` int(11) DEFAULT NULL,
  `comment` text,
  `time_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cid`),
  KEY `mid` (`mid`),
  KEY `wid` (`wid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `w_comment`
--


--
-- Constraints for dumped tables
--

--
-- Constraints for table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `event_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `member` (`mid`);

--
-- Constraints for table `e_comment`
--
ALTER TABLE `e_comment`
  ADD CONSTRAINT `e_comment_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `member` (`mid`),
  ADD CONSTRAINT `e_comment_ibfk_2` FOREIGN KEY (`eid`) REFERENCES `event` (`eid`);

--
-- Constraints for table `group`
--
ALTER TABLE `group`
  ADD CONSTRAINT `group_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `member` (`mid`),
  ADD CONSTRAINT `group_ibfk_2` FOREIGN KEY (`gcid`) REFERENCES `group_cat` (`gcid`);

--
-- Constraints for table `idea`
--
ALTER TABLE `idea`
  ADD CONSTRAINT `idea_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `member` (`mid`);

--
-- Constraints for table `i_comment`
--
ALTER TABLE `i_comment`
  ADD CONSTRAINT `i_comment_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `member` (`mid`),
  ADD CONSTRAINT `i_comment_ibfk_2` FOREIGN KEY (`iid`) REFERENCES `idea` (`iid`);

--
-- Constraints for table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `job_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `member` (`mid`),
  ADD CONSTRAINT `job_ibfk_2` FOREIGN KEY (`eid`) REFERENCES `edu_level` (`eid`);

--
-- Constraints for table `j_comment`
--
ALTER TABLE `j_comment`
  ADD CONSTRAINT `j_comment_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `member` (`mid`),
  ADD CONSTRAINT `j_comment_ibfk_2` FOREIGN KEY (`jid`) REFERENCES `job` (`jid`);

--
-- Constraints for table `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `member_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `prof_cat` (`cid`),
  ADD CONSTRAINT `member_ibfk_2` FOREIGN KEY (`eid`) REFERENCES `edu_level` (`eid`);

--
-- Constraints for table `notice`
--
ALTER TABLE `notice`
  ADD CONSTRAINT `notice_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `member` (`mid`);

--
-- Constraints for table `n_comment`
--
ALTER TABLE `n_comment`
  ADD CONSTRAINT `n_comment_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `member` (`mid`),
  ADD CONSTRAINT `n_comment_ibfk_2` FOREIGN KEY (`nid`) REFERENCES `notice` (`nid`);

--
-- Constraints for table `orbituary`
--
ALTER TABLE `orbituary`
  ADD CONSTRAINT `orbituary_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `member` (`mid`);

--
-- Constraints for table `o_comment`
--
ALTER TABLE `o_comment`
  ADD CONSTRAINT `o_comment_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `member` (`mid`),
  ADD CONSTRAINT `o_comment_ibfk_2` FOREIGN KEY (`oid`) REFERENCES `orbituary` (`oid`);

--
-- Constraints for table `wedding`
--
ALTER TABLE `wedding`
  ADD CONSTRAINT `wedding_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `member` (`mid`);

--
-- Constraints for table `w_comment`
--
ALTER TABLE `w_comment`
  ADD CONSTRAINT `w_comment_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `member` (`mid`),
  ADD CONSTRAINT `w_comment_ibfk_2` FOREIGN KEY (`wid`) REFERENCES `wedding` (`wid`);
