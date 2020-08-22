-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 22, 2020 at 05:44 PM
-- Server version: 5.7.24
-- PHP Version: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mywebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

DROP TABLE IF EXISTS `abouts`;
CREATE TABLE IF NOT EXISTS `abouts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `biography` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cv_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `degree` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remote_availability` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `years_experience` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `name`, `biography`, `cv_link`, `age`, `full_summary`, `address`, `email`, `phone`, `nationality`, `degree`, `remote_availability`, `years_experience`) VALUES
(1, 'Hossein Mirian', 'I am hossein Mirian. I was born in Isfahan,Iran. I started by graphic designing using Adobe Photoshop and gradually became...', 'http://hoseinmirian.com/assets/cv/cv-mirian.pdf', '32', ' I am current University of Oxford Front-end developer/Researcher. I have been working as software developer the past 12 years.I graduated from Birmingham City University by achieving MSc Advanced Computer Science degree. ', 'Oxford,United Kingdom', 'hosein.mirian@gmail.com', '+44 7376799008', 'Iran', 'Msc Advanced Computer Science', 'available', '12');

-- --------------------------------------------------------

--
-- Table structure for table `backgrounds`
--

DROP TABLE IF EXISTS `backgrounds`;
CREATE TABLE IF NOT EXISTS `backgrounds` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `hero` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parallex` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backgrounds`
--

INSERT INTO `backgrounds` (`id`, `hero`, `parallex`) VALUES
(1, 'http://hoseinmirian.com/assets/images/backgrounds/hero.jpg', 'http://hoseinmirian.com/assets/images/backgrounds/parallax.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `bulletpoints`
--

DROP TABLE IF EXISTS `bulletpoints`;
CREATE TABLE IF NOT EXISTS `bulletpoints` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bulletpoints`
--

INSERT INTO `bulletpoints` (`id`, `description`) VALUES
(1, 'Identified the client demands and tried catching up with the prior codes'),
(2, 'Designed the new UI/UX using Adobe XD and Photoshop'),
(3, 'Implemented the store using VueX for CRUD commands'),
(4, 'Created an integrated system using singleton classes to fetch data from APIs (GraphQL & Rest)'),
(5, 'Design and created a robust UI using Vuetify framework');

-- --------------------------------------------------------

--
-- Table structure for table `bulletpoint_resume`
--

DROP TABLE IF EXISTS `bulletpoint_resume`;
CREATE TABLE IF NOT EXISTS `bulletpoint_resume` (
  `bulletpoint_id` int(10) UNSIGNED NOT NULL,
  `resume_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`bulletpoint_id`,`resume_id`),
  KEY `bulletpoint_resume_resume_id_foreign` (`resume_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bulletpoint_resume`
--

INSERT INTO `bulletpoint_resume` (`bulletpoint_id`, `resume_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(4, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `descriptions`
--

DROP TABLE IF EXISTS `descriptions`;
CREATE TABLE IF NOT EXISTS `descriptions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `skills_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hero_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `services_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `descriptions`
--

INSERT INTO `descriptions` (`id`, `skills_description`, `hero_description`, `services_description`, `about_description`) VALUES
(1, 'My skills are numerous, from graphic design using photoshop and illustrator, sketching, mocking and UI/UX design by adobe XD to implementing the idea into a real professional output using my front-end and javascript skills such as vue, vuex, vuetify, etc. I also have a long experience of developing Android apps using Java as well as developing cross - platform apps using React Native.Besides, I have been very exposed to back - end development as well due to my experience to develop using PHP and familiarity with both REST and GraphQL API(s).', 'Web Developer,Graphic Designer, UI/UX designer, Software Tester', 'I can provide services from designing UI or any graphical object to implementing UX, developing front-end layout using Vue,Vuex,JS, giving it \"+\" stunning style using Sass/CSS and finally turning your idea into reality.', '-');

-- --------------------------------------------------------

--
-- Table structure for table `educations`
--

DROP TABLE IF EXISTS `educations`;
CREATE TABLE IF NOT EXISTS `educations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `certificate_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `educations`
--

INSERT INTO `educations` (`id`, `certificate_name`, `organization_name`, `from`, `to`, `description`) VALUES
(1, 'MSc Advanced Computer Science', 'Birmingham City University, Birmingham,UK', '2017', '2018', 'Passed modules about new cutting-edge techs such as data science, semantic web, service oriented programming,etc. Eventually, I achieved an MSc degree with a 2.1 GPA'),
(2, 'BA Computer Software', 'Kashan University, Iran', '2012', '2014', 'Passed modules such as C, C++, Delphi, Data Structure and more..');

-- --------------------------------------------------------

--
-- Table structure for table `heroes`
--

DROP TABLE IF EXISTS `heroes`;
CREATE TABLE IF NOT EXISTS `heroes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `text_flasher` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `heroes`
--

INSERT INTO `heroes` (`id`, `text_flasher`) VALUES
(1, 'I\'m Hossein Mirian|I\'m an expert Front-End developer|I\'m a UI/UX designer|I\'m a software tester');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_07_21_100757_create_socials_table', 1),
(4, '2020_07_24_095901_create_skills_table', 1),
(5, '2020_07_24_100003_create_educations_table', 1),
(6, '2020_07_25_064601_create_portfolio_types_table', 1),
(7, '2020_07_25_064719_create_portfolios_table', 1),
(8, '2020_07_25_070602_create_resumes_table', 1),
(9, '2020_08_19_074521_create_abouts_table', 1),
(10, '2020_08_19_075654_create_backgrounds_table', 1),
(11, '2020_08_19_075836_create_heroes_table', 1),
(12, '2020_08_19_080202_create_services_table', 1),
(13, '2020_08_19_080439_create_descriptions_table', 1),
(14, '2020_08_19_171111_create_bulletpoints_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

DROP TABLE IF EXISTS `portfolios`;
CREATE TABLE IF NOT EXISTS `portfolios` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `portfolio_types_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `portfolios_portfolio_types_id_foreign` (`portfolio_types_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `portfolio_types_id`, `title`, `organization`, `location`, `source_code`, `website`, `project_image`, `role`, `description`) VALUES
(1, 1, 'FairSharing Rebuild', 'University of Oxford', 'Oxford, UK', 'https://github.com/FAIRsharing/fairsharing.github.io', 'https://eng.ox.ac.uk/people/hossein-mirian', 'http://www.hoseinmirian.com/assets/images/portfolio/fairsharing.jpg', 'Front-End Developer / Researcher', '-'),
(2, 1, 'Himart Startup', 'Mihan Food and Diary Co.', 'Tehran, Iran', '', 'https://www.youtube.com/watch?v=1E2Y6_q_mgI&t=9s', 'http://www.hoseinmirian.com/assets/images/portfolio/himart.jpg', 'Front-End Developer', '-'),
(3, 1, 'Hosein Mirian Website', 'Personal', 'Oxford, UK', 'https://github.com/hoseinmirian/portfolio-front', 'http://www.hoseinmirian.com', 'http://www.hoseinmirian.com/assets/images/portfolio/hoseinmirian.jpg', 'Front-End Developer', '-'),
(4, 1, '8InteriorDesign', 'Personal', 'London, UK', '', 'https://www.8interiordesign.com', 'http://www.hoseinmirian.com/assets/images/portfolio/8interiordesign.jpg', 'Full-Stack Developer', '-'),
(9, 2, 'GravitiChain CRM', 'GravitiChain', 'Birmingham, UK', '', 'https://www.youtube.com/watch?v=-kS8_--dChc', 'http://www.hoseinmirian.com/assets/images/portfolio/gravitichain.jpg', 'Android Developer', '-'),
(5, 1, 'KhabarFarsi', 'Parto Tech co', 'Tehran, Iran', '', 'https://khabarfarsi.com', 'http://www.hoseinmirian.com/assets/images/portfolio/khabarfarsi.jpg', 'Full-Stack Developer', '-'),
(6, 1, 'LoveUnderDog', 'Kaweb', 'Tehran, Iran', '', 'https://www.loveunderdogs.org/', 'http://www.hoseinmirian.com/assets/images/portfolio/loveunderdog.jpg', 'Full-Stack Developer', '-'),
(7, 2, 'Casper English App', 'Personal', 'Esfahan, Iran', 'https://gitlab.com/hosein_mirian/Casper', '', 'http://www.hoseinmirian.com/assets/images/portfolio/casper.jpg', 'Android Developer', '-'),
(11, 3, 'Barber House Logo', 'BarberHouse', 'Birmingham,UK', '', '', 'http://www.hoseinmirian.com/assets/images/portfolio/barberHouse.jpg', 'Graphic Designer', '-'),
(8, 2, 'English with Smart Subtitle', 'Personal', 'Esfahan, Iran', '', 'https://www.youtube.com/watch?v=cNIT9Fr3vpk', 'http://www.hoseinmirian.com/assets/images/portfolio/englishwithsub.jpg', 'Android Developer', '-'),
(12, 3, 'IcePack centre', 'Icepack center', 'Esfahan,Iran', '', '', 'http://www.hoseinmirian.com/assets/images/portfolio/icepack1.jpg', 'Graphic Designer', '-'),
(13, 3, 'IcePack centre', 'Icepack center', 'Esfahan,Iran', '', '', 'http://www.hoseinmirian.com/assets/images/portfolio/icepack2.jpg', 'Graphic Designer', '-'),
(14, 3, 'Barber shop visit card', 'Barber shop', 'Esfahan,Iran', '', '', 'http://www.hoseinmirian.com/assets/images/portfolio/barbervisitcard.jpg', 'Graphic Designer', '-'),
(15, 3, 'IT Univ Catalog', 'IT UNIV', 'Esfahan,Iran', '', '', 'http://www.hoseinmirian.com/assets/images/portfolio/ituniv.jpg', 'Graphic Designer', '-'),
(16, 3, 'Imaj Catalog', 'Imaj Co', 'Esfahan,Iran', '', '', 'http://www.hoseinmirian.com/assets/images/portfolio/imaj.jpg', 'Graphic Designer', '-'),
(17, 3, 'Same Logo', 'Same Co', 'Esfahan,Iran', '', '', 'http://www.hoseinmirian.com/assets/images/portfolio/same.jpg', 'Graphic Designer', '-');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_skills`
--

DROP TABLE IF EXISTS `portfolio_skills`;
CREATE TABLE IF NOT EXISTS `portfolio_skills` (
  `portfolio_id` int(10) UNSIGNED NOT NULL,
  `skills_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`portfolio_id`,`skills_id`),
  KEY `portfolio_skills_skills_id_foreign` (`skills_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_skills`
--

INSERT INTO `portfolio_skills` (`portfolio_id`, `skills_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 4),
(3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_types`
--

DROP TABLE IF EXISTS `portfolio_types`;
CREATE TABLE IF NOT EXISTS `portfolio_types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_types`
--

INSERT INTO `portfolio_types` (`id`, `type`) VALUES
(1, 'web'),
(2, 'mobile'),
(3, 'design');

-- --------------------------------------------------------

--
-- Table structure for table `resumes`
--

DROP TABLE IF EXISTS `resumes`;
CREATE TABLE IF NOT EXISTS `resumes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `organization` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resumes`
--

INSERT INTO `resumes` (`id`, `organization`, `location`, `from`, `to`, `role`, `website`) VALUES
(1, 'University of Oxford', 'Oxford, UK', '2019', 'present', 'Front-End Developer / Researcher', 'https://eng.ox.ac.uk/people/hossein-mirian'),
(2, 'Himart Startup', 'Tehran, Iran', '2018', '2019', 'Front-End Developer', 'https://himart.ir');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `icon` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `icon`, `title`, `description`) VALUES
(1, 'MaterialDesign', 'UI/UX', 'designing UI/UX from scratch using Adobe XD and Adobe Photoshop'),
(2, 'VueJs', 'Front-End Development', 'developing the UI using VueJS and Vuex plus offering tested application using Jest and Vue utils'),
(3, 'LanguageCss3', 'Consulting', 'consultancy over improving projects\' quality by identifying the flaws and offer special package'),
(4, 'Remote', 'Remote Developing', 'Able to work remotely world-wide. Expert in working with git and testing');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
CREATE TABLE IF NOT EXISTS `skills` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `portfolio_types_id` int(10) UNSIGNED NOT NULL,
  `skill_title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `skill_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skill_level` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `skills_portfolio_types_id_foreign` (`portfolio_types_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `portfolio_types_id`, `skill_title`, `description`, `skill_image`, `skill_level`) VALUES
(1, 1, 'JavaScript', 'front end developing', 'Javascript', '90'),
(2, 1, 'VueJs', 'front end developing', 'VueJs', '90'),
(3, 1, 'VueX', 'front end developing', 'VueX', '90'),
(4, 1, 'Unit test', 'front end testing', 'unit test', '90');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

DROP TABLE IF EXISTS `socials`;
CREATE TABLE IF NOT EXISTS `socials` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `name`, `link`, `icon`) VALUES
(1, 'Github', 'https://www.github.com/hoseinmirian', 'Github'),
(2, 'Gitlab', 'https://www.gitlab.com/hoseinmirian', 'Gitlab'),
(3, 'Linkedin', 'https://www.linkedin.com/hoseinmirian', 'Linkedin'),
(5, 'Facebook', 'https://www.facebook.com/hoseinmirian', 'Facebook');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
