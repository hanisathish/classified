-- phpMyAdmin SQL Dump
-- version 4.0.10deb1ubuntu0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 06, 2020 at 10:05 AM
-- Server version: 5.6.33-0ubuntu0.14.04.1
-- PHP Version: 7.1.20-1+ubuntu14.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `classimax`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=64 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `alias`, `parent_id`, `published`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Automobiles', 'automobiles', 0, 1, 'automobiles.png', '2019-12-22 18:35:07', NULL),
(2, 'Car', 'car', 1, 1, '', '2019-12-22 18:35:07', NULL),
(3, 'Bike', 'bike', 1, 1, '', '2019-12-22 18:35:07', NULL),
(4, 'Bota', 'boat', 1, 1, '', '2019-12-22 18:35:07', NULL),
(5, 'Parts & Accessories', 'parts-accessories', 1, 1, '', '2019-12-22 18:35:07', NULL),
(6, 'All Others', 'all-others', 1, 1, '', '2019-12-22 18:35:07', NULL),
(7, 'Electronics', 'electronics', 0, 1, 'electronics.png', '2019-12-22 18:35:07', NULL),
(8, 'Cell Phones', 'cell-phones', 7, 1, '', '2019-12-22 18:35:07', NULL),
(9, 'Computer & Tech', 'computer-teh', 7, 1, '', '2019-12-22 18:35:07', NULL),
(10, 'Photo & Video', 'photo-video', 7, 1, '', '2019-12-22 18:35:07', NULL),
(11, 'Household Appliances', 'household-appliances', 7, 1, '', '2019-12-22 18:35:07', NULL),
(12, 'All Others', 'all-others', 7, 1, '', '2019-12-22 18:35:07', NULL),
(13, 'For Sale', 'for-sale', 0, 1, 'sale.png', '2019-12-22 18:35:07', NULL),
(14, 'Baby & Kids Stuff', 'baby-kids-stuff', 13, 1, '', '2019-12-22 18:35:07', NULL),
(15, 'Bycycles', 'bycylies', 13, 1, '', '2019-12-22 18:35:07', NULL),
(16, 'Books & Magazines', 'books-magazines', 13, 1, '', '2019-12-22 18:35:07', NULL),
(17, 'Clothes & Accessories', 'clothes-accessories', 13, 1, '', '2019-12-22 18:35:07', NULL),
(18, 'Health & Beauty', 'health-beaury', 13, 1, '', '2019-12-22 18:35:07', NULL),
(19, 'Jewelry & Watches', 'jewwelry-watches', 13, 1, '', '2019-12-22 18:35:07', NULL),
(20, 'Movie & Music', 'movie-music', 13, 1, '', '2019-12-22 18:35:07', NULL),
(21, 'Sports', 'sports', 13, 1, '', '2019-12-22 18:35:07', NULL),
(22, 'Everything Else', 'everything-else', 13, 1, '', '2019-12-22 18:35:07', NULL),
(23, 'Housing', 'housing', 0, 1, 'housing.png', '2019-12-22 18:35:07', NULL),
(24, 'Appartmenst for rent', 'aappartment-for-rent', 23, 1, '', '2019-12-22 18:35:07', NULL),
(25, 'Commerial', 'commercial', 23, 1, '', '2019-12-22 18:35:07', NULL),
(26, 'Homes for rent', 'homes-for-rent', 23, 1, '', '2019-12-22 18:35:07', NULL),
(27, 'Homes for sale', 'homes-for-sale', 23, 1, '', '2019-12-22 18:35:07', NULL),
(28, 'Lands', 'lands', 23, 1, '', '2019-12-22 18:35:07', NULL),
(29, 'Jobs', 'jobs', 0, 1, 'jobs.png', '2019-12-22 18:35:07', NULL),
(30, 'Account & Finance', 'account-finance', 29, 1, '', '2019-12-22 18:35:07', NULL),
(31, 'Administrative & Office', 'administrative-office', 29, 1, '', '2019-12-22 18:35:07', NULL),
(32, 'Biotech & Science', 'biotech-science', 29, 1, '', '2019-12-22 18:35:07', NULL),
(33, 'Business', 'business', 29, 1, '', '2019-12-22 18:35:07', NULL),
(34, 'Construction', 'construction', 29, 1, '', '2019-12-22 18:35:07', NULL),
(35, 'Enginerring', 'enginerring', 29, 1, '', '2019-12-22 18:35:07', NULL),
(36, 'Education', 'education', 29, 1, '', '2019-12-22 18:35:07', NULL),
(37, 'Hospitaity', 'hospitaity', 29, 1, '', '2019-12-22 18:35:07', NULL),
(38, 'Graphics & Web design', 'graphics-web-design', 29, 1, '', '2019-12-22 18:35:07', NULL),
(39, 'Information Techhnology', 'information-techhnology', 29, 1, '', '2019-12-22 18:35:07', NULL),
(40, 'Leagal', 'leagal', 29, 1, '', '2019-12-22 18:35:07', NULL),
(41, 'Marketing', 'marketing', 29, 1, '', '2019-12-22 18:35:07', NULL),
(42, 'Medicine', 'medicine', 29, 1, '', '2019-12-22 18:35:07', NULL),
(43, 'Sales', 'sales', 29, 1, '', '2019-12-22 18:35:07', NULL),
(44, 'Writing', 'writing', 29, 1, '', '2019-12-22 18:35:07', NULL),
(45, 'Everything Else', 'everything-else', 29, 1, '', '2019-12-22 18:35:07', NULL),
(46, 'Pets', 'automobiles', 0, 1, 'pets.png', '2019-12-22 18:35:07', NULL),
(47, 'Animal Service', 'animal-service', 46, 1, '', '2019-12-22 18:35:07', NULL),
(48, 'Bids', 'birds', 46, 1, '', '2019-12-22 18:35:07', NULL),
(49, 'Cats & Kitten', 'cats-kittne', 46, 1, '', '2019-12-22 18:35:07', NULL),
(50, 'Dogs & Puppies', 'dog-puppies', 46, 1, '', '2019-12-22 18:35:07', NULL),
(51, 'Lost & Found', 'lost-found', 46, 1, '', '2019-12-22 18:35:07', NULL),
(52, 'Other Pets', 'other-pets', 46, 1, '', '2019-12-22 18:35:07', NULL),
(53, 'Services', 'automobiles', 0, 1, 'service.png', '2019-12-22 18:35:07', NULL),
(54, 'Art & Decore', 'art-decore', 53, 1, '', '2019-12-22 18:35:07', NULL),
(55, 'Beauty & Health', 'beauty-health', 53, 1, '', '2019-12-22 18:35:07', NULL),
(56, 'Cleaning & Maintenane', 'cleaning-maintenane', 53, 1, '', '2019-12-22 18:35:07', NULL),
(57, 'Computer', 'computer', 53, 1, '', '2019-12-22 18:35:07', NULL),
(58, 'Events & Occasions', 'events-occasions', 53, 1, '', '2019-12-22 18:35:07', NULL),
(59, 'Financial & Mortgages', 'financial-mortgages', 53, 1, '', '2019-12-22 18:35:07', NULL),
(60, 'Hotel & Airlines', 'hotel-airlines', 53, 1, '', '2019-12-22 18:35:07', NULL),
(61, 'Legal & Lawyer', 'legal-lawyer', 53, 1, '', '2019-12-22 18:35:07', NULL),
(62, 'Repari', 'repari', 53, 1, '', '2019-12-22 18:35:07', NULL),
(63, 'Others', 'others', 53, 1, '', '2019-12-22 18:35:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `published` tinyint(4) NOT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=250 ;

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
(55, 'Côte d''Ivoire', 'CIV', 1, 'XOF', 'franc', '2019-12-22 18:35:07', NULL),
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
(118, 'Korea, Democratic People''s Republic of', 'PRK', 1, 'KPW', '₩', '2019-12-22 18:35:07', NULL),
(119, 'Korea, Republic of', 'KOR', 1, 'KPW', '₩', '2019-12-22 18:35:07', NULL),
(120, 'Kuwait', 'KWT', 1, 'KWD', 'د.ك', '2019-12-22 18:35:07', NULL),
(121, 'Kyrgyzstan', 'KGZ', 1, 'KGS', 'KGS', '2019-12-22 18:35:07', NULL),
(122, 'Lao People''s Democratic Republic', 'LAO', 1, 'LAK', '₭', '2019-12-22 18:35:07', NULL),
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

CREATE TABLE IF NOT EXISTS `items` (
  `category_id` int(10) unsigned NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `user_id` int(10) unsigned NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `s3key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `items_category_id_foreign` (`category_id`),
  KEY `items_user_id_foreign` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`category_id`, `id`, `title`, `alias`, `description`, `country_id`, `region_id`, `ispricable`, `price`, `address1`, `address2`, `address3`, `zipcode`, `phone`, `tags`, `views`, `published`, `user_id`, `lat`, `lng`, `image`, `s3key`, `created_at`, `updated_at`) VALUES
(2, 1, 'Toyota Pickup Truck', 'toyota-pickup-truck', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mattis quam mauris, a consectetur enim dapibus a. In ullamcorper luctus feugiat. Ut velit libero, rhoncus eget fermentum ac, finibus non lorem. Sed id lectus elit.</p>\r\n', 1, NULL, NULL, 250.00, 'Kar', 'Manga', 'Dedede', '567', '123', NULL, 1, 1, 1, NULL, NULL, '701.jpg', NULL, '2019-12-22 18:35:08', '2020-01-05 06:17:59'),
(2, 2, 'Farari-New', 'farari', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mattis quam mauris, a consectetur enim dapibus a. In ullamcorper luctus feugiat. Ut velit libero, rhoncus eget fermentum ac, finibus non lorem. Sed id lectus elit.</p>\r\n', 1, NULL, NULL, 2000.00, '', '', '', '', NULL, NULL, 0, 1, 1, NULL, NULL, '851.jpg', NULL, '2019-12-22 18:35:08', '2020-01-04 04:50:45'),
(57, 3, 'Mobile Computer', 'mobile-computer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mattis quam mauris, a consectetur enim dapibus a. In ullamcorper luctus feugiat. Ut velit libero, rhoncus eget fermentum ac, finibus non lorem. Sed id lectus elit.', 10, NULL, NULL, 50.00, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, '2019-12-22 18:35:08', NULL),
(11, 4, 'Freezer', 'freezer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mattis quam mauris, a consectetur enim dapibus a. In ullamcorper luctus feugiat. Ut velit libero, rhoncus eget fermentum ac, finibus non lorem. Sed id lectus elit.', 5, NULL, NULL, 550.00, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, '2019-12-22 18:35:08', NULL),
(11, 5, 'Appliances', 'appliances', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mattis quam mauris, a consectetur enim dapibus a. In ullamcorper luctus feugiat. Ut velit libero, rhoncus eget fermentum ac, finibus non lorem. Sed id lectus elit.', 5, NULL, NULL, 470.00, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, '2019-12-22 18:35:08', NULL),
(50, 6, 'Labardoodles', 'labardoodles', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mattis quam mauris, a consectetur enim dapibus a. In ullamcorper luctus feugiat. Ut velit libero, rhoncus eget fermentum ac, finibus non lorem. Sed id lectus elit.', 15, NULL, NULL, 400.00, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, '2019-12-22 18:35:08', NULL),
(50, 7, 'Australian Shepherd', 'australian-shepherd', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mattis quam mauris, a consectetur enim dapibus a. In ullamcorper luctus feugiat. Ut velit libero, rhoncus eget fermentum ac, finibus non lorem. Sed id lectus elit.', 15, NULL, NULL, 350.00, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, '2019-12-22 18:35:08', NULL),
(26, 8, 'Furnished Ac Flats', 'furnished-ac-flats', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mattis quam mauris, a consectetur enim dapibus a. In ullamcorper luctus feugiat. Ut velit libero, rhoncus eget fermentum ac, finibus non lorem. Sed id lectus elit.', 15, NULL, NULL, 14000.00, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, '2019-12-22 18:35:08', NULL),
(26, 9, 'Marathalli serviced apartments', 'marathalli-serviced-apartments', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mattis quam mauris, a consectetur enim dapibus a. In ullamcorper luctus feugiat. Ut velit libero, rhoncus eget fermentum ac, finibus non lorem. Sed id lectus elit.', 15, NULL, NULL, 22000.00, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, '2019-12-22 18:35:08', NULL),
(39, 10, 'Programming Experts', 'programming-experts', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mattis quam mauris, a consectetur enim dapibus a. In ullamcorper luctus feugiat. Ut velit libero, rhoncus eget fermentum ac, finibus non lorem. Sed id lectus elit.', 15, NULL, NULL, 10000.00, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, '2019-12-22 18:35:08', NULL),
(35, 11, 'Composite Process Engineer', 'composite-process-engineer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mattis quam mauris, a consectetur enim dapibus a. In ullamcorper luctus feugiat. Ut velit libero, rhoncus eget fermentum ac, finibus non lorem. Sed id lectus elit.', 11, NULL, NULL, 10000.00, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, '2019-12-22 18:35:08', NULL),
(35, 12, 'Laraevl Developer', 'laraevl-developer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mattis quam mauris, a consectetur enim dapibus a. In ullamcorper luctus feugiat. Ut velit libero, rhoncus eget fermentum ac, finibus non lorem. Sed id lectus elit.', 25, NULL, NULL, 10000.00, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, '2019-12-22 18:35:08', NULL),
(2, 13, 'Car 3', 'car-3', '<p>Car 3 asdad ada</p>\r\n', 1, NULL, NULL, 111.00, '', '', '', '', NULL, NULL, 2, 1, 1, NULL, NULL, NULL, NULL, '2019-12-22 18:45:33', '2019-12-22 18:51:50'),
(2, 14, 'Car 4', 'car-4', '<p>Car 4 adasd</p>\r\n', 1, NULL, NULL, 11.00, '', '', '', '', NULL, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, '2019-12-22 18:45:53', '2019-12-22 18:45:53'),
(2, 15, 'Sathish Posted', '', 'Sathish Posted Description asd adasd', 1, NULL, NULL, 22.00, '', '', '', '', NULL, NULL, 2, 1, 2, NULL, NULL, '', NULL, '2019-12-22 18:53:33', '2019-12-22 20:01:00'),
(1, 16, 'Rock', '', 'Rock ada', 1, NULL, NULL, 21.00, '', '', '', '', NULL, NULL, 0, 1, 2, NULL, NULL, '', NULL, '2019-12-22 20:00:00', '2019-12-22 20:00:00'),
(17, 17, 'Jeans', 'jeans-tag', '<p>asdads ad</p>\r\n', 103, NULL, NULL, 499.00, '', '', '', '', NULL, NULL, 0, 1, 1, NULL, NULL, '517.png', NULL, '2020-01-04 04:45:10', '2020-01-04 04:46:29'),
(41, 18, 'Tin Bear', 'tin-bear', '<p>Tin Bear asd dasa</p>\r\n', 103, NULL, NULL, 0.00, 'TN', 'Chennai', 'Anaka puthur', '600028', '9876', NULL, 0, 1, 1, NULL, NULL, '484.jpg', NULL, '2020-01-05 06:20:02', '2020-01-05 06:20:02');

-- --------------------------------------------------------

--
-- Table structure for table `item_images`
--

CREATE TABLE IF NOT EXISTS `item_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `s3key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_id` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `item_images`
--

INSERT INTO `item_images` (`id`, `image`, `s3key`, `item_id`, `published`, `created_at`, `updated_at`) VALUES
(1, '862.jpg', NULL, 13, 1, '2019-12-22 18:45:33', '2019-12-22 18:45:33'),
(2, '969.png', NULL, 14, 1, '2019-12-22 18:45:53', '2019-12-22 18:45:53'),
(3, '193.png', NULL, 1, 1, '2019-12-22 18:47:54', '2019-12-22 18:47:54'),
(4, '193.png', NULL, 13, 1, '2019-12-22 18:47:54', '2019-12-22 18:47:54'),
(5, '969.png', NULL, 13, 1, '2019-12-22 18:45:53', '2019-12-22 18:45:53'),
(6, '', NULL, 15, 1, '2019-12-22 18:53:33', '2019-12-22 18:53:33'),
(7, '', NULL, 15, 1, '2019-12-22 18:53:33', '2019-12-22 18:53:33'),
(8, '', NULL, 15, 1, '2019-12-22 18:53:33', '2019-12-22 18:53:33'),
(9, '', NULL, 16, 1, '2019-12-22 20:00:00', '2019-12-22 20:00:00'),
(10, '', NULL, 16, 1, '2019-12-22 20:00:00', '2019-12-22 20:00:00'),
(11, '517.png', NULL, 17, 1, '2020-01-04 04:45:56', '2020-01-04 04:45:56'),
(12, '701.jpg', NULL, 1, 1, '2020-01-04 04:50:05', '2020-01-04 04:50:05'),
(13, '851.jpg', NULL, 2, 1, '2020-01-04 04:50:45', '2020-01-04 04:50:45'),
(14, '484.jpg', NULL, 18, 1, '2020-01-05 06:20:02', '2020-01-05 06:20:02');

-- --------------------------------------------------------

--
-- Table structure for table `mailtemplates`
--

CREATE TABLE IF NOT EXISTS `mailtemplates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `event` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mailtemplates`
--

INSERT INTO `mailtemplates` (`id`, `title`, `event`, `body`, `published`, `created_at`, `updated_at`) VALUES
(1, 'On Create New Item', 'onAdSave', 'Hello Dear, Welcome', 0, '2019-12-22 18:35:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
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

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `avatar`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$KP.q57FF60/AXPuu5WttxuhIf6bCOW6Iu3rMib1R8E49aVujqBck6', NULL, NULL, 'admin', 'hreM2sb279HLE4fnmafIqSj0anyu2YgwbQnERuUtfU7o6eJo5i7CxrRHojBl', '2019-12-22 18:35:04', '2020-01-04 04:35:13'),
(2, 'sathish', 'sathish@cobrasoftwares.in', '$2y$10$KP.q57FF60/AXPuu5WttxuhIf6bCOW6Iu3rMib1R8E49aVujqBck6', NULL, NULL, 'user', 'BnZiUyK3psvJFXFXheiCi9z5k4AelhhQ4udtWWX64d5UdxSvgmn4zVl43xue', '2019-12-22 18:40:33', '2019-12-22 19:54:33'),
(3, 'Rakesh', 'rakesh@gg.com', '$2y$10$8QRexcyFKWZSvrKTcYmy2.bvNklmzI/YPoKocf/hOSRQjh6o8sX.y', NULL, NULL, 'user', 'LlzjqMZJm1trvreHebZCeZI5yA7tt7YAVDtCHD8xB12w4HF0YF0776dlpvF2', '2020-01-03 10:49:07', '2020-01-03 10:49:21');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `items_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
