-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 31, 2025 at 01:06 PM
-- Server version: 8.4.3
-- PHP Version: 8.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `education_consultancy_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Who are we?', NULL, 1, '2025-12-20 06:22:24', '2025-12-20 06:48:34'),
(2, 'Helping Students Achieve theirStudy Abroad Dreams with Expert Guidance', NULL, 1, '2025-12-31 01:11:50', '2025-12-31 01:11:50');

-- --------------------------------------------------------

--
-- Table structure for table `about_items`
--

CREATE TABLE `about_items` (
  `id` bigint UNSIGNED NOT NULL,
  `about_id` bigint UNSIGNED NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `images` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_items`
--

INSERT INTO `about_items` (`id`, `about_id`, `description`, `images`, `created_at`, `updated_at`) VALUES
(1, 1, '<p data-start=\"152\" data-end=\"429\">Insaf Education Consultancy is a trusted education guidance platform dedicated to helping students achieve their academic and career goals. We provide professional counseling and personalized support for students seeking higher education opportunities in Bangladesh and abroad.</p>\r\n<p data-start=\"431\" data-end=\"678\">Our services include university selection, admission processing, scholarship guidance, and visa assistance. With a student-centered approach, Insaf Education Consultancy focuses on transparency, integrity, and success at every step of the journey.</p>\r\n<p data-start=\"680\" data-end=\"837\">We aim to simplify the education process and empower students with the right information, expert advice, and continuous support to build a successful future.</p><br>', '[\"uploads/about_items/ea655672-1f3c-44d2-9148-a7077ee3c18b.jpg\"]', '2025-12-20 06:36:16', '2025-12-31 01:17:51');

-- --------------------------------------------------------

--
-- Table structure for table `accommodations`
--

CREATE TABLE `accommodations` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accommodations`
--

INSERT INTO `accommodations` (`id`, `title`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'Student Accommodation', NULL, 1, '2025-12-18 00:24:35', '2025-12-18 00:24:35');

-- --------------------------------------------------------

--
-- Table structure for table `accommodation_items`
--

CREATE TABLE `accommodation_items` (
  `id` bigint UNSIGNED NOT NULL,
  `accommodation_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accommodation_items`
--

INSERT INTO `accommodation_items` (`id`, `accommodation_id`, `title`, `created_at`, `updated_at`) VALUES
(2, 2, 'Types of Student Accommodation', '2025-12-18 00:25:20', '2025-12-31 06:02:10'),
(3, 2, 'Test', '2025-12-31 06:02:39', '2025-12-31 06:02:39');

-- --------------------------------------------------------

--
-- Table structure for table `accommodation_item_sections`
--

CREATE TABLE `accommodation_item_sections` (
  `id` bigint UNSIGNED NOT NULL,
  `accommodation_item_id` bigint UNSIGNED NOT NULL,
  `images` json DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accommodation_item_sections`
--

INSERT INTO `accommodation_item_sections` (`id`, `accommodation_item_id`, `images`, `description`, `created_at`, `updated_at`) VALUES
(2, 2, '[\"uploads/accommodation_item_sections/9ebee3c3-0929-44cf-9b73-acdef7d0f16c.jpg\"]', '<p data-start=\"124\" data-end=\"338\">Finding the right student accommodation is an important part of a successful study abroad journey. Comfortable and safe housing helps students focus on their studies and adjust to a new environment with confidence.</p>\r\n<p data-start=\"340\" data-end=\"377\"><strong data-start=\"340\" data-end=\"375\">Types of Student Accommodation:</strong></p>\r\n<ul data-start=\"378\" data-end=\"855\"><li data-start=\"378\" data-end=\"514\">\r\n<p data-start=\"380\" data-end=\"514\"><strong data-start=\"380\" data-end=\"414\">University Halls of Residence:</strong> On-campus or university-managed housing with modern facilities and student-friendly environments.</p>\r\n</li><li data-start=\"515\" data-end=\"637\">\r\n<p data-start=\"517\" data-end=\"637\"><strong data-start=\"517\" data-end=\"545\">Private Student Housing:</strong> Purpose-built accommodations offering flexibility, privacy, and shared or studio options.</p>\r\n</li><li data-start=\"638\" data-end=\"749\">\r\n<p data-start=\"640\" data-end=\"749\"><strong data-start=\"640\" data-end=\"653\">Homestay:</strong> Living with a local family for cultural experience, meals, and a supportive home environment.</p>\r\n</li><li data-start=\"750\" data-end=\"855\">\r\n<p data-start=\"752\" data-end=\"855\"><strong data-start=\"752\" data-end=\"774\">Shared Apartments:</strong> Cost-effective option for students who prefer independent living with roommates.</p>\r\n</li></ul>\r\n<p data-start=\"857\" data-end=\"904\"><strong data-start=\"857\" data-end=\"902\">How Insaf Education Consultancy Can Help:</strong></p>\r\n<ul data-start=\"905\" data-end=\"1110\"><li data-start=\"905\" data-end=\"978\">\r\n<p data-start=\"907\" data-end=\"978\">Assist in choosing accommodation that fits your budget and lifestyle.</p>\r\n</li><li data-start=\"979\" data-end=\"1038\">\r\n<p data-start=\"981\" data-end=\"1038\">Guide you through booking procedures and documentation.</p>\r\n</li><li data-start=\"1039\" data-end=\"1110\">\r\n<p data-start=\"1041\" data-end=\"1110\">Provide advice on location, safety, and proximity to your university.</p>\r\n</li></ul>\r\n<p data-start=\"1112\" data-end=\"1239\">With proper guidance, students can secure safe, affordable, and comfortable accommodation before starting their studies abroad.</p>', '2025-12-18 00:26:34', '2025-12-31 05:59:48');

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photo_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `achievements`
--

INSERT INTO `achievements` (`id`, `title`, `description`, `photo_path`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Image 1', 'Best Newcomer for 2024 - Gold', 'uploads/achievements/1765432882-ajqO2XTeEj.jpg', 1, '2025-12-10 23:57:41', '2025-12-18 05:27:02');

-- --------------------------------------------------------

--
-- Table structure for table `admissions`
--

CREATE TABLE `admissions` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admissions`
--

INSERT INTO `admissions` (`id`, `title`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(3, 'Admission Support', NULL, 1, '2025-12-18 00:12:39', '2025-12-18 00:12:39');

-- --------------------------------------------------------

--
-- Table structure for table `admission_items`
--

CREATE TABLE `admission_items` (
  `id` bigint UNSIGNED NOT NULL,
  `admission_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admission_items`
--

INSERT INTO `admission_items` (`id`, `admission_id`, `title`, `created_at`, `updated_at`) VALUES
(2, 3, 'Why Choose INSAF for Admission Support?', '2025-12-18 00:13:06', '2025-12-31 04:22:45');

-- --------------------------------------------------------

--
-- Table structure for table `admission_item_sections`
--

CREATE TABLE `admission_item_sections` (
  `id` bigint UNSIGNED NOT NULL,
  `admission_item_id` bigint UNSIGNED NOT NULL,
  `images` json DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admission_item_sections`
--

INSERT INTO `admission_item_sections` (`id`, `admission_item_id`, `images`, `description`, `created_at`, `updated_at`) VALUES
(2, 2, '[\"uploads/admission_item_sections/805d75d0-84ff-408b-a5f3-339362bc8e8a.jpg\"]', '<li data-start=\"134\" data-end=\"257\"><p data-start=\"136\" data-end=\"257\"><strong data-start=\"136\" data-end=\"156\">Expert Guidance:</strong> Our certified counselors (QEAC D468) provide professional advice tailored to each student’s goals.</p>\r\n</li><li data-start=\"258\" data-end=\"376\">\r\n<p data-start=\"260\" data-end=\"376\"><strong data-start=\"260\" data-end=\"285\">Personalized Support:</strong> From university selection to application submission, we guide you every step of the way.</p>\r\n</li><li data-start=\"377\" data-end=\"498\">\r\n<p data-start=\"379\" data-end=\"498\"><strong data-start=\"379\" data-end=\"404\">Global Opportunities:</strong> Access a wide range of study abroad programs and scholarships to build a successful career.</p>\r\n</li><li data-start=\"499\" data-end=\"590\">\r\n<p data-start=\"501\" data-end=\"590\"><strong data-start=\"501\" data-end=\"525\">Transparent Process:</strong> We ensure clarity, honesty, and integrity in all our services.</p>\r\n</li><li data-start=\"591\" data-end=\"693\">\r\n<p data-start=\"593\" data-end=\"693\"><strong data-start=\"593\" data-end=\"612\">Proven Success:</strong> Hundreds of students have achieved their dreams with our guidance and support.</p></li><br>', '2025-12-18 00:15:22', '2025-12-31 04:34:45');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `slug`, `image`, `description`, `date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'How to Choose the Right University for Your Future', 'how-to-choose-the-right-university-for-your-future', 'uploads/blogs/1767163759-Rov9gVRK5S.jpg', 'Selecting a university requires careful consideration of academic programs, location, tuition fees, and future career opportunities. Students should research university rankings, course content, and campus facilities before applying. Consulting with education experts can help students make informed and confident decisions.', '2025-12-10', 1, '2025-12-10 06:49:00', '2025-12-31 00:49:19');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_forms`
--

CREATE TABLE `contact_forms` (
  `id` bigint UNSIGNED NOT NULL,
  `Full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_forms`
--

INSERT INTO `contact_forms` (`id`, `Full_name`, `Email_address`, `Phone_number`, `Message`, `created_at`, `updated_at`) VALUES
(1, 'Md', 'hasan@example.com', '012020202020', 'test', '2025-12-22 07:19:15', '2025-12-22 07:19:15');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint UNSIGNED NOT NULL,
  `destination_id` bigint UNSIGNED NOT NULL,
  `office_id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `destination_id`, `office_id`, `first_name`, `last_name`, `email`, `phone`, `question_1`, `question_2`, `created_at`, `updated_at`) VALUES
(18, 3, 2, 'Md', 'Hasan', 'email+fakedata39240@gmail.com', '0120202020', 'IELTS', 'Self-funded', '2025-12-31 06:23:18', '2025-12-31 06:23:18');

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id`, `title`, `image`, `slug`, `country`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(3, 'Australia', 'uploads/destinations/1767158409-SdfJaVlQ56.jpg', 'australia', 'Australia', '<p>test</p>', 1, '2025-12-14 23:26:14', '2025-12-30 23:20:09'),
(4, 'UK', 'uploads/destinations/1767158322-aiiY10xdaI.jpg', 'uk', 'UK', '<p>Test</p>', 1, '2025-12-16 22:50:12', '2025-12-30 23:18:42');

-- --------------------------------------------------------

--
-- Table structure for table `destination_items`
--

CREATE TABLE `destination_items` (
  `id` bigint UNSIGNED NOT NULL,
  `destination_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destination_items`
--

INSERT INTO `destination_items` (`id`, `destination_id`, `title`, `created_at`, `updated_at`) VALUES
(9, 3, 'Why Study in Australia?', '2025-12-16 23:32:24', '2025-12-16 23:33:06'),
(10, 4, 'Why Study in the UK?', '2025-12-16 23:33:29', '2025-12-16 23:33:29'),
(11, 3, 'Cost of Studying in Australia', '2025-12-17 04:27:40', '2025-12-17 04:27:40'),
(12, 4, 'Cost of Studying in UK', '2025-12-31 04:14:50', '2025-12-31 04:15:05');

-- --------------------------------------------------------

--
-- Table structure for table `destination_item_sections`
--

CREATE TABLE `destination_item_sections` (
  `id` bigint UNSIGNED NOT NULL,
  `destination_item_id` bigint UNSIGNED NOT NULL,
  `images` json DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destination_item_sections`
--

INSERT INTO `destination_item_sections` (`id`, `destination_item_id`, `images`, `description`, `created_at`, `updated_at`) VALUES
(6, 10, '[]', '<div class=\"elementor-element elementor-element-124938e elementor-widget elementor-widget-text-editor\" data-id=\"124938e\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n				<div class=\"elementor-widget-container\">\r\n									<p><span style=\"font-weight: 400;\">The United Kingdom is \r\nrenowned for its longstanding tradition of high-quality education, \r\nattracting a significant number of international students each year. Its\r\n universities have established a strong reputation for nurturing \r\nacademic talent. One of the notable advantages of studying in the UK is \r\nthe wide range of degree programs available, complemented by relatively \r\naffordable tuition fees compared to many other countries.&nbsp;</span></p><p><span style=\"font-weight: 400;\">Moreover,\r\n the UK offers a post-study visa option, enabling graduates to seek \r\nemployment immediately after finishing their courses. Once students \r\nsecure a relevant job, they can apply for residency and become a citizen\r\n over time. The visa application and university admission processes are \r\ngenerally straightforward, making the UK an attractive destination for \r\nthose looking to further their education abroad.</span></p>								</div>\r\n				</div><p><br></p>', '2025-12-16 23:34:14', '2025-12-16 23:34:14'),
(7, 9, '[\"uploads/destination_item_sections/a6d01d85-541a-4fd5-a6b2-f03667b528fa.jpg\"]', '<p><span style=\"font-weight: 400;\">Australia is a top destination for \r\nstudents from Bangladesh who wish to study abroad and eventually settle \r\ndown. Many Bangladeshi students prefer to study in Australia due to its \r\nprestigious universities and international perspective, which provide a \r\nwide range of subjects. Now, you have the opportunity to do the same. \r\nPursuing your education in Australia will offer you the best learning \r\nexperience possible. The Australian education system is unique and \r\nattracts students from around the world. Additionally, the language of \r\ninstruction is English, making it easier for many Bangladeshi students \r\nto learn. Here are the primary reasons why Australia is a preferred \r\nchoice for education.</span></p>', '2025-12-16 23:34:37', '2025-12-31 04:10:47'),
(8, 11, '[]', '<div class=\"elementor-element elementor-element-ddc01ea elementor-widget elementor-widget-text-editor\" data-id=\"ddc01ea\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n				<div class=\"elementor-widget-container\">\r\n									<p><span style=\"font-weight: 400;\">Australia offers a variety \r\nof degree programs tailored to the needs of Bangladeshi students. With \r\nnumerous scholarships available, the process of studying is made more \r\naccessible. The costs of accommodation, groceries, and transportation \r\nare also relatively low. Thus, Australia is an attractive destination \r\nfor education.</span></p><p><span style=\"font-weight: 400;\"><br></span></p><p><span style=\"font-weight: 400;\">Additionally,\r\n Bangladeshi students can obtain work permits while studying. Tuition \r\nfees for bachelor’s degrees start at AUD 20,000, while master’s degrees \r\ncan cost up to AUD 25,000. Doctoral programs are generally more \r\nexpensive, at around AUD 32,000; however, various scholarships are \r\navailable to help offset these costs. Overall, the cost of studying in \r\nAustralia is among the lowest compared to many other countries \r\nworldwide.<br><br><br></span></p>								</div>\r\n				</div><p><br></p>', '2025-12-17 04:28:24', '2025-12-17 04:38:12'),
(9, 12, '[\"uploads/destination_item_sections/db9e8d86-63ce-4318-bb31-9e9530cddc17.jpg\"]', '<div class=\"elementor-element elementor-element-23e434d elementor-widget elementor-widget-text-editor\" data-id=\"23e434d\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n				<div class=\"elementor-widget-container\">\r\n									<p><span style=\"font-weight: 400\">The costs of studying in the \r\nUK can vary significantly, offering a unique opportunity to shape your \r\njourney. Choosing a vibrant city near the heart of the UK may come with \r\nhigher expenses, but it also provides a dynamic environment for growth. \r\nAlternatively, universities located further from the city center \r\ntypically present more affordable options. Your investment will depend \r\non the specific course you select, with research-based programs often \r\nreflecting the depth of knowledge they provide.&nbsp;</span></p><p><span style=\"font-weight: 400\">Generally,\r\n undergraduate programs cost around £12,000, with some inspiring \r\npathways reaching up to £35,000. Master’s degree courses fall within a \r\nsimilar range, while MBA programs offer a transformative experience for \r\nabout £60,000.&nbsp;</span></p>								</div>\r\n				</div><p><br></p>', '2025-12-31 04:15:51', '2025-12-31 04:15:51');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photo_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `photo_path`, `start_date`, `start_time`, `end_time`, `end_date`, `location`, `is_active`, `created_at`, `updated_at`) VALUES
(5, 'Insaf Education Consultancy Seminar', '<p>Insaf Education Consultancy provides professional guidance for students seeking higher education opportunities both locally and internationally. The consultancy offers support in university selection, admission processing, scholarship guidance, and visa assistance. With a student-focused approach, Insaf Education Consultancy helps learners make confident and informed decisions for their academic and career goals.</p>', 'uploads/events/1767162091-h4V1HPHoqo.jpg', '2025-12-20', '2025-12-31 10:00:00', '2025-12-31 11:00:00', '2025-12-26', 'Dhaka', 1, '2025-12-20 05:39:06', '2025-12-31 00:24:13');

-- --------------------------------------------------------

--
-- Table structure for table `event_items`
--

CREATE TABLE `event_items` (
  `id` bigint UNSIGNED NOT NULL,
  `event_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_items`
--

INSERT INTO `event_items` (`id`, `event_id`, `title`, `created_at`, `updated_at`) VALUES
(2, 5, 'Explore Your Future at Insaf Global Australia Education Expo 2026!', '2025-12-22 01:53:19', '2025-12-31 00:25:20');

-- --------------------------------------------------------

--
-- Table structure for table `event_item_sections`
--

CREATE TABLE `event_item_sections` (
  `id` bigint UNSIGNED NOT NULL,
  `event_item_id` bigint UNSIGNED NOT NULL,
  `images` json DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_item_sections`
--

INSERT INTO `event_item_sections` (`id`, `event_item_id`, `images`, `description`, `created_at`, `updated_at`) VALUES
(2, 2, '[\"uploads/event_item_sections/da08aeb4-fac0-45c6-9ef1-668962c1f893.jpg\"]', '<p data-start=\"109\" data-end=\"496\"><strong data-start=\"109\" data-end=\"131\">Event Description:</strong><br data-start=\"131\" data-end=\"134\">\r\nThis info session is organized by Insaf Education Consultancy to guide students and parents on higher education opportunities in Bangladesh and abroad. The session will cover university admissions, study abroad options, scholarship opportunities, and visa guidance. Participants will also get the chance to consult directly with experienced education counselors.</p>\r\n<p data-start=\"498\" data-end=\"523\"><strong data-start=\"498\" data-end=\"507\">Date:</strong><br data-start=\"507\" data-end=\"510\">\r\n15 March 2025</p>\r\n<p data-start=\"525\" data-end=\"555\"><strong data-start=\"525\" data-end=\"534\">Time:</strong><br data-start=\"534\" data-end=\"537\">\r\n10:00 AM – 4:00 PM</p>\r\n<p data-start=\"557\" data-end=\"614\"><strong data-start=\"557\" data-end=\"570\">Location:</strong><br data-start=\"570\" data-end=\"573\">\r\nInsaf Education Consultancy Office, Dhaka</p>\r\n<p data-start=\"616\" data-end=\"723\"><strong data-start=\"616\" data-end=\"636\">Target Audience:</strong><br data-start=\"636\" data-end=\"639\">\r\nStudents, parents, and guardians interested in higher education and career planning.</p>\r\n<p data-start=\"725\" data-end=\"753\"><strong data-start=\"725\" data-end=\"746\">Registration Fee:</strong><br data-start=\"746\" data-end=\"749\">\r\nFree</p>\r\n<p data-start=\"755\" data-end=\"838\"><strong data-start=\"755\" data-end=\"779\">Contact Information:</strong><br data-start=\"779\" data-end=\"782\">\r\nPhone: +880 1XXX-XXXXXX</p><br>', '2025-12-22 01:57:32', '2025-12-31 00:27:10');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(3, 'How much do you charge for the file processing?', 'We do not charge any kind of application or visa processing fees for the universities and colleges under our portal. Our services for our students are completely free.', '2025-12-22 05:48:58', '2025-12-22 05:48:58');

-- --------------------------------------------------------

--
-- Table structure for table `healths`
--

CREATE TABLE `healths` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `healths`
--

INSERT INTO `healths` (`id`, `title`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'Health Insurance', NULL, 1, '2025-12-18 00:18:03', '2025-12-18 00:18:03');

-- --------------------------------------------------------

--
-- Table structure for table `health_items`
--

CREATE TABLE `health_items` (
  `id` bigint UNSIGNED NOT NULL,
  `health_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `health_items`
--

INSERT INTO `health_items` (`id`, `health_id`, `title`, `created_at`, `updated_at`) VALUES
(2, 2, 'What Is Overseas Student Health Insurance?', '2025-12-18 00:21:02', '2025-12-18 00:21:02');

-- --------------------------------------------------------

--
-- Table structure for table `health_item_sections`
--

CREATE TABLE `health_item_sections` (
  `id` bigint UNSIGNED NOT NULL,
  `health_item_id` bigint UNSIGNED NOT NULL,
  `images` json DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `health_item_sections`
--

INSERT INTO `health_item_sections` (`id`, `health_item_id`, `images`, `description`, `created_at`, `updated_at`) VALUES
(2, 2, '[\"uploads/health_item_sections/13967350-6d7a-432c-aa0f-276754f884c7.jpeg\"]', '<p>If you are contemplating studying abroad, you should be aware that some \r\ncountries may insist on student health insurance coverage. Even if they \r\ndon’t, considering the exorbitant medical costs in foreign countries, \r\nhaving student health cover is prudent to avoid financial burdens while \r\nstudying abroad. These health insurance plans typically cover pre and \r\npost-hospitalisation expenses, prescription medicines, and the cost of \r\nsurgeries. <br><br>Students who purchase health plans from foreign \r\ncountries while studying abroad will pay heavy premiums. Getting \r\ncoverage under the best health insurance plans in India can be more \r\neconomical. <br><br>So, students studying abroad or planning to study \r\nabroad should have a student health cover to avoid additional financial \r\nburdens.</p><p><br></p><p><br></p>', '2025-12-18 00:21:32', '2025-12-31 04:56:15');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2022_05_17_181447_create_roles_table', 1),
(5, '2022_05_17_181456_create_user_roles_table', 1),
(6, '2025_01_01_000001_create_privileges_table', 1),
(7, '2025_01_01_000002_create_privilege_role_table', 1),
(8, '2025_01_01_000003_add_suspension_columns_to_users_table', 1),
(9, '2025_12_09_053300_create_personal_access_tokens_table', 1),
(10, '2025_12_09_110522_create_sliders_table', 1),
(11, '2025_12_10_055146_create_why_choose_us_table', 2),
(12, '2025_12_10_055147_create_why_choose_us_table', 3),
(13, '2025_12_10_075003_create_events_table', 4),
(14, '2025_12_10_092554_create_partners_table', 5),
(15, '2025_12_10_104728_create_reviews_table', 6),
(16, '2025_12_10_111418_create_offices_table', 7),
(17, '2025_12_10_115151_create_destinations_table', 8),
(18, '2025_12_10_121019_create_contact_us_table', 9),
(19, '2025_12_10_123628_create_blogs_table', 10),
(20, '2025_12_11_044424_create_testimonials_table', 11),
(21, '2025_12_11_051013_create_teams_table', 12),
(22, '2025_12_11_054545_create_achievements_table', 13),
(23, '2025_12_11_062211_create_destination_items_table', 14),
(24, '2025_12_11_070203_create_destination_item_sections_table', 14),
(25, '2025_12_11_070204_create_destination_item_sections_table', 15),
(26, '2025_12_11_123010_create_faqs_table', 16),
(27, '2025_12_13_043155_create_scholarships_table', 17),
(28, '2025_12_13_044943_create_scholarship_items_table', 18),
(29, '2025_12_13_051632_create_scholarship_item_sections_table', 19),
(30, '2025_12_13_062804_create_admissions_table', 20),
(31, '2025_12_13_064523_create_admission_items_table', 21),
(32, '2025_12_13_065743_create_admission_item_sections_table', 22),
(33, '2025_12_13_074138_create_healths_table', 23),
(34, '2025_12_13_075758_create_health_items_table', 24),
(35, '2025_12_13_081001_create_health_item_sections_table', 25),
(36, '2025_12_13_082439_create_accommodations_table', 26),
(37, '2025_12_13_092215_create_accommodation_items_table', 27),
(38, '2025_12_13_093136_create_accommodation_item_sections_table', 28),
(39, '2025_12_13_095042_create_visas_table', 29),
(40, '2025_12_13_103129_create_visa_items_table', 30),
(41, '2025_12_13_104146_create_visa_item_sections_table', 31),
(42, '2025_12_13_105136_create_privacy_policies_table', 32),
(43, '2025_12_13_105521_create_terms_conditions_table', 32),
(44, '2025_12_15_045416_add_image_to_destinations_table', 33),
(45, '2025_12_15_070403_add_fields_to_events_table', 34),
(46, '2025_12_15_074001_create_event_items_table', 35),
(47, '2025_12_15_090346_create_event_item_sections_table', 36),
(48, '2025_12_20_120540_create_abouts_table', 37),
(49, '2025_12_20_120929_create_about_items_table', 37),
(50, '2025_12_22_121502_create_contact_forms_table', 38),
(51, '2025_12_22_193408_add_is_primary_to_offices_table', 39),
(52, '2025_12_23_053511_add_country_to_offices_table', 40),
(53, '2025_12_24_063228_add_image_to_scholarship_table', 41);

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE `offices` (
  `id` bigint UNSIGNED NOT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`id`, `location`, `country`, `address`, `phone`, `email`, `is_primary`, `created_at`, `updated_at`) VALUES
(2, 'Dhanmondi', 'Bangladesh', '<p>&nbsp;Plot-390, Road-27</p>', '+880 9609 80 03 00', 'test@example.com', 0, '2025-12-21 00:40:02', '2025-12-31 06:18:51'),
(3, 'Banani', 'Bangladesh', '<p>Road: 7, Block: E</p>', '+880 9609 80 07 00', 'test1@example.com', 1, '2025-12-22 05:04:38', '2025-12-31 06:18:12'),
(4, 'Sydney', 'Australia', '<p><strong data-start=\"174\" data-end=\"196\"> </strong><span data-start=\"174\" data-end=\"196\">Level 5</span>, Pitt Street</p>', '+880 9609 80 05 00', 'test@example.com', 0, '2025-12-22 23:43:22', '2025-12-31 06:19:51');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photo_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `title`, `description`, `photo_path`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'Partner 1', '<p>This is a test.</p>', 'uploads/partners/1766401097-Ma8GlFk9XP.jpg', 1, '2025-12-22 04:58:17', '2025-12-23 00:26:39');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privacy_policies`
--

CREATE TABLE `privacy_policies` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacy_policies`
--

INSERT INTO `privacy_policies` (`id`, `title`, `subtitle`, `description`, `created_at`, `updated_at`) VALUES
(1, 'sfherh', 'rherthh', '<span style=\"background-color: rgb(255, 255, 0);\">fhfdghdfhdfgxn</span>', '2025-12-13 05:06:20', '2025-12-13 06:42:15');

-- --------------------------------------------------------

--
-- Table structure for table `privileges`
--

CREATE TABLE `privileges` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privilege_role`
--

CREATE TABLE `privilege_role` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `privilege_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `title`, `subtitle`, `content`, `image_path`, `is_active`, `created_at`, `updated_at`) VALUES
(3, 'Review 1', NULL, NULL, 'uploads/reviews/1767163484-pUWnPvDATI.png', 1, '2025-12-22 05:01:07', '2025-12-31 00:44:44');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scholarships`
--

CREATE TABLE `scholarships` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `scholarships`
--

INSERT INTO `scholarships` (`id`, `title`, `slug`, `country`, `description`, `is_active`, `created_at`, `updated_at`, `image`) VALUES
(3, 'uk', 'uk', 'UK', NULL, 1, '2025-12-17 06:34:49', '2025-12-31 05:05:54', 'uploads/scholarships/1767179154-xEBhBoRYOj.jpg'),
(4, 'Australia', 'australia', 'Australia', NULL, 1, '2025-12-24 00:54:04', '2025-12-31 05:05:39', 'uploads/scholarships/1767179139-QCV1LeQBKs.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `scholarship_items`
--

CREATE TABLE `scholarship_items` (
  `id` bigint UNSIGNED NOT NULL,
  `scholarship_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `scholarship_items`
--

INSERT INTO `scholarship_items` (`id`, `scholarship_id`, `title`, `created_at`, `updated_at`) VALUES
(2, 3, 'Scholarships in the UK', '2025-12-17 06:37:42', '2025-12-17 06:50:54'),
(3, 4, 'Scholarships in Australia', '2025-12-31 05:08:44', '2025-12-31 05:08:44');

-- --------------------------------------------------------

--
-- Table structure for table `scholarship_item_sections`
--

CREATE TABLE `scholarship_item_sections` (
  `id` bigint UNSIGNED NOT NULL,
  `scholarship_item_id` bigint UNSIGNED NOT NULL,
  `images` json DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `scholarship_item_sections`
--

INSERT INTO `scholarship_item_sections` (`id`, `scholarship_item_id`, `images`, `description`, `created_at`, `updated_at`) VALUES
(8, 2, '[\"uploads/scholarship_item_sections/00005a1f-6b0d-40fe-af48-560ec0d83821.jpg\"]', '<h5 data-start=\"99\" data-end=\"129\"><span style=\"font-weight: normal;\">Studying in the UK can be a life-changing opportunity, and scholarships can make it more affordable. UK universities offer a variety of scholarships for international students based on academic merit, financial need, and specific fields of study.</span></h5><h5 data-start=\"99\" data-end=\"129\"><span style=\"font-weight: normal;\"><br></span></h5>\r\n<p data-start=\"381\" data-end=\"411\"><strong data-start=\"381\" data-end=\"409\">Popular UK Scholarships:</strong></p>\r\n<ul data-start=\"412\" data-end=\"764\"><li data-start=\"412\" data-end=\"519\">\r\n<p data-start=\"414\" data-end=\"519\"><strong data-start=\"414\" data-end=\"441\">Chevening Scholarships:</strong> Fully-funded awards for future leaders pursuing a one-year master’s degree.</p>\r\n</li><li data-start=\"520\" data-end=\"628\">\r\n<p data-start=\"522\" data-end=\"628\"><strong data-start=\"522\" data-end=\"552\">Commonwealth Scholarships:</strong> Support students from developing countries for master’s and PhD programs.</p>\r\n</li><li data-start=\"629\" data-end=\"764\">\r\n<p data-start=\"631\" data-end=\"764\"><strong data-start=\"631\" data-end=\"668\">University-specific Scholarships:</strong> Many UK universities offer merit-based or need-based scholarships for international students.</p>\r\n</li></ul>\r\n<p data-start=\"766\" data-end=\"813\"><strong data-start=\"766\" data-end=\"811\">How Insaf Education Consultancy Can Help:</strong></p>\r\n<ul data-start=\"814\" data-end=\"999\"><li data-start=\"814\" data-end=\"864\">\r\n<p data-start=\"816\" data-end=\"864\">Identify scholarships that match your profile.</p>\r\n</li><li data-start=\"865\" data-end=\"911\">\r\n<p data-start=\"867\" data-end=\"911\">Guide you through the application process.</p>\r\n</li><li data-start=\"912\" data-end=\"999\">\r\n<p data-start=\"914\" data-end=\"999\">Help prepare strong personal statements, recommendation letters, and documentation.</p>\r\n</li></ul>\r\n<p data-start=\"1001\" data-end=\"1140\">With proper guidance, students can significantly reduce tuition costs and secure financial support for a successful UK education journey.</p><br>', '2025-12-17 06:38:07', '2025-12-31 05:09:43'),
(9, 3, '[\"uploads/scholarship_item_sections/98a59b58-1786-45ab-be13-2fb04979e00e.jpg\"]', '<h5 data-start=\"137\" data-end=\"373\">Australia is a popular destination for international students, offering high-quality education and diverse opportunities. Scholarships help make studying in Australia more affordable by covering tuition fees, living expenses, or both.</h5>\r\n<p data-start=\"375\" data-end=\"413\"><strong data-start=\"375\" data-end=\"411\">Popular Australian Scholarships:</strong></p>\r\n<ul data-start=\"414\" data-end=\"836\"><li data-start=\"414\" data-end=\"566\">\r\n<p data-start=\"416\" data-end=\"566\"><strong data-start=\"416\" data-end=\"450\">Australia Awards Scholarships:</strong> Fully-funded scholarships for students from developing countries to pursue undergraduate or postgraduate degrees.</p>\r\n</li><li data-start=\"567\" data-end=\"681\">\r\n<p data-start=\"569\" data-end=\"681\"><strong data-start=\"569\" data-end=\"603\">Destination Australia Program:</strong> Supports students studying in regional Australia with financial assistance.</p>\r\n</li><li data-start=\"682\" data-end=\"836\">\r\n<p data-start=\"684\" data-end=\"836\"><strong data-start=\"684\" data-end=\"721\">University-specific Scholarships:</strong> Many Australian universities offer merit-based, need-based, or research scholarships for international students.</p>\r\n</li></ul>\r\n<p data-start=\"838\" data-end=\"885\"><strong data-start=\"838\" data-end=\"883\">How Insaf Education Consultancy Can Help:</strong></p>\r\n<ul data-start=\"886\" data-end=\"1117\"><li data-start=\"886\" data-end=\"954\">\r\n<p data-start=\"888\" data-end=\"954\">Identify scholarships suited to your academic profile and goals.</p>\r\n</li><li data-start=\"955\" data-end=\"1053\">\r\n<p data-start=\"957\" data-end=\"1053\">Assist with application preparation, including personal statements and recommendation letters.</p>\r\n</li><li data-start=\"1054\" data-end=\"1117\">\r\n<p data-start=\"1056\" data-end=\"1117\">Provide guidance on deadlines and eligibility requirements.</p>\r\n</li></ul>\r\n<p data-start=\"1119\" data-end=\"1263\">With the right guidance, students can maximize their chances of securing scholarships and enjoy a rewarding education experience in Australia.</p><p><br></p>', '2025-12-31 05:09:12', '2025-12-31 05:10:11');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('A8t6ROgxnclvrUCLRwdmrQyIncL9N916oO2BMvCe', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoickVuM09iZUt0WDV5NWFVcDlWRktjVXN0OWZ5YTYwaFJKTjhTVW9oOCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zY2hvbGFyc2hpcCI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6MTA6InR5cm8tbG9naW4iO2E6MTp7czo3OiJjYXB0Y2hhIjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1767185701),
('zHi5r3nQK9Gt28MvcYfE9rCDecPBG7ixCAXId705', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNHJZR0NVVEpWUUk4YjB5YmZVQ29zdkRiS3RhWGdxb1FxNFZUZVNnTCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7czo0OiJob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1767179962);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `subtitle`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(6, 'Test', NULL, 'uploads/sliders/1767159164-vspLHdGwLb.jpg', 1, '2025-12-30 23:32:44', '2025-12-31 00:40:30');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `designation`, `photo_path`, `content`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Md kamruzzaman', 'CEO', 'uploads/team/1767171304-ChjeXJyYEC.jpg', 'Driven by a strong belief in the power of education to transform lives.<br><br>Guided by certified expertise (QEAC D468) and a strong commitment to student success.<br><br>Dedicated to creating life-changing opportunities, global careers, and brighter futures abroad.', 1, '2025-12-10 23:23:06', '2025-12-31 03:04:11');

-- --------------------------------------------------------

--
-- Table structure for table `terms_conditions`
--

CREATE TABLE `terms_conditions` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms_conditions`
--

INSERT INTO `terms_conditions` (`id`, `title`, `subtitle`, `description`, `created_at`, `updated_at`) VALUES
(1, 'sdhsdhasdgadg', 'dthshdfgdsg', '<span style=\"background-color: rgb(255, 255, 0);\"><b><u>sdgswgsdgsdfgasdgwergtsfdgbsdfb</u></b></span>', '2025-12-13 05:15:02', '2025-12-13 06:44:16');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint UNSIGNED NOT NULL,
  `quote` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `quote`, `student_name`, `designation`, `image_path`, `video_url`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Test', 'Md Shahin', 'Student', NULL, 'https://youtu.be/MwMJJtIie_I', 1, '2025-12-10 22:58:09', '2025-12-18 06:24:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `suspended_at` timestamp NULL DEFAULT NULL,
  `suspension_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `suspended_at`, `suspension_reason`) VALUES
(1, 'Inoodex', 'hello@inoodex.com', NULL, '$2y$12$WY3ZDqc79mI0dv9X6rkJhuuCKjhAUM0Kr.7FFQH.6Xoza22mM6.Za', 'CMO2hXV2ACla2xzyvRu2LyhDuqv42dQyg1WM9tMFlQPpSa5BEfIxv9B2P34k', '2025-12-09 23:03:03', '2025-12-09 23:03:03', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visas`
--

CREATE TABLE `visas` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visas`
--

INSERT INTO `visas` (`id`, `title`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'Visa Service', NULL, 1, '2025-12-18 00:29:16', '2025-12-18 00:29:16');

-- --------------------------------------------------------

--
-- Table structure for table `visa_items`
--

CREATE TABLE `visa_items` (
  `id` bigint UNSIGNED NOT NULL,
  `visa_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visa_items`
--

INSERT INTO `visa_items` (`id`, `visa_id`, `title`, `created_at`, `updated_at`) VALUES
(2, 2, 'Why Choose INSAF for Visa Services?', '2025-12-18 00:30:34', '2025-12-31 04:25:20');

-- --------------------------------------------------------

--
-- Table structure for table `visa_item_sections`
--

CREATE TABLE `visa_item_sections` (
  `id` bigint UNSIGNED NOT NULL,
  `visa_item_id` bigint UNSIGNED NOT NULL,
  `images` json DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visa_item_sections`
--

INSERT INTO `visa_item_sections` (`id`, `visa_item_id`, `images`, `description`, `created_at`, `updated_at`) VALUES
(2, 2, '[\"uploads/visa_item_sections/07c54dab-bc3c-4886-9316-c373968d6a63.jpg\"]', '<li data-start=\"126\" data-end=\"267\"><p data-start=\"128\" data-end=\"267\"><strong data-start=\"128\" data-end=\"150\">Expert Assistance:</strong> Our certified consultants (QEAC D468) guide you through the visa application process with accuracy and confidence.</p>\r\n</li><li data-start=\"268\" data-end=\"382\">\r\n<p data-start=\"270\" data-end=\"382\"><strong data-start=\"270\" data-end=\"295\">Up-to-Date Knowledge:</strong> We stay updated on all visa regulations and requirements for top study destinations.</p>\r\n</li><li data-start=\"383\" data-end=\"495\">\r\n<p data-start=\"385\" data-end=\"495\"><strong data-start=\"385\" data-end=\"410\">Personalized Support:</strong> From document preparation to interview coaching, we provide step-by-step guidance.</p>\r\n</li><li data-start=\"496\" data-end=\"600\">\r\n<p data-start=\"498\" data-end=\"600\"><strong data-start=\"498\" data-end=\"520\">High Success Rate:</strong> Many students have successfully obtained visas with our professional support.</p>\r\n</li><li data-start=\"601\" data-end=\"707\">\r\n<p data-start=\"603\" data-end=\"707\"><strong data-start=\"603\" data-end=\"630\">Transparent &amp; Reliable:</strong> Clear communication and honest advice at every stage of your visa journey.</p></li><br>', '2025-12-18 00:31:26', '2025-12-31 04:57:26');

-- --------------------------------------------------------

--
-- Table structure for table `why_choose_us`
--

CREATE TABLE `why_choose_us` (
  `id` bigint UNSIGNED NOT NULL,
  `students` int NOT NULL DEFAULT '0',
  `partners` int NOT NULL DEFAULT '0',
  `visa_grants` int NOT NULL DEFAULT '0',
  `years` int NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `why_choose_us`
--

INSERT INTO `why_choose_us` (`id`, `students`, `partners`, `visa_grants`, `years`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(4, 2000, 15, 96, 15, NULL, 1, '2025-12-21 00:31:49', '2025-12-21 00:37:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_items`
--
ALTER TABLE `about_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `about_items_about_id_foreign` (`about_id`);

--
-- Indexes for table `accommodations`
--
ALTER TABLE `accommodations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accommodation_items`
--
ALTER TABLE `accommodation_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accommodation_items_accommodation_id_foreign` (`accommodation_id`);

--
-- Indexes for table `accommodation_item_sections`
--
ALTER TABLE `accommodation_item_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accommodation_item_sections_accommodation_item_id_foreign` (`accommodation_item_id`);

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admissions`
--
ALTER TABLE `admissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admission_items`
--
ALTER TABLE `admission_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admission_items_admission_id_foreign` (`admission_id`);

--
-- Indexes for table `admission_item_sections`
--
ALTER TABLE `admission_item_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admission_item_sections_admission_item_id_foreign` (`admission_item_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_slug_unique` (`slug`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `contact_forms`
--
ALTER TABLE `contact_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact_us_email_unique` (`email`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `destinations_slug_unique` (`slug`);

--
-- Indexes for table `destination_items`
--
ALTER TABLE `destination_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destination_items_destination_id_foreign` (`destination_id`);

--
-- Indexes for table `destination_item_sections`
--
ALTER TABLE `destination_item_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destination_item_sections_destination_item_id_foreign` (`destination_item_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_items`
--
ALTER TABLE `event_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_items_event_id_foreign` (`event_id`);

--
-- Indexes for table `event_item_sections`
--
ALTER TABLE `event_item_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_item_sections_event_item_id_foreign` (`event_item_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `healths`
--
ALTER TABLE `healths`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `health_items`
--
ALTER TABLE `health_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `health_items_health_id_foreign` (`health_id`);

--
-- Indexes for table `health_item_sections`
--
ALTER TABLE `health_item_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `health_item_sections_health_item_id_foreign` (`health_item_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privileges`
--
ALTER TABLE `privileges`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `privileges_slug_unique` (`slug`);

--
-- Indexes for table `privilege_role`
--
ALTER TABLE `privilege_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `privilege_role_role_id_privilege_id_unique` (`role_id`,`privilege_id`),
  ADD KEY `privilege_role_privilege_id_foreign` (`privilege_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_slug_index` (`slug`);

--
-- Indexes for table `scholarships`
--
ALTER TABLE `scholarships`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `scholarships_slug_unique` (`slug`);

--
-- Indexes for table `scholarship_items`
--
ALTER TABLE `scholarship_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scholarship_items_scholarship_id_foreign` (`scholarship_id`);

--
-- Indexes for table `scholarship_item_sections`
--
ALTER TABLE `scholarship_item_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scholarship_item_sections_scholarship_item_id_foreign` (`scholarship_item_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms_conditions`
--
ALTER TABLE `terms_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_roles_user_id_role_id_unique` (`user_id`,`role_id`),
  ADD KEY `user_roles_role_id_foreign` (`role_id`);

--
-- Indexes for table `visas`
--
ALTER TABLE `visas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visa_items`
--
ALTER TABLE `visa_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visa_items_visa_id_foreign` (`visa_id`);

--
-- Indexes for table `visa_item_sections`
--
ALTER TABLE `visa_item_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visa_item_sections_visa_item_id_foreign` (`visa_item_id`);

--
-- Indexes for table `why_choose_us`
--
ALTER TABLE `why_choose_us`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `about_items`
--
ALTER TABLE `about_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `accommodations`
--
ALTER TABLE `accommodations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `accommodation_items`
--
ALTER TABLE `accommodation_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `accommodation_item_sections`
--
ALTER TABLE `accommodation_item_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `achievements`
--
ALTER TABLE `achievements`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admissions`
--
ALTER TABLE `admissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admission_items`
--
ALTER TABLE `admission_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admission_item_sections`
--
ALTER TABLE `admission_item_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact_forms`
--
ALTER TABLE `contact_forms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `destination_items`
--
ALTER TABLE `destination_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `destination_item_sections`
--
ALTER TABLE `destination_item_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `event_items`
--
ALTER TABLE `event_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `event_item_sections`
--
ALTER TABLE `event_item_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `healths`
--
ALTER TABLE `healths`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `health_items`
--
ALTER TABLE `health_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `health_item_sections`
--
ALTER TABLE `health_item_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `offices`
--
ALTER TABLE `offices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `privileges`
--
ALTER TABLE `privileges`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `privilege_role`
--
ALTER TABLE `privilege_role`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `scholarships`
--
ALTER TABLE `scholarships`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `scholarship_items`
--
ALTER TABLE `scholarship_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `scholarship_item_sections`
--
ALTER TABLE `scholarship_item_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `terms_conditions`
--
ALTER TABLE `terms_conditions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visas`
--
ALTER TABLE `visas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `visa_items`
--
ALTER TABLE `visa_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `visa_item_sections`
--
ALTER TABLE `visa_item_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `why_choose_us`
--
ALTER TABLE `why_choose_us`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `about_items`
--
ALTER TABLE `about_items`
  ADD CONSTRAINT `about_items_about_id_foreign` FOREIGN KEY (`about_id`) REFERENCES `abouts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `accommodation_items`
--
ALTER TABLE `accommodation_items`
  ADD CONSTRAINT `accommodation_items_accommodation_id_foreign` FOREIGN KEY (`accommodation_id`) REFERENCES `accommodations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `accommodation_item_sections`
--
ALTER TABLE `accommodation_item_sections`
  ADD CONSTRAINT `accommodation_item_sections_accommodation_item_id_foreign` FOREIGN KEY (`accommodation_item_id`) REFERENCES `accommodation_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admission_items`
--
ALTER TABLE `admission_items`
  ADD CONSTRAINT `admission_items_admission_id_foreign` FOREIGN KEY (`admission_id`) REFERENCES `admissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admission_item_sections`
--
ALTER TABLE `admission_item_sections`
  ADD CONSTRAINT `admission_item_sections_admission_item_id_foreign` FOREIGN KEY (`admission_item_id`) REFERENCES `admission_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `destination_items`
--
ALTER TABLE `destination_items`
  ADD CONSTRAINT `destination_items_destination_id_foreign` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `destination_item_sections`
--
ALTER TABLE `destination_item_sections`
  ADD CONSTRAINT `destination_item_sections_destination_item_id_foreign` FOREIGN KEY (`destination_item_id`) REFERENCES `destination_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `event_items`
--
ALTER TABLE `event_items`
  ADD CONSTRAINT `event_items_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `event_item_sections`
--
ALTER TABLE `event_item_sections`
  ADD CONSTRAINT `event_item_sections_event_item_id_foreign` FOREIGN KEY (`event_item_id`) REFERENCES `event_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `health_items`
--
ALTER TABLE `health_items`
  ADD CONSTRAINT `health_items_health_id_foreign` FOREIGN KEY (`health_id`) REFERENCES `healths` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `health_item_sections`
--
ALTER TABLE `health_item_sections`
  ADD CONSTRAINT `health_item_sections_health_item_id_foreign` FOREIGN KEY (`health_item_id`) REFERENCES `health_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `privilege_role`
--
ALTER TABLE `privilege_role`
  ADD CONSTRAINT `privilege_role_privilege_id_foreign` FOREIGN KEY (`privilege_id`) REFERENCES `privileges` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `privilege_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `scholarship_items`
--
ALTER TABLE `scholarship_items`
  ADD CONSTRAINT `scholarship_items_scholarship_id_foreign` FOREIGN KEY (`scholarship_id`) REFERENCES `scholarships` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `scholarship_item_sections`
--
ALTER TABLE `scholarship_item_sections`
  ADD CONSTRAINT `scholarship_item_sections_scholarship_item_id_foreign` FOREIGN KEY (`scholarship_item_id`) REFERENCES `scholarship_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `visa_items`
--
ALTER TABLE `visa_items`
  ADD CONSTRAINT `visa_items_visa_id_foreign` FOREIGN KEY (`visa_id`) REFERENCES `visas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `visa_item_sections`
--
ALTER TABLE `visa_item_sections`
  ADD CONSTRAINT `visa_item_sections_visa_item_id_foreign` FOREIGN KEY (`visa_item_id`) REFERENCES `visa_items` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
