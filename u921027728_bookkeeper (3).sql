-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 21, 2026 at 03:00 AM
-- Server version: 11.8.3-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u921027728_bookkeeper`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminID` int(100) NOT NULL,
  `AdminFName` varchar(100) NOT NULL,
  `AdminLName` varchar(100) NOT NULL,
  `AdminEmail` varchar(100) NOT NULL,
  `AdminUsername` varchar(100) NOT NULL,
  `AdminPassword` varchar(100) NOT NULL,
  `Status` varchar(20) NOT NULL DEFAULT 'Pending',
  `is_super` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `AdminOTP` varchar(10) DEFAULT NULL,
  `otp_expiry` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminID`, `AdminFName`, `AdminLName`, `AdminEmail`, `AdminUsername`, `AdminPassword`, `Status`, `is_super`, `created_at`, `AdminOTP`, `otp_expiry`) VALUES
(9, 'Mey', 'Ocenar', 'c22-4757-01@spist.edu.ph', 'Meynard', '$2y$10$QKM6V9JMIPCRYGg3.Tx5WeY7pBFnifDb4YtcapLz3PqOmhed6cfaG', 'Active', 1, '2025-05-10 02:09:16', '972960', NULL),
(10, 'Sam', 'Santos', 'c22-4697-01@spist.edu.ph', 'admin2', '$2y$10$axIn4a7y0.T.x0WDAS1rD.pR/ELe8mBRPk2wsC2C9JOeXL7R/iMVy', 'Active', 0, '2025-05-10 02:10:12', NULL, NULL),
(12, 'Zyeann Zyfhar', 'De Real', 'c20-4697-01@spist.edu.ph', 'Endmin', '$2y$10$KzZ7Lke9Vsx8smNmTD4fJOCJ5pdbQY737vK/5tkCg/pBjBF6hjwfy', 'Active', 1, '2026-02-02 14:28:22', NULL, NULL),
(13, 'flairy', 'enales', 'c22-4716-01@spist.edu.ph', 'Flairy', '$2y$10$oiLCXTWhKf4N.Y9wjxdaaO0CjEYyS0PxEipFhJ4O9dZaY8L0VXk4W', 'Active', 1, '2026-02-25 13:53:47', NULL, NULL),
(18, 'Alrashid', 'Rojas', 'c22-4810-01@spist.edu.ph', 'Shid', '$2y$10$1wrYUXxhdsJ0klIzM1ySCegisC5bNRdvtZA6n5jX7l9thyC7QbudG', 'Active', 0, '2026-02-25 17:30:11', NULL, NULL),
(19, 'asher', 'laxa', 'c22-6576-01@spist.edu.ph', 'Laxa_002', '$2y$10$NO3ww9pI2DJLbe7V56JE/uG7WQDosxnBZORBV/DsWPgdhNwbkIFvS', 'Active', 0, '2026-02-25 17:49:20', NULL, NULL),
(20, 'Library', 'Spist', 'libraryspist@spist.edu.ph', 'Library', '$2y$10$XwSFNZjWCJ6apCcLlovj2ORmam3.yRH2xVg4UhsLnFTKTnZ.HfUPq', 'Active', 1, '2026-02-28 09:23:03', NULL, NULL),
(21, 'Ocenar', 'Meynard', 'shs20-054164@spist.edu.ph', 'Ocenar', '$2y$10$quL1WQUj2hHLNZX.S9w06uO0wesrHdh1uvco6bfJHEGifk3l7p1ym', 'Active', 0, '2026-03-01 12:09:26', NULL, NULL),
(22, 'raymond', 'faller', 'raymondfaller@spist.edu.ph', 'Faller', '$2y$10$v0sht5T9RLr98du/rsiwyOhRFH9McH7GyexQYNbK4eum.gellTu36', 'Active', 1, '2026-03-06 10:48:20', NULL, NULL),
(23, 'lh', 'ducante', 'lhducante@spist.edu.ph', 'Ducante', '$2y$10$X9jyNJzUdFgVt/Fb3L97Ku8UV3pdkyzC92pyPEUt2wjSz/HonPOt2', 'Active', 1, '2026-03-06 10:49:26', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `AccessionNo` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Author` varchar(255) NOT NULL,
  `Book_CategoryID` int(255) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `PublishedYear` year(4) NOT NULL,
  `Availability` varchar(50) DEFAULT 'Available',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `ISBN` varchar(20) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`AccessionNo`, `Title`, `Author`, `Book_CategoryID`, `Photo`, `Description`, `PublishedYear`, `Availability`, `created_at`, `ISBN`, `is_deleted`, `deleted_at`, `deleted_by`) VALUES
(1, 'GOODNIGHT MOON', 'M.BROWN', 12, '69a1ad7820a04.jpg', '', '0000', 'Checked Out', '2026-02-22 12:47:06', '9780008425050', 0, NULL, NULL),
(2, 'RUNAWAY BUNNY', 'Christian Escaber', 3, '69a1ab2a5879d.jpg', '', '0000', 'Available', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(3, 'THE MITTEN', 'A.TRESSELT', 12, '69a1aa2843e2d.jpg', '', '0000', 'Available', '2026-02-22 12:47:06', '9780688092382', 0, NULL, NULL),
(4, 'TREVOR THE TRUCK HELPS OUT', 'Eleanor De Laos', 3, '69a1ab501537d.jpg', '', '0000', 'Checked Out', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(5, 'CURIOUS GEORGE:GETS A MEDAL', 'H.REY', 12, '69a1ad9319cb5.jpg', '', '0000', 'Available', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(6, 'GROLIER INTERNATIONAL DICTIONARY 2', 'GROLIER', 12, '69a1a9282272e.jpg', '', '0000', 'Available', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(7, 'SHOES', 'E.WINTHROP', 12, '69a1abd55f5a4.jpg', '', '0000', 'Available', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(8, 'GROLIER INTERNATIONAL DICTIONARY', 'William Morris', 4, '69a1a836d952f.jpg', '', '0000', 'Available', '2026-02-22 12:47:06', '9781876429171', 0, NULL, NULL),
(9, 'ENCYCLOPEDIA INTERNATIONAL', 'Encyclopedia', 3, '69a1a966aa3ea.jpg', '', '0000', 'Checked Out', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(10, 'CRAYON COUNTING BOOK', 'P.RYAN', 13, '69a1ac9588349.jpg', '', '0000', 'Available', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(11, 'ENCYCLOPEDIA INTERNATIONAL', '', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(12, 'ENCYCLOPEDIA INTERNATIONAL', '', NULL, NULL, '', '0000', 'Available', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(13, 'MARY HAD A LITTLE LAMB', 'I.TRAPANI', 14, '69a1acac66996.jpg', '', '0000', 'Available', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(14, 'ENCYCLOPEDIA INTERNATIONAL', '', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(15, 'MIKE MULLIGAN &HIS TEAM SHOVEL', 'V.BURTON', 12, '69a1ac0c9ab13.jpg', '', '0000', 'Available', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(16, 'ENCYCLOPEDIA INTERNATIONAL', '', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 1, '2026-03-01 12:10:42', 21),
(17, 'MR.RABBIT &LOVELY PRESENT', 'C.ZOLOTOW', 12, '69a1ac516d550.jpg', '', '0000', 'Available', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(18, 'ENCYCLOPEDIA INTERNATIONAL', '', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(19, 'PETER POTTER THE TOY DOCTOR', '', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 1, '2026-02-28 18:48:33', 9),
(20, 'ENCYCLOPEDIA INTERNATIONAL', '', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(21, 'OWEN', 'K.HENKES', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(22, 'ENCYCLOPEDIA INTERNATIONAL', '', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(23, 'PADDINGTON BEAR', 'M.BOND', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(24, 'ENCYCLOPEDIA INTERNATIONAL', '', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(25, 'OH WHERE HAS MY LITTLE DOG GONE?', 'Dog', 12, '69a2d29d4f3d0.jpg', '', '0000', 'Available', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(26, 'ENCYCLOPEDIA INTERNATIONAL', '', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(27, 'PORCUPINE NAMED FLUFFY', 'H.LESTER', 12, '69a1ac76166dd.jpg', '', '0000', 'Available', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(28, 'ENCYCLOPEDIA INTERNATIONAL', '', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(29, 'KATY NO POCKET', 'H.REY', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(30, 'ENCYCLOPEDIA INTERNATIONAL', '', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(31, 'ENCYCLOPEDIA INTERNATIONAL', '', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(32, 'ENCYCLOPEDIA INTERNATIONAL', '', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(33, 'ENCYCLOPEDIA INTERNATIONAL', '', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(34, 'ENCYCLOPEDIA INTERNATIONAL', '', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(35, 'ENCYCLOPEDIA INTERNATIONAL', '', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(36, 'ENCYCLOPEDIA INTERNATIONAL', '', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(37, 'ENCYCLOPEDIA INTERNATIONAL', '', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(38, 'ENCYCLOPEDIA INTERNATIONAL', '', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(39, 'BUSINESS ALMANAC', '', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(40, 'HOLY BIBLE', 'THE GIDEONS', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(41, 'BASEBALL COUNTING BOOK', 'B.MCGRATH', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(42, 'VISION FOR A DRUG FREE PHILIPPINES', 'V.SOTTO III', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(43, 'SINING NG PAKIKIPAGTALASTASAN PARA SA KOLEHIYO', 'F.MERCERE', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(44, 'CURIOUS GEORGE:MAKES PANCAKES', 'H.REY', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(45, 'HUMAN BEHAVIOR IN BUSINESS ORGANIZATION', 'I.MISON', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(46, 'HUMAN BEHAVIOR IN BUSINESS ORGANIZATION', 'I.MISON', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(47, 'HANDBOOK ON PRODUCT DESIGN &DEVT', 'R.MILLEVO', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(48, 'MGT OF ORGANIZATION', 'J.LEVERIZA', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(49, 'ART FOR EARLY LEARNERS', 'M.ESGUERRA', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(50, 'HOW TO EXPORT', '', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(51, 'MANAGERIAL ECONOMICS', 'B.VILLEGAS', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(52, 'PHILIPPINE LITERATURE', 'T.TUAZON', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(53, 'ECONOMICS:AN INTRO', 'B.VILLEGAS', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(54, 'INTERMEDIATE ALGEBRA', 'M.CABANSAY', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(55, 'ROW,ROW YOUR BOAT', 'I.TRAPANI', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(56, 'FUN WITH COMPUTER:INTRO', 'E.RASALAN', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(57, 'PHILIPPINE CONTEMPORARY LIT', 'A.MARAMBA', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(58, 'PHILIPPINE LITERATURE', 'T.TUAZON', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(59, 'EXPLORING HUMOROUS FICTIONS', '', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(60, 'PHILIPPINE LITERATURE', 'B.LUMBERA', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(61, 'FUNDAMENTALS OF INVESTMENT MATH', 'A.ONG', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(62, 'VOYAGES IN ENGLISH 6', 'P.CAMPBELL', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(63, 'BLACKBERRY INK', 'E.MERRIAM', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(64, 'SOCIOLOGY IN PHIL SETTINGS', 'J.CRISOSTOMO', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(65, 'HARMONICA', '', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(66, 'PHYSIOLOGICAL BASIS OF HUMAN BEHAVIOR', 'A.DELA CRUZ', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(67, 'RUB A DUB DUB', 'K.EAGLE', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(68, 'ANNIS DIARY OF FRANCE', 'A.AXWORTHY', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(69, 'JASPER', 'S.SIMMONS', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(70, 'INTRODUCTORY ACCTG 2', '', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(71, 'BUSINESS POLICY IN ASIAN CONTEXT', 'E.SORIANO', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(72, 'ZOO-BE-DOO', 'B.WISE', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(73, 'CURRENT ISSUES', 'A.RONQUILLO', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(74, 'HARRY THE DIRTY DOG', 'G.ZION', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(75, 'BREAD &JAM FOR FRANCES', 'R.HOBAN', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(76, 'TRIGONOMETRY', 'M.ACELAJADO', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(77, 'COLLEGE ALGEBRA', 'E.DOVALSANTO', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(78, 'BUSINESS MATH', 'E.DOVAL SANTOS', NULL, NULL, '', '0000', 'On Hold', '2026-02-22 12:47:06', NULL, 0, NULL, NULL),
(601, 'HTML', 'M. BLUE', NULL, NULL, '', '0000', 'On Hold', '2026-02-24 18:26:33', NULL, 0, NULL, NULL),
(2026, 'Letters from a Stoic (Collins Classics)', 'Lucius Seneca', 3, '69a1aceaac97f.jpg', 'Title: Letters from a Stoic (Collins Classics)\\\\\\\\r\\\\\\\\nAuthor(s): Lucius Seneca\\\\\\\\r\\\\\\\\nPublication Date: 2020\\\\\\\\r\\\\\\\\nPublisher: HarperCollins Publishers Limited\\\\\\\\r\\\\\\\\nDescription: Subjects: Ethics', '0000', 'Available', '2026-02-24 13:22:48', '9780008425050', 0, NULL, NULL),
(103, 'Pagbasa at Pagsulat Tungo Sa Pananaliksik (Filipino 2)', 'Leticia D. Espina', 4, '69a1ae81d9e50.png', 'Title: Pagbasa at Pagsulat Tungo Sa Pananaliksik (Filipino 2)\\r\\nAuthor(s): Leticia D. Espina\\r\\nPublication Date: 2009', '0000', 'Available', '2026-02-27 14:47:29', '9710445456', 0, NULL, NULL),
(1233, 'Letters from a Stoic (Collins Classics)', 'Lucius Seneca', 5, '69a2d1d044a09.jpg', 'Title: Letters from a Stoic (Collins Classics)\\\\r\\\\nAuthor(s): Lucius Seneca\\\\r\\\\nPublication Date: 2020\\\\r\\\\nPublisher: HarperCollins Publishers Limited\\\\r\\\\nDescription: Subjects: Ethics', '0000', 'Available', '2026-02-28 07:13:35', '11111', 0, NULL, NULL),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:40:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:41:27', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(0, '', '', NULL, NULL, '', '0000', 'On Hold', '2026-03-05 00:59:49', NULL, 1, '2026-03-06 10:56:19', 12),
(120, 'Domino addition', 'Lynette Long', 3, NULL, 'Title: Domino addition\\r\\nAuthor(s): Lynette Long\\r\\nPublication Date: 1996\\r\\nPublisher: Charlesbridge\\r\\nDescription: Subjects: Addition, Dominoes, Juvenile literature, Spanish language materials, Games, Arithmetic, JUVENILE NONFICTION / Concepts / Counting & Numbers, JUVENILE NONFICTION / Games & Activities, JUVENILE NONFICTION / Mathematics / Arithmetic', '0000', 'Available', '2026-03-07 02:53:02', NULL, 1, '2026-03-07 02:55:40', 12),
(121, 'Domino addition', 'Lynette Long', 3, NULL, 'Title: Domino addition\\r\\nAuthor(s): Lynette Long\\r\\nPublication Date: 1996\\r\\nPublisher: Charlesbridge\\r\\nDescription: Subjects: Addition, Dominoes, Juvenile literature, Spanish language materials, Games, Arithmetic, JUVENILE NONFICTION / Concepts / Counting & Numbers, JUVENILE NONFICTION / Games & Activities, JUVENILE NONFICTION / Mathematics / Arithmetic', '0000', 'Available', '2026-03-07 02:56:15', '9780881068788', 1, '2026-03-07 02:56:42', 12),
(122, 'Domino addition', 'Lynette Long', 3, '69ab946596462.jpg', 'Title: Domino addition\\\\r\\\\nAuthor(s): Lynette Long\\\\r\\\\nPublication Date: 1996\\\\r\\\\nPublisher: Charlesbridge\\\\r\\\\nDescription: Subjects: Addition, Dominoes, Juvenile literature, Spanish language materials, Games, Arithmetic, JUVENILE NONFICTION / Concepts / Counting & Numbers, JUVENILE NONFICTION / Games & Activities, JUVENILE NONFICTION / Mathematics / Arithmetic', '0000', 'Checked Out', '2026-03-07 02:57:42', '9780881068788', 0, NULL, NULL),
(123, 'WRITE IDEA 8', 'Macmillan', 11, NULL, 'Title: WRITE IDEA 8\\r\\nPublisher: Macmillan', '0000', 'Available', '2026-03-07 03:00:16', '9780022441845', 1, '2026-03-07 03:03:40', 12),
(124, 'Domino addition', 'Lynette Long', 0, '69ab95589b351.jpg', 'Title: Domino addition\\r\\nAuthor(s): Lynette Long\\r\\nPublication Date: 1996\\r\\nPublisher: Charlesbridge\\r\\nDescription: Subjects: Addition, Dominoes, Juvenile literature, Spanish language materials, Games, Arithmetic, JUVENILE NONFICTION / Concepts / Counting & Numbers, JUVENILE NONFICTION / Games & Activities, JUVENILE NONFICTION / Mathematics / Arithmetic', '0000', 'Available', '2026-03-07 03:02:48', '9780026357111', 1, '2026-03-07 03:03:28', 12),
(125, 'Domino addition', 'Lynette Long', 0, '69ab95b842c19.jpg', 'Title: Domino addition\\\\r\\\\nAuthor(s): Lynette Long\\\\r\\\\nPublication Date: 1996\\\\r\\\\nPublisher: Charlesbridge\\\\r\\\\nDescription: Subjects: Addition, Dominoes, Juvenile literature, Spanish language materials, Games, Arithmetic, JUVENILE NONFICTION / Concepts / Counting & Numbers, JUVENILE NONFICTION / Games & Activities, JUVENILE NONFICTION / Mathematics / Arithmetic', '0000', 'Available', '2026-03-07 03:04:24', '9780026357111', 1, '2026-03-07 03:09:09', 12),
(126, 'Domino addition', 'Lynette Long', 0, NULL, 'Title: Domino addition\\r\\nAuthor(s): Lynette Long\\r\\nPublication Date: 1996\\r\\nPublisher: Charlesbridge\\r\\nDescription: Subjects: Addition, Dominoes, Juvenile literature, Spanish language materials, Games, Arithmetic, JUVENILE NONFICTION / Concepts / Counting & Numbers, JUVENILE NONFICTION / Games & Activities, JUVENILE NONFICTION / Mathematics / Arithmetic', '0000', 'Available', '2026-03-07 04:20:45', '9780881068788', 1, '2026-03-07 04:25:20', 13),
(300, 'Writer\\\'s choice', 'Jacqueline Jones Royster, Mark Lester', 1, NULL, 'Title: Writer\\\'s choice\\r\\nAuthor(s): Jacqueline Jones Royster, Mark Lester\\r\\nPublication Date: 1994\\r\\nPublisher: Glencoe\\r\\nDescription: Subjects: Rhetoric, Grammar, English language', '0000', 'Checked Out', '2026-03-07 04:26:56', '9780026357111', 0, NULL, NULL),
(9090, 'meynard test', 'meynard', 1, NULL, '', '0000', 'Available', '2026-03-14 06:04:44', '56789', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book_categories`
--

CREATE TABLE `book_categories` (
  `Book_CategoryID` int(100) NOT NULL,
  `Book_Category` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_categories`
--

INSERT INTO `book_categories` (`Book_CategoryID`, `Book_Category`, `created_at`) VALUES
(1, 'Computer', '2025-05-09 09:12:41'),
(2, 'Religion', '2025-05-09 09:12:41'),
(3, 'Philosophy', '2025-05-09 09:12:41'),
(4, 'Languages', '2025-05-09 09:12:41'),
(5, 'History', '2025-05-09 09:12:41'),
(6, 'Arts', '2025-05-09 09:12:41'),
(7, 'Filipino\r\n', '2025-05-09 09:12:41'),
(8, 'Araling Panlipunan', '2025-05-09 09:12:41'),
(9, 'Edukasyon sa Pagpapakatao', '2025-05-09 09:12:41'),
(10, 'Math', '2025-05-09 09:12:41'),
(11, 'English', '2025-05-09 09:22:19'),
(12, 'Story', '2026-02-22 12:51:33'),
(13, 'Interactive', '2026-02-23 11:41:32'),
(14, 'Nursery', '2026-02-23 11:41:53'),
(0, 'Social', '2026-02-27 14:13:45'),
(0, 'Science', '2026-02-27 14:52:41');

-- --------------------------------------------------------

--
-- Table structure for table `contact_info`
--

CREATE TABLE `contact_info` (
  `ContactID` int(10) NOT NULL,
  `ContactEmail` varchar(100) NOT NULL,
  `ContactTelephone` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_info`
--

INSERT INTO `contact_info` (`ContactID`, `ContactEmail`, `ContactTelephone`) VALUES
(1, 'c22-4810-01@spist.edu.ph', '09123456789');

-- --------------------------------------------------------

--
-- Table structure for table `dates`
--

CREATE TABLE `dates` (
  `dateID` int(100) NOT NULL,
  `dateDesc` varchar(100) NOT NULL,
  `Days` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dates`
--

INSERT INTO `dates` (`dateID`, `dateDesc`, `Days`) VALUES
(1, 'DueDate', 15);

-- --------------------------------------------------------

--
-- Table structure for table `max_books`
--

CREATE TABLE `max_books` (
  `MaxID` int(10) NOT NULL,
  `MaxNumber` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `max_books`
--

INSERT INTO `max_books` (`MaxID`, `MaxNumber`) VALUES
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `Notif_ID` int(11) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `ID` int(11) NOT NULL,
  `DueDate` datetime NOT NULL,
  `CustomMessage` text DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`Notif_ID`, `Email`, `ID`, `DueDate`, `CustomMessage`, `is_read`) VALUES
(18, 'c22-4810-01@spist.edu.ph', 1, '2025-11-19 19:22:51', 'The book \"C++\" by \"Meynard Ocenar\" that you requested has been approved. Please be mindful of your due date.', 0),
(19, 'c20-4697-01@spist.edu.ph', 1, '2025-11-21 14:32:40', 'The book \"Letters from a Stoic\" by \"Lucius Seneca\" that you requested has been approved. Please be mindful of your due date.', 1),
(20, 'c20-4697-01@spist.edu.ph', 1, '2026-02-21 00:19:52', 'The book \"Trauma Has No Color\" by \"Sharnette Carter, Aja Chrisanta, Eneri, Devaron Flint, Deborah Jackson\" that you requested has been approved. Please be mindful of your due date.', 1),
(21, 'c22-4757-01@spist.edu.ph', 1, '2026-02-22 00:44:04', 'The book \"How To Self-Publish A Children\\\'s Book\" by \"Yvonne Jones\" that you requested has been approved. Please be mindful of your due date.', 1),
(22, 'c22-4757-01@spist.edu.ph', 1, '2026-02-24 14:47:45', 'The book \"RUNAWAY BUNNY\" by \"Christian Escaber\" that you requested has been approved. Please be mindful of your due date.', 1),
(23, 'c22-4757-01@spist.edu.ph', 1, '2026-02-24 19:23:12', 'The book \"THE MITTEN\" by \"A.TRESSELT\" that you requested has been approved. Please be mindful of your due date.', 1),
(0, 'c20-4697-01@spist.edu.ph', 1, '2026-03-06 06:50:03', 'The book \"ENCYCLOPEDIA INTERNATIONAL\" by \"Encyclopedia\" that you requested has been approved. Please be mindful of your due date.', 1),
(0, 'c22-4716-01@spist.edu.ph', 1, '2026-03-06 23:17:31', 'The book \"THE MITTEN\" by \"A.TRESSELT\" that you requested has been approved. Please be mindful of your due date.', 1),
(0, 'c22-4716-01@spist.edu.ph', 1, '2026-03-07 02:05:23', 'The book \"THE MITTEN\" by \"A.TRESSELT\" that you requested has been approved. Please be mindful of your due date.', 0),
(0, 'c22-4716-01@spist.edu.ph', 1, '2026-03-07 04:22:07', 'The book \"THE MITTEN\" by \"A.TRESSELT\" that you requested has been approved. Please be mindful of your due date.', 0),
(0, 'c22-4716-01@spist.edu.ph', 1, '2026-03-07 04:27:31', 'The book \"THE MITTEN\" by \"A.TRESSELT\" that you requested has been approved. Please be mindful of your due date.', 0),
(0, 'c22-4716-01@spist.edu.ph', 1, '2026-03-14 06:06:23', 'The book \"THE MITTEN\" by \"A.TRESSELT\" that you requested has been approved. Please be mindful of your due date.', 0),
(0, 'c22-4716-01@spist.edu.ph', 1, '2026-03-14 08:01:55', 'The book \"THE MITTEN\" by \"A.TRESSELT\" that you requested has been approved. Please be mindful of your due date.', 0),
(0, 'c22-4716-01@spist.edu.ph', 1, '2026-03-14 09:06:06', 'The book \"THE MITTEN\" by \"A.TRESSELT\" that you requested has been approved. Please be mindful of your due date.', 0),
(0, 'c22-4716-01@spist.edu.ph', 1, '2026-03-14 09:06:14', 'The book \"THE MITTEN\" by \"A.TRESSELT\" that you requested has been approved. Please be mindful of your due date.', 0),
(0, 'c22-4757-01@spist.edu.ph', 1, '2026-03-14 14:41:01', 'The book \"meynard test\" by \"meynard\" that you requested has been approved. Please be mindful of your due date.', 1),
(0, 'c22-4757-01@spist.edu.ph', 1, '2026-03-14 15:17:49', 'The book \"RUNAWAY BUNNY\" by \"Christian Escaber\" that you requested has been approved. Please be mindful of your due date.', 1),
(0, 'c22-4757-01@spist.edu.ph', 1, '2026-03-14 15:19:59', 'The book \"meynard test\" by \"meynard\" that you requested has been approved. Please be mindful of your due date.', 1),
(0, 'c22-4757-01@spist.edu.ph', 1, '2026-03-14 15:22:03', 'The book \"meynard test\" by \"meynard\" that you requested has been approved. Please be mindful of your due date.', 1),
(0, 'c22-4757-01@spist.edu.ph', 1, '2026-03-14 18:34:21', 'The book \"GROLIER INTERNATIONAL DICTIONARY\" by \"William Morris\" that you requested has been approved. Please be mindful of your due date.', 1),
(0, 'c22-4757-01@spist.edu.ph', 1, '2026-03-14 18:43:52', 'The book \"RUNAWAY BUNNY\" by \"Christian Escaber\" that you requested has been approved. Please be mindful of your due date.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notification_desc`
--

CREATE TABLE `notification_desc` (
  `ID` int(100) NOT NULL,
  `Notif_status` varchar(250) NOT NULL,
  `Notif_title` varchar(100) NOT NULL,
  `Notif_desc` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notification_desc`
--

INSERT INTO `notification_desc` (`ID`, `Notif_status`, `Notif_title`, `Notif_desc`) VALUES
(1, 'Approved', 'Book Request Approved', 'The book \"%s\" by \"%s\" that you requested has been approved. Please be mindful of your due date.'),
(2, 'Rejected', 'Book Request Rejected', 'The book \"%s\" by \"%s\" that you requested has been rejected due to minor issues.'),
(3, 'Due Date', 'Due Date Reminder', 'The book \"%s\" by \"%s\" that you borrowed is due %s.'),
(5, 'Overdue', 'Book Overdue Notice', 'The book \"%s\" by \"%s\" that you borrowed is overdue. Please return it immediately.');

-- --------------------------------------------------------

--
-- Table structure for table `no_borrow_days`
--

CREATE TABLE `no_borrow_days` (
  `weekday` tinyint(4) NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `no_borrow_days`
--

INSERT INTO `no_borrow_days` (`weekday`, `reason`, `is_active`) VALUES
(0, '', 0),
(1, '', 0),
(2, '', 0),
(3, '', 0),
(4, '', 0),
(5, '', 0),
(6, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `statusID` int(10) NOT NULL,
  `StatusDesc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`statusID`, `StatusDesc`) VALUES
(1, 'Approved'),
(7, 'For Pick-up'),
(4, 'Overdue'),
(3, 'Pending'),
(8, 'Picked Up'),
(2, 'Rejected'),
(6, 'Returned'),
(5, 'Returned Overdue');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transactionID` int(100) NOT NULL,
  `userID` int(100) NOT NULL,
  `accessionNo` int(100) NOT NULL,
  `statusID` int(100) NOT NULL DEFAULT 3,
  `BorrowedDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `DueDate` datetime DEFAULT NULL,
  `ReturnDate` datetime DEFAULT NULL,
  `deleteStatus` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transactionID`, `userID`, `accessionNo`, `statusID`, `BorrowedDate`, `DueDate`, `ReturnDate`, `deleteStatus`) VALUES
(1, 94, 124, 4, '2025-05-14 16:00:00', '2025-05-25 00:00:00', '2025-10-04 00:00:00', 1),
(2, 95, 132, 4, '2025-11-25 16:00:00', '2025-12-06 00:00:00', NULL, 1),
(3, 237, 12, 6, '2026-03-14 00:00:00', '2026-04-01 23:59:59', '2026-03-21 00:00:00', 1),
(4, 238, 567890, 4, '2026-02-26 16:00:00', '2026-03-09 00:00:00', '2026-02-22 00:00:00', 1),
(5, 244, 1, 4, '2026-02-27 16:00:00', '2026-03-10 00:00:00', NULL, 1),
(6, 245, 2, 4, '2026-03-01 16:00:00', '2026-03-12 00:00:00', '2026-02-27 00:00:00', 1),
(7, 245, 3, 4, '2026-03-01 16:00:00', '2026-03-12 00:00:00', '2026-02-23 00:00:00', 1),
(8, 237, 9, 1, '2026-03-14 00:00:00', '2026-04-01 23:59:59', NULL, 1),
(9, 248, 3, 1, '2026-03-14 00:00:00', '2026-04-01 23:59:59', NULL, 1),
(10, 237, 4, 1, '2026-03-14 00:00:00', '2026-04-01 23:59:59', NULL, 1),
(11, 254, 122, 1, '2026-03-14 00:00:00', '2026-04-01 23:59:59', NULL, 1),
(12, 254, 300, 1, '2026-03-14 00:00:00', '2026-04-01 23:59:59', NULL, 1),
(13, 245, 9090, 6, '2026-03-14 00:00:00', '2026-04-01 23:59:59', '2026-03-13 00:00:00', 1),
(14, 245, 8, 6, '2026-03-14 00:00:00', '2026-04-01 23:59:59', '2026-03-14 00:00:00', 1),
(15, 245, 103, 6, '2026-03-14 00:00:00', '2026-04-01 23:59:59', '2026-03-14 00:00:00', 1),
(200, 245, 9090, 6, '2026-03-14 00:00:00', '2026-04-01 23:59:59', '2026-03-14 00:00:00', 1),
(201, 245, 2, 6, '2026-03-14 00:00:00', '2026-03-29 23:59:59', '2026-03-15 00:00:00', 1),
(202, 245, 9090, 6, '2026-03-14 00:00:00', '2026-04-01 23:59:59', '2026-03-14 00:00:00', 1),
(203, 245, 9090, 6, '2026-03-14 00:00:00', '2026-03-29 23:59:59', '2026-03-15 00:00:00', 1),
(204, 245, 8, 6, '2026-03-14 00:00:00', '2026-03-29 23:59:59', '2026-03-15 00:00:00', 1),
(206, 245, 2, 6, '2026-03-14 00:00:00', '2026-03-29 23:59:59', '2026-03-14 00:00:00', 1);

--
-- Triggers `transaction`
--
DELIMITER $$
CREATE TRIGGER `TR_transaction_log_approve` AFTER UPDATE ON `transaction` FOR EACH ROW INSERT INTO transaction_log (TransactionID, UserID,StatusID,AccessionNo,DeleteStatus,Logdate)
        VALUES (NEW.transactionID,NEW.userID,NEW.statusID,NEW.accessionNo,NEW.deleteStatus,current_timestamp())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `TR_transaction_log_insert` AFTER INSERT ON `transaction` FOR EACH ROW INSERT INTO transaction_log (TransactionID, UserID,StatusID,AccessionNo,DeleteStatus,Logdate)
        VALUES (NEW.transactionID,NEW.userID,NEW.statusID,NEW.accessionNo,NEW.deleteStatus,current_timestamp())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_log`
--

CREATE TABLE `transaction_log` (
  `LogID` int(11) NOT NULL,
  `TransactionID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `StatusID` int(11) NOT NULL,
  `AccessionNo` int(11) NOT NULL,
  `DeleteStatus` int(11) NOT NULL,
  `Logdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction_log`
--

INSERT INTO `transaction_log` (`LogID`, `TransactionID`, `UserID`, `StatusID`, `AccessionNo`, `DeleteStatus`, `Logdate`) VALUES
(1, 8, 54, 3, 123, 1, '2025-04-13 14:32:38'),
(2, 9, 55, 3, 129, 1, '2025-04-16 00:51:43'),
(3, 10, 57, 3, 125, 1, '2025-04-16 00:51:43'),
(4, 11, 90, 3, 124, 1, '2025-05-03 06:02:18'),
(5, 11, 90, 3, 124, 0, '0000-00-00 00:00:00'),
(6, 12, 90, 3, 123, 1, '2025-05-03 06:02:57'),
(7, 12, 90, 3, 123, 0, '0000-00-00 00:00:00'),
(8, 13, 90, 3, 126, 1, '2025-05-03 08:19:40'),
(9, 13, 90, 3, 126, 0, '0000-00-00 00:00:00'),
(10, 14, 52, 3, 127, 1, '2025-05-03 08:36:29'),
(11, 14, 52, 3, 127, 0, '0000-00-00 00:00:00'),
(12, 15, 90, 3, 129, 1, '2025-05-03 10:15:45'),
(13, 15, 90, 3, 129, 0, '0000-00-00 00:00:00'),
(14, 16, 90, 3, 445, 1, '2025-05-03 10:47:09'),
(15, 16, 90, 3, 445, 0, '0000-00-00 00:00:00'),
(16, 17, 52, 3, 123, 1, '2025-05-03 12:15:12'),
(17, 17, 52, 3, 123, 0, '0000-00-00 00:00:00'),
(18, 18, 52, 3, 123, 1, '2025-05-03 12:27:16'),
(19, 18, 52, 3, 123, 0, '0000-00-00 00:00:00'),
(20, 19, 90, 3, 124, 1, '2025-05-03 13:12:48'),
(21, 19, 90, 3, 124, 0, '0000-00-00 00:00:00'),
(22, 20, 90, 3, 123, 1, '2025-05-03 13:16:09'),
(23, 20, 90, 3, 123, 0, '0000-00-00 00:00:00'),
(24, 21, 90, 3, 124, 1, '2025-05-03 13:16:58'),
(25, 21, 90, 3, 124, 0, '0000-00-00 00:00:00'),
(26, 22, 90, 3, 123, 1, '2025-05-03 13:28:15'),
(27, 22, 90, 3, 123, 0, '0000-00-00 00:00:00'),
(28, 23, 90, 3, 124, 1, '2025-05-03 13:29:45'),
(29, 23, 90, 3, 124, 0, '0000-00-00 00:00:00'),
(30, 22, 90, 4, 123, 0, '0000-00-00 00:00:00'),
(31, 24, 90, 3, 123, 1, '2025-05-03 13:38:11'),
(32, 24, 90, 3, 123, 0, '0000-00-00 00:00:00'),
(33, 24, 90, 4, 123, 0, '0000-00-00 00:00:00'),
(34, 25, 90, 3, 123, 1, '2025-05-03 13:38:21'),
(35, 25, 90, 3, 123, 0, '0000-00-00 00:00:00'),
(36, 25, 90, 4, 123, 0, '0000-00-00 00:00:00'),
(37, 26, 90, 3, 123, 1, '2025-05-03 13:40:36'),
(38, 26, 90, 3, 123, 0, '0000-00-00 00:00:00'),
(39, 26, 90, 4, 123, 0, '0000-00-00 00:00:00'),
(40, 27, 52, 3, 123, 1, '2025-05-04 17:13:50'),
(41, 27, 52, 3, 123, 0, '0000-00-00 00:00:00'),
(42, 28, 52, 3, 124, 1, '2025-05-04 17:16:39'),
(43, 28, 52, 3, 124, 0, '0000-00-00 00:00:00'),
(44, 29, 90, 3, 126, 1, '2025-05-04 17:21:17'),
(45, 29, 90, 3, 126, 0, '0000-00-00 00:00:00'),
(46, 19, 90, 4, 124, 0, '0000-00-00 00:00:00'),
(47, 29, 90, 4, 126, 0, '0000-00-00 00:00:00'),
(48, 30, 90, 3, 123, 1, '2025-05-04 17:32:19'),
(49, 30, 90, 3, 123, 0, '0000-00-00 00:00:00'),
(50, 30, 90, 4, 123, 0, '0000-00-00 00:00:00'),
(51, 27, 52, 4, 123, 0, '0000-00-00 00:00:00'),
(52, 31, 90, 3, 123, 1, '2025-05-04 17:39:51'),
(53, 31, 90, 3, 123, 0, '0000-00-00 00:00:00'),
(54, 32, 52, 3, 124, 1, '2025-05-04 17:40:12'),
(55, 32, 52, 3, 124, 0, '0000-00-00 00:00:00'),
(56, 33, 90, 3, 126, 1, '2025-05-04 17:40:52'),
(57, 33, 90, 3, 126, 0, '0000-00-00 00:00:00'),
(58, 34, 52, 3, 127, 1, '2025-05-04 17:41:12'),
(59, 34, 52, 3, 127, 0, '0000-00-00 00:00:00'),
(60, 35, 52, 3, 129, 1, '2025-05-04 18:03:01'),
(61, 35, 52, 3, 129, 0, '0000-00-00 00:00:00'),
(62, 36, 52, 3, 125, 1, '2025-05-04 18:05:42'),
(63, 36, 52, 3, 125, 0, '0000-00-00 00:00:00'),
(64, 37, 52, 3, 125, 1, '2025-05-05 10:16:16'),
(65, 37, 52, 3, 125, 0, '0000-00-00 00:00:00'),
(66, 38, 90, 3, 130, 1, '2025-05-05 10:50:06'),
(67, 38, 90, 3, 130, 0, '0000-00-00 00:00:00'),
(68, 39, 90, 3, 123, 1, '2025-05-05 12:32:15'),
(69, 39, 90, 3, 123, 0, '0000-00-00 00:00:00'),
(70, 40, 90, 3, 124, 1, '2025-05-05 12:32:34'),
(71, 40, 90, 3, 124, 0, '0000-00-00 00:00:00'),
(72, 41, 90, 3, 126, 1, '2025-05-05 12:33:53'),
(73, 41, 90, 3, 126, 0, '0000-00-00 00:00:00'),
(74, 42, 90, 3, 127, 1, '2025-05-05 12:37:03'),
(75, 42, 90, 3, 127, 0, '0000-00-00 00:00:00'),
(76, 43, 90, 3, 129, 1, '2025-05-05 12:39:40'),
(77, 43, 90, 3, 129, 0, '0000-00-00 00:00:00'),
(78, 44, 90, 3, 445, 1, '2025-05-05 12:50:43'),
(79, 44, 90, 3, 445, 0, '0000-00-00 00:00:00'),
(80, 45, 90, 3, 125, 1, '2025-05-05 21:53:31'),
(81, 45, 90, 3, 125, 0, '0000-00-00 00:00:00'),
(82, 46, 90, 3, 123, 1, '2025-05-05 22:40:18'),
(83, 46, 90, 3, 123, 0, '0000-00-00 00:00:00'),
(84, 47, 90, 3, 124, 1, '2025-05-05 22:41:33'),
(85, 47, 90, 3, 124, 0, '0000-00-00 00:00:00'),
(86, 48, 90, 3, 126, 1, '2025-05-05 22:41:57'),
(87, 48, 90, 3, 126, 0, '0000-00-00 00:00:00'),
(88, 49, 90, 3, 127, 1, '2025-05-05 22:43:40'),
(89, 49, 90, 3, 127, 0, '0000-00-00 00:00:00'),
(90, 50, 90, 3, 129, 1, '2025-05-05 23:31:43'),
(91, 50, 90, 3, 129, 0, '0000-00-00 00:00:00'),
(92, 51, 90, 3, 445, 1, '2025-05-06 00:23:44'),
(93, 51, 90, 3, 445, 0, '0000-00-00 00:00:00'),
(94, 51, 90, 1, 445, 1, '2025-05-06 00:24:46'),
(95, 51, 90, 6, 445, 1, '2025-05-06 00:26:03'),
(96, 52, 90, 3, 125, 1, '2025-05-06 11:17:06'),
(97, 52, 90, 3, 125, 0, '0000-00-00 00:00:00'),
(98, 52, 90, 1, 125, 1, '2025-05-06 11:17:27'),
(99, 52, 90, 1, 125, 0, '2025-05-06 11:24:55'),
(100, 53, 90, 3, 125, 1, '2025-05-06 11:25:39'),
(101, 53, 90, 3, 125, 0, '0000-00-00 00:00:00'),
(102, 53, 90, 1, 125, 1, '2025-05-06 11:25:59'),
(103, 54, 90, 3, 130, 1, '2025-05-06 12:37:47'),
(104, 54, 90, 3, 130, 0, '0000-00-00 00:00:00'),
(105, 54, 90, 1, 130, 1, '2025-05-06 12:38:05'),
(106, 55, 90, 3, 445, 1, '2025-05-06 12:52:11'),
(107, 55, 90, 3, 445, 0, '0000-00-00 00:00:00'),
(108, 55, 90, 1, 445, 1, '2025-05-06 13:07:14'),
(109, 56, 90, 3, 123, 1, '2025-05-06 13:10:13'),
(110, 56, 90, 3, 123, 0, '0000-00-00 00:00:00'),
(111, 57, 90, 3, 124, 1, '2025-05-06 13:10:17'),
(112, 57, 90, 3, 124, 0, '0000-00-00 00:00:00'),
(113, 56, 90, 4, 123, 0, '0000-00-00 00:00:00'),
(114, 57, 90, 4, 124, 0, '0000-00-00 00:00:00'),
(115, 58, 90, 3, 123, 1, '2025-05-06 13:10:35'),
(116, 58, 90, 3, 123, 0, '0000-00-00 00:00:00'),
(117, 59, 90, 3, 124, 1, '2025-05-06 13:10:38'),
(118, 59, 90, 3, 124, 0, '0000-00-00 00:00:00'),
(119, 58, 90, 1, 123, 1, '2025-05-06 13:11:05'),
(120, 59, 90, 2, 124, 1, '2025-05-06 13:11:14'),
(121, 58, 90, 6, 123, 1, '2025-05-06 13:11:48'),
(122, 60, 90, 3, 126, 1, '2025-05-06 13:19:07'),
(123, 60, 90, 3, 126, 0, '0000-00-00 00:00:00'),
(124, 60, 90, 1, 126, 1, '2025-05-06 13:22:08'),
(125, 60, 90, 5, 126, 1, '2025-05-06 13:25:38'),
(126, 61, 90, 3, 127, 1, '2025-05-06 13:26:19'),
(127, 61, 90, 3, 127, 0, '0000-00-00 00:00:00'),
(128, 61, 90, 2, 127, 1, '2025-05-06 13:26:40'),
(129, 62, 90, 3, 445, 1, '2025-05-06 14:33:02'),
(130, 62, 90, 3, 445, 0, '0000-00-00 00:00:00'),
(131, 62, 90, 1, 445, 1, '2025-05-06 14:33:17'),
(132, 63, 52, 3, 123, 1, '2025-05-06 15:05:04'),
(133, 63, 52, 3, 123, 0, '0000-00-00 00:00:00'),
(134, 63, 52, 1, 123, 1, '2025-05-06 15:05:25'),
(135, 62, 90, 6, 445, 1, '2025-05-06 15:05:55'),
(136, 63, 52, 5, 123, 1, '2025-05-06 15:06:18'),
(137, 62, 90, 5, 445, 1, '2025-05-06 15:09:06'),
(138, 62, 90, 6, 445, 1, '2025-05-06 15:09:29'),
(139, 62, 90, 5, 445, 1, '2025-05-06 15:11:50'),
(140, 58, 90, 5, 123, 1, '2025-05-06 16:09:53'),
(141, 58, 90, 5, 123, 1, '2025-05-06 16:10:11'),
(142, 58, 90, 6, 123, 1, '2025-05-06 16:10:37'),
(143, 62, 90, 5, 445, 1, '2025-05-06 16:10:53'),
(144, 62, 90, 6, 445, 1, '2025-05-06 16:11:28'),
(145, 60, 90, 6, 126, 1, '2025-05-06 16:11:42'),
(146, 64, 90, 3, 123, 1, '2025-05-06 17:12:43'),
(147, 64, 90, 3, 123, 0, '0000-00-00 00:00:00'),
(148, 64, 90, 1, 123, 1, '2025-05-06 17:12:52'),
(149, 65, 90, 3, 126, 1, '2025-05-06 20:27:37'),
(150, 65, 90, 3, 126, 0, '0000-00-00 00:00:00'),
(151, 65, 90, 1, 126, 1, '2025-05-06 20:27:56'),
(152, 66, 90, 3, 129, 1, '2025-05-06 21:30:38'),
(153, 66, 90, 3, 129, 0, '0000-00-00 00:00:00'),
(154, 66, 90, 1, 129, 1, '2025-05-06 21:30:50'),
(155, 67, 90, 3, 445, 1, '2025-05-06 21:58:44'),
(156, 67, 90, 3, 445, 0, '0000-00-00 00:00:00'),
(157, 67, 90, 1, 445, 1, '2025-05-06 21:58:54'),
(158, 68, 90, 3, 125, 1, '2025-05-06 22:01:03'),
(159, 68, 90, 3, 125, 0, '0000-00-00 00:00:00'),
(160, 69, 90, 3, 130, 1, '2025-05-06 22:01:07'),
(161, 69, 90, 3, 130, 0, '0000-00-00 00:00:00'),
(162, 70, 90, 3, 131, 1, '2025-05-06 22:01:13'),
(163, 70, 90, 3, 131, 0, '0000-00-00 00:00:00'),
(164, 69, 90, 1, 130, 1, '2025-05-06 22:01:33'),
(165, 68, 90, 1, 125, 1, '2025-05-06 22:01:50'),
(166, 70, 90, 1, 131, 1, '2025-05-06 22:02:02'),
(167, 71, 90, 3, 124, 1, '2025-05-06 22:04:20'),
(168, 71, 90, 3, 124, 0, '0000-00-00 00:00:00'),
(169, 71, 90, 1, 124, 1, '2025-05-06 22:04:48'),
(170, 64, 90, 6, 123, 1, '2025-05-06 22:05:00'),
(171, 72, 90, 3, 123, 1, '2025-05-06 22:05:57'),
(172, 72, 90, 3, 123, 0, '0000-00-00 00:00:00'),
(173, 72, 90, 1, 123, 1, '2025-05-06 22:06:14'),
(174, 65, 90, 6, 126, 1, '2025-05-07 12:50:36'),
(175, 66, 90, 6, 129, 1, '2025-05-07 12:50:46'),
(176, 67, 90, 6, 445, 1, '2025-05-07 12:50:55'),
(177, 71, 90, 6, 124, 1, '2025-05-07 12:51:03'),
(178, 70, 90, 5, 131, 1, '2025-05-07 12:51:11'),
(179, 69, 90, 5, 130, 1, '2025-05-07 12:51:29'),
(180, 68, 90, 5, 125, 1, '2025-05-07 12:51:41'),
(181, 72, 90, 6, 123, 1, '2025-05-07 12:52:41'),
(182, 73, 90, 3, 123, 1, '2025-05-07 12:53:29'),
(183, 73, 90, 3, 123, 0, '0000-00-00 00:00:00'),
(184, 73, 90, 1, 123, 1, '2025-05-07 12:53:43'),
(185, 74, 90, 3, 124, 1, '2025-05-07 12:55:34'),
(186, 74, 90, 3, 124, 0, '0000-00-00 00:00:00'),
(187, 74, 90, 1, 124, 1, '2025-05-07 12:55:58'),
(188, 75, 52, 3, 126, 1, '2025-05-07 13:23:06'),
(189, 75, 52, 3, 126, 0, '0000-00-00 00:00:00'),
(190, 75, 52, 1, 126, 1, '2025-05-07 13:23:47'),
(191, 74, 90, 5, 124, 1, '2025-05-07 16:52:30'),
(192, 76, 90, 3, 125, 1, '2025-05-08 18:56:00'),
(193, 76, 90, 3, 125, 0, '0000-00-00 00:00:00'),
(194, 76, 90, 4, 125, 0, '0000-00-00 00:00:00'),
(195, 77, 90, 3, 125, 1, '2025-05-08 18:56:17'),
(196, 77, 90, 3, 125, 0, '0000-00-00 00:00:00'),
(197, 77, 90, 4, 125, 0, '0000-00-00 00:00:00'),
(198, 78, 52, 3, 129, 1, '2025-05-10 00:34:32'),
(199, 78, 52, 3, 129, 0, '0000-00-00 00:00:00'),
(200, 79, 52, 3, 445, 1, '2025-05-10 00:34:37'),
(201, 79, 52, 3, 445, 0, '0000-00-00 00:00:00'),
(202, 80, 52, 3, 125, 1, '2025-05-10 00:34:51'),
(203, 80, 52, 3, 125, 0, '0000-00-00 00:00:00'),
(204, 81, 52, 3, 130, 1, '2025-05-10 00:34:58'),
(205, 81, 52, 3, 130, 0, '0000-00-00 00:00:00'),
(206, 81, 52, 2, 130, 1, '2025-05-10 00:35:25'),
(207, 78, 52, 4, 129, 0, '0000-00-00 00:00:00'),
(208, 79, 52, 4, 445, 0, '0000-00-00 00:00:00'),
(209, 80, 52, 4, 125, 0, '0000-00-00 00:00:00'),
(210, 82, 52, 3, 129, 1, '2025-05-10 00:37:46'),
(211, 82, 52, 3, 129, 0, '0000-00-00 00:00:00'),
(212, 83, 52, 3, 124, 1, '2025-05-10 00:47:16'),
(213, 83, 52, 3, 124, 0, '0000-00-00 00:00:00'),
(214, 84, 52, 3, 445, 1, '2025-05-10 00:47:23'),
(215, 84, 52, 3, 445, 0, '0000-00-00 00:00:00'),
(216, 82, 52, 4, 129, 0, '0000-00-00 00:00:00'),
(217, 83, 52, 4, 124, 0, '0000-00-00 00:00:00'),
(218, 84, 52, 4, 445, 0, '0000-00-00 00:00:00'),
(219, 85, 52, 3, 129, 1, '2025-05-10 01:02:25'),
(220, 85, 52, 3, 129, 0, '0000-00-00 00:00:00'),
(221, 86, 52, 3, 131, 1, '2025-05-10 01:03:12'),
(222, 86, 52, 3, 131, 0, '0000-00-00 00:00:00'),
(223, 87, 52, 3, 445, 1, '2025-05-10 01:06:45'),
(224, 87, 52, 3, 445, 0, '0000-00-00 00:00:00'),
(225, 85, 52, 4, 129, 0, '0000-00-00 00:00:00'),
(226, 86, 52, 4, 131, 0, '0000-00-00 00:00:00'),
(227, 87, 52, 4, 445, 0, '0000-00-00 00:00:00'),
(228, 88, 52, 3, 124, 1, '2025-05-10 01:15:19'),
(229, 88, 52, 3, 124, 0, '0000-00-00 00:00:00'),
(230, 88, 52, 4, 124, 0, '0000-00-00 00:00:00'),
(231, 89, 52, 3, 124, 1, '2025-05-10 01:17:06'),
(232, 89, 52, 3, 124, 0, '0000-00-00 00:00:00'),
(233, 90, 52, 3, 131, 1, '2025-05-10 01:30:37'),
(234, 90, 52, 3, 131, 0, '0000-00-00 00:00:00'),
(235, 91, 52, 3, 111, 1, '2025-05-10 01:30:55'),
(236, 91, 52, 3, 111, 0, '0000-00-00 00:00:00'),
(237, 89, 52, 4, 124, 0, '0000-00-00 00:00:00'),
(238, 90, 52, 4, 131, 0, '0000-00-00 00:00:00'),
(239, 91, 52, 4, 111, 0, '0000-00-00 00:00:00'),
(240, 92, 52, 3, 129, 1, '2025-05-10 01:33:56'),
(241, 92, 52, 3, 129, 0, '0000-00-00 00:00:00'),
(242, 93, 52, 3, 445, 1, '2025-05-10 01:34:00'),
(243, 93, 52, 3, 445, 0, '0000-00-00 00:00:00'),
(244, 94, 94, 3, 124, 1, '2025-05-10 14:01:23'),
(245, 94, 94, 3, 124, 0, '0000-00-00 00:00:00'),
(246, 94, 94, 4, 124, 1, '2025-10-20 17:14:58'),
(247, 94, 94, 6, 124, 1, '2025-10-20 17:16:52'),
(248, 94, 94, 4, 124, 1, '2025-10-20 17:17:51'),
(249, 95, 95, 3, 124, 1, '2025-11-17 19:01:55'),
(250, 95, 95, 3, 124, 0, '0000-00-00 00:00:00'),
(251, 95, 95, 4, 124, 0, '0000-00-00 00:00:00'),
(252, 94, 94, 1, 124, 1, '2025-11-19 19:22:51'),
(253, 94, 94, 4, 124, 1, '2025-11-19 19:23:10'),
(254, 94, 94, 6, 124, 1, '2025-11-20 20:44:15'),
(255, 94, 94, 4, 124, 1, '2025-11-20 21:42:22'),
(256, 94, 94, 6, 124, 1, '2025-11-21 00:48:03'),
(257, 94, 94, 4, 124, 1, '2025-11-21 14:08:35'),
(258, 96, 95, 3, 132, 1, '2025-11-21 14:31:44'),
(259, 96, 95, 3, 132, 0, '0000-00-00 00:00:00'),
(260, 96, 95, 1, 132, 1, '2025-11-21 14:32:40'),
(261, 94, 94, 5, 124, 1, '2025-11-21 14:50:49'),
(262, 94, 94, 4, 124, 1, '2025-11-21 14:51:30'),
(263, 94, 94, 5, 124, 1, '2025-11-21 15:03:34'),
(264, 94, 94, 4, 124, 1, '2025-11-21 15:09:55'),
(265, 96, 95, 4, 132, 1, '2026-02-02 21:32:07'),
(266, 97, 237, 3, 12, 1, '2026-02-21 00:19:34'),
(267, 97, 237, 3, 12, 0, '0000-00-00 00:00:00'),
(268, 97, 237, 1, 12, 1, '2026-02-21 00:19:52'),
(269, 98, 238, 3, 567890, 1, '2026-02-22 00:42:32'),
(270, 98, 238, 3, 567890, 0, '0000-00-00 00:00:00'),
(271, 98, 238, 1, 567890, 1, '2026-02-22 00:44:04'),
(272, 98, 238, 6, 567890, 1, '2026-02-22 00:45:17'),
(273, 99, 244, 3, 1, 1, '2026-02-23 19:25:02'),
(274, 99, 244, 3, 1, 0, '0000-00-00 00:00:00'),
(275, 100, 245, 3, 2, 1, '2026-02-24 14:46:41'),
(276, 100, 245, 3, 2, 0, '0000-00-00 00:00:00'),
(277, 101, 245, 3, 3, 1, '2026-02-24 14:46:50'),
(278, 101, 245, 3, 3, 0, '0000-00-00 00:00:00'),
(279, 100, 245, 1, 2, 1, '2026-02-24 14:47:45'),
(280, 100, 245, 6, 2, 1, '2026-02-24 14:48:35'),
(281, 101, 245, 1, 3, 1, '2026-02-24 19:23:12'),
(282, 101, 245, 6, 3, 1, '2026-02-24 19:23:45'),
(0, 0, 245, 3, 2, 1, '2026-02-25 01:35:46'),
(0, 0, 245, 3, 2, 0, '0000-00-00 00:00:00'),
(0, 0, 245, 3, 4, 1, '2026-02-28 07:23:23'),
(0, 0, 245, 3, 4, 0, '0000-00-00 00:00:00'),
(0, 0, 245, 4, 4, 0, '0000-00-00 00:00:00'),
(0, 0, 237, 3, 9, 1, '2026-03-06 06:48:46'),
(0, 0, 237, 3, 9, 0, '0000-00-00 00:00:00'),
(0, 0, 237, 1, 9, 1, '2026-03-06 06:50:03'),
(0, 0, 248, 3, 3, 1, '2026-03-06 23:14:01'),
(0, 0, 248, 3, 3, 0, '0000-00-00 00:00:00'),
(0, 0, 237, 1, 9, 1, '2026-03-06 23:17:31'),
(0, 0, 248, 1, 3, 1, '2026-03-06 23:17:31'),
(0, 0, 237, 6, 9, 1, '2026-03-06 23:23:04'),
(0, 0, 248, 6, 3, 1, '2026-03-06 23:23:04'),
(0, 0, 237, 3, 4, 1, '2026-03-07 02:03:52'),
(0, 0, 237, 3, 4, 0, '0000-00-00 00:00:00'),
(0, 0, 237, 1, 9, 1, '2026-03-07 02:05:23'),
(0, 0, 248, 1, 3, 1, '2026-03-07 02:05:23'),
(0, 0, 237, 1, 4, 1, '2026-03-07 02:05:23'),
(0, 0, 237, 6, 9, 1, '2026-03-07 03:06:43'),
(0, 0, 248, 6, 3, 1, '2026-03-07 03:06:43'),
(0, 0, 237, 6, 4, 1, '2026-03-07 03:06:43'),
(0, 97, 237, 6, 12, 1, '2026-03-07 03:06:55'),
(0, 0, 254, 3, 122, 1, '2026-03-07 04:21:27'),
(0, 0, 254, 3, 122, 0, '0000-00-00 00:00:00'),
(0, 0, 237, 1, 9, 1, '2026-03-07 04:22:07'),
(0, 0, 248, 1, 3, 1, '2026-03-07 04:22:07'),
(0, 0, 237, 1, 4, 1, '2026-03-07 04:22:07'),
(0, 0, 254, 1, 122, 1, '2026-03-07 04:22:07'),
(0, 0, 254, 3, 300, 1, '2026-03-07 04:27:12'),
(0, 0, 254, 3, 300, 0, '0000-00-00 00:00:00'),
(0, 0, 237, 1, 9, 1, '2026-03-07 04:27:31'),
(0, 0, 248, 1, 3, 1, '2026-03-07 04:27:31'),
(0, 0, 237, 1, 4, 1, '2026-03-07 04:27:31'),
(0, 0, 254, 1, 122, 1, '2026-03-07 04:27:31'),
(0, 0, 254, 1, 300, 1, '2026-03-07 04:27:31'),
(0, 0, 237, 6, 9, 1, '2026-03-07 04:28:27'),
(0, 0, 248, 6, 3, 1, '2026-03-07 04:28:27'),
(0, 0, 237, 6, 4, 1, '2026-03-07 04:28:27'),
(0, 0, 254, 6, 122, 1, '2026-03-07 04:28:27'),
(0, 0, 254, 6, 300, 1, '2026-03-07 04:28:27'),
(0, 97, 237, 4, 12, 1, '2026-03-10 02:09:05'),
(0, 98, 238, 4, 567890, 1, '2026-03-10 02:09:05'),
(0, 0, 245, 3, 9090, 1, '2026-03-14 06:06:03'),
(0, 0, 245, 3, 9090, 0, '0000-00-00 00:00:00'),
(0, 99, 244, 4, 1, 1, '2026-03-14 06:06:08'),
(0, 100, 245, 4, 2, 1, '2026-03-14 06:06:08'),
(0, 101, 245, 4, 3, 1, '2026-03-14 06:06:08'),
(0, 0, 237, 1, 9, 1, '2026-03-14 06:06:23'),
(0, 0, 248, 1, 3, 1, '2026-03-14 06:06:23'),
(0, 0, 237, 1, 4, 1, '2026-03-14 06:06:23'),
(0, 0, 254, 1, 122, 1, '2026-03-14 06:06:23'),
(0, 0, 254, 1, 300, 1, '2026-03-14 06:06:23'),
(0, 0, 245, 1, 9090, 1, '2026-03-14 06:06:23'),
(0, 0, 245, 3, 8, 1, '2026-03-14 08:00:23'),
(0, 0, 245, 3, 8, 0, '0000-00-00 00:00:00'),
(0, 0, 237, 1, 9, 1, '2026-03-14 08:01:55'),
(0, 0, 248, 1, 3, 1, '2026-03-14 08:01:55'),
(0, 0, 237, 1, 4, 1, '2026-03-14 08:01:55'),
(0, 0, 254, 1, 122, 1, '2026-03-14 08:01:55'),
(0, 0, 254, 1, 300, 1, '2026-03-14 08:01:55'),
(0, 0, 245, 1, 9090, 1, '2026-03-14 08:01:55'),
(0, 0, 245, 1, 8, 1, '2026-03-14 08:01:55'),
(0, 100, 245, 6, 2, 1, '2026-03-14 09:00:15'),
(0, 0, 245, 3, 103, 1, '2026-03-14 09:05:40'),
(0, 0, 245, 3, 103, 0, '0000-00-00 00:00:00'),
(0, 100, 245, 4, 2, 1, '2026-03-14 09:05:53'),
(0, 0, 237, 1, 9, 1, '2026-03-14 09:06:06'),
(0, 0, 248, 1, 3, 1, '2026-03-14 09:06:06'),
(0, 0, 237, 1, 4, 1, '2026-03-14 09:06:06'),
(0, 0, 254, 1, 122, 1, '2026-03-14 09:06:06'),
(0, 0, 254, 1, 300, 1, '2026-03-14 09:06:06'),
(0, 0, 245, 1, 9090, 1, '2026-03-14 09:06:06'),
(0, 0, 245, 1, 8, 1, '2026-03-14 09:06:06'),
(0, 0, 245, 1, 103, 1, '2026-03-14 09:06:06'),
(0, 0, 237, 1, 9, 1, '2026-03-14 09:06:14'),
(0, 0, 248, 1, 3, 1, '2026-03-14 09:06:14'),
(0, 0, 237, 1, 4, 1, '2026-03-14 09:06:14'),
(0, 0, 254, 1, 122, 1, '2026-03-14 09:06:14'),
(0, 0, 254, 1, 300, 1, '2026-03-14 09:06:14'),
(0, 0, 245, 1, 9090, 1, '2026-03-14 09:06:14'),
(0, 0, 245, 1, 8, 1, '2026-03-14 09:06:14'),
(0, 0, 245, 1, 103, 1, '2026-03-14 09:06:14'),
(0, 97, 237, 8, 12, 1, '2026-03-14 09:15:41'),
(0, 97, 237, 6, 12, 1, '2026-03-14 09:16:04'),
(0, 1, 94, 4, 124, 1, '2026-03-14 14:30:43'),
(0, 2, 95, 4, 132, 1, '2026-03-14 14:30:43'),
(0, 3, 237, 6, 12, 1, '2026-03-14 14:30:43'),
(0, 4, 238, 4, 567890, 1, '2026-03-14 14:30:43'),
(0, 5, 244, 4, 1, 1, '2026-03-14 14:30:43'),
(0, 6, 245, 4, 2, 1, '2026-03-14 14:30:43'),
(0, 7, 245, 4, 3, 1, '2026-03-14 14:30:43'),
(0, 8, 237, 1, 9, 1, '2026-03-14 14:30:43'),
(0, 9, 248, 1, 3, 1, '2026-03-14 14:30:43'),
(0, 10, 237, 1, 4, 1, '2026-03-14 14:30:43'),
(0, 11, 254, 1, 122, 1, '2026-03-14 14:30:43'),
(0, 12, 254, 1, 300, 1, '2026-03-14 14:30:43'),
(0, 13, 245, 1, 9090, 1, '2026-03-14 14:30:43'),
(0, 14, 245, 1, 8, 1, '2026-03-14 14:30:43'),
(0, 15, 245, 1, 103, 1, '2026-03-14 14:30:43'),
(0, 13, 245, 6, 9090, 1, '2026-03-14 14:31:46'),
(0, 200, 245, 3, 9090, 1, '2026-03-14 14:40:27'),
(0, 200, 245, 3, 9090, 0, '0000-00-00 00:00:00'),
(0, 200, 245, 1, 9090, 1, '2026-03-14 14:41:01'),
(0, 13, 245, 6, 9090, 1, '2026-03-14 14:47:45'),
(0, 14, 245, 6, 8, 1, '2026-03-14 14:48:02'),
(0, 200, 245, 6, 9090, 1, '2026-03-14 14:48:12'),
(0, 15, 245, 6, 103, 1, '2026-03-14 14:48:28'),
(0, 201, 245, 3, 2, 1, '2026-03-14 15:17:26'),
(0, 201, 245, 3, 2, 0, '0000-00-00 00:00:00'),
(0, 201, 245, 7, 2, 1, '2026-03-14 15:17:49'),
(0, 202, 245, 3, 9090, 1, '2026-03-14 15:19:45'),
(0, 202, 245, 3, 9090, 0, '0000-00-00 00:00:00'),
(0, 202, 245, 1, 9090, 1, '2026-03-14 15:19:59'),
(0, 202, 245, 6, 9090, 1, '2026-03-14 15:21:28'),
(0, 203, 245, 3, 9090, 1, '2026-03-14 15:21:46'),
(0, 203, 245, 3, 9090, 0, '0000-00-00 00:00:00'),
(0, 203, 245, 7, 9090, 1, '2026-03-14 15:22:03'),
(0, 204, 245, 3, 8, 1, '2026-03-14 18:33:48'),
(0, 204, 245, 3, 8, 0, '0000-00-00 00:00:00'),
(0, 204, 245, 7, 8, 1, '2026-03-14 18:34:21'),
(0, 204, 245, 8, 8, 1, '2026-03-14 18:34:32'),
(0, 203, 245, 8, 9090, 1, '2026-03-14 18:36:17'),
(0, 201, 245, 8, 2, 1, '2026-03-14 18:37:27'),
(0, 203, 245, 6, 9090, 1, '2026-03-14 18:37:56'),
(0, 201, 245, 6, 2, 1, '2026-03-14 18:38:04'),
(0, 204, 245, 6, 8, 1, '2026-03-14 18:38:14'),
(0, 6, 245, 6, 2, 1, '2026-03-14 18:38:22'),
(0, 205, 245, 3, 2, 1, '2026-03-14 18:38:32'),
(0, 205, 245, 3, 2, 0, '0000-00-00 00:00:00'),
(0, 6, 245, 4, 2, 1, '2026-03-14 18:38:36'),
(0, 205, 245, 4, 2, 0, '0000-00-00 00:00:00'),
(0, 206, 245, 3, 2, 1, '2026-03-14 18:43:27'),
(0, 206, 245, 3, 2, 0, '0000-00-00 00:00:00'),
(0, 206, 245, 7, 2, 1, '2026-03-14 18:43:52'),
(0, 206, 245, 8, 2, 1, '2026-03-14 18:44:34'),
(0, 206, 245, 6, 2, 1, '2026-03-14 18:45:08'),
(0, 6, 245, 5, 2, 1, '2026-03-14 18:48:39'),
(0, 7, 245, 5, 3, 1, '2026-03-14 18:48:49'),
(0, 6, 245, 4, 2, 1, '2026-03-14 18:50:16'),
(0, 7, 245, 4, 3, 1, '2026-03-14 18:50:16'),
(0, 207, 248, 3, 9090, 1, '2026-03-20 11:31:54'),
(0, 207, 248, 3, 9090, 0, '0000-00-00 00:00:00'),
(0, 207, 248, 4, 9090, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(11) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `OTP` int(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_verified` tinyint(1) DEFAULT 0,
  `Status` varchar(20) NOT NULL DEFAULT 'Pending',
  `must_change_password` tinyint(1) NOT NULL DEFAULT 0,
  `otp_enabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `Email`, `FirstName`, `LastName`, `Password`, `OTP`, `created_at`, `is_verified`, `Status`, `must_change_password`, `otp_enabled`) VALUES
(237, 'c20-4697-01@spist.edu.ph', 'Zyeann', 'De Real', '$2y$10$Aw5U/DX2YVVQrF0AIGUj7.BidJKCj9Mv0U.T5ycwjCbl4x6gRYnyG', 0, '2026-03-20 02:49:43', 1, 'Active', 0, 1),
(239, 'c22-4810-01@spist.edu.ph', 'Alrashid', 'Rojas', '$2y$10$1X1UZlEsaC8J5eLqgsUzoOSVZDP6tD6Wf18DtQr5F4jed34wOCnny', 0, '2026-03-07 04:06:13', 1, 'Suspended', 0, 0),
(240, 'c22-4533-01@spist.edu.ph', 'Jhonwell', 'Pogoy', '$2y$10$o67qxy8vVzkyNOTbffQGieaPywNuYoqVNPXINmIjzlbXkhRWOQU5S', 0, '2026-03-07 04:06:10', 1, 'Suspended', 0, 0),
(241, 'c22-4566-01@spist.edu.ph', 'Christiannn', 'Delleva', '$2y$10$PiNMKfFw/LCpUcyFjSs8GOmtlkc8wbSrL4DtPAUvt7PTm6ViafBoC', 170244, '2026-03-15 15:24:30', 1, 'Suspended', 0, 0),
(245, 'c22-4757-01@spist.edu.ph', 'Meynard', 'Ocenar', '$2y$10$n9IIxFPlG8i7Yuw470W6VezslrU9M3oW5X2eQXqE5Ma9jJ778sn0O', 0, '2026-03-14 06:05:41', 1, 'Active', 0, 0),
(246, 'c22-1234-01@spist.edu.ph', 'Juan', 'Dela Cruz', '$2y$10$5AGvXW1RDT0Xx7Ub64Gf6eKyx4fwZgPKRoju7/VjhCwBR7tw5Tqlm', 0, '2026-02-28 19:09:36', 1, 'Pending', 0, 0),
(248, 'c22-4716-01@spist.edu.ph', 'Flairyy', 'Enaless', '$2y$10$qpZ8byxM88.cIMm7qa.eeOjC6PEffifu53fRE/LhM526qst9wtakC', 0, '2026-03-07 04:10:39', 1, 'Active', 0, 0),
(252, 'shs20-054164@spist.edu.ph', 'Mey', 'Nard', '$2y$10$TD6DbTsB1LCc9efiXaA3m.Cg4gpIrKxRVLY.WTyN2I.aq9xUk6Mue', 0, '2026-03-07 04:06:02', 1, 'Suspended', 1, 0),
(253, 'c22-1231-01@spist.edu.ph', 'Zyfhar', 'DeReal', '$2y$10$isXYxdIea8Ms/LbcGNeWkeDuyeFfTLhG6LljDNAW3h0Ahd5Iz9MXC', 0, '2026-03-07 04:08:10', 1, 'Pending', 0, 0),
(254, 'c22-4731-01@spist.edu.ph', 'Asher', 'Laxa', '$2y$10$iCv/D/0uBM4ezyGhDaPqgeUsNCG996pnA1eTXjZcyHMhSj3rgHGbu', 0, '2026-03-07 04:19:03', 1, 'Active', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_activity_log`
--

CREATE TABLE `user_activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `action` varchar(30) NOT NULL,
  `ip_address` varchar(64) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `occurred_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `user_activity_log`
--

INSERT INTO `user_activity_log` (`id`, `user_type`, `user_id`, `email`, `action`, `ip_address`, `user_agent`, `occurred_at`) VALUES
(1, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'login', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 17:06:52'),
(2, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'logout', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 17:09:09'),
(3, 'user', 245, 'c22-4757-01@spist.edu.ph', 'login', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 17:09:19'),
(4, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'login', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 17:16:25'),
(5, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'logout', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 17:23:30'),
(6, 'user', 245, 'c22-4757-01@spist.edu.ph', 'login', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 17:23:38'),
(7, 'user', 245, 'c22-4757-01@spist.edu.ph', 'login', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 17:24:07'),
(8, 'user', 245, 'c22-4757-01@spist.edu.ph', 'login', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-02-28 17:26:48'),
(9, 'user', 245, 'c22-4757-01@spist.edu.ph', 'login', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-02-28 17:27:08'),
(10, 'user', 245, 'c22-4757-01@spist.edu.ph', 'login', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 17:27:50'),
(11, 'user', 245, 'c22-4757-01@spist.edu.ph', 'login', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 17:29:15'),
(12, 'user', 245, 'c22-4757-01@spist.edu.ph', 'login', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-02-28 17:30:44'),
(13, 'user', 245, 'c22-4757-01@spist.edu.ph', 'login', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 17:34:30'),
(14, 'user', 245, 'c22-4757-01@spist.edu.ph', 'logout', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 17:34:34'),
(15, 'user', 245, 'c22-4757-01@spist.edu.ph', 'login', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 17:35:00'),
(16, 'user', 245, 'c22-4757-01@spist.edu.ph', 'logout', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 17:35:04'),
(17, 'user', 0, 'shs20-054164@spist.edu.ph', 'login', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 17:36:35'),
(18, 'user', 0, 'shs20-054164@spist.edu.ph', 'login', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 17:36:47'),
(19, 'user', 0, 'shs20-054164@spist.edu.ph', 'login', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 17:37:14'),
(20, 'user', 0, 'shs20-054164@spist.edu.ph', 'login', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 17:37:41'),
(21, 'user', 245, 'c22-4757-01@spist.edu.ph', 'login', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 17:37:55'),
(22, 'user', 245, 'c22-4757-01@spist.edu.ph', 'logout', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 17:37:59'),
(23, 'user', 0, 'shs20-054164@spist.edu.ph', 'login', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 17:40:02'),
(24, 'user', 245, 'c22-4757-01@spist.edu.ph', 'login', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 17:59:23'),
(25, 'user', 245, 'c22-4757-01@spist.edu.ph', 'logout', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 17:59:38'),
(26, 'user', 247, 'shs20-054164@spist.edu.ph', 'login', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 17:59:47'),
(27, 'user', 247, 'shs20-054164@spist.edu.ph', 'logout', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 18:00:00'),
(28, 'user', 247, 'shs20-054164@spist.edu.ph', 'login', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 18:00:19'),
(29, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'login', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 18:06:53'),
(30, 'user', 250, 'shs20-054164@spist.edu.ph', 'login', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-02-28 18:09:48'),
(31, 'user', 250, 'shs20-054164@spist.edu.ph', 'logout', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-02-28 18:09:54'),
(32, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'login', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 18:17:24'),
(33, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'login', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-02-28 19:06:04'),
(34, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'login', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 19:34:11'),
(35, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'login', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 20:12:53'),
(36, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'logout', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 20:15:38'),
(37, 'user', 245, 'c22-4757-01@spist.edu.ph', 'login', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 20:15:46'),
(38, 'user', 245, 'c22-4757-01@spist.edu.ph', 'logout', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-02-28 20:16:37'),
(39, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'login', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-01 12:07:33'),
(40, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'login', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-01 12:08:39'),
(41, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'logout', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-01 12:09:32'),
(42, 'admin', 21, 'shs20-054164@spist.edu.ph', 'login', '49.144.20.222', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-01 12:09:54'),
(43, 'admin', 20, 'libraryspist@spist.edu.ph', 'login', '202.57.44.35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-02 23:57:34'),
(44, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'logout', '49.144.21.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-03 05:46:24'),
(45, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'login', '49.144.21.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-03 05:46:49'),
(46, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'logout', '49.144.21.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-03 05:48:03'),
(47, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'login', '49.144.21.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-03 05:48:27'),
(48, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'logout', '49.144.21.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-03 05:51:15'),
(49, 'admin', 13, 'c22-4716-01@spist.edu.ph', 'login', '203.160.171.226', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-04 06:24:01'),
(50, 'admin', 13, 'c22-4716-01@spist.edu.ph', 'logout', '203.160.171.226', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-04 06:25:33'),
(51, 'admin', 13, 'c22-4716-01@spist.edu.ph', 'login', '203.160.171.226', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-04 06:26:04'),
(52, 'admin', 13, 'c22-4716-01@spist.edu.ph', 'logout', '203.160.171.226', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-04 06:33:52'),
(53, 'admin', 20, 'libraryspist@spist.edu.ph', 'login', '202.57.44.35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-05 00:40:00'),
(54, 'admin', 20, 'libraryspist@spist.edu.ph', 'login', '202.57.44.35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-06 00:06:53'),
(55, 'user', 237, 'c20-4697-01@spist.edu.ph', 'login', '175.176.35.205', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '2026-03-06 06:47:48'),
(56, 'admin', 12, 'c20-4697-01@spist.edu.ph', 'login', '2001:fd8:1930:4f0a:c4f2:61ff:fed9:a9e8', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-06 06:49:16'),
(57, 'user', 237, 'c20-4697-01@spist.edu.ph', 'logout', '175.176.35.205', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '2026-03-06 06:50:22'),
(58, 'user', 237, 'c20-4697-01@spist.edu.ph', 'login', '175.176.35.205', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Mobile Safari/537.36', '2026-03-06 06:50:44'),
(59, 'admin', 12, 'c20-4697-01@spist.edu.ph', 'login', '180.195.70.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-06 10:45:59'),
(60, 'admin', 12, 'c20-4697-01@spist.edu.ph', 'login', '180.195.70.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-03-06 10:53:50'),
(61, 'admin', 12, 'c20-4697-01@spist.edu.ph', 'logout', '180.195.70.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-06 11:00:32'),
(62, 'user', 237, 'c20-4697-01@spist.edu.ph', 'login', '180.195.70.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-06 11:00:45'),
(63, 'user', 237, 'c20-4697-01@spist.edu.ph', 'logout', '180.195.70.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-06 11:04:40'),
(64, 'admin', 12, 'c20-4697-01@spist.edu.ph', 'login', '180.195.70.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-06 11:05:32'),
(65, 'user', 237, 'c20-4697-01@spist.edu.ph', 'login', '175.176.2.137', 'Mozilla/5.0 (Linux; Android 12; HarmonyOS; BTKR-W09; HMSCore 6.15.4.342; GMSCore 0.3.12.250932) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.5735.196 HuaweiBrowser/16.0.9.302 Safari/537.36', '2026-03-06 11:11:40'),
(66, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'login', '180.195.70.7', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-06 23:09:00'),
(67, 'user', 248, 'c22-4716-01@spist.edu.ph', 'login', '2001:fd8:d244:1800:842d:ae4b:26ed:41f7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-06 23:11:31'),
(68, 'admin', 13, 'c22-4716-01@spist.edu.ph', 'login', '2001:fd8:d244:1800:842d:ae4b:26ed:41f7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-06 23:17:04'),
(69, 'user', 248, 'c22-4716-01@spist.edu.ph', 'logout', '2001:fd8:d244:1800:842d:ae4b:26ed:41f7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-06 23:18:31'),
(70, 'user', 248, 'c22-4716-01@spist.edu.ph', 'login', '2001:fd8:d244:1800:842d:ae4b:26ed:41f7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-06 23:19:09'),
(71, 'admin', 13, 'c22-4716-01@spist.edu.ph', 'logout', '2001:fd8:d244:1800:842d:ae4b:26ed:41f7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-06 23:20:09'),
(72, 'admin', 13, 'c22-4716-01@spist.edu.ph', 'login', '2001:fd8:d244:1800:842d:ae4b:26ed:41f7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-06 23:20:49'),
(73, 'admin', 13, 'c22-4716-01@spist.edu.ph', 'logout', '2001:fd8:d244:1800:842d:ae4b:26ed:41f7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-06 23:21:33'),
(74, 'admin', 13, 'c22-4716-01@spist.edu.ph', 'login', '2001:fd8:d244:1800:842d:ae4b:26ed:41f7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-06 23:21:45'),
(75, 'user', 248, 'c22-4716-01@spist.edu.ph', 'logout', '2001:fd8:d244:1800:842d:ae4b:26ed:41f7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-06 23:31:42'),
(76, 'admin', 13, 'c22-4716-01@spist.edu.ph', 'logout', '2001:fd8:d244:1800:842d:ae4b:26ed:41f7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-06 23:32:16'),
(77, 'admin', 20, 'libraryspist@spist.edu.ph', 'login', '202.57.44.35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-07 01:54:50'),
(78, 'user', 237, 'c20-4697-01@spist.edu.ph', 'login', '202.57.44.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-07 02:03:36'),
(79, 'admin', 12, 'c20-4697-01@spist.edu.ph', 'login', '202.57.44.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-03-07 02:05:07'),
(80, 'user', 237, 'c20-4697-01@spist.edu.ph', 'logout', '202.57.44.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-07 02:10:31'),
(81, 'admin', 12, 'c20-4697-01@spist.edu.ph', 'logout', '202.57.44.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-03-07 02:10:35'),
(82, 'admin', 20, 'libraryspist@spist.edu.ph', 'logout', '202.57.44.35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-07 02:24:23'),
(83, 'admin', 12, 'c20-4697-01@spist.edu.ph', 'login', '202.57.44.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-07 02:49:52'),
(84, 'user', 237, 'c20-4697-01@spist.edu.ph', 'login', '202.57.44.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-03-07 02:55:15'),
(85, 'admin', 12, 'c20-4697-01@spist.edu.ph', 'logout', '202.57.44.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-07 03:09:59'),
(86, 'admin', 13, 'c22-4716-01@spist.edu.ph', 'login', '110.54.190.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-07 04:03:54'),
(87, 'user', 237, 'c20-4697-01@spist.edu.ph', 'login', '202.57.44.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-07 04:11:02'),
(88, 'user', 237, 'c20-4697-01@spist.edu.ph', 'logout', '202.57.44.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-07 04:11:19'),
(89, 'user', 254, 'c22-4731-01@spist.edu.ph', 'login', '202.57.44.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-07 04:19:03'),
(90, 'user', 254, 'c22-4731-01@spist.edu.ph', 'logout', '202.57.44.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-07 04:28:49'),
(91, 'admin', 12, 'c20-4697-01@spist.edu.ph', 'login', '202.57.44.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-07 04:29:16'),
(92, 'user', 237, 'c20-4697-01@spist.edu.ph', 'login', '202.57.44.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-07 05:09:07'),
(93, 'user', 237, 'c20-4697-01@spist.edu.ph', 'login', '110.54.190.59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-03-07 06:00:32'),
(94, 'admin', 12, 'c20-4697-01@spist.edu.ph', 'login', '110.54.190.59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-07 06:01:13'),
(95, 'admin', 12, 'c20-4697-01@spist.edu.ph', 'login', '2001:fd8:2ba3:89a2:f88b:3cff:fe18:a396', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-10 02:08:54'),
(96, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'login', '49.144.28.53', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-14 06:01:56'),
(97, 'user', 245, 'c22-4757-01@spist.edu.ph', 'login', '49.144.28.53', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-14 06:05:54'),
(98, 'user', 237, 'c20-4697-01@spist.edu.ph', 'login', '2001:fd8:2690:4543:316c:cea6:4271:f91b', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-14 06:18:12'),
(99, 'user', 237, 'c20-4697-01@spist.edu.ph', 'logout', '202.57.44.35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-14 06:31:22'),
(100, 'user', 237, 'c20-4697-01@spist.edu.ph', 'login', '202.57.44.35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-14 06:36:01'),
(101, 'user', 245, 'c22-4757-01@spist.edu.ph', 'login', '49.144.31.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-14 08:00:16'),
(102, 'user', 245, 'c22-4757-01@spist.edu.ph', 'logout', '49.144.31.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-14 08:00:29'),
(103, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'login', '49.144.31.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-14 08:01:16'),
(104, 'user', 245, 'c22-4757-01@spist.edu.ph', 'logout', '49.144.31.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-14 08:03:08'),
(105, 'user', 245, 'c22-4757-01@spist.edu.ph', 'login', '49.144.31.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-14 08:03:20'),
(106, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'login', '49.144.18.40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-03-14 08:04:53'),
(107, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'logout', '49.144.31.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-03-14 08:06:02'),
(108, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'login', '49.144.31.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-03-14 08:14:39'),
(109, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'login', '49.144.31.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 OPR/127.0.0.0', '2026-03-14 08:16:18'),
(110, 'user', 245, 'c22-4757-01@spist.edu.ph', 'login', '49.144.31.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-14 08:18:06'),
(111, 'user', 245, 'c22-4757-01@spist.edu.ph', 'logout', '49.144.31.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-14 08:34:06'),
(112, 'user', 245, 'c22-4757-01@spist.edu.ph', 'login', '49.144.31.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-14 08:34:40'),
(113, 'user', 245, 'c22-4757-01@spist.edu.ph', 'logout', '49.144.31.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-14 08:34:45'),
(114, 'user', 245, 'c22-4757-01@spist.edu.ph', 'login', '49.144.31.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-14 08:35:43'),
(115, 'user', 245, 'c22-4757-01@spist.edu.ph', 'logout', '49.144.31.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-14 08:35:47'),
(116, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'login', '49.144.31.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 OPR/127.0.0.0', '2026-03-14 08:39:25'),
(117, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'login', '49.144.31.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 OPR/127.0.0.0', '2026-03-14 08:41:48'),
(118, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'login', '49.144.31.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 OPR/127.0.0.0', '2026-03-14 08:44:25'),
(119, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'login', '49.144.31.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 OPR/127.0.0.0', '2026-03-14 08:48:08'),
(120, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'login', '49.144.31.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 OPR/127.0.0.0', '2026-03-14 08:49:15'),
(121, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'logout', '49.144.31.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 OPR/127.0.0.0', '2026-03-14 08:49:17'),
(122, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'login', '49.144.31.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 OPR/127.0.0.0', '2026-03-14 08:51:17'),
(123, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'login', '49.144.31.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-14 08:52:08'),
(124, 'user', 245, 'c22-4757-01@spist.edu.ph', 'login', '49.144.31.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-14 08:55:03'),
(125, 'user', 245, 'c22-4757-01@spist.edu.ph', 'logout', '49.144.31.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-14 08:55:30'),
(126, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'login', '49.144.31.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-14 08:55:54'),
(127, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'logout', '49.144.31.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-14 08:56:09'),
(128, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'login', '49.144.31.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-14 08:59:19'),
(129, 'user', 245, 'c22-4757-01@spist.edu.ph', 'login', '49.144.31.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-03-14 09:01:28'),
(130, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'logout', '49.144.31.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-14 09:06:35'),
(131, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'login', '49.144.31.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-14 09:14:26'),
(132, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'login', '49.144.31.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-14 14:06:45'),
(133, 'user', 245, 'c22-4757-01@spist.edu.ph', 'logout', '49.144.31.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-14 14:36:54'),
(134, 'user', 245, 'c22-4757-01@spist.edu.ph', 'login', '49.144.31.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-14 14:40:00'),
(135, 'user', 245, 'c22-4757-01@spist.edu.ph', 'logout', '49.144.31.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-14 15:18:15'),
(136, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'logout', '49.144.31.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-14 15:18:20'),
(137, 'user', 245, 'c22-4757-01@spist.edu.ph', 'login', '49.144.31.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-03-14 15:18:49'),
(138, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'login', '49.144.31.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-14 15:19:41'),
(139, 'user', 245, 'c22-4757-01@spist.edu.ph', 'login', '49.144.31.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-14 18:32:03'),
(140, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'login', '49.144.31.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', '2026-03-14 18:33:32'),
(141, 'user', 237, 'c20-4697-01@spist.edu.ph', 'login', '136.158.50.126', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-15 00:07:43'),
(142, 'user', 237, 'c20-4697-01@spist.edu.ph', 'logout', '136.158.50.126', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-15 00:11:59'),
(143, 'admin', 12, 'c20-4697-01@spist.edu.ph', 'login', '136.158.50.126', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-15 00:12:44'),
(144, 'admin', 12, 'c20-4697-01@spist.edu.ph', 'logout', '136.158.50.126', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-15 00:18:08'),
(145, 'user', 237, 'c20-4697-01@spist.edu.ph', 'login', '136.158.50.126', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-15 00:21:12'),
(148, 'user', 237, 'c20-4697-01@spist.edu.ph', 'login', '52.221.255.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36 Edg/146.0.0.0', '2026-03-16 00:48:40'),
(149, 'user', 237, 'c20-4697-01@spist.edu.ph', 'logout', '52.221.255.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36 Edg/146.0.0.0', '2026-03-16 00:49:47'),
(150, 'user', 237, 'c20-4697-01@spist.edu.ph', 'login', '136.158.50.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 02:03:03'),
(151, 'user', 237, 'c20-4697-01@spist.edu.ph', 'logout', '136.158.50.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 02:06:25'),
(152, 'admin', 12, 'c20-4697-01@spist.edu.ph', 'login', '136.158.50.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 02:06:54'),
(153, 'user', 245, 'c22-4757-01@spist.edu.ph', 'login', '49.144.20.94', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 02:12:11'),
(154, 'admin', 13, 'c22-4716-01@spist.edu.ph', 'login', '2001:fd8:d244:1800:b49d:42ea:d88d:33e1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 02:13:02'),
(155, 'admin', 12, 'c20-4697-01@spist.edu.ph', 'logout', '136.158.50.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 02:16:27'),
(156, 'user', 248, 'c22-4716-01@spist.edu.ph', 'login', '2001:fd8:d244:1800:b49d:42ea:d88d:33e1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 02:17:47'),
(157, 'user', 248, 'c22-4716-01@spist.edu.ph', 'logout', '2001:fd8:d244:1800:b49d:42ea:d88d:33e1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 02:18:32'),
(158, 'admin', 12, 'c20-4697-01@spist.edu.ph', 'login', '136.158.50.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 02:23:27'),
(159, 'admin', 12, 'c20-4697-01@spist.edu.ph', 'logout', '136.158.50.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 02:46:34'),
(160, 'user', 237, 'c20-4697-01@spist.edu.ph', 'login', '136.158.50.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 02:47:42'),
(161, 'user', 237, 'c20-4697-01@spist.edu.ph', 'logout', '136.158.50.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 02:49:16'),
(162, 'user', 237, 'c20-4697-01@spist.edu.ph', 'login', '136.158.50.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 02:49:43'),
(163, 'user', 237, 'c20-4697-01@spist.edu.ph', 'logout', '136.158.50.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 03:01:53'),
(164, 'admin', 13, 'c22-4716-01@spist.edu.ph', 'login', '2001:fd8:d244:1800:b49d:42ea:d88d:33e1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 11:27:11'),
(165, 'user', 248, 'c22-4716-01@spist.edu.ph', 'login', '2001:fd8:d244:1800:b49d:42ea:d88d:33e1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 11:27:42'),
(166, 'admin', 9, 'c22-4757-01@spist.edu.ph', 'login', '49.144.20.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-20 15:06:50');

-- --------------------------------------------------------

--
-- Table structure for table `vw_transaction`
--

CREATE TABLE `vw_transaction` (
  `FirstName` varchar(100) DEFAULT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `StatusDesc` varchar(20) DEFAULT NULL,
  `borroweddate` timestamp NULL DEFAULT NULL,
  `duedate` datetime DEFAULT NULL,
  `returndate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AdminID`);

--
-- Indexes for table `no_borrow_days`
--
ALTER TABLE `no_borrow_days`
  ADD PRIMARY KEY (`weekday`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`statusID`),
  ADD UNIQUE KEY `uq_status_desc` (`StatusDesc`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transactionID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `user_activity_log`
--
ALTER TABLE `user_activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_occurred_at` (`occurred_at`),
  ADD KEY `idx_email` (`email`),
  ADD KEY `idx_user` (`user_type`,`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `AdminID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transactionID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT for table `user_activity_log`
--
ALTER TABLE `user_activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
