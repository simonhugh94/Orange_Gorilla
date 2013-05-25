-- phpMyAdmin SQL Dump
-- version 3.5.8.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 25, 2013 at 01:12 PM
-- Server version: 5.5.31-0ubuntu0.13.04.1
-- PHP Version: 5.4.9-4ubuntu2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Orange_Gorilla`
--

-- --------------------------------------------------------

--
-- Table structure for table `Continents`
--

CREATE TABLE IF NOT EXISTS `Continents` (
  `code` char(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Continent code',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Population` int(10) unsigned DEFAULT NULL COMMENT 'May not be up to date',
  `Area` int(10) unsigned DEFAULT NULL COMMENT 'Measured in: km^2',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Continents`
--

INSERT INTO `Continents` (`code`, `name`, `Population`, `Area`) VALUES
('AF', 'Africa', 1032532974, 30221532),
('AN', 'Antarctica', NULL, 14000000),
('AS', 'Asia', 4164252000, 44579000),
('EU', 'Europe', 739165030, 10180000),
('NA', 'North America', 528720588, 24709000),
('OC', 'Oceania', 35670000, 8525989),
('SA', 'South America', 387489196, 17840000);

-- --------------------------------------------------------

--
-- Table structure for table `Countries`
--

CREATE TABLE IF NOT EXISTS `Countries` (
  `code` char(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Two-letter country code (ISO 3166-1 alpha-2)',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'English country name',
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Full English country name',
  `iso3` char(3) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Three-letter country code (ISO 3166-1 alpha-3)',
  `number` smallint(3) unsigned zerofill NOT NULL COMMENT 'Three-digit country number (ISO 3166-1 numeric)',
  `continent_code` char(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Continents.code',
  `Population` int(10) unsigned DEFAULT NULL COMMENT 'May not be up to date',
  `Area` int(10) unsigned DEFAULT NULL COMMENT 'Measured in: km^2',
  PRIMARY KEY (`code`),
  UNIQUE KEY `iso3` (`iso3`),
  UNIQUE KEY `number` (`number`),
  KEY `continent_code` (`continent_code`),
  KEY `name` (`name`),
  KEY `full_name` (`full_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Countries`
--

INSERT INTO `Countries` (`code`, `name`, `full_name`, `iso3`, `number`, `continent_code`, `Population`, `Area`) VALUES
('AD', 'Andorra', 'Principality of Andorra', 'AND', 020, 'EU', NULL, NULL),
('AE', 'United Arab Emirates', 'United Arab Emirates', 'ARE', 784, 'AS', NULL, NULL),
('AF', 'Afghanistan', 'Islamic Republic of Afghanistan', 'AFG', 004, 'AS', NULL, NULL),
('AG', 'Antigua and Barbuda', 'Antigua and Barbuda', 'ATG', 028, 'NA', NULL, NULL),
('AI', 'Anguilla', 'Anguilla', 'AIA', 660, 'NA', NULL, NULL),
('AL', 'Albania', 'Republic of Albania', 'ALB', 008, 'EU', NULL, NULL),
('AM', 'Armenia', 'Republic of Armenia', 'ARM', 051, 'AS', NULL, NULL),
('AO', 'Angola', 'Republic of Angola', 'AGO', 024, 'AF', NULL, NULL),
('AQ', 'Antarctica', 'Antarctica (the territory South of 60 deg S)', 'ATA', 010, 'AN', NULL, NULL),
('AR', 'Argentina', 'Argentine Republic', 'ARG', 032, 'SA', NULL, NULL),
('AS', 'American Samoa', 'American Samoa', 'ASM', 016, 'OC', NULL, NULL),
('AT', 'Austria', 'Republic of Austria', 'AUT', 040, 'EU', NULL, NULL),
('AU', 'Australia', 'Commonwealth of Australia', 'AUS', 036, 'OC', NULL, NULL),
('AW', 'Aruba', 'Aruba', 'ABW', 533, 'NA', NULL, NULL),
('AX', 'Åland Islands', 'Åland Islands', 'ALA', 248, 'EU', NULL, NULL),
('AZ', 'Azerbaijan', 'Republic of Azerbaijan', 'AZE', 031, 'AS', NULL, NULL),
('BA', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', 'BIH', 070, 'EU', NULL, NULL),
('BB', 'Barbados', 'Barbados', 'BRB', 052, 'NA', NULL, NULL),
('BD', 'Bangladesh', 'People''s Republic of Bangladesh', 'BGD', 050, 'AS', NULL, NULL),
('BE', 'Belgium', 'Kingdom of Belgium', 'BEL', 056, 'EU', NULL, NULL),
('BF', 'Burkina Faso', 'Burkina Faso', 'BFA', 854, 'AF', NULL, NULL),
('BG', 'Bulgaria', 'Republic of Bulgaria', 'BGR', 100, 'EU', NULL, NULL),
('BH', 'Bahrain', 'Kingdom of Bahrain', 'BHR', 048, 'AS', NULL, NULL),
('BI', 'Burundi', 'Republic of Burundi', 'BDI', 108, 'AF', NULL, NULL),
('BJ', 'Benin', 'Republic of Benin', 'BEN', 204, 'AF', NULL, NULL),
('BL', 'Saint Barthélemy', 'Saint Barthélemy', 'BLM', 652, 'NA', NULL, NULL),
('BM', 'Bermuda', 'Bermuda', 'BMU', 060, 'NA', NULL, NULL),
('BN', 'Brunei Darussalam', 'Brunei Darussalam', 'BRN', 096, 'AS', NULL, NULL),
('BO', 'Bolivia', 'Plurinational State of Bolivia', 'BOL', 068, 'SA', NULL, NULL),
('BQ', 'Bonaire, Sint Eustatius and Saba', 'Bonaire, Sint Eustatius and Saba', 'BES', 535, 'NA', NULL, NULL),
('BR', 'Brazil', 'Federative Republic of Brazil', 'BRA', 076, 'SA', NULL, NULL),
('BS', 'Bahamas', 'Commonwealth of the Bahamas', 'BHS', 044, 'NA', NULL, NULL),
('BT', 'Bhutan', 'Kingdom of Bhutan', 'BTN', 064, 'AS', NULL, NULL),
('BV', 'Bouvet Island (Bouvetoya)', 'Bouvet Island (Bouvetoya)', 'BVT', 074, 'AN', NULL, NULL),
('BW', 'Botswana', 'Republic of Botswana', 'BWA', 072, 'AF', NULL, NULL),
('BY', 'Belarus', 'Republic of Belarus', 'BLR', 112, 'EU', NULL, NULL),
('BZ', 'Belize', 'Belize', 'BLZ', 084, 'NA', NULL, NULL),
('CA', 'Canada', 'Canada', 'CAN', 124, 'NA', 33476688, 9984670),
('CC', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', 'CCK', 166, 'AS', NULL, NULL),
('CD', 'Congo', 'Democratic Republic of the Congo', 'COD', 180, 'AF', NULL, NULL),
('CF', 'Central African Republic', 'Central African Republic', 'CAF', 140, 'AF', NULL, NULL),
('CG', 'Congo', 'Republic of the Congo', 'COG', 178, 'AF', NULL, NULL),
('CH', 'Switzerland', 'Swiss Confederation', 'CHE', 756, 'EU', NULL, NULL),
('CI', 'Cote d''Ivoire', 'Republic of Cote d''Ivoire', 'CIV', 384, 'AF', NULL, NULL),
('CK', 'Cook Islands', 'Cook Islands', 'COK', 184, 'OC', NULL, NULL),
('CL', 'Chile', 'Republic of Chile', 'CHL', 152, 'SA', NULL, NULL),
('CM', 'Cameroon', 'Republic of Cameroon', 'CMR', 120, 'AF', NULL, NULL),
('CN', 'China', 'People''s Republic of China', 'CHN', 156, 'AS', 1353821000, 9706961),
('CO', 'Colombia', 'Republic of Colombia', 'COL', 170, 'SA', NULL, NULL),
('CR', 'Costa Rica', 'Republic of Costa Rica', 'CRI', 188, 'NA', NULL, NULL),
('CU', 'Cuba', 'Republic of Cuba', 'CUB', 192, 'NA', NULL, NULL),
('CV', 'Cape Verde', 'Republic of Cape Verde', 'CPV', 132, 'AF', NULL, NULL),
('CW', 'Curaçao', 'Curaçao', 'CUW', 531, 'NA', NULL, NULL),
('CX', 'Christmas Island', 'Christmas Island', 'CXR', 162, 'AS', NULL, NULL),
('CY', 'Cyprus', 'Republic of Cyprus', 'CYP', 196, 'AS', NULL, NULL),
('CZ', 'Czech Republic', 'Czech Republic', 'CZE', 203, 'EU', NULL, NULL),
('DE', 'Germany', 'Federal Republic of Germany', 'DEU', 276, 'EU', 81799600, 357021),
('DJ', 'Djibouti', 'Republic of Djibouti', 'DJI', 262, 'AF', NULL, NULL),
('DK', 'Denmark', 'Kingdom of Denmark', 'DNK', 208, 'EU', NULL, NULL),
('DM', 'Dominica', 'Commonwealth of Dominica', 'DMA', 212, 'NA', NULL, NULL),
('DO', 'Dominican Republic', 'Dominican Republic', 'DOM', 214, 'NA', NULL, NULL),
('DZ', 'Algeria', 'People''s Democratic Republic of Algeria', 'DZA', 012, 'AF', NULL, NULL),
('EC', 'Ecuador', 'Republic of Ecuador', 'ECU', 218, 'SA', NULL, NULL),
('EE', 'Estonia', 'Republic of Estonia', 'EST', 233, 'EU', NULL, NULL),
('EG', 'Egypt', 'Arab Republic of Egypt', 'EGY', 818, 'AF', NULL, NULL),
('EH', 'Western Sahara', 'Western Sahara', 'ESH', 732, 'AF', NULL, NULL),
('ER', 'Eritrea', 'State of Eritrea', 'ERI', 232, 'AF', NULL, NULL),
('ES', 'Spain', 'Kingdom of Spain', 'ESP', 724, 'EU', 47265321, 505992),
('ET', 'Ethiopia', 'Federal Democratic Republic of Ethiopia', 'ETH', 231, 'AF', NULL, NULL),
('FI', 'Finland', 'Republic of Finland', 'FIN', 246, 'EU', NULL, NULL),
('FJ', 'Fiji', 'Republic of Fiji', 'FJI', 242, 'OC', NULL, NULL),
('FK', 'Falkland Islands (Malvinas)', 'Falkland Islands (Malvinas)', 'FLK', 238, 'SA', NULL, NULL),
('FM', 'Micronesia', 'Federated States of Micronesia', 'FSM', 583, 'OC', NULL, NULL),
('FO', 'Faroe Islands', 'Faroe Islands', 'FRO', 234, 'EU', NULL, NULL),
('FR', 'France', 'French Republic', 'FRA', 250, 'EU', 65350000, 674843),
('GA', 'Gabon', 'Gabonese Republic', 'GAB', 266, 'AF', NULL, NULL),
('GB', 'United Kingdom', 'United Kingdom of Great Britain & Northern Ireland', 'GBR', 826, 'EU', 63181775, 243610),
('GD', 'Grenada', 'Grenada', 'GRD', 308, 'NA', NULL, NULL),
('GE', 'Georgia', 'Georgia', 'GEO', 268, 'AS', NULL, NULL),
('GF', 'French Guiana', 'French Guiana', 'GUF', 254, 'SA', NULL, NULL),
('GG', 'Guernsey', 'Bailiwick of Guernsey', 'GGY', 831, 'EU', NULL, NULL),
('GH', 'Ghana', 'Republic of Ghana', 'GHA', 288, 'AF', NULL, NULL),
('GI', 'Gibraltar', 'Gibraltar', 'GIB', 292, 'EU', NULL, NULL),
('GL', 'Greenland', 'Greenland', 'GRL', 304, 'NA', NULL, NULL),
('GM', 'Gambia', 'Republic of the Gambia', 'GMB', 270, 'AF', NULL, NULL),
('GN', 'Guinea', 'Republic of Guinea', 'GIN', 324, 'AF', NULL, NULL),
('GP', 'Guadeloupe', 'Guadeloupe', 'GLP', 312, 'NA', NULL, NULL),
('GQ', 'Equatorial Guinea', 'Republic of Equatorial Guinea', 'GNQ', 226, 'AF', NULL, NULL),
('GR', 'Greece', 'Hellenic Republic Greece', 'GRC', 300, 'EU', NULL, NULL),
('GS', 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands', 'SGS', 239, 'AN', NULL, NULL),
('GT', 'Guatemala', 'Republic of Guatemala', 'GTM', 320, 'NA', NULL, NULL),
('GU', 'Guam', 'Guam', 'GUM', 316, 'OC', NULL, NULL),
('GW', 'Guinea-Bissau', 'Republic of Guinea-Bissau', 'GNB', 624, 'AF', NULL, NULL),
('GY', 'Guyana', 'Co-operative Republic of Guyana', 'GUY', 328, 'SA', NULL, NULL),
('HK', 'Hong Kong', 'Hong Kong Special Administrative Region of China', 'HKG', 344, 'AS', NULL, NULL),
('HM', 'Heard Island and McDonald Islands', 'Heard Island and McDonald Islands', 'HMD', 334, 'AN', NULL, NULL),
('HN', 'Honduras', 'Republic of Honduras', 'HND', 340, 'NA', NULL, NULL),
('HR', 'Croatia', 'Republic of Croatia', 'HRV', 191, 'EU', NULL, NULL),
('HT', 'Haiti', 'Republic of Haiti', 'HTI', 332, 'NA', NULL, NULL),
('HU', 'Hungary', 'Hungary', 'HUN', 348, 'EU', NULL, NULL),
('ID', 'Indonesia', 'Republic of Indonesia', 'IDN', 360, 'AS', NULL, NULL),
('IE', 'Ireland', 'Ireland', 'IRL', 372, 'EU', NULL, NULL),
('IL', 'Israel', 'State of Israel', 'ISR', 376, 'AS', NULL, NULL),
('IM', 'Isle of Man', 'Isle of Man', 'IMN', 833, 'EU', NULL, NULL),
('IN', 'India', 'Republic of India', 'IND', 356, 'AS', 1210193422, 3287263),
('IO', 'British Indian Ocean Territory (Chagos Archipelago)', 'British Indian Ocean Territory (Chagos Archipelago)', 'IOT', 086, 'AS', NULL, NULL),
('IQ', 'Iraq', 'Republic of Iraq', 'IRQ', 368, 'AS', NULL, NULL),
('IR', 'Iran', 'Islamic Republic of Iran', 'IRN', 364, 'AS', NULL, NULL),
('IS', 'Iceland', 'Republic of Iceland', 'ISL', 352, 'EU', NULL, NULL),
('IT', 'Italy', 'Italian Republic', 'ITA', 380, 'EU', NULL, NULL),
('JE', 'Jersey', 'Bailiwick of Jersey', 'JEY', 832, 'EU', NULL, NULL),
('JM', 'Jamaica', 'Jamaica', 'JAM', 388, 'NA', NULL, NULL),
('JO', 'Jordan', 'Hashemite Kingdom of Jordan', 'JOR', 400, 'AS', NULL, NULL),
('JP', 'Japan', 'Japan', 'JPN', 392, 'AS', NULL, NULL),
('KE', 'Kenya', 'Republic of Kenya', 'KEN', 404, 'AF', NULL, NULL),
('KG', 'Kyrgyz Republic', 'Kyrgyz Republic', 'KGZ', 417, 'AS', NULL, NULL),
('KH', 'Cambodia', 'Kingdom of Cambodia', 'KHM', 116, 'AS', NULL, NULL),
('KI', 'Kiribati', 'Republic of Kiribati', 'KIR', 296, 'OC', NULL, NULL),
('KM', 'Comoros', 'Union of the Comoros', 'COM', 174, 'AF', NULL, NULL),
('KN', 'Saint Kitts and Nevis', 'Federation of Saint Kitts and Nevis', 'KNA', 659, 'NA', NULL, NULL),
('KP', 'Korea', 'Democratic People''s Republic of Korea', 'PRK', 408, 'AS', NULL, NULL),
('KR', 'Korea', 'Republic of Korea', 'KOR', 410, 'AS', NULL, NULL),
('KW', 'Kuwait', 'State of Kuwait', 'KWT', 414, 'AS', NULL, NULL),
('KY', 'Cayman Islands', 'Cayman Islands', 'CYM', 136, 'NA', NULL, NULL),
('KZ', 'Kazakhstan', 'Republic of Kazakhstan', 'KAZ', 398, 'AS', NULL, NULL),
('LA', 'Lao People''s Democratic Republic', 'Lao People''s Democratic Republic', 'LAO', 418, 'AS', NULL, NULL),
('LB', 'Lebanon', 'Lebanese Republic', 'LBN', 422, 'AS', NULL, NULL),
('LC', 'Saint Lucia', 'Saint Lucia', 'LCA', 662, 'NA', NULL, NULL),
('LI', 'Liechtenstein', 'Principality of Liechtenstein', 'LIE', 438, 'EU', NULL, NULL),
('LK', 'Sri Lanka', 'Democratic Socialist Republic of Sri Lanka', 'LKA', 144, 'AS', NULL, NULL),
('LR', 'Liberia', 'Republic of Liberia', 'LBR', 430, 'AF', NULL, NULL),
('LS', 'Lesotho', 'Kingdom of Lesotho', 'LSO', 426, 'AF', NULL, NULL),
('LT', 'Lithuania', 'Republic of Lithuania', 'LTU', 440, 'EU', NULL, NULL),
('LU', 'Luxembourg', 'Grand Duchy of Luxembourg', 'LUX', 442, 'EU', NULL, NULL),
('LV', 'Latvia', 'Republic of Latvia', 'LVA', 428, 'EU', NULL, NULL),
('LY', 'Libya', 'Libya', 'LBY', 434, 'AF', NULL, NULL),
('MA', 'Morocco', 'Kingdom of Morocco', 'MAR', 504, 'AF', NULL, NULL),
('MC', 'Monaco', 'Principality of Monaco', 'MCO', 492, 'EU', NULL, NULL),
('MD', 'Moldova', 'Republic of Moldova', 'MDA', 498, 'EU', NULL, NULL),
('ME', 'Montenegro', 'Montenegro', 'MNE', 499, 'EU', NULL, NULL),
('MF', 'Saint Martin', 'Saint Martin (French part)', 'MAF', 663, 'NA', NULL, NULL),
('MG', 'Madagascar', 'Republic of Madagascar', 'MDG', 450, 'AF', NULL, NULL),
('MH', 'Marshall Islands', 'Republic of the Marshall Islands', 'MHL', 584, 'OC', NULL, NULL),
('MK', 'Macedonia', 'Republic of Macedonia', 'MKD', 807, 'EU', NULL, NULL),
('ML', 'Mali', 'Republic of Mali', 'MLI', 466, 'AF', NULL, NULL),
('MM', 'Myanmar', 'Republic of the Union of Myanmar', 'MMR', 104, 'AS', NULL, NULL),
('MN', 'Mongolia', 'Mongolia', 'MNG', 496, 'AS', NULL, NULL),
('MO', 'Macao', 'Macao Special Administrative Region of China', 'MAC', 446, 'AS', NULL, NULL),
('MP', 'Northern Mariana Islands', 'Commonwealth of the Northern Mariana Islands', 'MNP', 580, 'OC', NULL, NULL),
('MQ', 'Martinique', 'Martinique', 'MTQ', 474, 'NA', NULL, NULL),
('MR', 'Mauritania', 'Islamic Republic of Mauritania', 'MRT', 478, 'AF', NULL, NULL),
('MS', 'Montserrat', 'Montserrat', 'MSR', 500, 'NA', NULL, NULL),
('MT', 'Malta', 'Republic of Malta', 'MLT', 470, 'EU', NULL, NULL),
('MU', 'Mauritius', 'Republic of Mauritius', 'MUS', 480, 'AF', NULL, NULL),
('MV', 'Maldives', 'Republic of Maldives', 'MDV', 462, 'AS', NULL, NULL),
('MW', 'Malawi', 'Republic of Malawi', 'MWI', 454, 'AF', NULL, NULL),
('MX', 'Mexico', 'United Mexican States', 'MEX', 484, 'NA', NULL, NULL),
('MY', 'Malaysia', 'Malaysia', 'MYS', 458, 'AS', NULL, NULL),
('MZ', 'Mozambique', 'Republic of Mozambique', 'MOZ', 508, 'AF', NULL, NULL),
('NA', 'Namibia', 'Republic of Namibia', 'NAM', 516, 'AF', NULL, NULL),
('NC', 'New Caledonia', 'New Caledonia', 'NCL', 540, 'OC', NULL, NULL),
('NE', 'Niger', 'Republic of Niger', 'NER', 562, 'AF', NULL, NULL),
('NF', 'Norfolk Island', 'Norfolk Island', 'NFK', 574, 'OC', NULL, NULL),
('NG', 'Nigeria', 'Federal Republic of Nigeria', 'NGA', 566, 'AF', NULL, NULL),
('NI', 'Nicaragua', 'Republic of Nicaragua', 'NIC', 558, 'NA', NULL, NULL),
('NL', 'Netherlands', 'Kingdom of the Netherlands', 'NLD', 528, 'EU', NULL, NULL),
('NO', 'Norway', 'Kingdom of Norway', 'NOR', 578, 'EU', NULL, NULL),
('NP', 'Nepal', 'Federal Democratic Republic of Nepal', 'NPL', 524, 'AS', NULL, NULL),
('NR', 'Nauru', 'Republic of Nauru', 'NRU', 520, 'OC', NULL, NULL),
('NU', 'Niue', 'Niue', 'NIU', 570, 'OC', NULL, NULL),
('NZ', 'New Zealand', 'New Zealand', 'NZL', 554, 'OC', NULL, NULL),
('OM', 'Oman', 'Sultanate of Oman', 'OMN', 512, 'AS', NULL, NULL),
('PA', 'Panama', 'Republic of Panama', 'PAN', 591, 'NA', NULL, NULL),
('PE', 'Peru', 'Republic of Peru', 'PER', 604, 'SA', NULL, NULL),
('PF', 'French Polynesia', 'French Polynesia', 'PYF', 258, 'OC', NULL, NULL),
('PG', 'Papua New Guinea', 'Independent State of Papua New Guinea', 'PNG', 598, 'OC', NULL, NULL),
('PH', 'Philippines', 'Republic of the Philippines', 'PHL', 608, 'AS', NULL, NULL),
('PK', 'Pakistan', 'Islamic Republic of Pakistan', 'PAK', 586, 'AS', NULL, NULL),
('PL', 'Poland', 'Republic of Poland', 'POL', 616, 'EU', NULL, NULL),
('PM', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 'SPM', 666, 'NA', NULL, NULL),
('PN', 'Pitcairn Islands', 'Pitcairn Islands', 'PCN', 612, 'OC', NULL, NULL),
('PR', 'Puerto Rico', 'Commonwealth of Puerto Rico', 'PRI', 630, 'NA', NULL, NULL),
('PS', 'Palestine', 'State of Palestine', 'PSE', 275, 'AS', NULL, NULL),
('PT', 'Portugal', 'Portuguese Republic', 'PRT', 620, 'EU', NULL, NULL),
('PW', 'Palau', 'Republic of Palau', 'PLW', 585, 'OC', NULL, NULL),
('PY', 'Paraguay', 'Republic of Paraguay', 'PRY', 600, 'SA', NULL, NULL),
('QA', 'Qatar', 'State of Qatar', 'QAT', 634, 'AS', NULL, NULL),
('RE', 'Réunion', 'Réunion', 'REU', 638, 'AF', NULL, NULL),
('RO', 'Romania', 'Romania', 'ROU', 642, 'EU', NULL, NULL),
('RS', 'Serbia', 'Republic of Serbia', 'SRB', 688, 'EU', NULL, NULL),
('RU', 'Russia', 'Russian Federation', 'RUS', 643, 'EU', 143300000, 17075400),
('RW', 'Rwanda', 'Republic of Rwanda', 'RWA', 646, 'AF', NULL, NULL),
('SA', 'Saudi Arabia', 'Kingdom of Saudi Arabia', 'SAU', 682, 'AS', NULL, NULL),
('SB', 'Solomon Islands', 'Solomon Islands', 'SLB', 090, 'OC', NULL, NULL),
('SC', 'Seychelles', 'Republic of Seychelles', 'SYC', 690, 'AF', NULL, NULL),
('SD', 'Sudan', 'Republic of Sudan', 'SDN', 729, 'AF', NULL, NULL),
('SE', 'Sweden', 'Kingdom of Sweden', 'SWE', 752, 'EU', NULL, NULL),
('SG', 'Singapore', 'Republic of Singapore', 'SGP', 702, 'AS', NULL, NULL),
('SH', 'Saint Helena, Ascension and Tristan da Cunha', 'Saint Helena, Ascension and Tristan da Cunha', 'SHN', 654, 'AF', NULL, NULL),
('SI', 'Slovenia', 'Republic of Slovenia', 'SVN', 705, 'EU', NULL, NULL),
('SJ', 'Svalbard & Jan Mayen Islands', 'Svalbard & Jan Mayen Islands', 'SJM', 744, 'EU', NULL, NULL),
('SK', 'Slovakia (Slovak Republic)', 'Slovakia (Slovak Republic)', 'SVK', 703, 'EU', NULL, NULL),
('SL', 'Sierra Leone', 'Republic of Sierra Leone', 'SLE', 694, 'AF', NULL, NULL),
('SM', 'San Marino', 'Republic of San Marino', 'SMR', 674, 'EU', NULL, NULL),
('SN', 'Senegal', 'Republic of Senegal', 'SEN', 686, 'AF', NULL, NULL),
('SO', 'Somalia', 'Somali Republic', 'SOM', 706, 'AF', NULL, NULL),
('SR', 'Suriname', 'Republic of Suriname', 'SUR', 740, 'SA', NULL, NULL),
('SS', 'South Sudan', 'Republic of South Sudan', 'SSD', 728, 'AF', NULL, NULL),
('ST', 'Sao Tome and Principe', 'Democratic Republic of Sao Tome and Principe', 'STP', 678, 'AF', NULL, NULL),
('SV', 'El Salvador', 'Republic of El Salvador', 'SLV', 222, 'NA', NULL, NULL),
('SX', 'Sint Maarten (Dutch part)', 'Sint Maarten (Dutch part)', 'SXM', 534, 'NA', NULL, NULL),
('SY', 'Syrian Arab Republic', 'Syrian Arab Republic', 'SYR', 760, 'AS', NULL, NULL),
('SZ', 'Swaziland', 'Kingdom of Swaziland', 'SWZ', 748, 'AF', NULL, NULL),
('TC', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'TCA', 796, 'NA', NULL, NULL),
('TD', 'Chad', 'Republic of Chad', 'TCD', 148, 'AF', NULL, NULL),
('TF', 'French Southern Territories', 'French Southern Territories', 'ATF', 260, 'AN', NULL, NULL),
('TG', 'Togo', 'Togolese Republic', 'TGO', 768, 'AF', NULL, NULL),
('TH', 'Thailand', 'Kingdom of Thailand', 'THA', 764, 'AS', NULL, NULL),
('TJ', 'Tajikistan', 'Republic of Tajikistan', 'TJK', 762, 'AS', NULL, NULL),
('TK', 'Tokelau', 'Tokelau', 'TKL', 772, 'OC', NULL, NULL),
('TL', 'Timor-Leste', 'Democratic Republic of Timor-Leste', 'TLS', 626, 'AS', NULL, NULL),
('TM', 'Turkmenistan', 'Turkmenistan', 'TKM', 795, 'AS', NULL, NULL),
('TN', 'Tunisia', 'Tunisian Republic', 'TUN', 788, 'AF', NULL, NULL),
('TO', 'Tonga', 'Kingdom of Tonga', 'TON', 776, 'OC', NULL, NULL),
('TR', 'Turkey', 'Republic of Turkey', 'TUR', 792, 'AS', NULL, NULL),
('TT', 'Trinidad and Tobago', 'Republic of Trinidad and Tobago', 'TTO', 780, 'NA', NULL, NULL),
('TV', 'Tuvalu', 'Tuvalu', 'TUV', 798, 'OC', NULL, NULL),
('TW', 'Taiwan', 'Taiwan, Province of China', 'TWN', 158, 'AS', NULL, NULL),
('TZ', 'Tanzania', 'United Republic of Tanzania', 'TZA', 834, 'AF', NULL, NULL),
('UA', 'Ukraine', 'Ukraine', 'UKR', 804, 'EU', NULL, NULL),
('UG', 'Uganda', 'Republic of Uganda', 'UGA', 800, 'AF', NULL, NULL),
('UM', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', 'UMI', 581, 'OC', NULL, NULL),
('US', 'USA', 'United States of America', 'USA', 840, 'NA', 315858000, 9826675),
('UY', 'Uruguay', 'Eastern Republic of Uruguay', 'URY', 858, 'SA', NULL, NULL),
('UZ', 'Uzbekistan', 'Republic of Uzbekistan', 'UZB', 860, 'AS', NULL, NULL),
('VA', 'Holy See (Vatican City State)', 'Holy See (Vatican City State)', 'VAT', 336, 'EU', NULL, NULL),
('VC', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'VCT', 670, 'NA', NULL, NULL),
('VE', 'Venezuela', 'Bolivarian Republic of Venezuela', 'VEN', 862, 'SA', NULL, NULL),
('VG', 'British Virgin Islands', 'British Virgin Islands', 'VGB', 092, 'NA', NULL, NULL),
('VI', 'United States Virgin Islands', 'United States Virgin Islands', 'VIR', 850, 'NA', NULL, NULL),
('VN', 'Vietnam', 'Socialist Republic of Vietnam', 'VNM', 704, 'AS', NULL, NULL),
('VU', 'Vanuatu', 'Republic of Vanuatu', 'VUT', 548, 'OC', NULL, NULL),
('WF', 'Wallis and Futuna', 'Wallis and Futuna', 'WLF', 876, 'OC', NULL, NULL),
('WS', 'Samoa', 'Independent State of Samoa', 'WSM', 882, 'OC', NULL, NULL),
('YE', 'Yemen', 'Yemen', 'YEM', 887, 'AS', NULL, NULL),
('YT', 'Mayotte', 'Mayotte', 'MYT', 175, 'AF', NULL, NULL),
('ZA', 'South Africa', 'Republic of South Africa', 'ZAF', 710, 'AF', NULL, NULL),
('ZM', 'Zambia', 'Republic of Zambia', 'ZMB', 894, 'AF', NULL, NULL),
('ZW', 'Zimbabwe', 'Republic of Zimbabwe', 'ZWE', 716, 'AF', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `EventRatings`
--

CREATE TABLE IF NOT EXISTS `EventRatings` (
  `ProfileNr` smallint(6) unsigned NOT NULL COMMENT 'Profiles.ProfileNr',
  `EventNr` smallint(6) unsigned NOT NULL COMMENT 'Events.EventNr',
  `Rating` tinyint(1) NOT NULL COMMENT '0=Thumbs Down, 1=Thumbs Up',
  PRIMARY KEY (`ProfileNr`,`EventNr`),
  KEY `EventNr` (`EventNr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Events`
--

CREATE TABLE IF NOT EXISTS `Events` (
  `EventNr` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `SiteNr` smallint(5) unsigned DEFAULT NULL COMMENT 'Sites.SiteNr',
  `Name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `StartTime` int(11) NOT NULL COMMENT 'Unix Time',
  `EndTime` int(11) NOT NULL COMMENT 'Unix Time',
  `Info` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`EventNr`),
  KEY `SiteNr` (`SiteNr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `EventViews`
--

CREATE TABLE IF NOT EXISTS `EventViews` (
  `ProfileNr` smallint(5) unsigned NOT NULL COMMENT 'Profiles.ProfileNr',
  `EventNr` smallint(5) unsigned NOT NULL COMMENT 'Events.EventNr',
  `NrOfViews` smallint(5) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`ProfileNr`,`EventNr`),
  KEY `EventNr` (`EventNr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Preferences`
--

CREATE TABLE IF NOT EXISTS `Preferences` (
  `ProfileNr` smallint(5) unsigned NOT NULL COMMENT 'Profile.ProfileNr',
  `Educational` tinyint(3) unsigned NOT NULL COMMENT 'Rating from 1-10: Museums, Librarys..',
  `Localities` tinyint(3) unsigned NOT NULL COMMENT 'Rating from 1-10: Pub, Clubs, Bars...',
  `Outdoor` tinyint(3) unsigned NOT NULL COMMENT 'Rating from 1-10: Zoo, Parks...',
  `Leisure` tinyint(3) unsigned NOT NULL COMMENT 'Rating from 1-10: Swimming Pools, Spas',
  `Art` tinyint(3) unsigned NOT NULL COMMENT 'Rating from 1-10: Art Galleries, Art Shops...',
  PRIMARY KEY (`ProfileNr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Profiles`
--

CREATE TABLE IF NOT EXISTS `Profiles` (
  `ProfileNr` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `middlenames` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sirname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `DateOfBirth` int(11) DEFAULT NULL,
  `HomeCountry` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ProfileNr`),
  UNIQUE KEY `email` (`email`),
  KEY `HomeCountry` (`HomeCountry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `SiteRatings`
--

CREATE TABLE IF NOT EXISTS `SiteRatings` (
  `ProfileNr` smallint(5) unsigned NOT NULL COMMENT 'Profiles.ProfileNr',
  `SiteNr` smallint(5) unsigned NOT NULL COMMENT 'Sites.SiteNr',
  `Rating` tinyint(1) NOT NULL COMMENT '0=Thumbs Down, 1=Thumbs Up',
  PRIMARY KEY (`ProfileNr`,`SiteNr`),
  KEY `SiteNr` (`SiteNr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Sites`
--

CREATE TABLE IF NOT EXISTS `Sites` (
  `SiteNr` smallint(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `BuildingName` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Street` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Postcode` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `Info` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`SiteNr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `SiteViews`
--

CREATE TABLE IF NOT EXISTS `SiteViews` (
  `ProfileNr` smallint(5) unsigned NOT NULL COMMENT 'Profiles.ProfileNr',
  `SiteNr` smallint(5) unsigned NOT NULL COMMENT 'Sites.SiteNr',
  `NrOfViews` smallint(5) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`ProfileNr`,`SiteNr`),
  KEY `SiteNr` (`SiteNr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserActivity`
--

CREATE TABLE IF NOT EXISTS `UserActivity` (
  `ProfileNr` smallint(5) unsigned NOT NULL COMMENT 'Profile.ProfileNr',
  `SignUpDate` int(11) NOT NULL COMMENT 'Unix Time',
  `LastActiveDate` int(11) NOT NULL COMMENT 'Unix Time',
  `NrOfHoursActive` smallint(6) NOT NULL,
  `LastLoginIP` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ProfileNr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Countries`
--
ALTER TABLE `Countries`
  ADD CONSTRAINT `Countries_ibfk_2` FOREIGN KEY (`continent_code`) REFERENCES `Continents` (`code`);

--
-- Constraints for table `EventRatings`
--
ALTER TABLE `EventRatings`
  ADD CONSTRAINT `EventRatings_ibfk_2` FOREIGN KEY (`EventNr`) REFERENCES `Events` (`EventNr`) ON DELETE CASCADE,
  ADD CONSTRAINT `EventRatings_ibfk_1` FOREIGN KEY (`ProfileNr`) REFERENCES `Profiles` (`ProfileNr`) ON DELETE CASCADE;

--
-- Constraints for table `Events`
--
ALTER TABLE `Events`
  ADD CONSTRAINT `Events_ibfk_2` FOREIGN KEY (`SiteNr`) REFERENCES `Sites` (`SiteNr`) ON DELETE SET NULL;

--
-- Constraints for table `EventViews`
--
ALTER TABLE `EventViews`
  ADD CONSTRAINT `EventViews_ibfk_2` FOREIGN KEY (`EventNr`) REFERENCES `Events` (`EventNr`) ON DELETE CASCADE,
  ADD CONSTRAINT `EventViews_ibfk_1` FOREIGN KEY (`ProfileNr`) REFERENCES `Profiles` (`ProfileNr`) ON DELETE CASCADE;

--
-- Constraints for table `Preferences`
--
ALTER TABLE `Preferences`
  ADD CONSTRAINT `Preferences_ibfk_1` FOREIGN KEY (`ProfileNr`) REFERENCES `Profiles` (`ProfileNr`) ON DELETE CASCADE;

--
-- Constraints for table `Profiles`
--
ALTER TABLE `Profiles`
  ADD CONSTRAINT `Profiles_ibfk_1` FOREIGN KEY (`HomeCountry`) REFERENCES `Countries` (`code`);

--
-- Constraints for table `SiteRatings`
--
ALTER TABLE `SiteRatings`
  ADD CONSTRAINT `SiteRatings_ibfk_2` FOREIGN KEY (`SiteNr`) REFERENCES `Sites` (`SiteNr`) ON DELETE CASCADE,
  ADD CONSTRAINT `SiteRatings_ibfk_1` FOREIGN KEY (`ProfileNr`) REFERENCES `Profiles` (`ProfileNr`) ON DELETE CASCADE;

--
-- Constraints for table `SiteViews`
--
ALTER TABLE `SiteViews`
  ADD CONSTRAINT `SiteViews_ibfk_2` FOREIGN KEY (`SiteNr`) REFERENCES `Sites` (`SiteNr`) ON DELETE CASCADE,
  ADD CONSTRAINT `SiteViews_ibfk_1` FOREIGN KEY (`ProfileNr`) REFERENCES `Profiles` (`ProfileNr`) ON DELETE CASCADE;

--
-- Constraints for table `UserActivity`
--
ALTER TABLE `UserActivity`
  ADD CONSTRAINT `UserActivity_ibfk_1` FOREIGN KEY (`ProfileNr`) REFERENCES `Profiles` (`ProfileNr`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
