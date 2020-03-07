-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 07, 2020 at 01:38 PM
-- Server version: 5.7.29
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dollarsc_classified`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fa_icons` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `alias`, `parent_id`, `published`, `logo`, `fa_icons`, `created_at`, `updated_at`) VALUES
(1, 'Automobiles', 'automobiles', 0, 1, '369.jpeg', 'fa fa-car', '2019-12-22 18:35:07', '2020-01-19 04:04:19'),
(2, 'Car', 'car', 1, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(3, 'Bike', 'bike', 1, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(4, 'Bota', 'boat', 1, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(5, 'Parts & Accessories', 'parts-accessories', 1, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(6, 'All Others', 'all-others', 1, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(7, 'Electronics', 'electronics', 0, 1, '635.jpeg', 'fa fa-mobile', '2019-12-22 18:35:07', '2020-01-19 04:04:44'),
(8, 'Cell Phones', 'cell-phones', 7, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(9, 'Computer & Tech', 'computer-teh', 7, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(10, 'Photo & Video', 'photo-video', 7, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(11, 'Household Appliances', 'household-appliances', 7, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(12, 'All Others', 'all-others', 7, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(13, 'For Sale', 'for-sale', 0, 1, '930.png', 'fa fa-certificate', '2019-12-22 18:35:07', '2020-01-19 04:05:12'),
(14, 'Baby & Kids Stuff', 'baby-kids-stuff', 13, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(15, 'Bycycles', 'bycylies', 13, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(16, 'Books & Magazines', 'books-magazines', 13, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(17, 'Clothes & Accessories', 'clothes-accessories', 13, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(18, 'Health & Beauty', 'health-beaury', 13, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(19, 'Jewelry & Watches', 'jewwelry-watches', 13, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(20, 'Movie & Music', 'movie-music', 13, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(21, 'Sports', 'sports', 13, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(22, 'Everything Else', 'everything-else', 13, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(23, 'Housing', 'housing', 0, 1, '467.jpeg', 'fa fa-home', '2019-12-22 18:35:07', '2020-01-19 04:05:48'),
(24, 'Appartmenst for rent', 'aappartment-for-rent', 23, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(25, 'Commerial', 'commercial', 23, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(26, 'Homes for rent', 'homes-for-rent', 23, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(27, 'Homes for sale', 'homes-for-sale', 23, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(28, 'Lands', 'lands', 23, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(29, 'Jobs', 'jobs', 0, 1, '570.jpeg', 'fa fa-users', '2019-12-22 18:35:07', '2020-01-19 04:06:09'),
(30, 'Account & Finance', 'account-finance', 29, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(31, 'Administrative & Office', 'administrative-office', 29, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(32, 'Biotech & Science', 'biotech-science', 29, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(33, 'Business', 'business', 29, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(34, 'Construction', 'construction', 29, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(35, 'Enginerring', 'enginerring', 29, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(36, 'Education', 'education', 29, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(37, 'Hospitaity', 'hospitaity', 29, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(38, 'Graphics & Web design', 'graphics-web-design', 29, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(39, 'Information Techhnology', 'information-techhnology', 29, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(40, 'Leagal', 'leagal', 29, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(41, 'Marketing', 'marketing', 29, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(42, 'Medicine', 'medicine', 29, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(43, 'Sales', 'sales', 29, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(44, 'Writing', 'writing', 29, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(45, 'Everything Else', 'everything-else', 29, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(46, 'Pets', 'automobiles', 0, 1, '701.jpeg', 'fa fa-paw', '2019-12-22 18:35:07', '2020-01-19 04:06:36'),
(47, 'Animal Service', 'animal-service', 46, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(48, 'Bids', 'birds', 46, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(49, 'Cats & Kitten', 'cats-kittne', 46, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(50, 'Dogs & Puppies', 'dog-puppies', 46, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(51, 'Lost & Found', 'lost-found', 46, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(52, 'Other Pets', 'other-pets', 46, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(53, 'Services', 'automobiles', 0, 1, '971.jpeg', 'fa fa-list-ol', '2019-12-22 18:35:07', '2020-01-19 04:08:05'),
(54, 'Art & Decore', 'art-decore', 53, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(55, 'Beauty & Health', 'beauty-health', 53, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(56, 'Cleaning & Maintenane', 'cleaning-maintenane', 53, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(57, 'Computer', 'computer', 53, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(58, 'Events & Occasions', 'events-occasions', 53, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(59, 'Financial & Mortgages', 'financial-mortgages', 53, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(60, 'Hotel & Airlines', 'hotel-airlines', 53, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(61, 'Legal & Lawyer', 'legal-lawyer', 53, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(62, 'Repari', 'repari', 53, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(63, 'Others', 'others', 53, 1, '', NULL, '2019-12-22 18:35:07', NULL),
(64, 'GRANITES AND MARBLES', 'granites', 13, 1, '238.jpeg', NULL, '2020-01-07 09:47:40', '2020-01-07 09:47:40'),
(65, 'Food and Vegitables', 'everything-else', 53, 1, NULL, '', '2020-03-07 07:00:07', '2020-03-07 07:00:07');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `published` tinyint(4) NOT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `country_code`, `published`, `currency`, `symbol`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 'AFG', 1, 'AFN', '؋', '2019-12-22 18:35:07', NULL),
(2, 'Åland Islands', 'ALA', 1, 'EUR', '€', '2019-12-22 18:35:07', NULL),
(3, 'Albania', 'ALB', 1, 'Lek', 'Lek', '2019-12-22 18:35:07', NULL),
(4, 'Algeria', 'DZA', 1, 'DZD', 'دج', '2019-12-22 18:35:07', NULL),
(5, 'American Samoa', 'ASM', 1, 'USD', '$', '2019-12-22 18:35:07', NULL),
(6, 'Andorra', 'AND', 1, 'EUR', '€', '2019-12-22 18:35:07', NULL),
(7, 'Angola', 'AGO', 1, 'AOA', 'Kz', '2019-12-22 18:35:07', NULL),
(8, 'Anguilla', 'AIA', 1, 'XCD', '$', '2019-12-22 18:35:07', NULL),
(9, 'Antarctica', 'ATA', 1, 'AQD', '$', '2019-12-22 18:35:07', NULL),
(10, 'Antigua and Barbuda', 'ATG', 1, 'XCD', '$', '2019-12-22 18:35:07', NULL),
(11, 'Argentina', 'ARG', 1, 'ARS', '$', '2019-12-22 18:35:07', NULL),
(12, 'Armenia', 'ARM', 1, 'AMD', 'դր', '2019-12-22 18:35:07', NULL),
(13, 'Aruba', 'ABW', 1, 'AWG', 'ƒ', '2019-12-22 18:35:07', NULL),
(14, 'Australia', 'AUS', 1, 'AUD', '$', '2019-12-22 18:35:07', NULL),
(15, 'Austria', 'AUT', 1, 'EUR', '$', '2019-12-22 18:35:07', NULL),
(16, 'Azerbaijan', 'AZE', 1, 'AZN', 'ман', '2019-12-22 18:35:07', NULL),
(17, 'Bahamas', 'BHS', 1, 'BSD', 'BS$', '2019-12-22 18:35:07', NULL),
(18, 'Bahrain', 'BHR', 1, 'BHD', 'ب.د', '2019-12-22 18:35:07', NULL),
(19, 'Bangladesh', 'BGD', 1, 'BDT', '৳', '2019-12-22 18:35:07', NULL),
(20, 'Barbados', 'BRB', 1, 'BBD', '$', '2019-12-22 18:35:07', NULL),
(21, 'Belarus', 'BLR', 1, 'BYR', 'Br', '2019-12-22 18:35:07', NULL),
(22, 'Belgium', 'BEL', 1, 'EUR', '€', '2019-12-22 18:35:07', NULL),
(23, 'Belize', 'BLZ', 1, 'BZD', '$', '2019-12-22 18:35:07', NULL),
(24, 'Benin', 'BEN', 1, 'XOF', 'franc', '2019-12-22 18:35:07', NULL),
(25, 'Bermuda', 'BMU', 1, 'BMD', '$', '2019-12-22 18:35:07', NULL),
(26, 'Bhutan', 'BTN', 1, 'BTN', 'Nu', '2019-12-22 18:35:07', NULL),
(27, 'Bolivia, Plurinational State of', 'BOL', 1, 'BOB', 'Bs', '2019-12-22 18:35:07', NULL),
(28, 'Bonaire, Sint Eustatius and Saba', 'BES', 1, 'USD', '$', '2019-12-22 18:35:07', NULL),
(29, 'Bosnia and Herzegovina', 'BIH', 1, 'BAM', 'KM', '2019-12-22 18:35:07', NULL),
(30, 'Botswana', 'BWA', 1, 'BWP', 'P', '2019-12-22 18:35:07', NULL),
(31, 'Bouvet Island', 'BVT', 1, 'NOK', 'NOK', '2019-12-22 18:35:07', NULL),
(32, 'Brazil', 'BRA', 1, 'BRL', '$', '2019-12-22 18:35:07', NULL),
(33, 'British Indian Ocean Territory', 'IOT', 1, 'NOK', 'kr', '2019-12-22 18:35:07', NULL),
(34, 'Brunei Darussalam', 'BRN', 1, 'BIF', 'FBu', '2019-12-22 18:35:07', NULL),
(35, 'Bulgaria', 'BGR', 1, 'BGN', 'лв', '2019-12-22 18:35:07', NULL),
(36, 'Burkina Faso', 'BFA', 1, 'XOF', 'franc', '2019-12-22 18:35:07', NULL),
(37, 'Burundi', 'BDI', 1, 'BIF', 'FBu', '2019-12-22 18:35:07', NULL),
(38, 'Cambodia', 'KHM', 1, 'KHR', '៛', '2019-12-22 18:35:07', NULL),
(39, 'Cameroon', 'CMR', 1, 'XAF', 'franc', '2019-12-22 18:35:07', NULL),
(40, 'Canada', 'CAN', 1, 'CAD', '$', '2019-12-22 18:35:07', NULL),
(41, 'Cape Verde', 'CPV', 1, 'CVE', '$', '2019-12-22 18:35:07', NULL),
(42, 'Cayman Islands', 'CYM', 1, 'KYD', '$', '2019-12-22 18:35:07', NULL),
(43, 'Central African Republic', 'CAF', 1, 'XAF', 'franc', '2019-12-22 18:35:07', NULL),
(44, 'Chad', 'TCD', 1, 'XAF', 'franc', '2019-12-22 18:35:07', NULL),
(45, 'Chile', 'CHL', 1, 'CLP', '$', '2019-12-22 18:35:07', NULL),
(46, 'China', 'CHN', 1, 'CNY', '¥', '2019-12-22 18:35:07', NULL),
(47, 'Christmas Island', 'CXR', 1, 'AUD', '$', '2019-12-22 18:35:07', NULL),
(48, 'Cocos (Keeling) Islands', 'CCK', 1, 'AUD', '$', '2019-12-22 18:35:07', NULL),
(49, 'Colombia', 'COL', 1, 'COP', '$', '2019-12-22 18:35:07', NULL),
(50, 'Comoros', 'COM', 1, 'KMF', 'KMF', '2019-12-22 18:35:07', NULL),
(51, 'Congo', 'COG', 1, 'XAF', 'franc', '2019-12-22 18:35:07', NULL),
(52, 'Congo, the Democratic Republic of the', 'COD', 1, 'CDF', 'CDFr', '2019-12-22 18:35:07', NULL),
(53, 'Cook Islands', 'COK', 1, 'NZD', '$', '2019-12-22 18:35:07', NULL),
(54, 'Costa Rica', 'CRI', 1, 'CRC', '₡', '2019-12-22 18:35:07', NULL),
(55, 'Côte d\'Ivoire', 'CIV', 1, 'XOF', 'franc', '2019-12-22 18:35:07', NULL),
(56, 'Croatia', 'HRV', 1, 'HRK', 'HRK', '2019-12-22 18:35:07', NULL),
(57, 'Cuba', 'CUB', 1, 'CUC', '$', '2019-12-22 18:35:07', NULL),
(58, 'Curaçao', 'CUW', 1, 'ANG', '$', '2019-12-22 18:35:07', NULL),
(59, 'Cyprus', 'CYP', 1, 'CYP', '£', '2019-12-22 18:35:07', NULL),
(60, 'Czech Republic', 'CZE', 1, 'CZK', 'Kč', '2019-12-22 18:35:07', NULL),
(61, 'Denmark', 'DNK', 1, 'DKK', 'ø', '2019-12-22 18:35:07', NULL),
(62, 'Djibouti', 'DJI', 1, 'DJF', 'Fdj', '2019-12-22 18:35:07', NULL),
(63, 'Dominica', 'DMA', 1, 'XCD', 'EC$', '2019-12-22 18:35:07', NULL),
(64, 'Dominican Republic', 'DOM', 1, 'DOP', 'RD$', '2019-12-22 18:35:07', NULL),
(65, 'Ecuador', 'ECU', 1, 'USD', '$', '2019-12-22 18:35:07', NULL),
(66, 'Egypt', 'EGY', 1, 'EGP', 'ج.م', '2019-12-22 18:35:07', NULL),
(67, 'El Salvador', 'SLV', 1, 'USD', '$', '2019-12-22 18:35:07', NULL),
(68, 'Equatorial Guinea', 'GNQ', 1, 'XAF', 'franc', '2019-12-22 18:35:07', NULL),
(69, 'Eritrea', 'ERI', 1, 'ERN', 'Nfk', '2019-12-22 18:35:07', NULL),
(70, 'Estonia', 'EST', 1, 'EEK', 'KR', '2019-12-22 18:35:07', NULL),
(71, 'Ethiopia', 'ETH', 1, 'ETB', 'Br', '2019-12-22 18:35:07', NULL),
(72, 'Falkland Islands (Malvinas)', 'FLK', 1, 'FKP', 'FK£', '2019-12-22 18:35:07', NULL),
(73, 'Faroe Islands', 'FRO', 1, 'DKK', 'ø', '2019-12-22 18:35:07', NULL),
(74, 'Fiji', 'FJI', 1, 'FJD', 'FJ$', '2019-12-22 18:35:07', NULL),
(75, 'Finland', 'FIN', 1, 'EUR', '€', '2019-12-22 18:35:07', NULL),
(76, 'France', 'FRA', 1, 'EUR', '€', '2019-12-22 18:35:07', NULL),
(77, 'French Guiana', 'GUF', 1, 'EUR', '€', '2019-12-22 18:35:07', NULL),
(78, 'French Polynesia', 'PYF', 1, 'XPF', 'CFP', '2019-12-22 18:35:07', NULL),
(79, 'French Southern Territories', 'ATF', 1, 'XPF', 'F', '2019-12-22 18:35:07', NULL),
(80, 'Gabon', 'GAB', 1, 'XAF', 'franc', '2019-12-22 18:35:07', NULL),
(81, 'Gambia', 'GMB', 1, 'GMD', 'D', '2019-12-22 18:35:07', NULL),
(82, 'Georgia', 'GEO', 1, 'GEL', 'GEL', '2019-12-22 18:35:07', NULL),
(83, 'Germany', 'DEU', 1, 'EUR', '$', '2019-12-22 18:35:07', NULL),
(84, 'Ghana', 'GHA', 1, 'GHC', '₵', '2019-12-22 18:35:07', NULL),
(85, 'Gibraltar', 'GIB', 1, 'GIP', '£', '2019-12-22 18:35:07', NULL),
(86, 'Greece', 'GRC', 1, 'EUR', '€', '2019-12-22 18:35:07', NULL),
(87, 'Greenland', 'GRL', 1, 'DKK', 'ø', '2019-12-22 18:35:07', NULL),
(88, 'Grenada', 'GRD', 1, 'XCD', '$', '2019-12-22 18:35:07', NULL),
(89, 'Guadeloupe', 'GLP', 1, 'EUR', '€', '2019-12-22 18:35:07', NULL),
(90, 'Guam', 'GUM', 1, 'USD', '$', '2019-12-22 18:35:07', NULL),
(91, 'Guatemala', 'GTM', 1, 'GTQ', 'Q', '2019-12-22 18:35:07', NULL),
(92, 'Guernsey', 'GGY', 1, 'GGP', '£', '2019-12-22 18:35:07', NULL),
(93, 'Guinea', 'GIN', 1, 'GNF', 'FG', '2019-12-22 18:35:07', NULL),
(94, 'Guinea-Bissau', 'GNB', 1, 'XOF', 'franc', '2019-12-22 18:35:07', NULL),
(95, 'Guyana', 'GUY', 1, 'GYD', '$', '2019-12-22 18:35:07', NULL),
(96, 'Haiti', 'HTI', 1, 'HTG', 'G', '2019-12-22 18:35:07', NULL),
(97, 'Heard Island and McDonald Islands', 'HMD', 1, 'AUD', '$', '2019-12-22 18:35:07', NULL),
(98, 'Holy See (Vatican City State)', 'VAT', 1, 'EUR', '€', '2019-12-22 18:35:07', NULL),
(99, 'Honduras', 'HND', 1, 'HNL', 'L', '2019-12-22 18:35:07', NULL),
(100, 'Hong Kong', 'HKG', 1, 'HKD', '$', '2019-12-22 18:35:07', NULL),
(101, 'Hungary', 'HUN', 1, 'HUF', 'Ft', '2019-12-22 18:35:07', NULL),
(102, 'Iceland', 'ISL', 1, 'ISK', 'ISK', '2019-12-22 18:35:07', NULL),
(103, 'India', 'IND', 1, 'INR', '₹', '2019-12-22 18:35:07', NULL),
(104, 'Indonesia', 'IDN', 1, 'IDR', 'Rp', '2019-12-22 18:35:07', NULL),
(105, 'Iran, Islamic Republic of', 'IRN', 1, 'IRR', 'ريال', '2019-12-22 18:35:07', NULL),
(106, 'Iraq', 'IRQ', 1, 'IQD', 'ع.د', '2019-12-22 18:35:07', NULL),
(107, 'Ireland', 'IRL', 1, 'EUR', '€', '2019-12-22 18:35:07', NULL),
(108, 'Isle of Man', 'IMN', 1, 'GBP', '£', '2019-12-22 18:35:07', NULL),
(109, 'Israel', 'ISR', 1, 'ILS', '₪', '2019-12-22 18:35:07', NULL),
(110, 'Italy', 'ITA', 1, 'EUR', '€', '2019-12-22 18:35:07', NULL),
(111, 'Jamaica', 'JAM', 1, 'JMD', '$', '2019-12-22 18:35:07', NULL),
(112, 'Japan', 'JPN', 1, 'JPY', '¥', '2019-12-22 18:35:07', NULL),
(113, 'Jersey', 'JEY', 1, 'GBP', '£', '2019-12-22 18:35:07', NULL),
(114, 'Jordan', 'JOR', 1, 'JOD', 'JD', '2019-12-22 18:35:07', NULL),
(115, 'Kazakhstan', 'KAZ', 1, 'KZT', 'KZT', '2019-12-22 18:35:07', NULL),
(116, 'Kenya', 'KEN', 1, 'KES', 'KSh', '2019-12-22 18:35:07', NULL),
(117, 'Kiribati', 'KIR', 1, 'AUD', '$', '2019-12-22 18:35:07', NULL),
(118, 'Korea, Democratic People\'s Republic of', 'PRK', 1, 'KPW', '₩', '2019-12-22 18:35:07', NULL),
(119, 'Korea, Republic of', 'KOR', 1, 'KPW', '₩', '2019-12-22 18:35:07', NULL),
(120, 'Kuwait', 'KWT', 1, 'KWD', 'د.ك', '2019-12-22 18:35:07', NULL),
(121, 'Kyrgyzstan', 'KGZ', 1, 'KGS', 'KGS', '2019-12-22 18:35:07', NULL),
(122, 'Lao People\'s Democratic Republic', 'LAO', 1, 'LAK', '₭', '2019-12-22 18:35:07', NULL),
(123, 'Latvia', 'LVA', 1, 'LVL', 'Ls', '2019-12-22 18:35:07', NULL),
(124, 'Lebanon', 'LBN', 1, 'LBP', 'ل.ل', '2019-12-22 18:35:07', NULL),
(125, 'Lesotho', 'LSO', 1, 'LSL', 'L', '2019-12-22 18:35:07', NULL),
(126, 'Liberia', 'LBR', 1, 'LRD', '$', '2019-12-22 18:35:07', NULL),
(127, 'Libya', 'LBY', 1, 'LYD', 'ل.د', '2019-12-22 18:35:07', NULL),
(128, 'Liechtenstein', 'LIE', 1, 'CHF', 'CHF', '2019-12-22 18:35:07', NULL),
(129, 'Lithuania', 'LTU', 1, 'LTL', 'Lt', '2019-12-22 18:35:07', NULL),
(130, 'Luxembourg', 'LUX', 1, 'EUR', '€', '2019-12-22 18:35:07', NULL),
(131, 'Macao', 'MAC', 1, 'MOP', '$', '2019-12-22 18:35:07', NULL),
(132, 'Macedonia, the former Yugoslav Republic of', 'MKD', 1, 'MKD', 'MKD', '2019-12-22 18:35:07', NULL),
(133, 'Madagascar', 'MDG', 1, 'MGA', 'MGA', '2019-12-22 18:35:07', NULL),
(134, 'Malawi', 'MWI', 1, 'MWK', 'MK', '2019-12-22 18:35:07', NULL),
(135, 'Malaysia', 'MYS', 1, 'MYR', 'RM', '2019-12-22 18:35:07', NULL),
(136, 'Maldives', 'MDV', 1, 'MVR', 'MRf', '2019-12-22 18:35:07', NULL),
(137, 'Mali', 'MLI', 1, 'XOF', 'franc', '2019-12-22 18:35:07', NULL),
(138, 'Malta', 'MLT', 1, 'MTL', 'Lm', '2019-12-22 18:35:07', NULL),
(139, 'Marshall Islands', 'MHL', 1, 'USD', '$', '2019-12-22 18:35:07', NULL),
(140, 'Martinique', 'MTQ', 1, 'EUR', '€', '2019-12-22 18:35:07', NULL),
(141, 'Mauritania', 'MRT', 1, 'MRO', 'UM', '2019-12-22 18:35:07', NULL),
(142, 'Mauritius', 'MUS', 1, 'MUR', 'MU₨', '2019-12-22 18:35:07', NULL),
(143, 'Mayotte', 'MYT', 1, 'EUR', '€', '2019-12-22 18:35:07', NULL),
(144, 'Mexico', 'MEX', 1, 'MXN', '$', '2019-12-22 18:35:07', NULL),
(145, 'Micronesia, Federated States of', 'FSM', 1, 'USD', '$', '2019-12-22 18:35:07', NULL),
(146, 'Moldova, Republic of', 'MDA', 1, 'MDL', 'MDL', '2019-12-22 18:35:07', NULL),
(147, 'Monaco', 'MCO', 1, 'EUR', '€', '2019-12-22 18:35:07', NULL),
(148, 'Mongolia', 'MNG', 1, 'MNT', '₮', '2019-12-22 18:35:07', NULL),
(149, 'Montenegro', 'MNE', 1, 'EUR', '€', '2019-12-22 18:35:07', NULL),
(150, 'Montserrat', 'MSR', 1, 'XCD', '$', '2019-12-22 18:35:07', NULL),
(151, 'Morocco', 'MAR', 1, 'MAD', 'د.م', '2019-12-22 18:35:07', NULL),
(152, 'Mozambique', 'MOZ', 1, 'MZN', 'د.م', '2019-12-22 18:35:07', NULL),
(153, 'Myanmar', 'MMR', 1, 'MMK', 'K', '2019-12-22 18:35:07', NULL),
(154, 'Namibia', 'NAM', 1, 'NAD', '$', '2019-12-22 18:35:07', NULL),
(155, 'Nauru', 'NRU', 1, 'AUD', '$', '2019-12-22 18:35:07', NULL),
(156, 'Nepal', 'NPL', 1, 'NPR', 'रू.', '2019-12-22 18:35:07', NULL),
(157, 'Netherlands', 'NLD', 1, 'EUR', '€', '2019-12-22 18:35:07', NULL),
(158, 'New Caledonia', 'NCL', 1, 'XPF', 'CFP', '2019-12-22 18:35:07', NULL),
(159, 'New Zealand', 'NZL', 1, 'NZD', '$', '2019-12-22 18:35:07', NULL),
(160, 'Nicaragua', 'NIC', 1, 'NIO', '$', '2019-12-22 18:35:07', NULL),
(161, 'Niger', 'NER', 1, 'XOF', 'franc', '2019-12-22 18:35:07', NULL),
(162, 'Nigeria', 'NGA', 1, 'NGN', '₦', '2019-12-22 18:35:07', NULL),
(163, 'Niue', 'NIU', 1, 'NZD', '$', '2019-12-22 18:35:07', NULL),
(164, 'Norfolk Island', 'NFK', 1, 'AUD', '$', '2019-12-22 18:35:07', NULL),
(165, 'Northern Mariana Islands', 'MNP', 1, 'USD', '$', '2019-12-22 18:35:07', NULL),
(166, 'Norway', 'NOR', 1, 'NOK', 'øre', '2019-12-22 18:35:07', NULL),
(167, 'Oman', 'OMN', 1, 'OMR', 'ر.ع', '2019-12-22 18:35:07', NULL),
(168, 'Pakistan', 'PAK', 1, 'PKR', 'PKRs', '2019-12-22 18:35:07', NULL),
(169, 'Palau', 'PLW', 1, 'USD', '$', '2019-12-22 18:35:07', NULL),
(170, 'Palestinian Territory, Occupied', 'PSE', 1, 'JOD', 'JD', '2019-12-22 18:35:07', NULL),
(171, 'Panama', 'PAN', 1, 'PAB', 'PAB', '2019-12-22 18:35:07', NULL),
(172, 'Papua New Guinea', 'PNG', 1, 'PGK', 'K', '2019-12-22 18:35:07', NULL),
(173, 'Paraguay', 'PRY', 1, 'PYG', '₲', '2019-12-22 18:35:07', NULL),
(174, 'Peru', 'PER', 1, 'PEN', 'S./', '2019-12-22 18:35:07', NULL),
(175, 'Philippines', 'PHL', 1, 'PHP', '₱', '2019-12-22 18:35:07', NULL),
(176, 'Pitcairn', 'PCN', 1, 'NZD', '$', '2019-12-22 18:35:07', NULL),
(177, 'Poland', 'POL', 1, 'PLN', 'zł', '2019-12-22 18:35:07', NULL),
(178, 'Portugal', 'PRT', 1, 'EUR', '€', '2019-12-22 18:35:07', NULL),
(179, 'Puerto Rico', 'PRI', 1, 'USD', '$', '2019-12-22 18:35:07', NULL),
(180, 'Qatar', 'QAT', 1, 'QAR', 'ر.ق', '2019-12-22 18:35:07', NULL),
(181, 'Réunion', 'REU', 1, 'EUR', '€', '2019-12-22 18:35:07', NULL),
(182, 'Romania', 'ROU', 1, 'RON', 'ROL', '2019-12-22 18:35:07', NULL),
(183, 'Russian Federation', 'RUS', 1, 'RUB', 'RUруб', '2019-12-22 18:35:07', NULL),
(184, 'Rwanda', 'RWA', 1, 'RWF', 'RF', '2019-12-22 18:35:07', NULL),
(185, 'Saint Barthélemy', 'BLM', 1, 'EUR', '€', '2019-12-22 18:35:07', NULL),
(186, 'Saint Helena, Ascension and Tristan da Cunha', 'SHN', 1, 'SHP', '£', '2019-12-22 18:35:07', NULL),
(187, 'Saint Kitts and Nevis', 'KNA', 1, 'XCD', '$', '2019-12-22 18:35:07', NULL),
(188, 'Saint Lucia', 'LCA', 1, 'XCD', '$', '2019-12-22 18:35:07', NULL),
(189, 'Saint Martin (French part)', 'MAF', 1, 'ANG', '€', '2019-12-22 18:35:07', NULL),
(190, 'Saint Pierre and Miquelon', 'SPM', 1, 'EUR', '€', '2019-12-22 18:35:07', NULL),
(191, 'Saint Vincent and the Grenadines', 'VCT', 1, 'XCD', '$', '2019-12-22 18:35:07', NULL),
(192, 'Samoa', 'WSM', 1, 'WST', '$', '2019-12-22 18:35:07', NULL),
(193, 'San Marino', 'SMR', 1, 'EUR', '€', '2019-12-22 18:35:07', NULL),
(194, 'Sao Tome and Principe', 'STP', 1, 'STD', 'Db', '2019-12-22 18:35:07', NULL),
(195, 'Saudi Arabia', 'SAU', 1, 'SAR', 'ر.س', '2019-12-22 18:35:07', NULL),
(196, 'Senegal', 'SEN', 1, 'XOF', 'franc', '2019-12-22 18:35:07', NULL),
(197, 'Serbia', 'SRB', 1, 'RSD', 'дин', '2019-12-22 18:35:07', NULL),
(198, 'Seychelles', 'SYC', 1, 'SCR', 'SRe', '2019-12-22 18:35:07', NULL),
(199, 'Sierra Leone', 'SLE', 1, 'SLL', 'Le', '2019-12-22 18:35:07', NULL),
(200, 'Singapore', 'SGP', 1, 'SGD', '$', '2019-12-22 18:35:07', NULL),
(201, 'Sint Maarten (Dutch part)', 'SXM', 1, 'EUR', '€', '2019-12-22 18:35:07', NULL),
(202, 'Slovakia', 'SVK', 1, 'SKK', 'Sk', '2019-12-22 18:35:07', NULL),
(203, 'Slovenia', 'SVN', 1, 'EUR', '€', '2019-12-22 18:35:07', NULL),
(204, 'Solomon Islands', 'SLB', 1, 'SBD', '$', '2019-12-22 18:35:07', NULL),
(205, 'Somalia', 'SOM', 1, 'SOS', 'Sh', '2019-12-22 18:35:07', NULL),
(206, 'South Africa', 'ZAF', 1, 'ZAR', 'SAR', '2019-12-22 18:35:07', NULL),
(207, 'South Georgia and the South Sandwich Islands', 'SGS', 1, 'GBP', '£', '2019-12-22 18:35:07', NULL),
(208, 'South Sudan', 'SSD', 1, 'SDD', '£', '2019-12-22 18:35:07', NULL),
(209, 'Spain', 'ESP', 1, 'EUR', '€', '2019-12-22 18:35:07', NULL),
(210, 'Sri Lanka', 'LKA', 1, 'LKR', '₨', '2019-12-22 18:35:07', NULL),
(211, 'Sudan', 'SDN', 1, 'SDD', '£', '2019-12-22 18:35:07', NULL),
(212, 'Suriname', 'SUR', 1, 'SRD', '$', '2019-12-22 18:35:07', NULL),
(213, 'Svalbard and Jan Mayen', 'SJM', 1, 'NOK', 'øre', '2019-12-22 18:35:07', NULL),
(214, 'Swaziland', 'SWZ', 1, 'SZL', 'SZL', '2019-12-22 18:35:07', NULL),
(215, 'Sweden', 'SWE', 1, 'SEK', 'kr', '2019-12-22 18:35:07', NULL),
(216, 'Switzerland', 'CHE', 1, 'CHF', 'CHF', '2019-12-22 18:35:07', NULL),
(217, 'Syrian Arab Republic', 'SYR', 1, 'SYP', '£', '2019-12-22 18:35:07', NULL),
(218, 'Taiwan, Province of China', 'TWN', 1, 'TWD', '$', '2019-12-22 18:35:07', NULL),
(219, 'Tajikistan', 'TJK', 1, 'TJS', 'TJS', '2019-12-22 18:35:07', NULL),
(220, 'Tanzania, United Republic of', 'TZA', 1, 'TZS', 'TSh', '2019-12-22 18:35:07', NULL),
(221, 'Thailand', 'THA', 1, 'THB', '฿', '2019-12-22 18:35:07', NULL),
(222, 'Timor-Leste', 'TLS', 1, 'USD', '$', '2019-12-22 18:35:07', NULL),
(223, 'Togo', 'TGO', 1, 'XOF', 'franc', '2019-12-22 18:35:07', NULL),
(224, 'Tokelau', 'TKL', 1, 'NZD', '$', '2019-12-22 18:35:07', NULL),
(225, 'Tonga', 'TON', 1, 'TOP', '$', '2019-12-22 18:35:07', NULL),
(226, 'Trinidad and Tobago', 'TTO', 1, 'TTD', '$', '2019-12-22 18:35:07', NULL),
(227, 'Tunisia', 'TUN', 1, 'TND', 'د.ت', '2019-12-22 18:35:07', NULL),
(228, 'Turkey', 'TUR', 1, 'TRY', 'YTL', '2019-12-22 18:35:07', NULL),
(229, 'Turkmenistan', 'TKM', 1, 'TMM', 'm', '2019-12-22 18:35:07', NULL),
(230, 'Turks and Caicos Islands', 'TCA', 1, 'USD', '$', '2019-12-22 18:35:07', NULL),
(231, 'Tuvalu', 'TUV', 1, 'AUD', '$', '2019-12-22 18:35:07', NULL),
(232, 'Uganda', 'UGA', 1, 'UGX', 'USh', '2019-12-22 18:35:07', NULL),
(233, 'Ukraine', 'UKR', 1, 'UAH', '₴', '2019-12-22 18:35:07', NULL),
(234, 'United Arab Emirates', 'ARE', 1, 'AED', 'د.إ', '2019-12-22 18:35:07', NULL),
(235, 'United Kingdom', 'GBR', 1, 'GBP', '$', '2019-12-22 18:35:07', NULL),
(236, 'United States', 'USA', 1, 'USD', '$', '2019-12-22 18:35:07', NULL),
(237, 'United States Minor Outlying Islands', 'UMI', 1, 'USD', '$', '2019-12-22 18:35:07', NULL),
(238, 'Uruguay', 'URY', 1, 'UYU', '$', '2019-12-22 18:35:07', NULL),
(239, 'Uzbekistan', 'UZB', 1, 'UZS', 'UZS', '2019-12-22 18:35:07', NULL),
(240, 'Vanuatu', 'VUT', 1, 'VUV', 'Vt', '2019-12-22 18:35:07', NULL),
(241, 'Venezuela, Bolivarian Republic of', 'VEN', 1, 'VEB', 'Bs', '2019-12-22 18:35:07', NULL),
(242, 'Viet Nam', 'VNM', 1, 'VND', '₫', '2019-12-22 18:35:07', NULL),
(243, 'Virgin Islands, British', 'VGB', 1, 'USD', '$', '2019-12-22 18:35:07', NULL),
(244, 'Virgin Islands', 'VIR', 1, 'U.S.', 'USD', '2019-12-22 18:35:07', NULL),
(245, 'Wallis and Futuna', 'WLF', 1, 'XPF', 'CFP', '2019-12-22 18:35:07', NULL),
(246, 'Western Sahara', 'ESH', 1, 'MAD', '.م.د', '2019-12-22 18:35:07', NULL),
(247, 'Yemen', 'YEM', 1, 'YER', 'YER', '2019-12-22 18:35:07', NULL),
(248, 'Zambia', 'ZMB', 1, 'ZMK', 'ZK', '2019-12-22 18:35:07', NULL),
(249, 'Zimbabwe', 'ZWE', 1, 'ZWD', '$', '2019-12-22 18:35:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL,
  `region_id` int(11) DEFAULT NULL,
  `ispricable` tinyint(4) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address3` text COLLATE utf8_unicode_ci,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `views` tinyint(4) NOT NULL,
  `published` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `s3key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_price` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=Show,2=Hide',
  `isfeatured` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1=Featured,2=Not featured',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`category_id`, `id`, `title`, `alias`, `description`, `country_id`, `region_id`, `ispricable`, `price`, `address1`, `address2`, `address3`, `zipcode`, `phone`, `tags`, `views`, `published`, `user_id`, `lat`, `lng`, `image`, `s3key`, `show_price`, `isfeatured`, `created_at`, `updated_at`) VALUES
(17, 17, 'Jeans', 'jeans-tag', '<p>asdads ad</p>\r\n', 103, NULL, NULL, 499.00, '', '', '', '', NULL, NULL, 6, 0, 1, NULL, NULL, '517.png', NULL, 1, 2, '2020-01-04 04:45:10', '2020-02-22 15:12:52'),
(33, 18, 'UNITED INDIA INSURANCE SEETHANGOLI', 'united-india-insurance-seethangoli', '<p>UNITED INDIA INSURANCE&nbsp; OFFICE</p>\r\n', 103, NULL, NULL, 0.00, 'KERALA', 'KASARAGOD', 'SEETHANGOLI  OPP ABA CONVENTION HALL PERLA ROAD SEETHANGOLI', '671321', '9539908668', NULL, 26, 1, 1, NULL, NULL, '791.jpg', NULL, 0, 2, '2020-01-07 09:41:09', '2020-03-07 10:47:40'),
(64, 19, 'V I EXPORTS SEETHANGOLI KINFRA', 'v-i-exports-seethangoli-kinfra', '<p>GRANITES AND MARBLES</p>\r\n', 103, NULL, NULL, 0.00, 'KERALA', 'KASARAGOD', 'V I EXPORTS \r\nKINFRA INDUSTRIAL AREA \r\nSEETHANGOLI', '671321', '9746454267', NULL, 12, 1, 1, NULL, NULL, '552.jpeg', NULL, 0, 2, '2020-01-07 09:57:06', '2020-03-07 10:48:21'),
(1, 23, 'National driving school', 'driving-school', '<p>National driving school Seethangoli, kasaragod. Owner Rashid</p>\r\n', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'National driving school Seethangoli, Near seethangoli bus stand. kasaragod. Owner Rashid', '671321', '9995474444', NULL, 7, 1, 4, NULL, NULL, '763.jpg', NULL, 1, 2, '2020-01-10 04:15:49', '2020-03-01 12:11:45'),
(59, 24, 'South Indian Bank Seethangoli', 'south-indian-bank-seethangoli', '<p>IFSC Code of Seethangoli Branch - South Indian Bank (SIB) Bank: South Indian Bank Branch: Seethangoli IFSC Code: SIBL0000946 State:Kerala District: Kasaragod City: Kasaragud Branch Code: 000946 (Last 6 Characters of the IFSC Code) Address: Main Road, Seethagoli, Bela Post, Pin 671321, Manjeshwaram Tq, Kasaragod Dist</p>\r\n', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'South Indian Bank Seethangoli SANTHOSH COMPLEX, BADIADKA ROAD,, BELA P.O., KASARAGOD, Seethangoli, Kerala 671321S', '671321', '04998246600', NULL, 9, 1, 1, NULL, NULL, '1111.jpg', NULL, 1, 2, '2020-01-30 12:54:20', '2020-03-05 18:57:05'),
(53, 25, 'KSEB Seethangoli', 'KSEB-Seethangoli', 'KSEB Seethangoli kasaragod Kerala 671321', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'KSEB Seethangoli kasaragod Kerala 671321', '671321', '04998246016', NULL, 3, 1, 1, NULL, NULL, 'KSEB.jpg', NULL, 1, 2, '2020-02-03 11:56:24', '2020-02-25 18:59:39'),
(39, 26, 'Akshaya Center Kollangana ', 'akshaya-center-kollangana', '                 Owner :   Gopala Krishna \r\nMobile Number  :9995203838\r\nGmail : akshayamanya67@gmail.com\r\nAvailable Services : Aadhar Card /Child Aadhar , Ration Card ,Pan Card ,Electercity Bill , Land Tax , Building Tax,\r\nVehical Tax , EC , Election ID Card Etc .', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod ', 'Akshaya Kollangana , Ullody Post , \r\nPin Code : 671321, District Kasaragod , \r\nKerala .', '671321', '9995203838', NULL, 1, 1, 1, NULL, NULL, 'IMG-20200220-WA0034.jpg', NULL, 1, 2, '2020-02-20 06:54:06', '2020-02-20 07:11:53'),
(11, 29, 'Friends Furniture Kollangana ', 'Friends-Furniture-Kollangana', 'Owner : Vijay John Rodrigues \r\nMobile Number : 9947152556\r\nFriends Furniture Kollangana Manya Road .', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'Friends Furniture Kollangana , Ullody  Post , Pin Code : 671321,\r\nDistrict Kasaragod , Kerala', '671321', '09947152556', NULL, 1, 1, 1, NULL, NULL, 'IMG_20200220_115108_428.jpg', NULL, 1, 2, '2020-02-20 09:35:44', '2020-02-20 09:43:04'),
(64, 30, 'V I EXPORTS SEETHANGOLI KINFRA', 'v-i-exports', '<p>Owner : Jossy Bela Mobile Number : 9746454267 V . I . Exports Dealers in All Colours of Granites , Marble , Granite Tiles .</p>\r\n', 103, NULL, NULL, 0.00, 'Kerala ', 'Kasaragod', 'BGP - 19/610 - B , V . I Export , Complex , Seethangoli , Kasaragod  , Kerala - 671321 \r\n9746454267, 7907100535', '671321', '9746454267', NULL, 0, 1, 1, NULL, NULL, 'IMG-20200221-WA0023.jpg', NULL, 1, 2, '2020-02-21 08:21:06', '2020-03-03 07:59:49'),
(64, 32, ' NAJAH MARBLE GALLERY  KINFRAINDUSTRIES', 'najah-marble-gallery-kinfra-seethangoli', '<p>NAJAH MARBLE GALLERY&nbsp; KINFRAINDUSTRIES</p>\r\n\r\n<p>Owner : Shafi Aboobacker Mobile Number : 8921172268 Office Number : 7558839339 NAJAH MARBLE GALLERY Italian Marble , Indian Marble &amp; Granite Sethangoli Email Id : najahmarbelgellery@gmail.com</p>\r\n', 103, NULL, NULL, 0.00, 'Kerala ', 'Kasaragod', 'Najah Marble Gallery Near Kinfra  Road \r\nSethangoli , Post - Soorambail , Pin Code \r\n671321,District Kasaragod , Kerala . \r\n NAJAH MARBLE GALLERY  KINFRAINDUSTRIES', '671321', '8921172268', NULL, 10, 1, 1, NULL, NULL, 'IMG-20200221-WA0068.jpg', NULL, 1, 2, '2020-02-21 08:49:47', '2020-03-04 18:29:18'),
(64, 35, 'Das Stone Gallery  Kinfraindustries seethangoli', 'das-stone-gallery-das-stone-gallery-kinfraindustries-seethangoli', '<p>Owner : Ranjith And Anil Mobile Number : 9496021624 , 8848097096 , Das Stone Gallery : - Granite , Marbles , Tiles .</p>\r\n\r\n<p>Das Stone Gallery&nbsp; Kinfraindustries seethangoli</p>\r\n', 103, NULL, NULL, 0.00, 'Kerala ', 'Kasaragod ', 'Sethangoli Near Road Kinfra , Kasaragod, Kerala , 671321\r\nDas Stone Gallery  Kinfraindustries seethangoli', '671321', '9496021624 ,  8848097096', NULL, 2, 1, 1, NULL, NULL, '549.jpg', NULL, 1, 2, '2020-02-21 09:40:44', '2020-03-03 08:03:22'),
(37, 36, 'Treebon Resorts Kasaragod Manya', 'treebon-resorts', '<p>Owner : - Muneer And Aboobacker Mobile Number :- +918893006644 , 9447006644 . Treebon Resorts Pvt Ltd . Kollangana</p>\r\n\r\n<p>Treebon Resorts Kasaragod Manya</p>\r\n', 103, NULL, NULL, 0.00, 'Kerala ', 'Kasaragod', 'Ward No. IV Door No. 426-A ,Kollangana, P.O . Kallakatta , Vidyanger - 671123 , Kasaragod.\r\nTreebon Resorts Kasaragod Manya', '671123', '+918893006644 ,    9447006644', NULL, 2, 1, 1, NULL, NULL, 'IMG_20200220_105907_511.jpg', NULL, 1, 2, '2020-02-21 10:34:16', '2020-03-03 08:05:12'),
(37, 37, 'Win Touch ', 'win-touch', 'Win Touch Builders Pvt . Ltd.\r\nMobile Number:- 9447030274 /  9895108654.\r\nThe Only Place Where Luxury Meets Nature Book Your Villas .\r\nEmail :- wintouchbuilders@gmail.com', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'Win Touch Manya. Ullody Post , Pin Code, 671321 , Kasaragod District , Kerala', '671321', '9447030274 / 9895108654', NULL, 0, 1, 1, NULL, NULL, 'IMG_20200220_113315_675.jpg', NULL, 1, 2, '2020-02-22 08:14:36', '2020-02-22 08:15:32'),
(53, 38, 'KALMATTA  BOREWELLS', 'kalmatta-borewells', 'Owner :- Abdul Muneer \r\nMobile Number : - 9745496186 , 9746531906 , 9446924186 .\r\n\r\n', 103, NULL, NULL, 0.00, 'Kerala ', 'Kasaragod', 'Kalmatta Borewells Near Nithyananda Madam , Kumbla , Post Ullody  Kasaragod , Kerala 671321\r\n', '671321', '9745496186 / 9746531906 / 9446924186', NULL, 0, 1, 1, NULL, NULL, 'New Doc 2020-02-22 15.06.00_1.jpg', NULL, 1, 2, '2020-02-22 08:48:39', '2020-02-22 08:49:18'),
(12, 39, 'SRI BHAGAVATHI PRASAD Seethangoli', 'sri-bhagavathi-prasad', '<p>Owner :- N. Nityananda Nayak Mobile Number :- 9447093343 ,9895609723, Sri Bhagavathi Prasad :- OIL , FLOUR &amp; RICE MILL .</p>\r\n', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'Sri Bhagavathi Prasad Naikap , Post Ednad - 671321 , (via) Kumbala , Kasaragod Dist , Kerala ', '671321', '0499 - 213343 , 9447163343 , 9895609723 , ', NULL, 0, 1, 1, NULL, NULL, 'New Doc 2020-02-22 15.22.38.jpg', NULL, 1, 2, '2020-02-22 09:04:44', '2020-03-03 08:04:22'),
(53, 40, 'BAHVISH HARDWERES ', 'bahvish-hardweres', 'Owner :- Ganesh Rai \r\nMobile Number :- 9633953268 , 9496980601, \r\nBAHVISH HARDWERES :- All Types Plumbing and Electricals Items , ', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'Bahvish Hardweres Main Junction , Seethangoli , Kasaragod Dist , Kerala ,671321 .', '671321', '9633953268 / 946980601', NULL, 0, 1, 1, NULL, NULL, 'New Doc 2020-02-22 15.39.01_1.jpg', NULL, 1, 2, '2020-02-22 09:18:20', '2020-02-22 09:18:39'),
(34, 41, 'MICRO TECH ', 'micro-tech', 'Owner :- C.H . Aboobacker \r\nMobile Number :- 9895307\r\nPhone Number :- 04994  240066\r\nMICRO TECH :- INTERLOCKS &DESIGNER TILES .\r\nManufacturers Of Interlocks , Designer Tiles , Hollow Bricks , Solid Bricks , in Exclusive Designer &Rich in Colours Moulded With Most Modern Technology.', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'Kinfra Park , Sethangoli , Kasaragod , Kerala ', '671321', '9895307335', NULL, 0, 1, 1, NULL, NULL, 'New Doc 2020-02-22 16.00.04_1.jpg', NULL, 1, 2, '2020-02-22 09:30:28', '2020-02-22 09:30:46'),
(35, 42, 'JK Builders Seethangoli', 'jk-builders-seethangoli', '<p>Owner :- Paulson Correya Mobile Number : - 9895341697 Email Id : - paulco4u@gmail.com JK Builders :- Engineers &amp; Builders Seethangoli , Plan ,Estimate ,Supervision, Building Permit ,</p>\r\n\r\n<p>&nbsp;</p>\r\n', 103, NULL, NULL, 0.00, 'Kerala ', 'Kasaragod', 'JK Builders Engineers & Builders Seethangoli , Kasaragod Dist , Kerala ', '671321', '9895341697', NULL, 0, 1, 1, NULL, NULL, 'New Doc 2020-02-22 16.06.01_1.jpg', NULL, 1, 2, '2020-02-22 09:46:53', '2020-03-07 10:49:38'),
(60, 43, 'Aaraamam Restaurant', 'aaraamam-restaurant', 'Highlights info row image\r\nPB No 115647, Belhasa Building, No 4, Next to Hamdan Colony, Karama (6,50 km)\r\n1 Dubai\r\nwww.aaraamamrestaurant.com', 234, NULL, NULL, 0.00, 'Dubai', 'karama', 'PB No 115647, Belhasa Building, No 4, Next to Hamdan Colony Karama\r\nwww.aaraamamrestaurant.com', '126267', '043978137', NULL, 6, 1, 1, NULL, NULL, '1582449803_aaraama3.jpg', NULL, 1, 2, '2020-02-23 08:23:23', '2020-02-26 04:55:26'),
(12, 44, 'POOJA BAKERY PERLA', 'pooja-bakery-perla', '<p>Pooja bakery Main Rd, Perla, enmakaje village, KASARAGOD - 671552 Owner Balanna</p>\r\n', 103, NULL, NULL, 0.00, 'KERALA', 'KASARAGOD', 'Pooja bakery Main Rd, Perla, enmakaje village, KASARAGOD - 671552\r\nOwner  Balanna ', '671552', '9946580105', NULL, 5, 1, 1, NULL, NULL, '1582461923_POOJA.jpg', NULL, 0, 2, '2020-02-23 11:45:23', '2020-03-07 10:50:05'),
(35, 46, 'Malabar Engineering Company ', 'malabar-engineering-company', 'CRI PUMPS \r\nPumping trust Worldwide .\r\nMalabar Engineering Company \r\nExclusive Showroom CRI pumps .\r\nMobile Number :- 9995133353 , 9961133353 . \r\n', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'Malabar Engineering Company\r\nCrystal ARC Building , Near Vyapar Bhavan , Old Bus Stand Kasaragod .', '671121', '9995133353 , 9961133353', NULL, 0, 1, 1, NULL, NULL, '1582532778_New Doc 2020-02-24 13.46.53.jpg', NULL, 1, 2, '2020-02-24 07:26:18', '2020-02-24 07:26:53'),
(17, 47, 'Zaima Women Fashion', 'zaima-women-fashion', 'Owner :- Farook .A \r\nMobile Number :- 91 9567710039\r\nZaima Women Fashion .\r\n', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'Emrald Tower Near Ajmeer Textailes \r\nM.G Road \r\nKasaragod ', '671121', '9567710039', NULL, 0, 1, 1, NULL, NULL, '1582533510_New Doc 2020-02-24 13.58.19.jpg', NULL, 1, 2, '2020-02-24 07:38:30', '2020-02-24 07:38:50'),
(17, 48, 'Beauty Zone', 'beauty-zone', 'Owner :- Mohammed Arbas \r\nMobile Number :- 9995086998 , 9207441181 ,\r\nBeauty Zone :- Womens Gallery ', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'Emrald Tower , Near Ajmeer Textiles \r\nM .G Road , Kasaragod ', '671121', '9995086998 , 9207441181', NULL, 0, 1, 1, NULL, NULL, '1582534004_New Doc 2020-02-24 14.09.40.jpg', NULL, 1, 2, '2020-02-24 07:46:44', '2020-02-24 07:47:11'),
(17, 49, 'Ajmeer Textiles & Garments ', 'ajmeer-textiles-garments', 'Owner :- K.Mohammed \r\nMobile Number :- 04994  226638\r\nAjmeer Textiles & Garments :- Wholesale & Retail .', 103, NULL, NULL, 0.00, 'Kerala', 'kasaragod', 'Door No. X11/ 225- C- 6, Emerald Tower M.G Road , Kasaragod', '671121', '04994 226638', NULL, 1, 1, 1, NULL, NULL, '1582534563_New Doc 2020-02-24 14.19.44.jpg', NULL, 1, 2, '2020-02-24 07:56:03', '2020-02-26 08:29:26'),
(11, 50, 'A ONE STORE ', 'a-one-store', 'Owner : - A. Rahman , Aouf \r\nMobile Number :- 9895610009 , 9847362317 .\r\nA ONE STORE :- Dealers In , Crockery , Dinnerset , Gift & House Hold Articles .', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod ', 'Sa-adiya Complex , Firdouse Bazer , Kasaragod .', '671221', '9895610009 , 9847362317', NULL, 1, 1, 1, NULL, NULL, '1582535228_New Doc 2020-02-24 14.28.00_1.jpg', NULL, 1, 2, '2020-02-24 08:07:08', '2020-02-24 08:37:12'),
(11, 51, 'City Enterprises ', 'city-enterprises', 'Owner :- Ameer Ali C K \r\nMobile Number :- 09037239069\r\nCity Enterprises :- Wholesale Distribution of all Kinds Of Household Items .', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'Sa-adiya Complex , Firdouse Bazer Kasaragod , Kerala , Pin - 671121 ', '671121', '09037239069', NULL, 0, 1, 1, NULL, NULL, '1582535708_New Doc 2020-02-24 14.38.34.jpg', NULL, 1, 2, '2020-02-24 08:15:08', '2020-02-24 08:15:25'),
(11, 52, 'Margin Free Market ', 'margin-free-market', 'Owner :- Kunhamu \r\nMobile Number :- 9961108415 , 944749026.\r\n', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'Emerald Tower , M.G Road , Kasaragod .', '671121', '9961108415 , 9447490726', NULL, 2, 1, 1, NULL, NULL, '1582537147_New Doc 2020-02-24 14.48.02_1.jpg', NULL, 1, 2, '2020-02-24 08:39:07', '2020-03-03 17:43:55'),
(16, 53, 'Moulavi Book Depot', 'moulavi-book-depot', 'Moulavi Book Depot :- Books , Stationeries , Sports ,Health Fitness Equipment .\r\nTel :- 04994- 220354 , 04994- 230993\r\nEmail Id :- moulavi 1931@gmail.com \r\nGSTIN : 32AADFM9458P1ZN\r\n', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'Moulavi Book Depot \r\nVyapara Bhavan Road , Old Bus Stand , Kasaragod .', '671121', '04994 - 220354, 04994 - 230993', NULL, 0, 1, 1, NULL, NULL, '1582538174_New Doc 2020-02-24 15.14.42.jpg', NULL, 1, 2, '2020-02-24 08:56:14', '2020-02-24 08:56:30'),
(64, 54, 'Unique Grantite Industries ', 'unique-grantite-industries', 'Owner :- Dinesh Karkera \r\nMobile Number :- 9995362087 , 7907473574 .\r\nUnique Granite Industries :- Manufactureres of Granite Slabs .', 103, NULL, NULL, 0.00, 'Kerala', 'kasaragod', 'Kinfra Small Industries Park Seethangoli , Kasaragod ,671124 .', '671124', '9995362087 , 7907473574', NULL, 0, 1, 1, NULL, NULL, '1582539491_New Doc 2020-02-24 15.33.58.jpg', NULL, 1, 2, '2020-02-24 09:18:11', '2020-02-24 09:18:26'),
(7, 55, 'Electro Care ', 'electro-care', 'Owner :- A.S.Pramod \r\nMobile Number :- 9895816022\r\nEmail :- Id :- pramod . electrocare @gmail.com\r\nElectro Care :- Electronic Service Centre ,\r\n.Services in TV LED / LCD \r\n.Panel Servcing Car Amplifier &Audio Systems Car Monitor \r\n.Induction Cooker \r\n.Micro Wave Oven .\r\n', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod ', 'First Floor ,center One Shopping Complex Opp. Sun Flower Auditorium , Uliyathadka , Kasaragod Dist . KERALA State , Pincode - 671124', '671124', '9895816022', NULL, 1, 1, 1, NULL, NULL, '1582540013_New Doc 2020-02-24 15.33.58_2.jpg', NULL, 1, 2, '2020-02-24 09:26:53', '2020-02-24 13:01:19'),
(22, 56, 'SRI GANESH ', 'sri-ganesh', 'Owner :- Balasubrahmanya M.\r\nMobile Number :- 9497600116.\r\nSRI GANESH :- Ice Cream & Bakery Products . ', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'Main Road , Nirchal - 671321 , Kasaragod Dist.Keala ', '671321', '9497600116', NULL, 3, 1, 1, NULL, NULL, '1582615478_New Doc 2020-02-25 12.45.57.jpg', NULL, 1, 2, '2020-02-25 06:24:38', '2020-03-05 12:24:58'),
(22, 57, 'CANARA KING K.S Cream Parlour', 'canara-king-ks-cream-parlour', 'CANARA KS CREAM PARLOUR \r\nMobile Number :- 04994 - 221910\r\n                                 9447484114\r\n                                 9037375557\r\n', 103, NULL, NULL, 0.00, 'Kerala ', 'Kasaragod', 'Gokul Building , Near L.I.C ..M.G . Road , Kasaragod .', '671121', '04994 - 221910 , 9447484114.  9037375557', NULL, 4, 1, 1, NULL, NULL, '1582619930_New Doc 2020-02-25 13.59.17.jpg', NULL, 1, 2, '2020-02-25 07:38:50', '2020-02-25 17:44:42'),
(64, 58, 'UK CERAMIC  CENTRE ', 'uk-ceramic-centre', 'Owner :- Kaleel U.K  & Anwar \r\nMobile Number :- 09746214440, 09656522678\r\nThe Group Of U K Ceramic Centre ,\r\nN.H.17 , Vidyanagar , Kasaragod ,\r\nDealers Įn :- Ceramic Tiles , Vitrified Tiles, Marble, Granite , & Sanitary Wares .\r\nCP Fittings :- Wholesale & Retail.\r\n', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'N.H.17 , Vidyanagar , Kasaragod (Dist) Kerala , Pin Code :- 671124 . ', '671124', '097462144440 , 09656522678.', NULL, 0, 1, 1, NULL, NULL, '1582707744_New Doc 2020-02-26 14.07.42.jpg', NULL, 1, 2, '2020-02-26 08:02:24', '2020-02-26 08:02:50'),
(17, 59, 'KHADI GRAMA SOBHAGYA (K.K.V.I.B)', 'khadi-grama-sobhagya-kkvib', 'Sunny Tomas (Manager ) \r\nMobile Number :- 9446844373\r\nKHADI GRAMA SOUBHAGYA (K.K.V.I.B) \r\nPayyannur Khadi Centre , Kasaragod ,\r\nAll Kinds Of Khadi Shirtings , Dhothies , Readymade , Shirt ,Jubba , Cotton Silk Sarees , Handicrafts &Silk Cotton Bed, \r\nCane Furniture , All kinds of Khadi Dressing ,Fomill ( Kerala Goverment Company .\r\n\r\n', 103, NULL, NULL, 0.00, 'Kerala ', 'Kasaragod', 'Khadi Grama Soubhagya (K.K.V.I.B) \r\nVidyanagar , Kasaragod (Dist) Kerala , Pin Code 671124.', '671124', '9446844373', NULL, 1, 1, 1, NULL, NULL, '1582708777_New Doc 2020-02-26 14.49.10.jpg', NULL, 1, 2, '2020-02-26 08:19:37', '2020-03-06 02:24:37'),
(42, 60, 'Sharmas Ayurvedics &Medicals', 'sharmas-ayurvedics-medicals', 'Owner :- Mahesh Sharma .S \r\nMobile Number :- 9809001257\r\nEnglish & Ayurvedic Medicines Available .', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'Sharmas Ayurvedics & Medicines .\r\nVidya Nagar , Kasaragod (Dist) Kerala , Pin Code 671124\r\n', '671124', '9809001257', NULL, 1, 1, 1, NULL, NULL, '1582709417_New Doc 2020-02-26 14.50.51.jpg', NULL, 1, 2, '2020-02-26 08:30:17', '2020-02-29 00:18:48'),
(63, 61, 'Regal Footwear & Bags ', 'regal-footwear-bags', 'Owner :- Muneer \r\nMobile Number :- 8129489406\r\nRegal Footwear & Bags .', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'Regal Footwear & Bags Vidya Nagar .\r\nKasaragod ( Dist ) Kerala ,Pin Code 671124', '671124', '8129489406', NULL, 0, 1, 1, NULL, NULL, '1582710502_New Doc 2020-02-26 11.12.11_1.jpg', NULL, 1, 2, '2020-02-26 08:48:22', '2020-02-26 08:48:42'),
(64, 62, 'ABC SALES CORPORATION ', 'abc-sales-corporation', 'ABC Sales Corporation .\r\nAll Types Of Granite & Tiles Available .\r\nMobile Number :- 04602300404\r\n\r\n\r\n\r\n\r\n\r\n', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'ABC Sales Corporation Vidya Nagar, Kasaragod (Dist) Pin Code 671121', '671121', '04602300404', NULL, 3, 1, 1, NULL, NULL, '1582711616_AF1QipM8t2aRvULZugUdGalL-lDxHNks3cYNifZder1R=s396-k-no.jpg', NULL, 1, 2, '2020-02-26 09:06:56', '2020-03-07 11:31:16'),
(60, 65, 'Amma Restaurant ', 'amma-restaurant', '<p>Mobile Number :- +91 97454 78016 , 9447450146 , 8075418880. Amma Restaurant Vidya Nagar , Kasaragod , Catering Services Available .</p>\r\n', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'Amma Restaurant  Vidya Nagar , Kasaragod (Dist) Kerala , Pin Code 671123 .', '671123', '+91 97454 78016 , 9447450146 , 8075418880 .', NULL, 0, 1, 1, NULL, NULL, '1582736322_IMG-20200226-WA0052.jpg', NULL, 0, 2, '2020-02-26 15:58:42', '2020-03-07 07:01:26'),
(3, 66, 'Suzuki ', 'suzuki', 'Mobile Number :- 09539117755 , 09539113377 , 09539001188 . \r\nSuzuki Showroom Vidya Nagar , ', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'SA-Adiya Centre Building , B.C Road , Vidyanagar , Kasaragod - 671123', '671123', '09539117755, 09539113377 , 09539001188.', NULL, 1, 1, 1, NULL, NULL, '1582737373_kasargod-signature-vidyanagar-kasaragod-motorcycle-dealers-ahaevxsn99.jpg', NULL, 1, 2, '2020-02-26 16:16:13', '2020-02-29 00:18:17'),
(25, 67, 'ST . Monica Church Kumbla ', 'st-monica-church-kumbla', 'ST . Monica Church Kumbla \r\nContect Number :- 04998 214 792 \r\nKumbla Badiadka Road \r\nPin Code :- 671321.', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'ST . Monica Church Kumbla \r\nKumbla Badiadka Road \r\nPin Code :- 671321, Kasaragod (Dist) Kerala ', '671321', '04998 214 792', NULL, 1, 1, 1, NULL, NULL, '1582787772_AF1QipMktbns0QVvnYf9AjC_ZsdxB76vg7rSV8SDDV_X=s397-k-no.jpg', NULL, 1, 2, '2020-02-27 06:16:12', '2020-02-27 09:43:55'),
(25, 68, 'Catholic Church Įn  Kasaragod   ', 'catholic-church-in-kasaragod', 'Our Lady Of Dolours Roman Catholic And Latin Catholic Church Įn Kasaragod ,\r\nContect Number :- 04994 224 175\r\nPin Code :- 671121 ', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'Railway Station Road , Thayalangadi , \r\nKasaragod ,Kerala , 671121', '671121', '04994 224 175', NULL, 0, 1, 1, NULL, NULL, '1582794026_AF1QipMG1d18jECcHwGoWKIThnaGNYoJkMm-v-DA-pzD=s402-k-no.jpg', NULL, 1, 2, '2020-02-27 08:00:26', '2020-02-27 08:00:46'),
(25, 69, 'ST. John De Britto Roman Catholic Latin Catholic Church In Naramapdy', 'st-john-de-britto-roman-catholic-latin-catholic-church-in-naramapdy', 'ST. John De Britto Roman Catholic And Latin Catholic Church Įn Naramapdy .\r\nContect Number :- 04994 285 597\r\nPin Code :- 671543', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'Naramapdy , Badiadka - Mulleria Road ,\r\nNekraje , Kerala  671543', '671543', '04994 285 597', NULL, 2, 1, 1, NULL, NULL, '1582794876_AF1QipOowl0HDD8V34iLb7eiVET8AZFg5LsXoEPZXr2q=s455-k-no.jpg', NULL, 1, 2, '2020-02-27 08:14:36', '2020-03-07 06:07:50'),
(25, 70, 'Our Lady Of Mercy  Church Manjeshwar ', 'our-lady-of-mercy-church-manjeshwar', 'Our Lady Of Mercy Church Manjeshwar ,\r\nCatholic Church Įn Kerala ,\r\nContect Number :-04998 272 075\r\nPin Code :- 671323', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'Manjeshwar Church , Kasaragod (Dist) Kerala , 671323', '671323', '04998 272 075', NULL, 1, 1, 1, NULL, NULL, '1582797557_1582796986522.jpg', NULL, 1, 2, '2020-02-27 08:59:17', '2020-02-27 09:40:34'),
(63, 71, 'Number Plates (HSRP) ', 'number-plates-hsrp', 'Owner :- Madhavn \r\nMobile Number :- 9400637689 , 9539760335 .\r\nNumber Plates ( HSRP) :- High Quality Vehicle Number Plates & Spot Fixing .\r\nNumber Plates (HSRP) , \r\n( RTO APPROVED ) .\r\n', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'NH Road , Near SBI Bank , MRF Tyrę , Sahara & Industrial Eastate Road , Vidyanagar , Kasaragod . ', '671123', '9400637689 , 9539760335', NULL, 0, 1, 1, NULL, NULL, '1582881343_New Doc 2020-02-28 14.17.49_1.jpg', NULL, 1, 2, '2020-02-28 08:15:43', '2020-02-28 08:16:08'),
(63, 72, 'Key Duplicate & Stamp Makers ', 'key-duplicate-stamp-makers', 'Owner :- Madhavn \r\nMobile Number :- 9400637689 , 9539760335\r\nKey Duplicate :- Sensor Key , Magnet Key, Key Servicing & Programing .\r\nSTAMP MAKERS :- Polymer & Sun Stamps\r\n\r\n', 103, NULL, NULL, 0.00, 'Kerala ', 'Kasaragod', 'NH Road , Near SBI Bank , MRF Tyre , Sahara & Industrial Eastate Road , Vidyanagar , Kasaragod .', '671123', '9400637689 , 9539760335', NULL, 0, 1, 1, NULL, NULL, '1582908569_New Doc 2020-02-28 14.17.22.jpg', NULL, 1, 2, '2020-02-28 15:49:29', '2020-02-28 15:49:52'),
(11, 73, 'Sana Ply Wood Centre ', 'sana-ply-wood-centre', 'Owner :- Moideen Kunhi \r\nMobile Number :- 9895217030 , 9961282021.\r\nSana Ply Wood Centre \r\nVidyanager ,Kasaragod - 671123', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'Vidyanager , Kasaragod  ( Dist) Kerala 671123', '671123', '9895217030 , 9961282021', NULL, 1, 1, 1, NULL, NULL, '1582953454_New Doc 2020-02-28 10.49.13_1.jpg', NULL, 1, 2, '2020-02-29 04:17:34', '2020-03-06 02:30:04'),
(63, 74, 'Pluton Tours & Travels ', 'pluton-tours-travels', 'Pluton Tours & Travels \r\nMobile Number :- 9895778368 , 9747551535 - 04994 257710 \r\nEmail Id :- Plutontrading .ksd@gmail.com\r\n', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'Bismillh Complex Vidyanagr , Kasaragod \r\n(Dist) Kerala ,671123\r\n\r\n', '671123', '9895778368 , 9747551535 - 04994 257710', NULL, 4, 1, 1, NULL, NULL, '1582956004_New Doc 2020-02-29 11.26.24_1.jpg', NULL, 1, 2, '2020-02-29 04:53:48', '2020-03-02 05:12:15'),
(34, 75, 'Kannur Hardware Seethangoli', 'kannur-hardware-seethangoli', '<h3>Kannur Hardwares -Colour World-Kannur Shopping Complex Perla Road Seethangoli Kasargod - 671321</h3>\r\n\r\n<h3>Asian Paints Showroom in Seethangoli Kasaragod , Kerala&nbsp;</h3>\r\n', 103, NULL, NULL, 0.00, 'KERALA Seethangoli', 'seethangoli', 'Kannur Hardwares -Colour World-Kannur Shopping Complex Perla Road Seethangoli Kasargod - 671321\r\nAsian Paints Showroom in Seethangoli Kasaragod , Kerala ', '671321', '04998247177 ', NULL, 5, 1, 1, NULL, NULL, '1583070680_kannur hardware seethangoli.jpg', NULL, 1, 2, '2020-03-01 12:51:20', '2020-03-07 10:46:43'),
(10, 76, 'VINU STUDIO PERLA', 'VINU-STUDIO-PERLA', 'Vinu Digital Studio perla \r\nPhotography,Videography\r\nOWNER : VUNU PERLA\r\n2nd Floor Puttur road, Main Road Perla, Near Family Textiles perla kasaragod 671552', 103, NULL, NULL, 0.00, 'KERALA', 'Perla kasaragod', 'Vinu Digital Studio perla \r\nPhotography,Videography\r\nOWNER : VUNU PERLA\r\n2nd Floor Puttur road, Main Road Perla, Near Family Textiles perla kasaragod 671552', '671552', NULL, NULL, 6, 1, 1, NULL, NULL, '1583084110_vinu 4.jpg', NULL, 1, 2, '2020-03-01 16:32:02', '2020-03-06 02:22:59'),
(58, 78, 'VEEN ARRANGERS MANIYAMPARE', 'VEEN-ARRANGERS-MANIYAMPARE', 'VEEN ARRANGERS ANIYAMPARE SEETHANGOLI. SOUNDS, LIGHTS, SHAMIYANA, TIN SHEETS, STAGE DECORATION AND ALL TYPES OF ARRANGMENTS\r\nOWNER: NAVEEN, DHANRAJ PRASHANTH\r\nSEETHANGOLI, PERMUDE, MNIYAMPARE 671321', 103, NULL, NULL, 0.00, 'KERALA', 'SEETHANGOLI', 'VEEN ARRANGERS MANIYAMPARE SEETHANGOLI. SOUNDS, LIGHTS, SHAMIYANA, TIN SHEETS, STAGE DECORATION AND ALL TYPES OF ARRANGMENTS\r\nOWNER: NAVEEN, DHANRAJ PRASHANTH\r\nSEETHANGOLI, PERMUDE, MANIYAMPARE 671321', '671321', '9567998129', NULL, 7, 1, 1, NULL, NULL, '1583128962_VEEN ARRANGERS SEETHANGOLI.jpg', NULL, 1, 2, '2020-03-02 05:02:42', '2020-03-02 11:27:59'),
(2, 79, 'NEETHA BUS TOURS AND TRAVELS KOLLANGANA KASARAGOD', 'neetha-bus-tours-and-travels-kollangana-kasaragod', '<p>NEETHA BUS TOURS AND TRAVELS KOLLANGANA KASARAGOD Owner Fedrick Lobo CONTACT 9745835158, 7558987363</p>\r\n', 103, NULL, NULL, 0.00, 'KERALA', 'kasaragod kollangana', 'NEETHA BUS TOURS AND TRAVELS KOLLANGANA KASARAGOD \r\nOwner Fedrick Lobo\r\nCONTACT 9745835158, 7558987363', '671124', '9745835158', NULL, 15, 1, 1, NULL, NULL, '1583225484_neetha bus kasaragod.jpg', NULL, 0, 2, '2020-03-03 07:51:24', '2020-03-07 10:51:56'),
(63, 80, 'Deenar Fresh Chicken Centre ', 'deenar-fresh-chicken-centre', 'Deenar Fresh Chicken Centre Kanyappady .\r\nAll Types Of Chickens Are Available .\r\nMobile Number :- 9946994792 , 8129990959 .', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod ', 'Deenar Chicken Center Kanyappady ,\r\nNear Badiadka Road .\r\nKasaragod (Dist ) , Kerala , 671321.', '671321', '9946994792 , 819990959 ', NULL, 0, 1, 1, NULL, NULL, '1583230588_New Doc 2020-03-03 15.35.19_1.jpg', NULL, 1, 2, '2020-03-03 09:16:28', '2020-03-03 09:17:16'),
(19, 81, 'RAJA DHANI GOLD  DIAMONDS ', 'raja-dhani-gold-diamonds', 'Owner :- HAMEED \r\nMobile Number :- +91 98952 13576\r\nE-mail:- hameedrajadhani@gmail.com\r\nRAJA DHANI , GOLD DIMONDS \r\nKumbla & Badiadka \r\nContect Number :- 04998 21380 , 04998 284916 .', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'Raja Dhani Gold Diamonds , Kumbla & Badiadka , Kasargod ( Dist ), Kerala \r\nPin Code :- 671321', '671321', '+91 98952 13576', NULL, 0, 1, 1, NULL, NULL, '1583231898_New Doc 2020-03-03 15.58.06_1.jpg', NULL, 1, 2, '2020-03-03 09:38:18', '2020-03-03 09:38:48'),
(42, 82, 'JAYASHREE MEDICALS ', 'jayashree-medicals', 'Owner :- P.S.S . Bhat \r\nMobile Number :- 9745942885 .\r\nPhone Number :- 04998 - 285522\r\nJAYASHREE MEDICALS Man Road Neerchal .\r\nAllopathic Ayurvedic & Veterinary Medicines Available .', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'JAYASHREE  MEDICALS ,Main Road Neerchal ,Kasaragod Dist , Kerala 671321', '671321', '9745942885', NULL, 1, 1, 1, NULL, NULL, '1583307149_New Doc 2020-03-04 12.48.03_3.jpg', NULL, 1, 2, '2020-03-04 06:32:29', '2020-03-07 04:46:20'),
(42, 83, 'SRI GANESH DISTRIBUTORS', 'sri-ganesh-distributors', 'Owner :- P.S.S Bhat \r\nMobile Number :- 9745942885\r\nPhone Number :- 04998 - 285522\r\nSRI GANESH DISTRIBUTORS \r\n(Distributors For Ayurvedic Medicines ) \r\nMain Road , Neerchal , Kasaragod  (Dist), Kerala - 671321\r\nE-mail :- sriganeshnirchal @ yahoo.com', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'SRI GANESH DISTRIBUTORS ,Main Road, Main Road , Neerchal , Kasaragod Dist, Kerala - 671321', '671321', '9745942885', NULL, 1, 1, 1, NULL, NULL, '1583314743_New Doc 2020-03-04 14.59.51_1.jpg', NULL, 1, 2, '2020-03-04 08:39:03', '2020-03-06 14:29:19'),
(37, 84, 'PRAKASH CLINIC ', 'prakash-clinic', 'Owner :- Dr . Malathi Prakash (B.A.M.S .)\r\nSenior Ayurvedic Consultant \r\nMobile Number :- 9495263861\r\nE-mail:- malathiprakashdr @gmail.com \r\nPRAKASH CLINIC ,Neerchal - Kumbla - 671321', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod ', 'PRAKASH CLINIC Neerchal , Kumbla, Kasaragod (Dist) Pin Code :- 671321', '671321', '9495263861', NULL, 0, 1, 1, NULL, NULL, '1583315521_New Doc 2020-03-04 12.48.03_2.jpg', NULL, 1, 2, '2020-03-04 08:52:01', '2020-03-04 08:52:19'),
(63, 85, 'M/s. P. N TRADERS HILL PRODUCE DEALER ', 'ms-p-n-traders-hill-produce-dealer', 'Mobile Number :- 9809672170 , 9995590136.\r\nM/s. P.N TRADERS HILL PRODUCE DEALER ,Main Road Neerchal .', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'M/s . P.N TRADERS HILL PRODUCE DEALER ,Man Road Neerchal ,Kasaragod (Dist) 671321', '671321', '9809672170 , 9995590136', NULL, 1, 1, 1, NULL, NULL, '1583316051_New Doc 2020-03-04 12.48.03_1.jpg', NULL, 1, 2, '2020-03-04 09:00:51', '2020-03-07 06:26:08'),
(63, 86, 'S.V. ENTERPRISES ', 'sv-enterprises', 'Owner :- Vishnu Sharma \r\nMobile Number :- 9496044991\r\nS.V ENTERPRISES , ALL Mobile &Dish Recharges Mobile & DTH Sales Available ', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'S.V . Enterprises ,opp .M.S.C.H.S.S . Nirchal , (P.O) Nirchal Kumbla - 67321 , Kasaragod .', '671321', '9496044991', NULL, 2, 1, 1, NULL, NULL, '1583316832_New Doc 2020-03-04 12.48.03_4.jpg', NULL, 1, 2, '2020-03-04 09:13:52', '2020-03-07 05:46:20'),
(63, 87, 'UPPINE FANCY & GIFT CENTRE', 'uppine-fancy-gift-centre', 'Mobile Number :- 9495103249\r\nUPPINE FANCY & GIFT CENTRE , Main Road Neerchal', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'Main Road Neerchal ,Kasaragod ( Dist ) Kerala ,671321', '671321', '9495103249', NULL, 1, 1, 1, NULL, NULL, '1583318331_New Doc 2020-03-04 15.59.39_1.jpg', NULL, 1, 2, '2020-03-04 09:28:01', '2020-03-07 03:14:52'),
(39, 88, 'AKSHAYA CENTRE NEERCHAL ', 'akshaya-centre-neerchal', 'Contect Number :- 094953 45679\r\nAkashya Centre Neerchal ,Available In (Pancard , Aadhr Card , Ration Card, Election Id etc..)\r\n', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'Akshaya Neerchal , Kasaragod (Dist) Kerala ,671321', '671321', '094953 45679', NULL, 3, 1, 1, NULL, NULL, '1583319390_New Doc 2020-03-04 16.24.26_1(2).jpg', NULL, 1, 2, '2020-03-04 09:53:51', '2020-03-07 09:24:05'),
(2, 89, 'Galaxy Holidays ', 'galaxy-holidays', 'Owner :- Anchu , Irsha , Irfan .\r\nMobile Number :- 9400988882 , 8547559636 , 91 94002 23962 .\r\nALL INDIA TOUR PACKAGE AVAILABLE ,\r\nALL VEHICLE , PUSH BACK AC AIR BUS AVAILABLE .', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'Galaxy Holidays Indiranagar , Cherkala, Kasaragod (Dist) Kerala , 671541', '671541', '9400988882 , 8547559636 , 91 94002 23962 .', NULL, 3, 1, 1, NULL, NULL, '1583320685_IMG-20200303-WA0072.jpg', NULL, 1, 2, '2020-03-04 10:18:05', '2020-03-07 01:59:08'),
(36, 90, 'M.S.C.H.S.S (MSC High School ) Neerchal ', 'mschs-msc-high-school-neerchal', 'Contect Number :- 04998 284 090 .\r\nMahajana  Sanskrit College High School Neerchal (MSC High School ).\r\n\r\n', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'Badiadka Panchayth , Ward No, 2 , Kumbla -Badiadka Road, Perdala Kanyapadi ,Neerchal ,Kerala ,671321', '671321', '04998 284 090', NULL, 2, 1, 1, NULL, NULL, '1583397394_New Doc 2020-03-05 14.04.41_1.jpg', NULL, 1, 2, '2020-03-05 07:28:52', '2020-03-07 09:52:28'),
(42, 91, 'DHANVANTARI CLINIC MANYA', 'dhanvantari-clinic-manya', 'Owner:- Dr.K. Shyamasundara B.A.MS.\r\nAlternative Medicine Practitioner įn Belą,\r\nKerala .', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'Manya , Vidyanagar Neerchal  Mundaythdka Road,Belą, Kerala , 671321', '671321', '', NULL, 2, 1, 1, NULL, NULL, '1583417398_New Doc 2020-03-05 19.38.18_2.jpg', NULL, 1, 2, '2020-03-05 13:07:35', '2020-03-07 09:43:01'),
(63, 92, 'SIRI CREATIONS MANYA ', 'siri-creations-manya', 'SIRI CREATIONS MANYA JUNCTION  CIRCLE .\r\nMobile Number :- 9900607945 .', 103, NULL, NULL, 0.00, 'Kerala ', 'Kasaragod', 'Manya , Vidhyanagar, Neerchal, Mundithdka Road. Kasargod (Dust) 671321.', '671321', '9900607945', NULL, 3, 1, 1, NULL, NULL, '1583418037_New Doc 2020-03-05 14.51.47_2.jpg', NULL, 1, 2, '2020-03-05 13:20:37', '2020-03-07 08:27:17'),
(11, 93, 'SHIV ALUMINIUM & FABRICATION MANYA', 'shiv-aluminium-fabrication-manya', 'Owner :- KIRAN \r\nMobile Number :- 8714171777\r\nShiv Aluminium & Fabrication Manya ,\r\nPartition Work , Open Window , Slide Window, Celing ,Showcase , Fiber Door ,\r\nACP Kitchen Cabin , Steel Staircase ,\r\nCurtains . Etc ', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'Manya , Vidhyanager ,Neerchal, Mudyathdka Road ,Kasargod (Dist)671321\r\n', '671321', '8714171777', NULL, 1, 1, 1, NULL, NULL, '1583419443_New Doc 2020-03-05 15.10.19_1.jpg', NULL, 1, 2, '2020-03-05 13:44:03', '2020-03-07 03:52:44'),
(10, 95, 'Sharp Digital Studio &Video Nirchal', 'sharp-digital-studio-video-nirchal', 'Owner :- Venu Aroli \r\nMobile Number :- 9846304590 , 6282748735.\r\nE-mail id :-sharpnirchal90@gmail.com\r\nSharp Digital Studio & Video ,\r\nOutdoor Photography , Indoor Photography , Video Coverage , Lamination .', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'Opp . M.S.C.H.S.S. Nirchal , Kasaragod\r\n( Dist ) Kerala - 671321', '671321', '9846304590 , 6282748735', NULL, 2, 1, 1, NULL, NULL, '1583484497_New Doc 2020-03-06 14.17.10_1.jpg', NULL, 1, 2, '2020-03-06 07:45:47', '2020-03-07 06:43:35'),
(63, 96, 'Sharp Printers Nirchal ', 'sharp-printers-nirchal', 'Owner :- Venu Aroli \r\nMobile Number :- 9846304590 , 6282748735 , 9495653812 .\r\nSharp Printers :- Offset Printing , Colour Printing , Wedding Cards , Xerox , DTP, Screen Printing , Book Binding , Flex & Vinyl Printing .\r\n', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'Opp. M.S.C.H.S.S.  Nirchal , Kasargod (Dist) Kerala -671321', '671321', '9846304590,6282748735,9495653812', NULL, 2, 1, 1, NULL, NULL, '1583485345_New Doc 2020-03-06 14.17.10_1.jpg', NULL, 1, 2, '2020-03-06 08:01:30', '2020-03-06 14:28:45'),
(63, 97, 'S.K EMPORIUM Neerchal', 'sk-emporium-neerchal', 'Owner:- Gopalakrishna .A \r\nMobile Number :- 9746353359 , 9447863459.\r\nE-mail id :- geekay .yeskay@gmail.com \r\nVisit For :- Fancy , Stationary , Tailoring Materials , Bag, Belts , Purses , School Bags , & Umbrellas , Decoration Items , Greeting Cards , Gift Articles , Mobile Recharging , All seasonal Items , etc ..\r\n', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'Opp.M.S.C.H.S.S , Main Road Neerchal \r\nVia : kumbla ,Kasaragod .', '671321', '9746353359, 9447863459', NULL, 1, 1, 1, NULL, NULL, '1583486366_New Doc 2020-03-06 14.34.52_1.jpg', NULL, 1, 2, '2020-03-06 08:17:19', '2020-03-07 07:16:42'),
(63, 98, 'M.M.L Auto Electrical & Battery Work Neerchal ', 'mml-auto-electrical-battery-work-neerchal', 'Owner :- Jayashankar \r\nMobile Number :- 9495804260 \r\nTrbular Battery Inverter UPS , Sales & Services .\r\nProduct & Service, Tubular Battery , Home UPS , Inverters .', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'Main Road Neerchal , Kasargod (Dist) Kerala - 671321', '671321', '9495804260', NULL, 0, 1, 1, NULL, NULL, '1583487374_New Doc 2020-03-06 14.51.14_1(2).jpg', NULL, 1, 2, '2020-03-06 08:34:31', '2020-03-06 08:36:14'),
(22, 99, 'Durgashree Sweets  Kollangana', 'durgashree-sweets-kollangana', 'Owner :- Ravishankar Shetty \r\nMobile Number :- 9447366268\r\nDurgashree Sweets ,Juice , Avalaible', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'Kollangana , Vidhyanger Mundithdka Road , Kasaragod (Dist), Kerala -671123', '671123', '9447366268', NULL, 1, 1, 1, NULL, NULL, '1583489655_New Doc 2020-03-06 15.36.57_1.jpg', NULL, 1, 2, '2020-03-06 09:11:46', '2020-03-07 06:22:33'),
(65, 100, 'Royal Caterers Kumbla ', 'royal-caterers-kumbla', '<p>Owner :- Tomas Rodrigues Mobile Number :- 9995712660 Phone Number :- 04998 216746 Menu Lemon juice cold drink Cake Appam Shevio Chicken green curry Pork chilly Chicken kabab Rice Saar or sambar Salad Kadle sukka Pickle Payasam Ice cream ideal,co 185/per plate.</p>\r\n', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'Opp . Church , Krishna Nagar , Kumbla - Kasaragod (Dist) ,Kerala - 671321.', '671321', '9995712660', NULL, 3, 1, 1, NULL, NULL, '1583582510_1583569085_New Doc 2020-03-07 13.35.24_1.jpg', NULL, 0, 2, '2020-03-07 07:15:29', '2020-03-07 11:03:17'),
(30, 101, 'Karnataka Bank Neerchal', 'karnataka-bank-neerchal', '<p>Contact Number :- 04998284036 Karnataka Bank Neerchal</p>\r\n', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'Mahalinga Dhama , Main Road, Neerchal,\r\nKerala , 671321 ', '671321', '04998284036', NULL, 0, 1, 1, NULL, NULL, '1583571191_New Doc 2020-03-07 14.21.05_2.jpg', NULL, 0, 2, '2020-03-07 07:49:18', '2020-03-07 10:51:13'),
(30, 102, 'THE PERDALA SERVICE CO - OPERATIVE BANK LTD ; NEERCHAL', 'the-perdala-service-co-operative-bank-ltd-neerchal', 'Contact Number :- 04998 284027\r\nTHE PERDALA SERVICE CO - OPERATIVE BANK LTD ; NEERCHAL.', 103, NULL, NULL, 0.00, 'Kerala ', 'Kasaragod', 'Main Road , Neerchal , Kasaragod (Dist) , Kerala ,671321.', '671321', '04998 284027', NULL, 0, 1, 1, NULL, NULL, '1583571989_New Doc 2020-03-07 13.55.38_2.jpg', NULL, 1, 2, '2020-03-07 08:05:36', '2020-03-07 09:05:48'),
(65, 103, 'THE PERDALA SERVICE CO - OPERATIVE BANK LTD ; Manya', 'the-perdala-service-co-operative-bank-ltd-manya', 'Contact Number :- 04998 284027\r\nTHE PERDALA SERVICE CO - OPERATIVE BANK LTD ; Manya', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'Manya , Vidyanager ,Mundithdka Road ,\r\nKasaragod (Dist) , 671321', '671321', '04998 284027', NULL, 1, 1, 1, NULL, NULL, '1583573397_New Doc 2020-03-07 13.55.38_1.jpg', NULL, 1, 2, '2020-03-07 08:25:44', '2020-03-07 10:35:28'),
(53, 104, 'M.R. EARTH MOVERS BELA', 'mr-earth-movers-bela', 'Owner :- Robert D souza\r\nMobile Number :- 9745158131 ,  9496435131.\r\nM.R. EARTH MOVERS :- JCB, Tipper , Service & Compressors And Borewells ,\r\nContact For Your Needs Of JCB , Tipper Service Borewells And Four Wheel Rig Service At Resonable Rates .', 103, NULL, NULL, 0.00, 'Kerala', 'Kasaragod', 'Darbethadka , Bela , P.O .Bela , (Via) Kumbla , Kasaragod Dist . 671321 ', '671321', '9745158131 , 9496435131', NULL, 0, 1, 1, NULL, NULL, '1583574662_New Doc 2020-03-07 15.08.04_1.jpg', NULL, 1, 2, '2020-03-07 08:50:19', '2020-03-07 09:04:54'),
(55, 105, 'For Ayurvedic Treatment Of Kidny Stones, Bela', 'for-ayurvedic-treatment-of-kidny-stones-bela', 'Owner :- Robert D Souza \r\nMobile Number :- 9745158131 , 9496435131 .\r\nFor Ayurvedic Treatment Of Kidny Stones \r\nPlease Contact :- Robert D Souza ', 103, NULL, NULL, 0.00, 'Kerala', 'kasaragod', 'Darbethdka ,Bela , P.O .Bela , (Via) Kumbla , Kasaragod Dist . 671321', '671321', '9745158131 , 9496435131', NULL, 0, 1, 1, NULL, NULL, '1583575395_New Doc 2020-03-07 15.08.04_2.jpg', NULL, 1, 2, '2020-03-07 09:02:44', '2020-03-07 09:03:15'),
(34, 106, 'Rex Enterprises Seethangoli', 'rex-enterprises-hardware', '<p>Rex enterprises,seethangoli,kasargode. Puthige.. P.C. 671321, Manjeshwar, Kasaragod. Mobile: 04998246767</p>\r\n', 103, NULL, NULL, 0.00, 'KERALA', 'Seethangoli ', 'Rex enterprises,seethangoli,kasargode. Puthige.. P.C. 671321, Manjeshwar, Kasaragod. Mobile: 04998246767', '671321', '04998246767', NULL, 3, 1, 1, NULL, NULL, '1583580846_1583086419_Rex hardware Seethangoli1.jpg', NULL, 0, 2, '2020-03-07 10:32:53', '2020-03-07 10:34:14');

-- --------------------------------------------------------

--
-- Table structure for table `item_images`
--

CREATE TABLE `item_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `s3key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_id` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `item_images`
--

INSERT INTO `item_images` (`id`, `image`, `s3key`, `item_id`, `published`, `created_at`, `updated_at`) VALUES
(11, '517.png', NULL, 17, 1, '2020-01-04 04:45:56', '2020-01-04 04:45:56'),
(14, '791.jpg', NULL, 18, 1, '2020-01-07 09:41:09', '2020-01-07 09:41:09'),
(15, '552.jpeg', NULL, 19, 1, '2020-01-07 09:57:06', '2020-01-07 09:57:06'),
(19, '{{item.formData.filename}}', NULL, 23, 1, '2020-01-10 04:15:49', '2020-01-10 04:15:49'),
(22, '1111.jpg', NULL, 24, 1, '2020-01-30 12:54:20', '2020-01-30 12:54:20'),
(23, '64096-south-indian-bank-dna.jpg', NULL, 24, 1, '2020-01-30 12:54:20', '2020-01-30 12:54:20'),
(24, 'KSEB.jpg', NULL, 25, 1, '2020-02-03 11:56:24', '2020-02-03 11:56:24'),
(25, 'IMG-20200220-WA0034.jpg', NULL, 26, 1, '2020-02-20 06:54:06', '2020-02-20 06:54:06'),
(28, 'IMG_20200220_115108_428.jpg', NULL, 29, 1, '2020-02-20 09:35:44', '2020-02-20 09:35:44'),
(29, 'IMG-20200221-WA0023.jpg', NULL, 30, 1, '2020-02-21 08:21:06', '2020-02-21 08:21:06'),
(30, 'IMG-20200221-WA0068.jpg', NULL, 32, 1, '2020-02-21 08:49:47', '2020-02-21 08:49:47'),
(32, 'IMG_20200220_105907_511.jpg', NULL, 36, 1, '2020-02-21 10:34:16', '2020-02-21 10:34:16'),
(33, '549.jpg', NULL, 35, 1, '2020-02-22 04:47:59', '2020-02-22 04:47:59'),
(34, '763.jpg', NULL, 23, 1, '2020-02-22 05:23:12', '2020-02-22 05:23:12'),
(35, 'IMG_20200220_113315_675.jpg', NULL, 37, 1, '2020-02-22 08:14:36', '2020-02-22 08:14:36'),
(36, 'New Doc 2020-02-22 15.06.00_1.jpg', NULL, 38, 1, '2020-02-22 08:48:39', '2020-02-22 08:48:39'),
(37, 'New Doc 2020-02-22 15.22.38.jpg', NULL, 39, 1, '2020-02-22 09:04:44', '2020-02-22 09:04:44'),
(38, 'New Doc 2020-02-22 15.39.01_1.jpg', NULL, 40, 1, '2020-02-22 09:18:20', '2020-02-22 09:18:20'),
(39, 'New Doc 2020-02-22 16.00.04_1.jpg', NULL, 41, 1, '2020-02-22 09:30:28', '2020-02-22 09:30:28'),
(40, 'New Doc 2020-02-22 16.06.01_1.jpg', NULL, 42, 1, '2020-02-22 09:46:53', '2020-02-22 09:46:53'),
(41, '1582449803_aaraama3.jpg', NULL, 43, 1, '2020-02-23 08:23:23', '2020-02-23 08:23:23'),
(42, '1582449803_aarama 1.jpg', NULL, 43, 1, '2020-02-23 08:23:23', '2020-02-23 08:23:23'),
(43, '1582449803_aarama.jpg', NULL, 43, 1, '2020-02-23 08:23:23', '2020-02-23 08:23:23'),
(44, '1582461923_POOJA.jpg', NULL, 44, 1, '2020-02-23 11:45:23', '2020-02-23 11:45:23'),
(46, '1582532778_New Doc 2020-02-24 13.46.53.jpg', NULL, 46, 1, '2020-02-24 07:26:18', '2020-02-24 07:26:18'),
(47, '1582533510_New Doc 2020-02-24 13.58.19.jpg', NULL, 47, 1, '2020-02-24 07:38:30', '2020-02-24 07:38:30'),
(48, '1582534004_New Doc 2020-02-24 14.09.40.jpg', NULL, 48, 1, '2020-02-24 07:46:44', '2020-02-24 07:46:44'),
(49, '1582534563_New Doc 2020-02-24 14.19.44.jpg', NULL, 49, 1, '2020-02-24 07:56:03', '2020-02-24 07:56:03'),
(50, '1582535228_New Doc 2020-02-24 14.28.00_1.jpg', NULL, 50, 1, '2020-02-24 08:07:08', '2020-02-24 08:07:08'),
(51, '1582535708_New Doc 2020-02-24 14.38.34.jpg', NULL, 51, 1, '2020-02-24 08:15:08', '2020-02-24 08:15:08'),
(52, '1582537147_New Doc 2020-02-24 14.48.02_1.jpg', NULL, 52, 1, '2020-02-24 08:39:07', '2020-02-24 08:39:07'),
(53, '1582538174_New Doc 2020-02-24 15.14.42.jpg', NULL, 53, 1, '2020-02-24 08:56:14', '2020-02-24 08:56:14'),
(54, '1582539491_New Doc 2020-02-24 15.33.58.jpg', NULL, 54, 1, '2020-02-24 09:18:11', '2020-02-24 09:18:11'),
(55, '1582540013_New Doc 2020-02-24 15.33.58_2.jpg', NULL, 55, 1, '2020-02-24 09:26:53', '2020-02-24 09:26:53'),
(56, '1582615478_New Doc 2020-02-25 12.45.57.jpg', NULL, 56, 1, '2020-02-25 06:24:38', '2020-02-25 06:24:38'),
(57, '1582619930_New Doc 2020-02-25 13.59.17.jpg', NULL, 57, 1, '2020-02-25 07:38:50', '2020-02-25 07:38:50'),
(58, '1582707744_New Doc 2020-02-26 14.07.42.jpg', NULL, 58, 1, '2020-02-26 08:02:24', '2020-02-26 08:02:24'),
(59, '1582708777_New Doc 2020-02-26 14.49.10.jpg', NULL, 59, 1, '2020-02-26 08:19:37', '2020-02-26 08:19:37'),
(60, '1582709417_New Doc 2020-02-26 14.50.51.jpg', NULL, 60, 1, '2020-02-26 08:30:17', '2020-02-26 08:30:17'),
(61, '1582710502_New Doc 2020-02-26 11.12.11_1.jpg', NULL, 61, 1, '2020-02-26 08:48:22', '2020-02-26 08:48:22'),
(62, '1582711616_AF1QipM8t2aRvULZugUdGalL-lDxHNks3cYNifZder1R=s396-k-no.jpg', NULL, 62, 1, '2020-02-26 09:06:56', '2020-02-26 09:06:56'),
(63, '1582736322_IMG-20200226-WA0052.jpg', NULL, 65, 1, '2020-02-26 15:58:42', '2020-02-26 15:58:42'),
(64, '1582737373_kasargod-signature-vidyanagar-kasaragod-motorcycle-dealers-ahaevxsn99.jpg', NULL, 66, 1, '2020-02-26 16:16:13', '2020-02-26 16:16:13'),
(65, '1582787772_AF1QipMktbns0QVvnYf9AjC_ZsdxB76vg7rSV8SDDV_X=s397-k-no.jpg', NULL, 67, 1, '2020-02-27 06:16:12', '2020-02-27 06:16:12'),
(66, '1582794026_AF1QipMG1d18jECcHwGoWKIThnaGNYoJkMm-v-DA-pzD=s402-k-no.jpg', NULL, 68, 1, '2020-02-27 08:00:26', '2020-02-27 08:00:26'),
(67, '1582794876_AF1QipOowl0HDD8V34iLb7eiVET8AZFg5LsXoEPZXr2q=s455-k-no.jpg', NULL, 69, 1, '2020-02-27 08:14:36', '2020-02-27 08:14:36'),
(68, '1582797557_1582796986522.jpg', NULL, 70, 1, '2020-02-27 08:59:17', '2020-02-27 08:59:17'),
(69, '1582881343_New Doc 2020-02-28 14.17.49_1.jpg', NULL, 71, 1, '2020-02-28 08:15:43', '2020-02-28 08:15:43'),
(70, '1582908569_New Doc 2020-02-28 14.17.22.jpg', NULL, 72, 1, '2020-02-28 15:49:29', '2020-02-28 15:49:29'),
(71, '1582953454_New Doc 2020-02-28 10.49.13_1.jpg', NULL, 73, 1, '2020-02-29 04:17:34', '2020-02-29 04:17:34'),
(72, '1582956004_New Doc 2020-02-29 11.26.24_1.jpg', NULL, 74, 1, '2020-02-29 05:00:04', '2020-02-29 05:00:04'),
(73, '1583070680_kannur hardware seethangoli.jpg', NULL, 75, 1, '2020-03-01 12:51:20', '2020-03-01 12:51:20'),
(74, '1583070680_kannur hardware seethangoli1.jpg', NULL, 75, 1, '2020-03-01 12:51:20', '2020-03-01 12:51:20'),
(75, '1583070680_kannur hardware seethangoli3.jpg', NULL, 75, 1, '2020-03-01 12:51:20', '2020-03-01 12:51:20'),
(77, '1583084110_vinu 4.jpg', NULL, 76, 1, '2020-03-01 16:35:10', '2020-03-01 16:35:10'),
(78, '1583084110_vinu studio perla 1.jpg', NULL, 76, 1, '2020-03-01 16:35:10', '2020-03-01 16:35:10'),
(79, '1583084110_vinu studio perla.jpg', NULL, 76, 1, '2020-03-01 16:35:10', '2020-03-01 16:35:10'),
(80, '1583084110_vinu3.jpg', NULL, 76, 1, '2020-03-01 16:35:10', '2020-03-01 16:35:10'),
(86, '1583128962_VEEN ARRANGERS SEETHANGOLI.jpg', NULL, 78, 1, '2020-03-02 05:02:42', '2020-03-02 05:02:42'),
(87, '1583128962_VEEN ARRANGERS SEETHANGOLI1.jpg', NULL, 78, 1, '2020-03-02 05:02:42', '2020-03-02 05:02:42'),
(88, '1583128962_VEEN ARRANGERS SEETHANGOLI3.jpg', NULL, 78, 1, '2020-03-02 05:02:42', '2020-03-02 05:02:42'),
(89, '1583128962_VEEN ARRANGERS SEETHANGOLI4.jpg', NULL, 78, 1, '2020-03-02 05:02:42', '2020-03-02 05:02:42'),
(90, '1583128962_VEEN ARRANGERS SEETHANGOLI6.jpg', NULL, 78, 1, '2020-03-02 05:02:42', '2020-03-02 05:02:42'),
(91, '1583225484_neetha bus kasaragod.jpg', NULL, 79, 1, '2020-03-03 07:51:24', '2020-03-03 07:51:24'),
(92, '1583225484_neetha bus kollangana.jpg', NULL, 79, 1, '2020-03-03 07:51:24', '2020-03-03 07:51:24'),
(93, '1583230588_New Doc 2020-03-03 15.35.19_1.jpg', NULL, 80, 1, '2020-03-03 09:16:28', '2020-03-03 09:16:28'),
(94, '1583231898_New Doc 2020-03-03 15.58.06_1.jpg', NULL, 81, 1, '2020-03-03 09:38:18', '2020-03-03 09:38:18'),
(96, '1583314743_New Doc 2020-03-04 14.59.51_1.jpg', NULL, 83, 1, '2020-03-04 08:39:03', '2020-03-04 08:39:03'),
(97, '1583315521_New Doc 2020-03-04 12.48.03_2.jpg', NULL, 84, 1, '2020-03-04 08:52:01', '2020-03-04 08:52:01'),
(98, '1583316051_New Doc 2020-03-04 12.48.03_1.jpg', NULL, 85, 1, '2020-03-04 09:00:51', '2020-03-04 09:00:51'),
(99, '1583316832_New Doc 2020-03-04 12.48.03_4.jpg', NULL, 86, 1, '2020-03-04 09:13:52', '2020-03-04 09:13:52'),
(100, '1583318331_New Doc 2020-03-04 15.59.39_1.jpg', NULL, 87, 1, '2020-03-04 09:38:51', '2020-03-04 09:38:51'),
(101, '1583319390_New Doc 2020-03-04 16.24.26_1(2).jpg', NULL, 88, 1, '2020-03-04 09:56:30', '2020-03-04 09:56:30'),
(102, '1583320685_IMG-20200303-WA0072.jpg', NULL, 89, 1, '2020-03-04 10:18:05', '2020-03-04 10:18:05'),
(103, '1583397394_New Doc 2020-03-05 14.04.41_1.jpg', NULL, 90, 1, '2020-03-05 07:36:34', '2020-03-05 07:36:34'),
(104, '1583417398_New Doc 2020-03-05 19.38.18_2.jpg', NULL, 91, 1, '2020-03-05 13:09:58', '2020-03-05 13:09:58'),
(105, '1583418037_New Doc 2020-03-05 14.51.47_2.jpg', NULL, 92, 1, '2020-03-05 13:20:37', '2020-03-05 13:20:37'),
(106, '1583419443_New Doc 2020-03-05 15.10.19_1.jpg', NULL, 93, 1, '2020-03-05 13:44:03', '2020-03-05 13:44:03'),
(107, '1583484497_New Doc 2020-03-06 14.17.10_1.jpg', NULL, 95, 1, '2020-03-06 07:48:17', '2020-03-06 07:48:17'),
(108, '1583485345_New Doc 2020-03-06 14.17.10_1.jpg', NULL, 96, 1, '2020-03-06 08:02:25', '2020-03-06 08:02:25'),
(109, '1583486366_New Doc 2020-03-06 14.34.52_1.jpg', NULL, 97, 1, '2020-03-06 08:19:26', '2020-03-06 08:19:26'),
(114, '1583487374_New Doc 2020-03-06 14.51.14_1(2).jpg', NULL, 98, 1, '2020-03-06 08:36:14', '2020-03-06 08:36:14'),
(115, '1583489655_New Doc 2020-03-06 15.36.57_1.jpg', NULL, 99, 1, '2020-03-06 09:14:15', '2020-03-06 09:14:15'),
(117, '1583571191_New Doc 2020-03-07 14.21.05_2.jpg', NULL, 101, 1, '2020-03-07 07:53:11', '2020-03-07 07:53:11'),
(118, '1583571989_New Doc 2020-03-07 13.55.38_2.jpg', NULL, 102, 1, '2020-03-07 08:06:29', '2020-03-07 08:06:29'),
(119, '1583573397_New Doc 2020-03-07 13.55.38_1.jpg', NULL, 103, 1, '2020-03-07 08:29:57', '2020-03-07 08:29:57'),
(120, '1583574662_New Doc 2020-03-07 15.08.04_1.jpg', NULL, 104, 1, '2020-03-07 08:51:02', '2020-03-07 08:51:02'),
(121, '1583575395_New Doc 2020-03-07 15.08.04_2.jpg', NULL, 105, 1, '2020-03-07 09:03:15', '2020-03-07 09:03:15'),
(122, '1583580846_1583086419_Rex hardware Seethangoli1.jpg', NULL, 106, 1, '2020-03-07 10:34:06', '2020-03-07 10:34:06'),
(123, '1583580846_1583086419_Rex hardware Seethangoli2.jpg', NULL, 106, 1, '2020-03-07 10:34:06', '2020-03-07 10:34:06'),
(124, '1583580846_Rex hardware Seethangoli.jpg', NULL, 106, 1, '2020-03-07 10:34:06', '2020-03-07 10:34:06'),
(125, '1583582510_1583569085_New Doc 2020-03-07 13.35.24_1.jpg', NULL, 100, 1, '2020-03-07 11:01:50', '2020-03-07 11:01:50'),
(126, '1583582510_royal catering kumbla.jpg', NULL, 100, 1, '2020-03-07 11:01:50', '2020-03-07 11:01:50'),
(127, '1583582510_royal catering kumblaa.jpg', NULL, 100, 1, '2020-03-07 11:01:50', '2020-03-07 11:01:50');

-- --------------------------------------------------------

--
-- Table structure for table `mailtemplates`
--

CREATE TABLE `mailtemplates` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `event` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mailtemplates`
--

INSERT INTO `mailtemplates` (`id`, `title`, `event`, `body`, `published`, `created_at`, `updated_at`) VALUES
(1, 'On Create New Item', 'onAdSave', 'Hello Dear, Welcome', 0, '2019-12-22 18:35:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_02_27_000000_create_categories_table', 1),
('2016_02_27_055618_create_items_table', 1),
('2016_02_27_112130_create_countries_table', 1),
('2016_03_03_093238_create_item_images_table', 1),
('2016_03_24_091651_create_mailtemplates_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `avatar`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$KP.q57FF60/AXPuu5WttxuhIf6bCOW6Iu3rMib1R8E49aVujqBck6', NULL, NULL, 'admin', 'LjtrQqIYJ5eB0DRP9aSzo4Xrx6zeSxLjCweDUA1iKo8L0IFQ9vFV7LmP8VGX', '2019-12-22 18:35:04', '2020-02-24 10:00:05'),
(2, 'sathish', 'sathish@cobrasoftwares.in', '$2y$10$KP.q57FF60/AXPuu5WttxuhIf6bCOW6Iu3rMib1R8E49aVujqBck6', NULL, NULL, 'user', 'BnZiUyK3psvJFXFXheiCi9z5k4AelhhQ4udtWWX64d5UdxSvgmn4zVl43xue', '2019-12-22 18:40:33', '2019-12-22 19:54:33'),
(3, 'Rakesh', 'rakesh@gg.com', '$2y$10$8QRexcyFKWZSvrKTcYmy2.bvNklmzI/YPoKocf/hOSRQjh6o8sX.y', NULL, NULL, 'user', 'LlzjqMZJm1trvreHebZCeZI5yA7tt7YAVDtCHD8xB12w4HF0YF0776dlpvF2', '2020-01-03 10:49:07', '2020-01-03 10:49:21'),
(4, 'Jeevan Kishore', 'jkdpjkdp@gmail.com', '$2y$10$cXqtFJoWoKvParD2W0JwvOlTs3GrMMjAlCjtTwiP5uEkFn8wT0/ay', NULL, NULL, 'user', 'AHmx5AmwohVAvR4kJVyjoCeB9m3rCUzs5NOoEozr40D7aAoIa2lcuZPqGjZ0', '2020-01-09 06:54:23', '2020-01-09 07:02:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_category_id_foreign` (`category_id`),
  ADD KEY `items_user_id_foreign` (`user_id`);

--
-- Indexes for table `item_images`
--
ALTER TABLE `item_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mailtemplates`
--
ALTER TABLE `mailtemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `item_images`
--
ALTER TABLE `item_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `mailtemplates`
--
ALTER TABLE `mailtemplates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `items_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
