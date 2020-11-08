-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2019 at 12:39 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lara_hb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `time_from` datetime DEFAULT NULL,
  `time_to` datetime DEFAULT NULL,
  `additional_information` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `room_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `shortcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `shortcode`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'AF', 'Afghanistan', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(2, 'AL', 'Albania', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(3, 'DZ', 'Algeria', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(4, 'AS', 'American Samoa', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(5, 'AD', 'Andorra', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(6, 'AO', 'Angola', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(7, 'AI', 'Anguilla', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(8, 'AQ', 'Antarctica', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(9, 'AG', 'Antigua and Barbuda', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(10, 'AR', 'Argentina', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(11, 'AM', 'Armenia', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(12, 'AW', 'Aruba', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(13, 'AU', 'Australia', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(14, 'AT', 'Austria', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(15, 'AZ', 'Azerbaijan', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(16, 'BS', 'Bahamas', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(17, 'BH', 'Bahrain', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(18, 'BD', 'Bangladesh', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(19, 'BB', 'Barbados', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(20, 'BY', 'Belarus', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(21, 'BE', 'Belgium', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(22, 'BZ', 'Belize', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(23, 'BJ', 'Benin', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(24, 'BM', 'Bermuda', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(25, 'BT', 'Bhutan', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(26, 'BO', 'Bolivia', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(27, 'BA', 'Bosnia and Herzegovina', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(28, 'BW', 'Botswana', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(29, 'BV', 'Bouvet Island', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(30, 'BR', 'Brazil', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(31, 'BQ', 'British Antarctic Territory', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(32, 'IO', 'British Indian Ocean Territory', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(33, 'VG', 'British Virgin Islands', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(34, 'BN', 'Brunei', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(35, 'BG', 'Bulgaria', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(36, 'BF', 'Burkina Faso', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(37, 'BI', 'Burundi', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(38, 'KH', 'Cambodia', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(39, 'CM', 'Cameroon', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(40, 'CA', 'Canada', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(41, 'CT', 'Canton and Enderbury Islands', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(42, 'CV', 'Cape Verde', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(43, 'KY', 'Cayman Islands', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(44, 'CF', 'Central African Republic', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(45, 'TD', 'Chad', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(46, 'CL', 'Chile', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(47, 'CN', 'China', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(48, 'CX', 'Christmas Island', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(49, 'CC', 'Cocos [Keeling] Islands', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(50, 'CO', 'Colombia', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(51, 'KM', 'Comoros', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(52, 'CG', 'Congo - Brazzaville', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(53, 'CD', 'Congo - Kinshasa', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(54, 'CK', 'Cook Islands', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(55, 'CR', 'Costa Rica', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(56, 'HR', 'Croatia', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(57, 'CU', 'Cuba', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(58, 'CY', 'Cyprus', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(59, 'CZ', 'Czech Republic', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(60, 'CI', 'Côte d’Ivoire', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(61, 'DK', 'Denmark', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(62, 'DJ', 'Djibouti', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(63, 'DM', 'Dominica', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(64, 'DO', 'Dominican Republic', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(65, 'NQ', 'Dronning Maud Land', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(66, 'DD', 'East Germany', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(67, 'EC', 'Ecuador', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(68, 'EG', 'Egypt', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(69, 'SV', 'El Salvador', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(70, 'GQ', 'Equatorial Guinea', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(71, 'ER', 'Eritrea', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(72, 'EE', 'Estonia', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(73, 'ET', 'Ethiopia', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(74, 'FK', 'Falkland Islands', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(75, 'FO', 'Faroe Islands', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(76, 'FJ', 'Fiji', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(77, 'FI', 'Finland', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(78, 'FR', 'France', '2019-08-29 05:06:32', '2019-08-29 05:06:32', NULL),
(79, 'GF', 'French Guiana', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(80, 'PF', 'French Polynesia', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(81, 'TF', 'French Southern Territories', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(82, 'FQ', 'French Southern and Antarctic Territories', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(83, 'GA', 'Gabon', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(84, 'GM', 'Gambia', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(85, 'GE', 'Georgia', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(86, 'DE', 'Germany', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(87, 'GH', 'Ghana', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(88, 'GI', 'Gibraltar', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(89, 'GR', 'Greece', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(90, 'GL', 'Greenland', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(91, 'GD', 'Grenada', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(92, 'GP', 'Guadeloupe', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(93, 'GU', 'Guam', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(94, 'GT', 'Guatemala', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(95, 'GG', 'Guernsey', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(96, 'GN', 'Guinea', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(97, 'GW', 'Guinea-Bissau', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(98, 'GY', 'Guyana', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(99, 'HT', 'Haiti', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(100, 'HM', 'Heard Island and McDonald Islands', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(101, 'HN', 'Honduras', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(102, 'HK', 'Hong Kong SAR China', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(103, 'HU', 'Hungary', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(104, 'IS', 'Iceland', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(105, 'IN', 'India', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(106, 'ID', 'Indonesia', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(107, 'IR', 'Iran', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(108, 'IQ', 'Iraq', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(109, 'IE', 'Ireland', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(110, 'IM', 'Isle of Man', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(111, 'IL', 'Israel', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(112, 'IT', 'Italy', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(113, 'JM', 'Jamaica', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(114, 'JP', 'Japan', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(115, 'JE', 'Jersey', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(116, 'JT', 'Johnston Island', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(117, 'JO', 'Jordan', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(118, 'KZ', 'Kazakhstan', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(119, 'KE', 'Kenya', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(120, 'KI', 'Kiribati', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(121, 'KW', 'Kuwait', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(122, 'KG', 'Kyrgyzstan', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(123, 'LA', 'Laos', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(124, 'LV', 'Latvia', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(125, 'LB', 'Lebanon', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(126, 'LS', 'Lesotho', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(127, 'LR', 'Liberia', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(128, 'LY', 'Libya', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(129, 'LI', 'Liechtenstein', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(130, 'LT', 'Lithuania', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(131, 'LU', 'Luxembourg', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(132, 'MO', 'Macau SAR China', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(133, 'MK', 'Macedonia', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(134, 'MG', 'Madagascar', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(135, 'MW', 'Malawi', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(136, 'MY', 'Malaysia', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(137, 'MV', 'Maldives', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(138, 'ML', 'Mali', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(139, 'MT', 'Malta', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(140, 'MH', 'Marshall Islands', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(141, 'MQ', 'Martinique', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(142, 'MR', 'Mauritania', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(143, 'MU', 'Mauritius', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(144, 'YT', 'Mayotte', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(145, 'FX', 'Metropolitan France', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(146, 'MX', 'Mexico', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(147, 'FM', 'Micronesia', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(148, 'MI', 'Midway Islands', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(149, 'MD', 'Moldova', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(150, 'MC', 'Monaco', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(151, 'MN', 'Mongolia', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(152, 'ME', 'Montenegro', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(153, 'MS', 'Montserrat', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(154, 'MA', 'Morocco', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(155, 'MZ', 'Mozambique', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(156, 'MM', 'Myanmar [Burma]', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(157, 'NA', 'Namibia', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(158, 'NR', 'Nauru', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(159, 'NP', 'Nepal', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(160, 'NL', 'Netherlands', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(161, 'AN', 'Netherlands Antilles', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(162, 'NT', 'Neutral Zone', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(163, 'NC', 'New Caledonia', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(164, 'NZ', 'New Zealand', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(165, 'NI', 'Nicaragua', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(166, 'NE', 'Niger', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(167, 'NG', 'Nigeria', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(168, 'NU', 'Niue', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(169, 'NF', 'Norfolk Island', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(170, 'KP', 'North Korea', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(171, 'VD', 'North Vietnam', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(172, 'MP', 'Northern Mariana Islands', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(173, 'NO', 'Norway', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(174, 'OM', 'Oman', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(175, 'PC', 'Pacific Islands Trust Territory', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(176, 'PK', 'Pakistan', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(177, 'PW', 'Palau', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(178, 'PS', 'Palestinian Territories', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(179, 'PA', 'Panama', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(180, 'PZ', 'Panama Canal Zone', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(181, 'PG', 'Papua New Guinea', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(182, 'PY', 'Paraguay', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(183, 'YD', 'People\'s Democratic Republic of Yemen', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(184, 'PE', 'Peru', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(185, 'PH', 'Philippines', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(186, 'PN', 'Pitcairn Islands', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(187, 'PL', 'Poland', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(188, 'PT', 'Portugal', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(189, 'PR', 'Puerto Rico', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(190, 'QA', 'Qatar', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(191, 'RO', 'Romania', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(192, 'RU', 'Russia', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(193, 'RW', 'Rwanda', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(194, 'RE', 'Réunion', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(195, 'BL', 'Saint Barthélemy', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(196, 'SH', 'Saint Helena', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(197, 'KN', 'Saint Kitts and Nevis', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(198, 'LC', 'Saint Lucia', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(199, 'MF', 'Saint Martin', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(200, 'PM', 'Saint Pierre and Miquelon', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(201, 'VC', 'Saint Vincent and the Grenadines', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(202, 'WS', 'Samoa', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(203, 'SM', 'San Marino', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(204, 'SA', 'Saudi Arabia', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(205, 'SN', 'Senegal', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(206, 'RS', 'Serbia', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(207, 'CS', 'Serbia and Montenegro', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(208, 'SC', 'Seychelles', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(209, 'SL', 'Sierra Leone', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(210, 'SG', 'Singapore', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(211, 'SK', 'Slovakia', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(212, 'SI', 'Slovenia', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(213, 'SB', 'Solomon Islands', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(214, 'SO', 'Somalia', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(215, 'ZA', 'South Africa', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(216, 'GS', 'South Georgia and the South Sandwich Islands', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(217, 'KR', 'South Korea', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(218, 'ES', 'Spain', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(219, 'LK', 'Sri Lanka', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(220, 'SD', 'Sudan', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(221, 'SR', 'Suriname', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(222, 'SJ', 'Svalbard and Jan Mayen', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(223, 'SZ', 'Swaziland', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(224, 'SE', 'Sweden', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(225, 'CH', 'Switzerland', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(226, 'SY', 'Syria', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(227, 'ST', 'São Tomé and Príncipe', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(228, 'TW', 'Taiwan', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(229, 'TJ', 'Tajikistan', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(230, 'TZ', 'Tanzania', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(231, 'TH', 'Thailand', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(232, 'TL', 'Timor-Leste', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(233, 'TG', 'Togo', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(234, 'TK', 'Tokelau', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(235, 'TO', 'Tonga', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(236, 'TT', 'Trinidad and Tobago', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(237, 'TN', 'Tunisia', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(238, 'TR', 'Turkey', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(239, 'TM', 'Turkmenistan', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(240, 'TC', 'Turks and Caicos Islands', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(241, 'TV', 'Tuvalu', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(242, 'UM', 'U.S. Minor Outlying Islands', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(243, 'PU', 'U.S. Miscellaneous Pacific Islands', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(244, 'VI', 'U.S. Virgin Islands', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(245, 'UG', 'Uganda', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(246, 'UA', 'Ukraine', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(247, 'SU', 'Union of Soviet Socialist Republics', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(248, 'AE', 'United Arab Emirates', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(249, 'GB', 'United Kingdom', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(250, 'US', 'United States', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(251, 'ZZ', 'Unknown or Invalid Region', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(252, 'UY', 'Uruguay', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(253, 'UZ', 'Uzbekistan', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(254, 'VU', 'Vanuatu', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(255, 'VA', 'Vatican City', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(256, 'VE', 'Venezuela', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(257, 'VN', 'Vietnam', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(258, 'WK', 'Wake Island', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(259, 'WF', 'Wallis and Futuna', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(260, 'EH', 'Western Sahara', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(261, 'YE', 'Yemen', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(262, 'ZM', 'Zambia', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(263, 'ZW', 'Zimbabwe', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL),
(264, 'AX', 'Åland Islands', '2019-08-29 05:06:33', '2019-08-29 05:06:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2018_01_23_191448_create_1516727688_roles_table', 1),
(3, '2018_01_23_191453_create_1516727692_users_table', 1),
(4, '2018_01_23_191454_add_5a676d8f84952_relationships_to_user_table', 1),
(5, '2018_01_23_191536_create_1516727736_countries_table', 1),
(6, '2018_01_23_192021_create_1516728020_customers_table', 1),
(7, '2018_01_23_192022_add_5a676ed766f5b_relationships_to_customer_table', 1),
(8, '2018_01_23_192145_create_1516728105_rooms_table', 1),
(9, '2018_01_23_192345_create_1516728224_bookings_table', 1),
(10, '2018_01_23_192346_add_5a676fa3e3cd8_relationships_to_booking_table', 1),
(11, '2018_01_23_192755_add_5a67709b89c38_relationships_to_booking_table', 1),
(12, '2018_01_23_192910_add_5a6770e6b5767_relationships_to_customer_table', 1),
(13, '2019_05_11_143908_create_categories_table', 1),
(14, '2019_05_11_144019_add_category_rooms', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Administrator (can create other users)', '2019-08-29 05:06:33', '2019-08-29 05:06:33'),
(2, 'Simple user', '2019-08-29 05:06:33', '2019-08-29 05:06:33');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `room_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `floor` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$akHCvTRpvma2eB8VOqUEoOtpWEelS2/e2TZK3LJyfLxuvw8MrQxVq', '', '2019-08-29 05:06:33', '2019-08-29 05:06:33', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_deleted_at_index` (`deleted_at`),
  ADD KEY `110461_5a676fa2321c7` (`customer_id`),
  ADD KEY `110461_5a676fa239ffd` (`room_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countries_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_deleted_at_index` (`deleted_at`),
  ADD KEY `110459_5a676ed5d9792` (`country_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rooms_deleted_at_index` (`deleted_at`),
  ADD KEY `rooms_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `110457_5a676d8ddf4c7` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `110461_5a676fa2321c7` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `110461_5a676fa239ffd` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `110459_5a676ed5d9792` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `110457_5a676d8ddf4c7` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
