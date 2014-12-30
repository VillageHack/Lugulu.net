-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2014 at 01:13 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lugulunet`
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
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `edu_level`
--

CREATE TABLE IF NOT EXISTS `edu_level` (
`eid` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
`eid` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `descr` text,
  `time` varchar(50) DEFAULT NULL,
  `venue` varchar(30) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  `time_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `e_comment`
--

CREATE TABLE IF NOT EXISTS `e_comment` (
`cid` int(11) NOT NULL,
  `mid` int(11) DEFAULT NULL,
  `eid` int(11) DEFAULT NULL,
  `comment` text,
  `time_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE IF NOT EXISTS `group` (
`gid` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `gcid` int(11) DEFAULT NULL,
  `activities` text,
  `contact_person` varchar(40) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `members` int(11) DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  `year_established` int(11) DEFAULT NULL,
  `time_reg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `group_cat`
--

CREATE TABLE IF NOT EXISTS `group_cat` (
`gcid` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `idea`
--

CREATE TABLE IF NOT EXISTS `idea` (
`iid` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `descr` text,
  `mid` int(11) DEFAULT NULL,
  `time_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `i_comment`
--

CREATE TABLE IF NOT EXISTS `i_comment` (
`cid` int(11) NOT NULL,
  `mid` int(11) DEFAULT NULL,
  `iid` int(11) DEFAULT NULL,
  `comment` text,
  `time_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE IF NOT EXISTS `job` (
`jid` int(11) NOT NULL,
  `title` varchar(40) DEFAULT NULL,
  `descr` text,
  `eid` int(11) DEFAULT NULL,
  `dead_line` date DEFAULT NULL,
  `send_to` text,
  `mid` int(11) DEFAULT NULL,
  `time_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `j_comment`
--

CREATE TABLE IF NOT EXISTS `j_comment` (
`cid` int(11) NOT NULL,
  `mid` int(11) DEFAULT NULL,
  `jid` int(11) DEFAULT NULL,
  `comment` text,
  `time_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE IF NOT EXISTS `member` (
`mid` int(11) NOT NULL,
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
  `villager` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE IF NOT EXISTS `notice` (
`nid` int(11) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `notice` text,
  `mid` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT '1',
  `time_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `n_comment`
--

CREATE TABLE IF NOT EXISTS `n_comment` (
`cid` int(11) NOT NULL,
  `mid` int(11) DEFAULT NULL,
  `nid` int(11) DEFAULT NULL,
  `comment` text,
  `time_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orbituary`
--

CREATE TABLE IF NOT EXISTS `orbituary` (
`oid` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `descr` text,
  `date` date DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  `time_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `o_comment`
--

CREATE TABLE IF NOT EXISTS `o_comment` (
`cid` int(11) NOT NULL,
  `mid` int(11) DEFAULT NULL,
  `oid` int(11) DEFAULT NULL,
  `comment` text,
  `time_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prof_cat`
--

CREATE TABLE IF NOT EXISTS `prof_cat` (
`cid` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wedding`
--

CREATE TABLE IF NOT EXISTS `wedding` (
`wid` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `descr` text,
  `venue` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  `time_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `w_comment`
--

CREATE TABLE IF NOT EXISTS `w_comment` (
`cid` int(11) NOT NULL,
  `mid` int(11) DEFAULT NULL,
  `wid` int(11) DEFAULT NULL,
  `comment` text,
  `time_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
 ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `edu_level`
--
ALTER TABLE `edu_level`
 ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
 ADD PRIMARY KEY (`eid`), ADD KEY `mid` (`mid`);

--
-- Indexes for table `e_comment`
--
ALTER TABLE `e_comment`
 ADD PRIMARY KEY (`cid`), ADD KEY `mid` (`mid`), ADD KEY `eid` (`eid`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
 ADD PRIMARY KEY (`gid`), ADD KEY `mid` (`mid`), ADD KEY `gcid` (`gcid`);

--
-- Indexes for table `group_cat`
--
ALTER TABLE `group_cat`
 ADD PRIMARY KEY (`gcid`);

--
-- Indexes for table `idea`
--
ALTER TABLE `idea`
 ADD PRIMARY KEY (`iid`), ADD KEY `mid` (`mid`);

--
-- Indexes for table `i_comment`
--
ALTER TABLE `i_comment`
 ADD PRIMARY KEY (`cid`), ADD KEY `mid` (`mid`), ADD KEY `iid` (`iid`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
 ADD PRIMARY KEY (`jid`), ADD KEY `mid` (`mid`), ADD KEY `eid` (`eid`);

--
-- Indexes for table `j_comment`
--
ALTER TABLE `j_comment`
 ADD PRIMARY KEY (`cid`), ADD KEY `mid` (`mid`), ADD KEY `jid` (`jid`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
 ADD PRIMARY KEY (`mid`), ADD UNIQUE KEY `email` (`email`), ADD KEY `cid` (`cid`), ADD KEY `eid` (`eid`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
 ADD PRIMARY KEY (`nid`), ADD KEY `mid` (`mid`);

--
-- Indexes for table `n_comment`
--
ALTER TABLE `n_comment`
 ADD PRIMARY KEY (`cid`), ADD KEY `mid` (`mid`), ADD KEY `nid` (`nid`);

--
-- Indexes for table `orbituary`
--
ALTER TABLE `orbituary`
 ADD PRIMARY KEY (`oid`), ADD KEY `mid` (`mid`);

--
-- Indexes for table `o_comment`
--
ALTER TABLE `o_comment`
 ADD PRIMARY KEY (`cid`), ADD KEY `mid` (`mid`), ADD KEY `oid` (`oid`);

--
-- Indexes for table `prof_cat`
--
ALTER TABLE `prof_cat`
 ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `wedding`
--
ALTER TABLE `wedding`
 ADD PRIMARY KEY (`wid`), ADD KEY `mid` (`mid`);

--
-- Indexes for table `w_comment`
--
ALTER TABLE `w_comment`
 ADD PRIMARY KEY (`cid`), ADD KEY `mid` (`mid`), ADD KEY `wid` (`wid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `edu_level`
--
ALTER TABLE `edu_level`
MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e_comment`
--
ALTER TABLE `e_comment`
MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
MODIFY `gid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `group_cat`
--
ALTER TABLE `group_cat`
MODIFY `gcid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `idea`
--
ALTER TABLE `idea`
MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `i_comment`
--
ALTER TABLE `i_comment`
MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
MODIFY `jid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j_comment`
--
ALTER TABLE `j_comment`
MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `n_comment`
--
ALTER TABLE `n_comment`
MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orbituary`
--
ALTER TABLE `orbituary`
MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `o_comment`
--
ALTER TABLE `o_comment`
MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `prof_cat`
--
ALTER TABLE `prof_cat`
MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wedding`
--
ALTER TABLE `wedding`
MODIFY `wid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `w_comment`
--
ALTER TABLE `w_comment`
MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
