-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2018 at 05:55 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cricket_club_mgt_sys`
--

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `username` varchar(80) NOT NULL,
  `date` date NOT NULL,
  `application` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`username`, `date`, `application`) VALUES
('21111', '2018-11-28', 'This is a demo application..........................................................................................................................    ................. .\n.......................................................................................................................................         ....................................................'),
('11120', '2018-12-06', 'Sir,\nI feel sick. So, I need rest. '),
('11114', '2018-12-17', 'For some unavoidable circumstances I cannot attend.'),
('11111', '2018-12-17', 'This is another demo Application............................ ........................... ......................... .......................... ......................... ............................. .............................. .............................. ................................');

-- --------------------------------------------------------

--
-- Table structure for table `coach`
--

CREATE TABLE `coach` (
  `username` varchar(80) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `name` varchar(80) DEFAULT NULL,
  `Role` varchar(50) NOT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `joinnig_date` date DEFAULT NULL,
  `Adress` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coach`
--

INSERT INTO `coach` (`username`, `password`, `name`, `Role`, `phone`, `email`, `birth_date`, `joinnig_date`, `Adress`) VALUES
('31111', '12345', 'Steve', 'Batting Coach', '0123233243', 's@gmail.com', '1972-09-12', '2012-01-21', 'London'),
('31112', '12345', 'Rohd', 'Bowling Coach', '0123343243', 'r@gmail.com', '1972-09-12', '2012-01-21', 'London'),
('31113', '12345', 'James', 'Fielding Coach', '0124323433', 'j@gmail.com', '1972-09-12', '2018-12-06', 'South Africa'),
('31114', '12345', 'Walsh', 'Head Coach', '0124323433', 'w@gmail.com', '1972-12-12', '2018-12-06', 'South Africa');

-- --------------------------------------------------------

--
-- Table structure for table `complain`
--

CREATE TABLE `complain` (
  `username` varchar(80) NOT NULL,
  `Date` date NOT NULL,
  `complain` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complain`
--

INSERT INTO `complain` (`username`, `Date`, `complain`) VALUES
('21111', '2018-11-28', 'This is a demo complain..........................................................................................................................    ................. .\n.......................................................................................................................................         ....................................................'),
('11120', '2018-12-06', 'Rakin bullied me today'),
('11111', '2018-12-17', 'This is another demo complain............................ ........................... ......................... .......................... ......................... ............................. .............................. .............................. ................................');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `date` datetime NOT NULL,
  `venue` varchar(80) NOT NULL,
  `team1` varchar(80) NOT NULL,
  `team2` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`date`, `venue`, `team1`, `team2`) VALUES
('1990-12-03 09:10:00', 'st1', 't1', 't2'),
('2018-12-09 17:15:00', 'Mirpur 10 Stadium', 'Vikings', 'Nights'),
('2018-12-15 13:30:00', 'Mirpur Sher-e Bangla Stadium', 'Power Hitters ODI xi', 'Para-ga ODI xi'),
('2018-12-17 13:30:00', 'Mirpur Sher-e Stadium', 'Power Hitters ODI xi', 'Para-ga xi'),
('2018-12-19 13:30:00', 'Mirpur Sher-e Stadium', 'Power Hitters ODI xi', 'Para-ga xi'),
('2018-12-21 13:30:00', 'Mirpur Sher-e Stadium', 'Power Hitters ODI xi', 'Para-ga xi'),
('2018-12-23 13:30:00', 'Mirpur Sher-e Stadium', 'Power Hitters ODI xi', 'Para-ga xi');

-- --------------------------------------------------------

--
-- Table structure for table `event_mgr`
--

CREATE TABLE `event_mgr` (
  `username` varchar(80) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `name` varchar(80) DEFAULT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `joinnig_date` date DEFAULT NULL,
  `Adress` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_mgr`
--

INSERT INTO `event_mgr` (`username`, `password`, `name`, `phone`, `email`, `gender`, `birth_date`, `joinnig_date`, `Adress`) VALUES
('41111', '12345', 'Rakin', '012324233', 'r@yahoo.com', 'Male', '1997-01-01', '2013-01-01', 'Mohakhali, Dhaka'),
('41112', '12345', 'Kristi', '012324233', 'k@yahoo.com', 'Female', '1997-01-01', '2013-01-01', 'Mohakhali, Dhaka'),
('41113', '12345', 'Rahel', '012324233', 'r@yahoo.com', 'Male', '1997-01-01', '2018-12-06', 'Mohakhali, Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `gym`
--

CREATE TABLE `gym` (
  `date` datetime NOT NULL,
  `place` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gym`
--

INSERT INTO `gym` (`date`, `place`) VALUES
('2018-12-01 12:00:00', 'Mirpur 10'),
('2018-12-05 09:30:00', 'Gym'),
('2018-12-07 07:30:00', 'Gym'),
('2018-12-17 07:00:00', 'Club Gym'),
('2018-12-18 07:00:00', 'Club Gym'),
('2018-12-19 07:00:00', 'Club Gym'),
('2018-12-20 07:00:00', 'Club Gym'),
('2018-12-21 07:00:00', 'Club Gym'),
('2018-12-22 07:00:00', 'Club Gym');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `date` datetime NOT NULL,
  `News` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`date`, `News`) VALUES
('2018-11-27 00:00:00', 'new news'),
('2018-11-27 21:40:48', 'new news'),
('2018-11-28 22:31:05', 'This is test notice.------------------------------------------------------- ------------------------------- ---------------------------------------------------------------- ----------------------------- ------------- ------------ ---------------------------------------------------------------------------------------------------\n--------------------------\n---------------------------------------------------------------------------------------------------'),
('2018-11-28 22:31:23', 'This is test news.------------------------------------------------------- ------------------------------- ---------------------------------------------------------------- ----------------------------- ------------- ------------ ---------------------------------------------------------------------------------------------------\n--------------------------\n---------------------------------------------------------------------------------------------------'),
('2018-11-30 00:30:38', 'Power Hitters Club has created their management system software.\nThe software contains below features:\n	1. There is a default admin id and password by whice one can add new admin to the system. \n	2. Admin can register player and staffs.\n	3. Admin can publish notice and news\n	4.player can send application and report complain to admin.\n	5.Event manager can schedule event.\n	6.Coach can schedule practice session\n	7.Physio can schedule gym session.\n	8.If any admin leaves from the club his profile will be deleted.\n	9.Admin can see all data of players and staffs\nonly club admin will know the default admin ID and Password.'),
('2018-12-05 22:24:42', 'Cricket Club management system software just Crashed............. ..................... ........................... ................................. ............................. ................................. .................................... ................................. ............................. ......................................... ............................................'),
('2018-12-16 22:23:10', 'Power Hitters Club is going to host a player hunt campeign.');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `date` datetime NOT NULL,
  `notice` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`date`, `notice`) VALUES
('2018-11-28 22:31:37', 'This is test notice.------------------------------------------------------- ------------------------------- ---------------------------------------------------------------- ----------------------------- ------------- ------------ ---------------------------------------------------------------------------------------------------\n--------------------------\n---------------------------------------------------------------------------------------------------'),
('2018-11-30 00:14:03', 'Another Demo Notice................     ................  ............ ............. .......... .....   ............... .................. .............. ................. ............... ................. ....... ........... ............ ................ .............. a............. ......... .......... ............. ............ ................... .................... ...................... ................. ............... ........... ..................... .................... ..................... ......................... .................. ................................................................... ........................... .....'),
('2018-11-30 00:31:11', 'New news uoloaded'),
('2018-12-16 22:21:54', 'Every Player of Stadium have to be present in tomorrow');

-- --------------------------------------------------------

--
-- Table structure for table `physio`
--

CREATE TABLE `physio` (
  `username` varchar(80) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `name` varchar(80) DEFAULT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `joinnig_date` date DEFAULT NULL,
  `Adress` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `physio`
--

INSERT INTO `physio` (`username`, `password`, `name`, `phone`, `email`, `gender`, `birth_date`, `joinnig_date`, `Adress`) VALUES
('51111', '12345', 'Raisa', '01532343233', 'R@gmail.com', 'Male', '1997-12-21', '2014-12-30', 'Kuril, Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `username` varchar(80) NOT NULL,
  `password` varchar(80) DEFAULT NULL,
  `Name` varchar(80) DEFAULT NULL,
  `Jersey_no` int(11) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `debute` date DEFAULT NULL,
  `player_role` varchar(30) DEFAULT NULL,
  `bat_style` varchar(20) NOT NULL,
  `bowl_style` varchar(20) NOT NULL,
  `runs` int(11) DEFAULT NULL,
  `wickets` int(11) DEFAULT NULL,
  `catch` int(11) DEFAULT NULL,
  `stumping` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`username`, `password`, `Name`, `Jersey_no`, `gender`, `phone`, `email`, `Address`, `birth_date`, `debute`, `player_role`, `bat_style`, `bowl_style`, `runs`, `wickets`, `catch`, `stumping`) VALUES
('11111', '12345', 'Rakin', 1, 'Male', '01504504555', 'Rakin@gmail.com', 'Rajshahi', '1994-12-20', '2018-12-06', 'Medium Fast Bowler', 'Left Handed', 'Left Handed', 0, 0, 0, 0),
('11112', '12345', 'Fahim', 2, 'Male', '0150454356', 'Fahim@gmail.com', 'Gazipur', '1997-12-14', '2018-12-06', 'Spin Bowler', 'Right Handed', 'Right Handed', 0, 0, 0, 0),
('11113', '12345', 'Hanif', 3, 'Male', '01504435455', 'Hanif@gmail.com', 'Lakshmipur', '1997-12-05', '2018-12-06', 'Fast Bowler', 'Right Handed', 'Right Handed', 0, 0, 0, 0),
('11114', '12345', 'Mead', 4, 'Male', '01504444664', 'mead@gmail.com', 'Gazipur', '1997-12-14', '2018-12-06', 'Batsman', 'Left Handed', 'Left Handed', 0, 0, 0, 0),
('11115', '12345', 'Rasel', 5, 'Male', '01532456789', 'rasel@gmail.com', 'Dhaka', '1999-09-14', '2018-12-06', 'Batsman', 'Right Handed', 'Right Handed', 0, 0, 0, 0),
('11116', '12345', 'Akhil', 6, 'Male', '01532456789', 'Akhil@gmail.com', 'Sylhet', '1999-03-19', '2018-12-06', 'All Rounder', 'Right Handed', 'Right Handed', 0, 0, 0, 0),
('11117', '12345', 'Mushi', 7, 'Male', '01532454389', 'Mushi@gmail.com', 'Bogura', '1995-03-16', '2018-12-06', 'Batsman', 'Left Handed', 'Right Handed', 0, 0, 0, 0),
('11118', '12345', 'Mash', 8, 'Male', '01532567889', 'Mash@gmail.com', 'Norhail', '1988-06-10', '2018-12-06', 'Batsman', 'Left Handed', 'Right Handed', 0, 0, 0, 0),
('11119', '12345', 'hasan', 9, 'Male', '01532456379', 'hasan@gmail.com', 'Lakshmipur', '1999-09-07', '2018-12-06', 'Spin Bowler', 'Left Handed', 'Right Handed', 0, 0, 0, 0),
('11120', '12345', 'Fizz', 10, 'Male', '01832456379', 'fizz@gmail.com', 'Shatkhira', '1995-09-07', '2018-12-06', 'Fast Bowler', 'Left Handed', 'Left Handed', 0, 0, 0, 0),
('11121', '12345', 'Tamim', 11, 'Male', '01835454349', 'Tamim@gmail.com', 'Chittagong', '1988-09-07', '2018-12-06', 'Batsman', 'Left Handed', 'Left Handed', 0, 0, 0, 0),
('11122', '12345', 'Mahmudullah', 12, 'Male', '01835454432', 'Tamim@gmail.com', 'Dhaka', '1988-10-03', '2018-12-06', 'All Rounder', 'Right Handed', 'Left Handed', 0, 0, 0, 0),
('11123', '12345', 'Miraz', 15, 'Male', '018345556632', 'Miraz@gmail.com', 'Dhaka', '1999-10-03', '2018-12-17', 'Spin Bowler', 'Right Handed', 'Right Handed', 0, 0, 0, 0),
('11124', '12345', 'Rakesh', 20, 'Male', '01504504666', 'Rakesh@gmail.com', 'Rajshahi', '1989-12-29', '2018-12-17', 'Fast Bowler', 'Right Handed', 'Right Handed', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pl_tm`
--

CREATE TABLE `pl_tm` (
  `pid` varchar(80) NOT NULL,
  `tid` varchar(80) NOT NULL,
  `role` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pl_tm`
--

INSERT INTO `pl_tm` (`pid`, `tid`, `role`) VALUES
('11111', 't2', 'Vice Captain'),
('11112', 't2', 'Captain'),
('11112', 'Team4', 'Captain'),
('11113', 't1', 'Captain'),
('11113', 't2', 'Normal Player'),
('11114', 't1', 'Normal Player'),
('11115', 't1', 'Normal Player'),
('11115', 't3', 'Wicket Keeper'),
('11116', 't1', 'Normal Player'),
('11116', 't2', 'Normal Player'),
('11117', 't1', 'Wicket Keeper'),
('11120', 't1', 'Normal Player');

-- --------------------------------------------------------

--
-- Table structure for table `practice`
--

CREATE TABLE `practice` (
  `date` datetime NOT NULL,
  `place` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `practice`
--

INSERT INTO `practice` (`date`, `place`) VALUES
('2018-12-01 09:30:00', 'Mirpur 10'),
('2018-12-02 09:00:00', 'Indoor gym center'),
('2018-12-05 10:30:00', 'outdoor ground'),
('2018-12-06 10:30:00', 'outdoor ground'),
('2018-12-07 10:30:00', 'outdoor ground'),
('2018-12-08 10:30:00', 'indoor ground'),
('2018-12-17 09:30:00', 'Club outdoor Ground'),
('2018-12-18 09:30:00', 'Club outdoor Ground'),
('2018-12-19 09:30:00', 'Club outdoor Ground'),
('2018-12-20 09:30:00', 'Club outdoor Ground'),
('2018-12-21 09:30:00', 'Club outdoor Ground'),
('2018-12-22 09:30:00', 'Club outdoor Ground');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` varchar(80) NOT NULL,
  `name` varchar(80) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `name`, `type`) VALUES
('t1', 'Power Hitters XI', 'ODI'),
('t10', 'Power hitters unbeatable ', 'ODI'),
('t2', 'Power Hitters T20 Squad', 'T20'),
('t3', 'Power Hitters Test XI', 'Test'),
('Team4', 'Power Hitters Practice xi', 'T20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coach`
--
ALTER TABLE `coach`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `event_mgr`
--
ALTER TABLE `event_mgr`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `physio`
--
ALTER TABLE `physio`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pl_tm`
--
ALTER TABLE `pl_tm`
  ADD PRIMARY KEY (`pid`,`tid`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
