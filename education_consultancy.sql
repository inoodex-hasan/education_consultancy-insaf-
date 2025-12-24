-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 24, 2025 at 10:07 AM
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
(1, 'Who are we?', NULL, 1, '2025-12-20 06:22:24', '2025-12-20 06:48:34');

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
(1, 1, '<div class=\"space-y-6 text-gray-700 text-lg leading-relaxed\"><p class=\"font-mont\">Our journey started with a single office in <span class=\"font-semibold text-blue\">2006 in Melbourne, Australia</span>and\n since then we have expanded to different geographies — Sydney, Adelaide\n and Perth in Australia, Dhaka and Chattogram offices in Bangladesh, and\n Ahmedabad &amp; Kolkata offices in India and Colombo office in Sri \nLanka.</p><p class=\"font-mont\">Our multiplied growth across these \nsegments is a testimony to our commitment to professionalism, persistent\n hard work, as well as efficient and effective teamwork.</p><div class=\"bg-blue-50 border-l-4 border-gold pl-6 py-4\"><p class=\"text-blue font-semibold text-xl font-mont\">At present, INSAF Immigration represents over<span class=\"text-gold\">550 educational institutions</span> globally.</p></div><div><p class=\"font-medium text-blue mb-3 font-mont\">Our partners include:</p><ul class=\"space-y-2 text-gray-700\"><li class=\"flex items-center gap-3\"><span class=\"w-2 h-2 bg-gold rounded-full\"></span>Renowned universities</li><li class=\"flex items-center gap-3\"><span class=\"w-2 h-2 bg-gold rounded-full\"></span>TAFEs</li><li class=\"flex items-center gap-3\"><span class=\"w-2 h-2 bg-gold rounded-full\"></span>Colleges and tertiary schools all across the world.</li></ul></div><p class=\"text-lg font-semibold text-blue font-mont\">Since 2006, PFEC Global has helped realize the dreams of <span class=\"text-gold\">22,000+ students</span> from different nationalities with the help of our partners.</p></div><p></p>', '[\"uploads/about_items/77438101-5c7c-469c-ab3b-7da5c0f73354.jpg\"]', '2025-12-20 06:36:16', '2025-12-20 06:46:47');

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
(2, 2, 'Choose from Reliable Accommodation Providers', '2025-12-18 00:25:20', '2025-12-18 00:25:20');

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
(2, 2, '[\"uploads/accommodation_item_sections/2b0c2ae1-eda3-44c4-94cd-a08415c1e814.png\"]', '<div class=\"features\">\r\n      <div class=\"feature-item\"><i class=\"fas fa-city\"></i> Properties in 400+ Cities across 60+ Countries</div>\r\n      <div class=\"feature-item\"><i class=\"fas fa-tags\"></i> Low Price Guarantee</div>\r\n      <div class=\"feature-item\"><i class=\"fas fa-check-circle\"></i> 100% Verified Listings</div>\r\n      <div class=\"feature-item\"><i class=\"fas fa-headset\"></i> 24/7 Customer Support</div>\r\n    </div><p><br></p>', '2025-12-18 00:26:34', '2025-12-18 00:26:34');

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
(2, 3, 'Why Choose PFEC for Admission Support?', '2025-12-18 00:13:06', '2025-12-18 00:13:06');

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
(2, 2, '[\"uploads/admission_item_sections/41a6f9a1-5561-4f36-a0b1-8de9f1126136.png\"]', '<div class=\"elementor-element elementor-element-7d82bdb elementor-widget elementor-widget-text-editor\" data-id=\"7d82bdb\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n				<div class=\"elementor-widget-container\">\r\n									<p>Receive&nbsp;an&nbsp;individual&nbsp;consultation&nbsp;with&nbsp;the&nbsp;best&nbsp;educational&nbsp;consultants&nbsp;in&nbsp;</p><p>Bangladesh&nbsp;to&nbsp;obtain&nbsp;a&nbsp;trouble-free&nbsp;experience&nbsp;and&nbsp;discover&nbsp;the&nbsp;right&nbsp;possibilities&nbsp;for&nbsp;overseas&nbsp;study.</p><p>Every\r\n year thousands of students in Bangladesh aim to start their careers \r\nabroad. In this respect, PFEC Global has established themselves as the \r\nbest admission consultants in Bangladesh. At PFEC Global, we perceive \r\nthat students often feel apprehensive about the surcharge of information\r\n available on the internet while preparing for a new journey. Hence, \r\nwith over a decade of experience and professional acknowledgment, our \r\ndedicated team can always make the entire admission and visa application\r\n process hassle-free for the students. Ultimately, we are the official \r\nrepresentative of over 550+ universities, colleges, and institutions \r\nthat have optimum prestige worldwide with phenomenal courses, ethos, \r\nculture, course delivery format, cost, international student support, \r\nwork opportunities, diversity, and location.</p>								</div>\r\n				</div><p><br></p>', '2025-12-18 00:15:22', '2025-12-18 00:15:22');

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
(1, 'How to Plan Your Child’s Study Abroad Journey: A Step-by-Step Guide for Parents', 'how-to-plan-your-childs-study-abroad-journey-a-step-by-step-guide-for-parents', 'uploads/blogs/1765370940-TEZBQU692t.jpg', '<div class=\"elementor-element elementor-element-fb309e1 elementor-widget elementor-widget-text-editor\" data-id=\"fb309e1\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n				<div class=\"elementor-widget-container\">\r\n									Summary								</div>\r\n				</div>\r\n				<div class=\"elementor-element elementor-element-e10710a elementor-widget elementor-widget-text-editor\" data-id=\"e10710a\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n				<div class=\"elementor-widget-container\">\r\n									<p>Planning your child’s international education is a \r\nmulti-year project. It needs money, discipline, clear milestones, and \r\nstrong family teamwork. The earlier you start, the easier it gets. Early\r\n planning helps students adapt faster, handle stress better, and meet \r\ngoals with confidence.<br>This guide walks Bangladeshi parents through a\r\n simple plan you can follow from middle school to university admission. \r\nYou’ll learn how to set savings targets, open a Student File with a \r\nBangladeshi bank for overseas payments, prepare documents on time, and \r\nchoose the right country and course.<br>By the end, you’ll have a timeline, checklists, and a cost model you can use today.</p>								</div>\r\n				</div>', '2025-12-10', 1, '2025-12-10 06:49:00', '2025-12-22 04:20:45'),
(2, 'Age-Based Planning Framework', 'age-based-planning-framework', 'uploads/blogs/1766399924-p2FQzfkmex.jpg', '<div class=\"elementor-element elementor-element-0c1236c elementor-widget elementor-widget-text-editor\" data-id=\"0c1236c\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n				<div class=\"elementor-widget-container\">\r\n									<p><span style=\"font-weight: 400\">Every year of early planning \r\nreduces loan stress and improves outcomes. Pick the band that fits your \r\nchild’s age and follow the actions.</span></p>								</div>\r\n				</div>\r\n				<div class=\"elementor-element elementor-element-74f1b5a elementor-widget elementor-widget-heading\" data-id=\"74f1b5a\" data-element_type=\"widget\" data-widget_type=\"heading.default\">\r\n				<div class=\"elementor-widget-container\">\r\n					<h3 class=\"elementor-heading-title elementor-size-default\">A. Early Planning (child aged 10–12)</h3>				</div>\r\n				</div>\r\n				<div class=\"elementor-element elementor-element-6dfc399 elementor-widget elementor-widget-text-editor\" data-id=\"6dfc399\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n				<div class=\"elementor-widget-container\">\r\n									<ul><li style=\"font-weight: 400\"><b>Goal:</b><span style=\"font-weight: 400\"> Build habits and a base corpus.</span><span style=\"font-weight: 400\"><br><br></span></li><li style=\"font-weight: 400\"><b>Do now:</b><b><br><br></b><ul><li style=\"font-weight: 400\"><span style=\"font-weight: 400\">Start a </span><b>monthly education savings plan</b><span style=\"font-weight: 400\"> (bank DPS/mutual fund per your risk comfort). Increase contributions </span><b>10–15%</b><span style=\"font-weight: 400\"> yearly to beat education inflation.</span><span style=\"font-weight: 400\"><br><br></span></li><li style=\"font-weight: 400\"><span style=\"font-weight: 400\">Encourage </span><b>English</b><span style=\"font-weight: 400\"> and digital skills (typing, basic coding, presentations).</span><span style=\"font-weight: 400\"><br><br></span></li><li style=\"font-weight: 400\"><span style=\"font-weight: 400\">Expose them to </span><b>global cultures</b><span style=\"font-weight: 400\"> through books, films, and online clubs.</span><span style=\"font-weight: 400\"><br><br></span></li></ul></li><li style=\"font-weight: 400\"><b>Why it works:</b><span style=\"font-weight: 400\"> Long runway for compounding and skills.</span><span style=\"font-weight: 400\"><br><br></span></li></ul>								</div>\r\n				</div>\r\n				<div class=\"elementor-element elementor-element-a32e144 elementor-widget elementor-widget-heading\" data-id=\"a32e144\" data-element_type=\"widget\" data-widget_type=\"heading.default\">\r\n				<div class=\"elementor-widget-container\">\r\n					<h3 class=\"elementor-heading-title elementor-size-default\">B. Foundation (child aged 13–15)</h3>				</div>\r\n				</div>\r\n				<div class=\"elementor-element elementor-element-49e6780 elementor-widget elementor-widget-text-editor\" data-id=\"49e6780\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n				<div class=\"elementor-widget-container\">\r\n									<ul><li style=\"font-weight: 400\"><b>Goal:</b><span style=\"font-weight: 400\"> Raise savings and map destinations.</span><span style=\"font-weight: 400\"><br><br></span></li><li style=\"font-weight: 400\"><b>Do now:</b><b><br><br></b><ul><li style=\"font-weight: 400\"><span style=\"font-weight: 400\">Increase monthly savings. Add a </span><b>separate emergency fund</b><span style=\"font-weight: 400\"> for travel/health.</span><span style=\"font-weight: 400\"><br><br></span></li><li style=\"font-weight: 400\"><span style=\"font-weight: 400\">Shortlist </span><b>countries</b><span style=\"font-weight: 400\"> and </span><b>broad fields</b><span style=\"font-weight: 400\"> (STEM/Business/Health/Design).</span><span style=\"font-weight: 400\"><br><br></span></li><li style=\"font-weight: 400\"><span style=\"font-weight: 400\">Plan </span><b>school subject choices</b><span style=\"font-weight: 400\"> to match target programs.</span><span style=\"font-weight: 400\"><br><br></span></li><li style=\"font-weight: 400\"><span style=\"font-weight: 400\">Begin </span><b>light test prep</b><span style=\"font-weight: 400\"> (English basics; math/logical reasoning).</span><span style=\"font-weight: 400\"><br><br></span></li></ul></li><li style=\"font-weight: 400\"><b>Watch out:</b><span style=\"font-weight: 400\"> Don’t lock a country too early—keep </span><b>2–3 options</b><span style=\"font-weight: 400\">.</span><span style=\"font-weight: 400\"><br><br></span></li></ul>								</div>\r\n				</div>\r\n				<div class=\"elementor-element elementor-element-1238790 elementor-widget elementor-widget-heading\" data-id=\"1238790\" data-element_type=\"widget\" data-widget_type=\"heading.default\">\r\n				<div class=\"elementor-widget-container\">\r\n					<h3 class=\"elementor-heading-title elementor-size-default\">C. Preparation (child aged 16–17)</h3>				</div>\r\n				</div>\r\n				<div class=\"elementor-element elementor-element-5f656e3 elementor-widget elementor-widget-text-editor\" data-id=\"5f656e3\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n				<div class=\"elementor-widget-container\">\r\n									<ul><li style=\"font-weight: 400\"><b>Goal:</b><span style=\"font-weight: 400\"> Move from ideas to applications.</span><p>&nbsp;</p></li><li style=\"font-weight: 400\"><b>Do now:</b><p>&nbsp;</p><ul><li style=\"font-weight: 400\"><span style=\"font-weight: 400\">Formal </span><b>IELTS/TOEFL</b><span style=\"font-weight: 400\"> prep timeline.</span><p>&nbsp;</p></li><li style=\"font-weight: 400\"><span style=\"font-weight: 400\">Build a </span><b>university list</b><span style=\"font-weight: 400\"> (fees, intakes, entry requirements).</span><p>&nbsp;</p></li><li style=\"font-weight: 400\"><span style=\"font-weight: 400\">Draft </span><b>SOP/CV</b><span style=\"font-weight: 400\">; plan </span><b>portfolio</b><span style=\"font-weight: 400\"> if required.</span><p>&nbsp;</p></li><li style=\"font-weight: 400\"><span style=\"font-weight: 400\">Price total costs in </span><b>destination currency</b><span style=\"font-weight: 400\"> and in </span><b>BDT</b><span style=\"font-weight: 400\"> using your bank’s selling rate on the day you budget.</span><p>&nbsp;</p></li></ul></li><li style=\"font-weight: 400\"><b>Result:</b><span style=\"font-weight: 400\"> Realistic shortlist and a financial plan you can execute.</span></li></ul>								</div>\r\n				</div>\r\n				<div class=\"elementor-element elementor-element-8ce2788 elementor-widget elementor-widget-heading\" data-id=\"8ce2788\" data-element_type=\"widget\" data-widget_type=\"heading.default\">\r\n				<div class=\"elementor-widget-container\">\r\n					<h3 class=\"elementor-heading-title elementor-size-default\">D. Late/Crisis Planning (18+)</h3>				</div>\r\n				</div>\r\n				<div class=\"elementor-element elementor-element-6b237b1 elementor-widget elementor-widget-text-editor\" data-id=\"6b237b1\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n				<div class=\"elementor-widget-container\">\r\n									<ul><li><b>Goal:</b><span style=\"font-weight: 400\"> Tighten timeline; reduce risk.</span></li><li style=\"list-style-type: none\"><ul><li style=\"font-weight: 400\"><b>Do now:</b><p>&nbsp;</p><ul><li style=\"font-weight: 400\"><span style=\"font-weight: 400\">Consider a </span><b>gap term/year</b><span style=\"font-weight: 400\"> to improve scores and funding.</span><p>&nbsp;</p></li><li style=\"font-weight: 400\"><span style=\"font-weight: 400\">Focus on </span><b>value destinations</b><span style=\"font-weight: 400\"> and </span><b>1-year</b><span style=\"font-weight: 400\"> programs where feasible.</span><p>&nbsp;</p></li><li style=\"font-weight: 400\"><span style=\"font-weight: 400\">Use scholarships + on-campus jobs + careful city choice to control costs.</span><p>&nbsp;</p></li></ul></li><li style=\"font-weight: 400\"><b>Reality check:</b><span style=\"font-weight: 400\"> Late starts are possible—but need stricter discipline.</span></li></ul></li></ul></div></div><p><br></p>', '2025-12-22', 1, '2025-12-22 04:38:44', '2025-12-23 00:25:15');

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
(1, 'Md', 'hasan@example.com', '012020202020', 'test', '2025-12-22 07:19:15', '2025-12-22 07:19:15'),
(15, 'Brody Ruecker', 'your.email+fakedata89670@gmail.com', '842-881-0493', 'Aliquam asperiores optio velit voluptatibus non officia.', '2025-12-23 23:46:25', '2025-12-23 23:46:25'),
(16, 'Elaina Effertz', 'your.email+fakedata32781@gmail.com', '793-078-9128', 'Molestiae in velit perspiciatis est eaque quod amet.', '2025-12-24 03:44:06', '2025-12-24 03:44:06');

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
(6, 3, 2, 'Md', 'Hasan', 'hasan@example.com', '1234567890', 'Not taken yet', 'Self-funded', '2025-12-21 23:26:55', '2025-12-21 23:26:55'),
(17, 3, 2, 'sdfghdfth', 'fshfh', 'a@mail.com', '123456789', 'IELTS', 'Scholarship', '2025-12-23 23:50:39', '2025-12-23 23:50:39');

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
(3, 'Australia', 'uploads/destinations/1765776662-0vnqR3zKvd.jpg', 'australia', 'Australia', '<p>test</p>', 1, '2025-12-14 23:26:14', '2025-12-14 23:31:02'),
(4, 'UK', 'uploads/destinations/1765947012-5HdsavRZVM.jpg', 'uk', 'UK', '<p>Test</p>', 1, '2025-12-16 22:50:12', '2025-12-16 22:52:04');

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
(11, 3, 'Cost of Studying in Australia', '2025-12-17 04:27:40', '2025-12-17 04:27:40');

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
(7, 9, '[\"uploads/destination_item_sections/a7aaca70-e95d-4069-b995-c4f10fd94d69.jpg\"]', '<p><span style=\"font-weight: 400;\">Australia is a top destination for \r\nstudents from Bangladesh who wish to study abroad and eventually settle \r\ndown. Many Bangladeshi students prefer to study in Australia due to its \r\nprestigious universities and international perspective, which provide a \r\nwide range of subjects. Now, you have the opportunity to do the same. \r\nPursuing your education in Australia will offer you the best learning \r\nexperience possible. The Australian education system is unique and \r\nattracts students from around the world. Additionally, the language of \r\ninstruction is English, making it easier for many Bangladeshi students \r\nto learn. Here are the primary reasons why Australia is a preferred \r\nchoice for education.</span></p>', '2025-12-16 23:34:37', '2025-12-17 04:29:43'),
(8, 11, '[]', '<div class=\"elementor-element elementor-element-ddc01ea elementor-widget elementor-widget-text-editor\" data-id=\"ddc01ea\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n				<div class=\"elementor-widget-container\">\r\n									<p><span style=\"font-weight: 400;\">Australia offers a variety \r\nof degree programs tailored to the needs of Bangladeshi students. With \r\nnumerous scholarships available, the process of studying is made more \r\naccessible. The costs of accommodation, groceries, and transportation \r\nare also relatively low. Thus, Australia is an attractive destination \r\nfor education.</span></p><p><span style=\"font-weight: 400;\"><br></span></p><p><span style=\"font-weight: 400;\">Additionally,\r\n Bangladeshi students can obtain work permits while studying. Tuition \r\nfees for bachelor’s degrees start at AUD 20,000, while master’s degrees \r\ncan cost up to AUD 25,000. Doctoral programs are generally more \r\nexpensive, at around AUD 32,000; however, various scholarships are \r\navailable to help offset these costs. Overall, the cost of studying in \r\nAustralia is among the lowest compared to many other countries \r\nworldwide.<br><br><br></span></p>								</div>\r\n				</div><p><br></p>', '2025-12-17 04:28:24', '2025-12-17 04:38:12');

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
(5, 'PFEC Global: Australia Education Expo', '<p><br></p>', 'uploads/events/1766230746-X4qXA77OQK.jpg', '2025-12-20', '2025-12-22 10:00:00', '2025-12-22 11:00:00', '2025-12-26', 'Australia', 1, '2025-12-20 05:39:06', '2025-12-22 01:51:21');

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
(2, 5, 'Explore Your Future at PFEC Global Australia Education Expo 2026!', '2025-12-22 01:53:19', '2025-12-22 01:53:19');

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
(2, 2, '[\"uploads/event_item_sections/bb61567f-cc02-47d4-b1e6-4758583f744d.jpg\"]', '<p>\r\n     Join PFEC Global’s Australia Education Expo 2026 to meet top university representatives,<br>\r\n    explore your options, and take the first step toward your future!\r\n  </p>\r\n<p>\r\n    Meet directly with representatives from leading Australian universities to discuss your future<br>\r\n    and discover scholarship opportunities of up to 100%.\r\n  </p>\r\n<p>\r\n    Experience the Biggest Australia Education Expo and pave the way for a brighter future!\r\n  </p>\r\n<p>\r\n     <strong>Book your Seat Now:</strong><br>\r\n    <a href=\"https://forms.gle/9sJE4Lmby7huXC4V8\" target=\"_blank\" rel=\"noopener noreferrer\"><br>\r\n      https://forms.gle/9sJE4Lmby7huXC4V8<br>\r\n    </a>\r\n  </p>\r\n<h3>Event Highlights</h3>\r\n<ul><li> FREE Entry</li><li> Exciting Gifts for Each Attendee</li><li> Up to 5 years Post Study Work Rights</li><li> On-Spot Assessment</li><li> Application Fee Waiver*</li></ul>\r\n<h3>Join Us On</h3>\r\n<p>\r\n     <strong>Saturday, 10 January 2026</strong><br>\r\n     Time: 10.30 AM – 5.00 PM<br>\r\n     Venue: The Westin Dhaka\r\n  </p>\r\n<p>\r\n    &amp;\r\n  </p>\r\n<p>\r\n     <strong>Sunday, 11 January 2026</strong><br>\r\n     Time: 10.30 AM – 5.00 PM<br>\r\n     Venue: The Westin Dhaka\r\n  </p>\r\n<h3>More Offers for Event Attendees</h3>\r\n<ul><li> On-Spot Assessment</li><li> Free Admission &amp; Visa Assistance</li><li> Apply on the Spot to Desired Institution</li><li> Know about the Best Scholarship Options</li><li> Discuss your Post Study Work Rights and Career Options</li><li> Get any Study Abroad queries answered directly from university representatives</li></ul>\r\n<p>\r\n    To know more, visit our offices or book an appointment with our expert Student Counsellors –<br>\r\n    <a href=\"https://pfecglobal.com.bd/book-appointment\" target=\"_blank\" rel=\"noopener noreferrer\"><br>\r\n      pfecglobal.com.bd/book-appointment<br>\r\n    </a>\r\n  </p>\r\n<h3> Offices</h3>\r\n<ul><li>\r\n       Dhanmondi Office:<br>\r\n      <a href=\"https://cutt.ly/eT6XB1F\" target=\"_blank\" rel=\"noopener noreferrer\"><br>\r\n        https://cutt.ly/eT6XB1F<br>\r\n      </a>\r\n    </li><li>\r\n       Banani Office:<br>\r\n      <a href=\"https://cutt.ly/gZwv1vX\" target=\"_blank\" rel=\"noopener noreferrer\"><br>\r\n        https://cutt.ly/gZwv1vX<br>\r\n      </a>\r\n    </li><li>\r\n       Uttara Office:<br>\r\n      <a href=\"https://cutt.ly/ce6e9The\" target=\"_blank\" rel=\"noopener noreferrer\"><br>\r\n        https://cutt.ly/ce6e9The<br>\r\n      </a>\r\n    </li><li>\r\n       Chattogram Office:<br>\r\n      <a href=\"https://cutt.ly/mwayutLs\" target=\"_blank\" rel=\"noopener noreferrer\"><br>\r\n        https://cutt.ly/mwayutLs<br>\r\n      </a>\r\n    </li></ul>\r\n<h3> Call Us</h3>\r\n<ul><li>\r\n       Dhanmondi:<br>\r\n      <a href=\"tel:09609800300\">09609-800300</a>\r\n    </li><li>\r\n       Banani:<br>\r\n      <a href=\"tel:09609800700\">09609-800700</a>\r\n    </li><li>\r\n       Chattogram:<br>\r\n      <a href=\"tel:09609800400\">09609-800400</a>\r\n    </li><li>\r\n       Uttara:<br>\r\n      <a href=\"tel:09609800500\">09609-800500</a>\r\n    </li></ul><p>\r\n     Visit –<br><a href=\"https://www.pfecglobal.com.bd\" target=\"_blank\" rel=\"noopener noreferrer\"><br>\r\n      www.pfecglobal.com.bd</a></p>', '2025-12-22 01:57:32', '2025-12-22 01:57:32');

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
(2, 2, '[\"uploads/health_item_sections/79fd0584-a397-4b5f-ae92-64cf189e004b.jpg\"]', '<p>If you are contemplating studying abroad, you should be aware that some \r\ncountries may insist on student health insurance coverage. Even if they \r\ndon’t, considering the exorbitant medical costs in foreign countries, \r\nhaving student health cover is prudent to avoid financial burdens while \r\nstudying abroad. These health insurance plans typically cover pre and \r\npost-hospitalisation expenses, prescription medicines, and the cost of \r\nsurgeries. <br><br>Students who purchase health plans from foreign \r\ncountries while studying abroad will pay heavy premiums. Getting \r\ncoverage under the best health insurance plans in India can be more \r\neconomical. <br><br>So, students studying abroad or planning to study \r\nabroad should have a student health cover to avoid additional financial \r\nburdens.</p>', '2025-12-18 00:21:32', '2025-12-18 04:46:04');

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
(2, 'Dhanmondi', 'Bangladesh', '<p>SIMA Blossom (5th Floor) Plot 390 (Old), 03 (New), Road-27 (Old) 16, New, Dhaka 1209, Bangladesh</p>', '+880 9609 80 03 00', 'test@example.com', 0, '2025-12-21 00:40:02', '2025-12-22 23:41:54'),
(3, 'Banani', 'Bangladesh', '<p>RSR Tower (7th Floor), House no. 50, Block C, Dhaka</p>', '+880 9609 80 07 00', 'test1@example.com', 1, '2025-12-22 05:04:38', '2025-12-23 00:23:28'),
(4, 'Melborne', 'Australia', '<p>Level 8, RM Plaza, 20 Sonargaon Jonopath Road, Sector 11, Dhaka 1230</p>', '+880 9609 80 05 00', 'test@example.com', 0, '2025-12-22 23:43:22', '2025-12-22 23:43:22');

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
(3, 'Review 1', NULL, NULL, 'uploads/reviews/1766401267-inxsgbBdmT.jpg', 1, '2025-12-22 05:01:07', '2025-12-22 05:01:07');

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
(3, 'uk', 'uk', 'UK', NULL, 1, '2025-12-17 06:34:49', '2025-12-24 00:54:21', 'uploads/scholarships/1766559261-HGVDrViYA6.jpg'),
(4, 'Australia', 'australia', 'Australia', NULL, 1, '2025-12-24 00:54:04', '2025-12-24 00:54:04', 'uploads/scholarships/1766559244-VVFYC1Gu8P.jpg');

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
(2, 3, 'Scholarships in the UK', '2025-12-17 06:37:42', '2025-12-17 06:50:54');

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
(8, 2, '[\"uploads/scholarship_item_sections/0313210a-5d09-4671-9e68-18f4e7a6defa.jpg\"]', '<div class=\"elementor-element elementor-element-40901d8 elementor-widget elementor-widget-text-editor\" data-id=\"40901d8\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\r\n				<div class=\"elementor-widget-container\">\r\n									<p><span style=\"font-weight: 400;\">The United Kingdom remains \r\none of the world’s most prestigious study destinations, offering \r\nglobally recognized degrees, academic excellence, and a vibrant \r\nmulticultural environment. However, the cost of studying in the UK—with \r\ntuition fees ranging from £15,000–£40,000 per year and living expenses \r\nof £12,000–£15,000 annually—can be substantial. Scholarships play a \r\ncrucial role in making British higher education accessible and \r\naffordable for deserving Bangladeshi students.</span></p><p><span style=\"font-weight: 400;\">PFEC\r\n Bangladesh specializes in helping students navigate the complex UK \r\nscholarship landscape, connecting them with awards that can transform \r\ntheir academic aspirations into reality. With hundreds of scholarships \r\navailable from government sources, universities, and private \r\nfoundations, there are numerous opportunities for Bangladeshi students \r\nto fund their UK education dreams.</span></p>								</div>\r\n				</div><p><br></p>', '2025-12-17 06:38:07', '2025-12-17 06:38:07');

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
('JKB2qQw4d3LMI9SCzA9BqXx8vbumbIt8AUkxK2qk', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoicUM5aFhMQkNlcEQ3QVNNdnY5TXh6NVNYbGIxbTJTMnJWRVA0bVpxQyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7czo0OiJob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czoxMDoidHlyby1sb2dpbiI7YToxOntzOjc6ImNhcHRjaGEiO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1766570805);

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
(4, 'Test 1', NULL, 'uploads/sliders/1766400522-WLGBuKZWrG.jpg', 1, '2025-12-22 04:48:42', '2025-12-22 04:48:42');

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
(1, 'Mohammad Sariful Islam', 'CEO', 'uploads/team/1766058557-tZwke8xQ9K.jpg', '<div class=\"team-card-body\">\n    <ul><li>Driven by a strong belief in the power of education and its ability to change lives.</li><li>Guided by certified expertise (QEAC D468) and a deep commitment to student success.</li><li>Focused on creating life-changing opportunities, high-paying careers, and brighter futures abroad.</li></ul>\n  </div><br>', 1, '2025-12-10 23:23:06', '2025-12-18 05:49:17');

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
(2, 2, 'Why Choose PFEC for Visa Services?', '2025-12-18 00:30:34', '2025-12-18 00:30:34');

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
(2, 2, '[\"uploads/visa_item_sections/1a5e7b20-90b4-489b-99b9-ea8213e8d742.png\"]', '<p>PFEC Bangladesh provides comprehensive, expert visa services for \r\nstudents planning to study in the world’s top destinations. As one of \r\nthe most trusted international education consultancies, our dedicated \r\nteam guides Bangladeshi students smoothly through every step of the \r\nstudent visa process—maximizing approvals and minimizing stress.								<br></p>', '2025-12-18 00:31:26', '2025-12-18 04:05:45');

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `about_items`
--
ALTER TABLE `about_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `accommodations`
--
ALTER TABLE `accommodations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `accommodation_items`
--
ALTER TABLE `accommodation_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `accommodation_item_sections`
--
ALTER TABLE `accommodation_item_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `destination_items`
--
ALTER TABLE `destination_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `destination_item_sections`
--
ALTER TABLE `destination_item_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `scholarship_item_sections`
--
ALTER TABLE `scholarship_item_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
