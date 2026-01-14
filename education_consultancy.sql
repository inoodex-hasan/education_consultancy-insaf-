-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 14, 2026 at 01:24 PM
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
-- Database: `education_consultancy`
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
(1, '4', '<br>', 'uploads/achievements/1768368770-P73iG9rRGY.png', 1, '2025-12-10 23:57:41', '2026-01-13 23:32:50'),
(2, '3', '<br>', 'uploads/achievements/1768368754-PO7bE2C0hl.png', 1, '2026-01-07 00:31:19', '2026-01-13 23:32:34'),
(3, '2', '<br>', 'uploads/achievements/1768368737-3Rbk9IAItZ.png', 1, '2026-01-07 00:33:01', '2026-01-13 23:32:17'),
(4, '1', '<br>', 'uploads/achievements/1768368721-Q3N8CmVYZV.png', 1, '2026-01-07 00:35:09', '2026-01-13 23:32:01'),
(6, '5', '<br>', 'uploads/achievements/1768368820-wLx7TbPppI.png', 1, '2026-01-13 23:33:40', '2026-01-13 23:34:15'),
(7, '6', NULL, 'uploads/achievements/1768368872-cIOKrS32I6.png', 1, '2026-01-13 23:34:32', '2026-01-13 23:34:32'),
(8, '7', NULL, 'uploads/achievements/1768368931-NN1H2xsn1w.png', 1, '2026-01-13 23:35:31', '2026-01-13 23:35:31'),
(9, '8', NULL, 'uploads/achievements/1768368944-CVcM7zFp3r.png', 1, '2026-01-13 23:35:44', '2026-01-13 23:35:44'),
(10, '9', NULL, 'uploads/achievements/1768368958-a64KYs92f8.png', 1, '2026-01-13 23:35:58', '2026-01-13 23:35:58'),
(11, '10', NULL, 'uploads/achievements/1768368973-QFwl4CoaGQ.png', 1, '2026-01-13 23:36:13', '2026-01-13 23:36:13'),
(12, '11', NULL, 'uploads/achievements/1768368987-hBw92S5tna.png', 1, '2026-01-13 23:36:27', '2026-01-13 23:36:27'),
(13, '12', NULL, 'uploads/achievements/1768369002-PoMCdCWU1S.png', 1, '2026-01-13 23:36:42', '2026-01-13 23:36:42'),
(14, '13', NULL, 'uploads/achievements/1768369016-GL32WHTyWv.png', 1, '2026-01-13 23:36:56', '2026-01-13 23:36:56'),
(15, '14', NULL, 'uploads/achievements/1768369030-vxRHK9b21a.png', 1, '2026-01-13 23:37:10', '2026-01-13 23:37:10'),
(16, '15', NULL, 'uploads/achievements/1768369046-OzFI1zoByS.png', 1, '2026-01-13 23:37:26', '2026-01-13 23:37:26'),
(17, '16', NULL, 'uploads/achievements/1768369061-Wvvy5WCxbK.png', 1, '2026-01-13 23:37:41', '2026-01-13 23:37:41'),
(18, '17', NULL, 'uploads/achievements/1768369076-5PmIEF9ARv.png', 1, '2026-01-13 23:37:56', '2026-01-13 23:37:56'),
(19, '18', NULL, 'uploads/achievements/1768369097-oTfp5xib3W.png', 1, '2026-01-13 23:38:17', '2026-01-13 23:38:17'),
(20, '19', NULL, 'uploads/achievements/1768369110-hraBm8g567.png', 1, '2026-01-13 23:38:30', '2026-01-13 23:38:30');

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
(1, 'How to Plan Your Child’s Study Abroad Journey: A StepbyStep Guide for Parents', 'how-to-plan-your-childs-study-abroad-journey-a-stepbystep-guide-for-parents', 'uploads/blogs/1768374345-UsyHOsxFj9.png', 'Summary<br>Sending your child abroad for higher education is one of the most important decisions a parent<br>can make. For Bangladeshi parents, the process can feel overwhelming due to visa<br>requirements, country selection, financial planning, and safety concerns.<br>This step-by-step guide will help you plan your child’s study abroad journey confidently, while<br>avoiding common mistakes. With the right planning and guidance from a trusted student visa<br>agency in Bangladesh, your child’s international education dream can become a successful<br>reality.<br>Step 1: Understand Your Child’s Goals and Strengths<br>Before choosing a country or university, parents must clearly understand:<br>• Your child’s academic background<br>• Career goals<br>• English proficiency (IELTS or non-IELTS options)<br>• Budget and financial capability<br>Different countries offer different advantages. For example:<br>• Malaysia &amp; Malta offer affordable education• Australia, UK, and Canada offer strong post-study work opportunities<br>• Europe &amp; Russia provide quality education at lower costs<br>A professional education consultant can help align your child’s goals with the right destination.<br>Step 2: Choose the Right Country and University<br>Choosing the wrong country or institution is one of the biggest mistakes parents make.<br>When selecting a study destination, consider:<br>• Tuition fees and living costs<br>• Student visa success rate<br>• Part-time work opportunities<br>• Safety and Bangladeshi student community<br>• Post-study career opportunities<br>At Insaf Immigration, we help parents select recognized universities with high visa approval<br>rates, ensuring a safe and secure future for students.<br>Step 3: Plan Your Budget Smartly<br>Financial planning is crucial for studying abroad.<br>Costs usually include:<br>• Tuition fees<br>• Visa processing fees<br>• Accommodation<br>• Health insurance<br>• Air ticket and travel expenses<br>Many parents worry about paying large amounts before visa approval. That’s why choosing a<br>trusted student visa agency in Bangladesh is important.<br>Insaf Immigration offers transparent pricing and flexible payment options, including programs<br>where payment is required after visa approval for selected countries.<br>Step 4: Prepare Documents Carefully<br>Proper documentation plays a major role in visa success.Common required documents include:<br>• Academic certificates and transcripts<br>• Passport<br>• Bank statements<br>• Sponsor documents<br>• Statement of Purpose (SOP)<br>• Offer letter from the university<br>Even a small mistake can lead to visa rejection. Our experienced visa experts at Insaf<br>Immigration carefully review and prepare every document to minimize risks.<br>Step 5: Understand Student Visa Requirements<br>Each country has different student visa rules.<br>Some key considerations:<br>• IELTS vs non-IELTS visa options<br>• Financial proof requirements<br>• Interview preparation<br>• Medical and police clearance<br>For Bangladeshi students, visa success depends heavily on proper counseling and application<br>strategy. Working with a professional student visa consultant significantly increases approval<br>chances.<br>Step 6: Focus on Safety, Accommodation, and Support<br>Parents are naturally concerned about their child’s safety abroad.<br>Before departure, ensure:<br>• Confirmed accommodation<br>• Airport pickup arrangements<br>• Health insurance coverage<br>• Local student supportInsaf Immigration provides pre-departure guidance, air ticket support, and airport pickup<br>services, so students can settle smoothly in a new country.<br>Step 7: Choose a Trusted Student Visa Agency in Bangladesh<br>The most important step is choosing the right education consultancy.<br>A reliable agency should offer:<br>• Honest counseling<br>• University and country transparency<br>• High visa success rate<br>• Post-visa support<br>• Clear communication with parents<br>Insaf Immigration is a trusted student visa agency in Bangladesh, helping students study in<br>Australia, UK, Canada, Malaysia, Europe, Russia, Malta, Cyprus, and more.<br>Our mission is simple: to turn your child’s global education dream into reality with integrity and<br>expertise.<br>Final Thoughts for Parents<br>Planning your child’s study abroad journey requires patience, knowledge, and expert guidance.<br>With the right preparation and a trusted partner, you can ensure a smooth and successful future<br>for your child.<br>If you are a parent looking for safe, affordable, and successful study abroad options, Insaf<br>Immigration is here to guide you every step of the way.', '2025-12-10', 1, '2025-12-10 06:49:00', '2026-01-14 01:05:45'),
(3, 'Cost of Living in Malaysia for Bangladeshi Students', 'cost-of-living-in-malaysia-for-bangladeshi-students', 'uploads/blogs/1768373926-hxM5F5ELFK.png', '<p><span style=\"font-weight: normal;\">Summary</span><br><span style=\"font-weight: normal;\">Malaysia is a popular choice for Bangladeshi students due to its reputable universities,</span><br><span style=\"font-weight: normal;\">affordable tuition, and diverse culture. Understanding living costs enables students and families</span><br><span style=\"font-weight: normal;\">to budget effectively. This guide offers an up-to-date overview of typical expenses to help</span><br><span style=\"font-weight: normal;\">Bangladeshi students plan their finances confidently.</span></p><p><span style=\"font-weight: normal;\"></span><br>Overall Monthly and Yearly Cost of Living in Malaysia for Bangladeshi Students</p><p><span style=\"font-weight: normal;\">Malaysia offers Bangladeshi students a lower cost of living than most Western countries.</span><br><span style=\"font-weight: normal;\">Monthly expenses typically range from BDT 15000 to 20000, depending on lifestyle, city, and</span><br><span style=\"font-weight: normal;\">accommodation. Excluding tuition, annual living costs are usually BDT 160000 to 250000.</span></p><p><span style=\"font-weight: normal;\"><br></span><br><span style=\"font-weight: normal;\">Accommodation Costs for Bangladeshi Students in Malaysia</span></p><p><span style=\"font-weight: normal;\">Accommodation is a major expense for students in Malaysia. Options include on-campus</span><br><span style=\"font-weight: normal;\">hostels, off-campus shared apartments, and homestays. On-campus hostels cost MYR 300–800</span><br><span style=\"font-weight: normal;\">(BDT 7,000–18,500) per month and offer basic amenities and security. Off-campus shared flats</span><br><span style=\"font-weight: normal;\">range from MYR 600–1,500 (BDT 13,500–34,500) monthly, with higher rents in cities like Kuala</span><br><span style=\"font-weight: normal;\">Lumpur. Homestays, costing MYR 800–1,200 (BDT 18,500–27,600) per month, often include</span><br><span style=\"font-weight: normal;\">meals and provide a valuable cultural experience.</span></p><p><span style=\"font-weight: normal;\"><br></span><br><span style=\"font-weight: normal;\">Food and Groceries Expenses for Bangladeshi Students<br></span><br><span style=\"font-weight: normal;\">Malaysia offers affordable and diverse cuisine. Campus canteens and street food stalls serve</span><br><span style=\"font-weight: normal;\">meals for MYR 5–12 (BDT 115–275) each. A typical monthly food budget, including groceries, is</span><br><span style=\"font-weight: normal;\">MYR 400–800 (BDT 9,200–18,400). Cooking at home, especially in shared apartments, helps</span><br><span style=\"font-weight: normal;\">reduce costs, though dining out is also economical. Grocery staples are moderately priced, halal</span><br><span style=\"font-weight: normal;\">options are common, and Bangladeshi grocers are present in most university cities.</span></p><p><span style=\"font-weight: normal;\"><br></span><br><span style=\"font-weight: normal;\">Transportation Costs for Students<br></span><br><span style=\"font-weight: normal;\">Public transport in Malaysia is affordable and convenient. Bus and metro rides cost MYR 1–4</span><br><span style=\"font-weight: normal;\">(BDT 23–92) one-way. Most students allocate MYR 100–150 (BDT 2,300–3,500) per month for</span><br><span style=\"font-weight: normal;\">travel, covering daily commutes and occasional city trips. Students in cities like Kuala Lumpur</span><br><span style=\"font-weight: normal;\">and Penang can access discounts and season passes. Ride-hailing apps such as Grab are</span><br><span style=\"font-weight: normal;\">available for short trips, though frequent use raises monthly expenses.</span></p><p><span style=\"font-weight: normal;\"><br></span><br><span style=\"font-weight: normal;\">Utility Bills, Mobile, and Internet Expenses<br></span><br><span style=\"font-weight: normal;\">Monthly utility bills—including electricity, water, and internet—typically add up to MYR 150–</span><br><span style=\"font-weight: normal;\">250 (BDT 3,500–5,800). Most rented rooms and campus accommodations include basic utility</span><br><span style=\"font-weight: normal;\">costs in the rent, though air conditioning and high-speed broadband may be charged extra.</span><br><span style=\"font-weight: normal;\">Prepaid mobile phone plans in Malaysia are budget-friendly: data and calling packages start at</span><br><span style=\"font-weight: normal;\">MYR 30 (BDT 690) per month, with WhatsApp and local calls widely used. Broadband internet at</span><br><span style=\"font-weight: normal;\">residences can cost another MYR 60–120 (BDT 1,400–2,800) per month, depending on speed</span><br><span style=\"font-weight: normal;\">and package.</span></p><p><span style=\"font-weight: normal;\"></span><br><span style=\"font-weight: normal;\">Health Insurance, Medical, and Personal Expenses<br></span><br><span style=\"font-weight: normal;\">Health insurance is mandatory for international students and costs MYR 400–500 (BDT 9,000–</span><br><span style=\"font-weight: normal;\">11,500) per year. Routine doctor visits are MYR 40–80 (BDT 900–1,800) per appointment. Most</span><br><span style=\"font-weight: normal;\">universities offer on-campus clinics and emergency support. Personal expenses, including</span><br><span style=\"font-weight: normal;\">clothing, haircuts, entertainment, and social activities, average MYR 200–400 (BDT 4,600–9,200)</span><br><span style=\"font-weight: normal;\">per month, depending on lifestyle.<br></span><br><span style=\"font-weight: normal;\">Additional Costs: Books, Supplies, and Recreation</span></p><p><span style=\"font-weight: normal;\">Students should budget MYR 500–1,000 annually (BDT 11,500–23,000) for textbooks and</span><br><span style=\"font-weight: normal;\">academic supplies. Recreational activities, such as movies, gym memberships, and short trips,</span><br><span style=\"font-weight: normal;\">may add MYR 100–300 (BDT 2,300–7,000) per month. Participating in clubs and campus events</span><br><span style=\"font-weight: normal;\">enhances the study abroad experience.</span></p><p><span style=\"font-weight: normal;\"><br></span><br><span style=\"font-weight: normal;\">Tips for Bangladeshi Students to Manage Living Costs in Malaysia<br></span><br><span style=\"font-weight: normal;\">• Share accommodation with classmates to split rent and utilities.</span><br><span style=\"font-weight: normal;\">• Use your student ID for discounts on transport, entertainment, and shopping.</span><br><span style=\"font-weight: normal;\">• Cook at home and buy groceries in bulk from local or Bangladeshi markets.</span><br><span style=\"font-weight: normal;\">• Take advantage of free campus facilities: libraries, study spaces, and sometimes sports</span><br><span style=\"font-weight: normal;\">centers.</span><br><span style=\"font-weight: normal;\">• Plan monthly budgets and record spending to avoid surprises.<br></span><br><span style=\"font-weight: normal;\">Conclusion: Budgeting for Your Study Life in Malaysia<br></span><br><span style=\"font-weight: normal;\">The cost of living in Malaysia for Bangladeshi students in 2025 is significantly lower compared to</span><br><span style=\"font-weight: normal;\">many other top study-abroad countries. With careful planning and lifestyle adjustments, most</span><br><span style=\"font-weight: normal;\">students find their monthly budget between MYR 1,500 and MYR 2,600 (BDT 35,000–60,000)</span><br><span style=\"font-weight: normal;\">covers all essentials. Malaysia remains one of the smartest destinations for Bangladeshi</span><br><span style=\"font-weight: normal;\">students wishing to combine affordability, quality education, and a multicultural experience in</span><br><span style=\"font-weight: normal;\">Southeast Asia.</span></p>', '2026-01-14', 1, '2026-01-07 01:30:27', '2026-01-14 00:58:46'),
(4, 'Smart Financial Planning Tips to Fund Your Study Abroad Dreams', 'smart-financial-planning-tips-to-fund-your-study-abroad-dreams', 'uploads/blogs/1768374286-9Wp7UPhoRN.png', '<p>Summary<br>Studying abroad feels big and expensive. It is also possible with a clear plan.<br>Most families get stuck because they don’t know where to start. They also miss many costs<br>beyond tuition.<br>We’ve guided hundreds of Bangladeshi families through this. In this guide, you’ll learn how toprice the full budget, choose the right funding mix, and time money decisions so you study with<br>confidence, not stress.<br>Understanding the Real Cost — Why This Matters<br>Know the full bill—tuition, living (often 40–50%), setup, and “hidden” extras—before you apply.<br>When you see the true total and add a 20–25% buffer, you prevent mid-study money shocks<br>and protect your visa plan.<br>Your full study budget includes:<br>Academic costs<br>Tuition and mandatory university fees. Application fees ($50–$200 per university). Student<br>services and lab or studio fees where needed.<br>Living costs<br>Housing, food, transport, phone, utilities, and simple leisure. For most students, living costs are<br>40–50% of the total budget.<br>One-time setup<br>Visa and related fees. Health insurance (usually compulsory). Flights. Initial housing deposits.<br>Basic items for your room. A laptop if you need one.<br>Hidden costs<br>Currency swings (plan +10–15%). Medical expenses not fully covered by your plan. Urgent trips<br>home. Extra certifications or licensing.<br>What it means in real numbers<br>• Bachelor’s (3 years): about BDT 25–60 lakhs total, depending on country and city.<br>• Master’s (1–2 years): about BDT 15–40 lakhs total for most fields.<br>Counsellor Advice: Add a 20–25% buffer to whatever total you calculate. This protects your plan<br>from exchange rate moves and surprise costs.<br>Build a Budget the Right Way<br>Price everything in the university’s currency from official pages, then convert to BDT at your<br>bank’s selling rate. Recheck before each payment and compare cities, because location and<br>timing can change totals by lakhs<br>When to Start (age-wise plan you can follow)Your timeline decides what’s realistic: how much to save, which tests to take, and when to<br>apply. With age-specific actions, each year moves you closer to the goal without last-minute<br>pressure.<br>Class 6–8 (ages 12–14)<br>Begin a small, regular education saving. Even BDT 5,000–10,000/month helps. Build English and<br>digital skills. Explore countries and subjects together.<br>Class 9–10 (ages 15–16)<br>Increase monthly savings and make it automatic. Map IELTS/SAT timelines. Shortlist universities<br>and programs. Build a profile with projects and volunteering<br>Class 11–12 (ages 17–18)<br>Maximise savings and target scholarships. Compare value cities and 1-year vs 2-year programs.<br>Explore education loans early if needed. Pick universities with strong international student<br>support.<br>Already graduated<br>A gap term/year can help. Improve test scores, gain experience, and save more. Look for rolling<br>intakes and pathway routes if you need a smoother start.<br>Counsellor Advice: Early planners often keep loans to 30–40% of total costs. Late planners still<br>succeed with a strict budget and smart picks.<br>Create a Funding Mix that Fits Your Family<br>One source is risky; a balanced mix spreads pressure and keeps cash flow steady. You’ll size<br>savings, scholarships, part-time work, and a gap loan so EMIs stay comfortable after graduation.<br>Family savings<br>This is the base. Every taka saved now reduces future debt.<br>Scholarships<br>Best value because they don’t need repayment. Full awards are rare, but partial awards (BDT 1–<br>5 lakhs) reduce stress in a big way.<br>Education loan<br>Use it to cover the real gap after savings and scholarships. Borrow with a clear post-study<br>repayment plan.Part-time work<br>Most countries allow part-time work. Treat it as support for living costs, not tuition.<br>Build Your Education Fund (simple systems that work)<br>Big totals feel heavy, but systems make saving light. A dedicated account, auto-transfers, small<br>yearly increases, and occasional windfalls grow the fund without straining monthly life.<br>• Start small, grow yearly. Regular saving beats short bursts.<br>• Use a dedicated account. Keep education money separate and visible.<br>• Automate transfers. Same day each month.<br>• Invite family support. Grandparents and relatives can contribute during festivals instead<br>of gifts.<br>• Add windfalls. Bonuses and Eid funds go straight to the education account.<br>• Consider safe places. Term deposits or government savings schemes help the fund grow<br>with low risk.<br>• Track progress. A simple chart keeps everyone motivated.<br>Example: Saving BDT 15,000/month for 8 years builds about BDT 14.4 lakhs even without<br>investment returns. If you start with BDT 10,000 and add BDT 1,000 each year, you’ll reach more<br>with the same family budget.<br>Expert Tip: Increase your savings 10–15% each year. Small annual jumps protect you from<br>education inflation.<br>Scholarships: raise your odds with a clean system<br>Scholarships directly cut what you pay and how much you borrow. Starting 12–18 months early<br>with a tracker, strong grades, and a focused SOP lifts your success rate fast.<br>Where to look<br>University entrance and department awards (often best odds). Country-specific options for<br>Bangladeshi students. Field-based awards (engineering, health, design). Local or private awards<br>with lighter competition.<br>How to apply well<br>Start 12–18 months early. Keep grades strong and collect proof of projects, internships, and<br>leadership. Write a focused SOP that links your story and goals to the program. Ask referees<br>early and share your draft SOP/CV with them.Tracking sheet (use this)<br>• Scholarship name and link<br>• Award value<br>• Eligibility and key criteria<br>• Required documents<br>• Deadline and status<br>Counsellor Advice: Even BDT 2–5 lakhs in partial awards makes a real difference. Apply broadly.<br>Rejections are normal—keep going.<br>Education Loans Without Fear<br>Loans bridge the gap, but unclear terms create long stress. When you know rate, tenure, EMI<br>start, and prepayment rules, you borrow only what you need and keep EMIs within 15–20% of<br>income.<br>When a loan makes sense<br>You have a clear career path with decent starting salaries. Savings and scholarships are not<br>enough. You understand interest, tenure, and start of EMI.<br>Questions to ask any lender<br>What is the interest rate and how is it calculated? When do repayments start? What is<br>the maximum tenure? Are there early payment penalties? Do you need a guarantor or<br>collateral?<br>Smart borrowing rules<br>• Borrow only for the gap.<br>• Keep EMIs within 15–20% of expected starting income.<br>• Check the total payback over the full tenure.<br>• File every loan document neatly.<br>Illustration: A BDT 10 lakh loan at 12% for 10 years costs about BDT 17.4 lakhs in total. Shorter<br>tenures reduce interest.<br>Expert Tip: If possible, repay a little early. Even small extra payments cut total interest.<br>When a loan makes senseGood timing turns into real savings. Paying in tranches near due dates and scheduling fees and<br>scholarships early reduces FX risk and avoids rush penalties.<br>Currency exchange<br>Do not convert everything at once. Pay in planned tranches near due dates. Keep your 20–25%<br>buffer for rate swings.<br>Payment timing<br>Pay application fees early. Follow tuition deadlines closely. Set aside visa fees in advance.<br>Budget pre-departure costs 2–3 months before travel.<br>Scholarship timing<br>Research 12–18 months ahead. Start applications 6–9 months before deadlines. Aim to<br>submit 2–4 weeks early.<br>Counsellor Advice: Keep one shared family calendar with all money dates, document dates, and<br>exam dates.<br>Common Mistakes (and quick fixes)<br>Most plans fail from the same faults: budgeting only tuition, over-borrowing, or ignoring<br>exchange swings. Spot them early, add a buffer, pay in tranches, and keep documents clean to<br>stay on track.<br>• Budgeting only tuition → Add living, insurance, visa, flights, and a 20–25% buffer.<br>• Starting late → Start now, even with small monthly amounts.<br>• Relying on one scholarship → Apply to many; partials add up.<br>• Borrowing too much → Match EMIs to realistic salaries.<br>• Ignoring exchange risk → Pay in tranches.<br>• Poor records → Keep every invoice, receipt, and SWIFT copy.<br>• Choosing costly cities without reason → Pick value locations that still match your goals.<br>• No emergency fund → Keep 3–6 months of living costs aside.<br>Practical Implementation (step-by-step you can use today)<br>Advice works only when it becomes dated tasks. A shared family calendar for savings, tests,<br>fees, and visas keeps everyone aligned and turns plans into steady progress.This month<br>• Calculate a full budget for three destinations (with buffer).<br>• Open a dedicated education savings account and set an auto transfer.<br>• List 5–10 scholarships with links and deadlines.<br>• Hold a family meeting to agree roles and monthly amounts.<br>Next 3 months<br>• Keep savings regular; increase if possible.<br>• Improve English seriously.<br>• Deep-dive on programs and entry rules.<br>• Plan IELTS/SAT dates.<br>• Line up referees for future applications.<br>Next 6–12 months<br>• Raise savings step by step.<br>• Take required tests.<br>• Submit early-deadline scholarships.<br>• Compare loan options only for the gap.<br>12+ months before departure<br>• Send university applications.<br>• Apply for remaining scholarships.<br>• Secure a loan if needed.<br>• Plan currency tranches with your bank.<br>• Start the visa process on time.<br>Strong ConclusionYou can fund an overseas degree with calm planning and steady action. Start with a full budget,<br>pick a funding mix that fits your family, save every month, and keep documents clean.<br>If you want a personalized roadmap—with dates, duties, and budgets—Insaf Immigration can<br>build it with you. Book a session and let’s turn your plan into a clear, step-by-step path you can<br>follow with confidence.</p>', '2026-01-07', 1, '2026-01-07 01:46:13', '2026-01-14 01:04:46');

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
  `district_id` bigint UNSIGNED NOT NULL,
  `office_id` bigint UNSIGNED NOT NULL,
  `Message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_forms`
--

INSERT INTO `contact_forms` (`id`, `Full_name`, `Email_address`, `Phone_number`, `district_id`, `office_id`, `Message`, `created_at`, `updated_at`) VALUES
(1, 'Md', 'hasan@example.com', '012020202020', 0, 0, 'test', '2025-12-22 07:19:15', '2025-12-22 07:19:15'),
(17, 'Donnell Kuvalis', 'your.email+fakedata93998@gmail.com', '776-375-8374', 40, 4, 'dftjr', '2026-01-14 02:22:29', '2026-01-14 02:22:29');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `district` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `destination_id`, `office_id`, `first_name`, `last_name`, `email`, `phone`, `question_1`, `question_2`, `created_at`, `updated_at`, `district`, `address`) VALUES
(18, 3, 2, 'Md', 'Hasan', 'email+fakedata39240@gmail.com', '0120202020', 'IELTS', 'Self-funded', '2025-12-31 06:23:18', '2025-12-31 06:23:18', '', ''),
(19, 7, 2, 'Corine', 'Dickinson', 'your.email+fakedata17969@gmail.com', '257-985-8458', 'IELTS', 'Scholarship', '2026-01-08 00:19:42', '2026-01-08 00:19:42', 'Howell', '6561 Mittie Expressway');

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
(4, 'UK', 'uploads/destinations/1767158322-aiiY10xdaI.jpg', 'uk', 'UK', '<p>Test</p>', 1, '2025-12-16 22:50:12', '2025-12-30 23:18:42'),
(6, 'Canada', 'uploads/destinations/1767766575-qOA0jwIqrl.jpg', 'canada', 'Canada', NULL, 1, '2026-01-07 00:16:15', '2026-01-07 00:16:15'),
(7, 'Europe', 'uploads/destinations/1767766729-k7Uq4tbcTs.jpg', 'europe', 'Europe', NULL, 1, '2026-01-07 00:18:49', '2026-01-07 00:18:49'),
(8, 'USA', 'uploads/destinations/1767766994-rfabMWqm5G.jpg', 'usa', 'USA', NULL, 1, '2026-01-07 00:23:14', '2026-01-07 00:23:50'),
(9, 'Japan', 'uploads/destinations/1767767096-mi4co9H2ta.jpg', 'japan', 'Japan', NULL, 1, '2026-01-07 00:24:56', '2026-01-07 00:24:56'),
(10, 'Malta', 'uploads/destinations/1768368264-l27vw3AsKP.png', 'malta', 'Malta', NULL, 1, '2026-01-13 23:24:24', '2026-01-13 23:24:24'),
(11, 'Malaysia', 'uploads/destinations/1768368333-E8BgOG4LYB.jpg', 'malaysia', 'Malaysia', NULL, 1, '2026-01-13 23:25:33', '2026-01-13 23:25:33'),
(12, 'Russia', 'uploads/destinations/1768368365-dL00KkLylV.jpg', 'russia', 'Russia', NULL, 1, '2026-01-13 23:26:05', '2026-01-13 23:26:05'),
(13, 'Cyprus', 'uploads/destinations/1768368457-gVdcrqMONO.jpg', 'cyprus', 'Cyprus', NULL, 1, '2026-01-13 23:27:37', '2026-01-13 23:27:37'),
(14, 'Lithuania', 'uploads/destinations/1768368497-wLpKUwDaGo.jpg', 'lithuania', 'Lithuania', NULL, 1, '2026-01-13 23:28:17', '2026-01-13 23:28:17'),
(15, 'South Korea', 'uploads/destinations/1768368592-ePVIXOPNEG.png', 'south-korea', 'South Korea', NULL, 1, '2026-01-13 23:29:52', '2026-01-13 23:29:52');

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
(11, 3, 'Popular Courses to Study in Australia', '2025-12-17 04:27:40', '2026-01-14 06:29:29'),
(13, 3, 'Australian Student Visa Requirements for Bangladeshi Students', '2026-01-14 06:31:25', '2026-01-14 06:31:25'),
(14, 3, 'IELTS Requirement for Australia Study Visa', '2026-01-14 06:32:51', '2026-01-14 06:32:51'),
(15, 3, 'Cost of Studying in Australia', '2026-01-14 06:33:37', '2026-01-14 06:33:37'),
(16, 3, 'Work Opportunities for International Students', '2026-01-14 06:34:37', '2026-01-14 06:34:37'),
(17, 3, 'Why Choose Insaf Immigration for Australia Study Visa?', '2026-01-14 06:35:41', '2026-01-14 06:35:41'),
(18, 3, 'Start Your Australia Study Journey Today', '2026-01-14 06:36:42', '2026-01-14 06:36:42'),
(19, 4, 'About', '2026-01-14 06:42:19', '2026-01-14 06:42:19'),
(20, 4, 'Popular Courses to Study in the UK', '2026-01-14 06:44:09', '2026-01-14 06:44:09'),
(21, 4, 'UK Student Visa Requirements for Bangladeshi Students', '2026-01-14 06:45:01', '2026-01-14 06:45:01'),
(22, 4, 'IELTS Requirement for UK Study Visa', '2026-01-14 06:46:06', '2026-01-14 06:46:06'),
(23, 4, 'Cost of Studying in the UK', '2026-01-14 06:46:53', '2026-01-14 06:46:53'),
(24, 4, 'Work Opportunities in the UK', '2026-01-14 06:49:25', '2026-01-14 06:49:25'),
(25, 4, 'Why Choose Insaf Immigration for UK Study Visa?', '2026-01-14 06:50:37', '2026-01-14 06:50:37'),
(26, 4, 'Start Your UK Study Journey with Insaf Immigration', '2026-01-14 06:51:19', '2026-01-14 06:51:19'),
(27, 6, 'About', '2026-01-14 07:14:46', '2026-01-14 07:14:46');

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
(7, 9, '[\"uploads/destination_item_sections/a6d01d85-541a-4fd5-a6b2-f03667b528fa.jpg\"]', 'Australia consistently ranks among the top study abroad destinations for international<br>students. Here’s why Bangladeshi students choose Australia:<br>• Globally recognized universities and qualifications<br>• High-quality education with practical learning<br>• Part-time work opportunities during study<br>• Attractive post-study work rights<br>• Safe, student-friendly, and multicultural society<br>• Strong Bangladeshi student community<br>Australian degrees are accepted worldwide, making graduates highly employable both<br>internationally and in Bangladesh.', '2025-12-16 23:34:37', '2026-01-14 06:28:57'),
(8, 11, '[]', '<div class=\"elementor-element elementor-element-ddc01ea elementor-widget elementor-widget-text-editor\" data-id=\"ddc01ea\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\"><div class=\"elementor-widget-container\"><p><span style=\"font-weight: 400;\">Bangladeshi students can choose from a wide range of in-demand programs, including:<br>• Business &amp; Management<br>• Information Technology (IT)<br>• Engineering<br>• Health Sciences &amp; Nursing<br>• Hospitality &amp; Tourism Management<br>• Accounting &amp; Finance<br>• Data Science &amp; Artificial Intelligence</span></p><p><span style=\"font-weight: 400;\"><br>Our expert counselors at <b>Insaf Immigration</b> help you select the right course and university<br>based on your academic background, career goals, and budget.<br><br><br></span></p>								</div>\r\n				</div><p><br></p>', '2025-12-17 04:28:24', '2026-01-14 06:30:05'),
(10, 13, '[]', '<p>To apply for an Australia student visa (Subclass 500), students generally need:<br>• Valid passport</p><p>• Offer letter from an Australian institution<br>• Academic certificates and transcripts<br>• Proof of financial capacity<br>• English proficiency (IELTS / alternative options)<br>• Genuine Student (GS) statement<br>• Health and character documents<br></p><p><br>A small mistake can cause visa rejection. That’s why choosing a trusted student visa agency inBangladesh is critical.</p>', '2026-01-14 06:32:30', '2026-01-14 06:32:30'),
(11, 14, '[]', '<p>Most Australian institutions require IELTS, but scores may vary depending on the course and<br>university.<br>Typical requirement:<br>• IELTS overall 6.0 – 6.5<br>Our counselors guide you on IELTS preparation, waivers (if applicable), and alternative<br>pathways to maximize your visa success.</p>', '2026-01-14 06:33:16', '2026-01-14 06:33:16'),
(12, 15, '[]', '<p>The cost depends on the course, university, and city.<br>Approximate costs:<br>• Tuition fees: AUD 18,000 – 35,000 per year<br>• Living cost: AUD 21,000 per year (as per visa guidelines)<br>At <span style=\"font-weight: normal;\">Insaf Immigration</span>, we help students find budget-friendly universities, scholarships, and smart financial planning options.</p>', '2026-01-14 06:34:13', '2026-01-14 06:34:13'),
(13, 16, '[]', '<p>Australia allows international students to work part-time during study and full-time during<br>holidays.<br>Benefits include:<br>• Earning while studying<br>• Gaining local work experience<br>• Supporting living expenses</p><p>After graduation, eligible students can apply for post-study work visas, making Australia an excellent long-term career destination.</p>', '2026-01-14 06:35:20', '2026-01-14 06:35:20'),
(14, 17, '[]', '<p>Insaf Immigration is a trusted student visa consultancy in Bangladesh with a strong focus on<br>Australia.<br>We offer:<br>• Honest and professional counseling<br>• University and course selection support<br>• Strong visa documentation &amp; GS statement preparation<br>• High student visa success rate<br>• Transparent process with no hidden costs<br>• Pre-departure briefing, air ticket, and airport pickup support<br>We don’t give false promises — we deliver results</p>', '2026-01-14 06:36:27', '2026-01-14 06:36:27'),
(15, 18, '[]', '<p>If you are planning to study in Australia from Bangladesh, now is the right time to take action.With proper guidance and expert support, your Australian education dream is achievable.<br></p><p><br>Contact <span style=\"font-weight: normal;\">Insaf Immigration</span> today for a free consultation and take the first step toward your global future.</p>', '2026-01-14 06:37:20', '2026-01-14 06:37:20'),
(16, 19, '[]', '<p>The United Kingdom is one of the most prestigious and trusted study destinations for Bangladeshi students. With world-renowned universities, shorter course durations, globally<br>recognized degrees, and strong post-study work opportunities, studying in the UK offers exceptional value and career growth.<br></p><p><br>At Insaf Immigration, we provide complete support for UK student visas from Bangladesh, ensuring a smooth, transparent, and successful application process.</p>', '2026-01-14 06:42:58', '2026-01-14 06:42:58'),
(17, 10, '[]', '<p>The UK has been a top choice for international students for decades. Bangladeshi students<br>choose the UK because of:<br>• World-class universities with global rankings<br>• Shorter course duration (save time &amp; cost)<br>• One-year Master’s programs<br>• Strong Graduate Route (Post-Study Work)<br>• High academic standards and quality education<br>• Multicultural and student-friendly environment<br>A UK degree significantly increases global employability.</p>', '2026-01-14 06:43:50', '2026-01-14 06:43:50'),
(18, 20, '[]', '<p>UK universities offer a wide range of career-focused programs, including:<br>• Business &amp; Management<br>• Accounting &amp; Finance<br>• Computer Science &amp; IT<br>• Engineering<br>• Law<br>• Health &amp; Public Health• Data Science &amp; Artificial Intelligence<br>Insaf Immigration helps students choose the right course and university based on academic<br>profile, budget, and future career goals.</p>', '2026-01-14 06:44:37', '2026-01-14 06:44:37'),
(19, 21, '[]', '<p>To apply for a UK Student Visa, students typically need:<br>• Valid passport<br>• CAS (Confirmation of Acceptance for Studies)<br>• Academic certificates and transcripts<br>• Proof of funds (bank statement)<br>• English language proficiency (IELTS or alternatives)<br>• Tuberculosis (TB) test report<br>Our experienced visa team ensures 100% accurate documentation, reducing the risk of refusal.</p>', '2026-01-14 06:45:44', '2026-01-14 06:45:44'),
(20, 22, '[]', '<p>Most UK universities require IELTS, but score requirements vary.<br>Typical IELTS requirement:<br>• IELTS 6.0 – 6.5 overall<br>Some universities accept IELTS waiver or alternative tests depending on academic<br>background. Our counselors will guide you with the best option.</p>', '2026-01-14 06:46:38', '2026-01-14 06:46:38'),
(21, 23, '[]', '<p>The UK offers excellent value due to shorter course duration.<br>Estimated costs:<br>• Tuition fees: GBP 10,000 – 18,000 per year<br>• Living cost: GBP 9,000 – 12,000 per year<br>At <span style=\"font-weight: normal;\">Insaf Immigration</span>, we help students find affordable UK universities, scholarships, and smart<br>financial planning options.</p>', '2026-01-14 06:49:09', '2026-01-14 06:49:09'),
(22, 24, '[]', '<p>International students in the UK can work</p><p>• 20 hours per week during term time<br>• Full-time during holidays<br>After graduation, students can apply for the UK Graduate Route, allowing them to work in the<br>UK for up to 2 years (3 years for PhD).</p>', '2026-01-14 06:50:08', '2026-01-14 06:50:08'),
(23, 25, '[]', '<p>Insaf Immigration is a trusted student visa agency in Bangladesh, specializing in UK education.<br>We provide:<br>• Honest and expert counseling<br>• University &amp; course selection assistance<br>• Strong SOP and visa file preparation<br>• High UK student visa success rate<br>• Transparent pricing with no hidden costs<br>• Pre-departure briefing, air ticket, and airport pickup support<br>We guide students with integrity and results — not false promises.</p>', '2026-01-14 06:51:00', '2026-01-14 06:51:00'),
(24, 26, '[]', '<p>If you are planning to study in the UK from Bangladesh, now is the right time to apply. With expert guidance and proper planning, your UK education dream is fully achievable.<br>Contact Insaf Immigration today for a free consultation and secure your future in the UK.</p>', '2026-01-14 06:51:56', '2026-01-14 06:51:56'),
(25, 27, '[]', '<p>Canada is one of the most preferred study destinations for Bangladeshi students due to its world-class education system, affordable tuition options, excellent work opportunities, and<br>strong pathways to permanent residency. With globally recognized degrees and a high quality of life, studying in Canada is a smart long-term investment for your future.<br></p><p><br>At Insaf Immigration, we provide complete and professional support for Canada student visas from Bangladesh, ensuring accuracy, transparency, and high success rates.</p>', '2026-01-14 07:15:28', '2026-01-14 07:15:28');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint UNSIGNED NOT NULL,
  `division_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bn_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_id`, `name`, `bn_name`, `lat`, `lon`, `url`, `created_at`, `updated_at`) VALUES
(1, 1, 'Comilla', 'কুমিল্লা', '23.4682747', '91.1788135', 'www.comilla.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(2, 1, 'Feni', 'ফেনী', '23.023231', '91.3840844', 'www.feni.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(3, 1, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', '23.9570904', '91.1119286', 'www.brahmanbaria.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(4, 1, 'Rangamati', 'রাঙ্গামাটি', '22.65561018', '92.17541121', 'www.rangamati.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(5, 1, 'Noakhali', 'নোয়াখালী', '22.869563', '91.099398', 'www.noakhali.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(6, 1, 'Chandpur', 'চাঁদপুর', '23.2332585', '90.6712912', 'www.chandpur.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(7, 1, 'Lakshmipur', 'লক্ষ্মীপুর', '22.942477', '90.841184', 'www.lakshmipur.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(8, 1, 'Chattogram', 'চট্টগ্রাম', '22.335109', '91.834073', 'www.chittagong.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(9, 1, 'Coxsbazar', 'কক্সবাজার', '21.44315751', '91.97381741', 'www.coxsbazar.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(10, 1, 'Khagrachhari', 'খাগড়াছড়ি', '23.119285', '91.984663', 'www.khagrachhari.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(11, 1, 'Bandarban', 'বান্দরবান', '22.1953275', '92.2183773', 'www.bandarban.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(12, 2, 'Sirajganj', 'সিরাজগঞ্জ', '24.4533978', '89.7006815', 'www.sirajganj.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(13, 2, 'Pabna', 'পাবনা', '23.998524', '89.233645', 'www.pabna.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(14, 2, 'Bogura', 'বগুড়া', '24.8465228', '89.377755', 'www.bogra.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(15, 2, 'Rajshahi', 'রাজশাহী', '24.37230298', '88.56307623', 'www.rajshahi.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(16, 2, 'Natore', 'নাটোর', '24.420556', '89.000282', 'www.natore.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(17, 2, 'Joypurhat', 'জয়পুরহাট', '25.09636876', '89.04004280', 'www.joypurhat.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(18, 2, 'Chapainawabganj', 'চাঁপাইনবাবগঞ্জ', '24.5965034', '88.2775122', 'www.chapainawabganj.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(19, 2, 'Naogaon', 'নওগাঁ', '24.83256191', '88.92485205', 'www.naogaon.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(20, 3, 'Jashore', 'যশোর', '23.16643', '89.2081126', 'www.jessore.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(21, 3, 'Satkhira', 'সাতক্ষীরা', '22.7180905', '89.0687033', 'www.satkhira.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(22, 3, 'Meherpur', 'মেহেরপুর', '23.762213', '88.631821', 'www.meherpur.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(23, 3, 'Narail', 'নড়াইল', '23.172534', '89.512672', 'www.narail.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(24, 3, 'Chuadanga', 'চুয়াডাঙ্গা', '23.6401961', '88.841841', 'www.chuadanga.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(25, 3, 'Kushtia', 'কুষ্টিয়া', '23.901258', '89.120482', 'www.kushtia.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(26, 3, 'Magura', 'মাগুরা', '23.487337', '89.419956', 'www.magura.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(27, 3, 'Khulna', 'খুলনা', '22.815774', '89.568679', 'www.khulna.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(28, 3, 'Bagerhat', 'বাগেরহাট', '22.651568', '89.785938', 'www.bagerhat.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(29, 3, 'Jhenaidah', 'ঝিনাইদহ', '23.5448176', '89.1539213', 'www.jhenaidah.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(30, 4, 'Jhalakathi', 'ঝালকাঠি', '22.6422689', '90.2003932', 'www.jhalakathi.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(31, 4, 'Patuakhali', 'পটুয়াখালী', '22.3596316', '90.3298712', 'www.patuakhali.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(32, 4, 'Pirojpur', 'পিরোজপুর', '22.5781398', '89.9983909', 'www.pirojpur.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(33, 4, 'Barisal', 'বরিশাল', '22.7004179', '90.3731568', 'www.barisal.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(34, 4, 'Bhola', 'ভোলা', '22.685923', '90.648179', 'www.bhola.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(35, 4, 'Barguna', 'বরগুনা', '22.159182', '90.125581', 'www.barguna.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(36, 5, 'Sylhet', 'সিলেট', '24.8897956', '91.8697894', 'www.sylhet.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(37, 5, 'Moulvibazar', 'মৌলভীবাজার', '24.482934', '91.777417', 'www.moulvibazar.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(38, 5, 'Habiganj', 'হবিগঞ্জ', '24.374945', '91.41553', 'www.habiganj.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(39, 5, 'Sunamganj', 'সুনামগঞ্জ', '25.0658042', '91.3950115', 'www.sunamganj.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(40, 6, 'Narsingdi', 'নরসিংদী', '23.932233', '90.71541', 'www.narsingdi.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(41, 6, 'Gazipur', 'গাজীপুর', '24.0022858', '90.4264283', 'www.gazipur.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(42, 6, 'Shariatpur', 'শরীয়তপুর', '23.2060195', '90.3477725', 'www.shariatpur.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(43, 6, 'Narayanganj', 'নারায়ণগঞ্জ', '23.63366', '90.496482', 'www.narayanganj.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(44, 6, 'Tangail', 'টাঙ্গাইল', '24.264145', '89.918029', 'www.tangail.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(45, 6, 'Kishoreganj', 'কিশোরগঞ্জ', '24.444937', '90.776575', 'www.kishoreganj.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(46, 6, 'Manikganj', 'মানিকগঞ্জ', '23.8602262', '90.0018293', 'www.manikganj.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(47, 6, 'Dhaka', 'ঢাকা', '23.7115253', '90.4111451', 'www.dhaka.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(48, 6, 'Munshiganj', 'মুন্সিগঞ্জ', '23.5435742', '90.5354327', 'www.munshiganj.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(49, 6, 'Rajbari', 'রাজবাড়ী', '23.7574305', '89.6444665', 'www.rajbari.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(50, 6, 'Madaripur', 'মাদারীপুর', '23.164102', '90.1896805', 'www.madaripur.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(51, 6, 'Gopalganj', 'গোপালগঞ্জ', '23.0050857', '89.8266059', 'www.gopalganj.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(52, 6, 'Faridpur', 'ফরিদপুর', '23.6070822', '89.8429406', 'www.faridpur.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(53, 7, 'Panchagarh', 'পঞ্চগড়', '26.3411', '88.5541606', 'www.panchagarh.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(54, 7, 'Dinajpur', 'দিনাজপুর', '25.6217061', '88.6354504', 'www.dinajpur.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(55, 7, 'Lalmonirhat', 'লালমনিরহাট', '25.9165451', '89.4532409', 'www.lalmonirhat.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(56, 7, 'Nilphamari', 'নীলফামারী', '25.931794', '88.856006', 'www.nilphamari.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(57, 7, 'Gaibandha', 'গাইবান্ধা', '25.328751', '89.528088', 'www.gaibandha.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(58, 7, 'Thakurgaon', 'ঠাকুরগাঁও', '26.0336945', '88.4616834', 'www.thakurgaon.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(59, 7, 'Rangpur', 'রংপুর', '25.7558096', '89.244462', 'www.rangpur.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(60, 7, 'Kurigram', 'কুড়িগ্রাম', '25.805445', '89.636174', 'www.kurigram.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(61, 8, 'Sherpur', 'শেরপুর', '25.0204933', '90.0152966', 'www.sherpur.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(62, 8, 'Mymensingh', 'ময়মনসিংহ', '24.7465670', '90.4072093', 'www.mymensingh.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(63, 8, 'Jamalpur', 'জামালপুর', '24.937533', '89.937775', 'www.jamalpur.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16'),
(64, 8, 'Netrokona', 'নেত্রকোণা', '24.870955', '90.727887', 'www.netrokona.gov.bd', '2026-01-14 01:50:16', '2026-01-14 01:50:16');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint UNSIGNED NOT NULL,
  `destination_id` bigint UNSIGNED DEFAULT NULL,
  `scholarship_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'application/pdf',
  `file_size` bigint NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `destination_id`, `scholarship_id`, `name`, `file_path`, `mime_type`, `file_size`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 3, NULL, 'Test', 'uploads/documents/1767878498_sample.pdf', 'application/pdf', 18630, 1, '2026-01-08 07:21:38', '2026-01-09 22:43:59'),
(2, 7, NULL, 'Demo', 'uploads/documents/1768027699_sample.pdf', 'application/pdf', 18630, 1, '2026-01-10 00:48:19', '2026-01-10 00:48:19');

-- --------------------------------------------------------

--
-- Table structure for table `document_download_contact_forms`
--

CREATE TABLE `document_download_contact_forms` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination_id` bigint UNSIGNED DEFAULT NULL,
  `scholarship_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `document_download_contact_forms`
--

INSERT INTO `document_download_contact_forms` (`id`, `first_name`, `last_name`, `email`, `phone`, `district`, `address`, `destination_id`, `scholarship_id`, `created_at`, `updated_at`) VALUES
(16, 'Brandi', 'Stroman', 'your.email+fakedata49127@gmail.com', '715-085-2169', 'Hilll', '731 Arnoldo Manor', 7, NULL, '2026-01-10 00:47:24', '2026-01-10 00:47:24'),
(18, 'Theron', 'Hettinger', 'your.email+fakedata76671@gmail.com', '680-312-4033', 'Bosco', '100 Legros Meadows', 3, NULL, '2026-01-10 02:20:06', '2026-01-10 02:20:06');

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
(5, 'Insaf Immigration: Education Fair 2026', '<br>', 'uploads/events/1768369352-kMmghv9L6j.png', '2026-02-01', '2026-01-14 10:00:00', NULL, NULL, 'Dhaka', 1, '2025-12-20 05:39:06', '2026-01-13 23:42:32'),
(6, 'Insaf Education Consultancy Seminar - 2', '<p>Insaf Education Consultancy provides professional guidance for students \r\nseeking higher education opportunities both locally and internationally.\r\n The consultancy offers support in university selection, admission \r\nprocessing, scholarship guidance, and visa assistance. With a \r\nstudent-focused approach, Insaf Education Consultancy helps learners \r\nmake confident and informed decisions for their academic and career \r\ngoals.</p>', 'uploads/events/1767769868-3SAjRxmHNv.jpg', '2026-08-01', '2026-01-07 10:00:00', '2026-01-07 12:00:00', '2026-10-01', 'Banani', 1, '2026-01-07 00:41:23', '2026-01-07 01:11:08'),
(7, 'Insaf Education Consultancy Seminar - 3', '<p>Insaf Education Consultancy provides professional guidance for students \r\nseeking higher education opportunities both locally and internationally.\r\n The consultancy offers support in university selection, admission \r\nprocessing, scholarship guidance, and visa assistance. With a \r\nstudent-focused approach, Insaf Education Consultancy helps learners \r\nmake confident and informed decisions for their academic and career \r\ngoals.</p>', 'uploads/events/1767768140-zzduIWdvG5.jpg', '2026-09-01', '2026-01-07 11:00:00', '2026-01-07 12:30:00', '2026-12-01', 'Gulshan', 1, '2026-01-07 00:42:20', '2026-01-07 00:50:34'),
(9, 'Insaf Education Consultancy Seminar - 4', '<p>Insaf Education Consultancy provides professional guidance for students \r\nseeking higher education opportunities both locally and internationally.\r\n The consultancy offers support in university selection, admission \r\nprocessing, scholarship guidance, and visa assistance. With a \r\nstudent-focused approach, Insaf Education Consultancy helps learners \r\nmake confident and informed decisions for their academic and career \r\ngoals.</p>', 'uploads/events/1767769378-p3elfdtyPP.jpg', '2026-01-12', '2026-01-07 17:00:00', '2026-01-07 20:00:00', '2026-01-16', 'Mirpur', 1, '2026-01-07 01:02:58', '2026-01-07 01:02:58');

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
(2, 5, 'EDUCATION FAIR 2026 – DON’T MISS OUT!', '2025-12-22 01:53:19', '2026-01-13 23:46:02');

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
(2, 2, '[\"uploads/event_item_sections/4c05512f-1c6b-4437-a8cf-994f69c6a6f3.png\"]', '<p style=\"\"><b>EDUCATION FAIR 2026 – DON’T MISS OUT!</b></p><p><span style=\"font-weight: normal;\">Still confused about where to study, how to apply, or how to get a student visa? This is your ONE-DAY OPPORTUNITY to meet experts, get real answers, and secure your future FASTER. </span></p><p><span style=\"font-weight: normal;\">Insaf Immigration presents Education Fair 2026 — built for students who are serious about studying abroad.</span></p><p><span style=\"font-weight: normal;\"><br></span><b>WHAT MAKES THIS FAIR DIFFERENT</b></p><ul><li style=\"margin-left: 50px;\"><b>Direct Student Visa Guidance – No agents, no confusion</b></li><li style=\"margin-left: 50px;\"><b>On-the-Spot Profile Evaluation</b></li><li style=\"margin-left: 50px;\"><b>Affordable Study Options with Scholarships</b></li><li style=\"margin-left: 50px;\"><b>Without IELTS Options Available</b></li><li style=\"margin-left: 50px;\"><b>100% Transparent Process&nbsp; No Hidden Charges</b></li><li style=\"margin-left: 50px;\"><b>Limited Seats | High Demand | First Come First Served</b></li></ul><p><b><br></b></p><p><b>STUDY DESTINATIONS YOU CAN APPLY FOR</b></p><p><b>Malaysia • UK • Australia • Europe • Canada • USA • New Zealand &amp; More</b></p><p><b><br></b></p><p style=\"\"><span style=\"font-weight: normal;\"><b>EVENT DETAILS</b><br><b>Sunday | 01 February 2026<br>From 10:00 AM<br>Hoque Tower, Panthapath, Dhaka</b></span></p><p style=\"\"><span style=\"font-weight: normal;\"><b><br></b></span></p><p style=\"\"><span style=\"font-weight: normal;\">ACT NOW – SEATS ARE LIMITED<br>Delaying today can cost you another year of your career.<br>REGISTER NOW<br>Call: 01617-926681<br>www.insafimmigration.com</span></p>', '2025-12-22 01:57:32', '2026-01-14 00:42:20');

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
(53, '2025_12_24_063228_add_image_to_scholarship_table', 41),
(54, '2026_01_08_050116_add_url_to_sliders_table', 42),
(55, '2026_01_08_061347_add_fields_to_contact_us_table', 43),
(56, '2026_01_08_124934_create_documents_table', 44),
(57, '2026_01_10_052359_create_document_download_contact_forms_table', 45),
(58, '2026_01_14_071531_add_fields_to_contact_forms_table', 46),
(59, '2026_01_14_073705_create_districts_table', 47),
(60, '2026_01_14_074204_create_divisions_table', 48),
(61, '2026_01_14_075210_create_districts_table', 49),
(62, '2026_01_14_075531_add_fields_to_contact_forms_table', 50);

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE `offices` (
  `id` bigint UNSIGNED NOT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
(2, 'Chattogram', 'Bangladesh', '<p>Ridima Tower (Shahjalal Islami Bank Building), Level-4, Telopatti Moar, Chawkbazar, Chattogram</p>', '+8801805-020273', 'test@example.com', 0, '2025-12-21 00:40:02', '2026-01-08 00:23:34'),
(3, 'Dhaka', 'Bangladesh', '<p>Haque Tower (Opposite of BRB Hospital), Floor - 6, Panthapath, Dhaka - 1205</p>', '+8801880-942457', 'test1@example.com', 1, '2025-12-22 05:04:38', '2026-01-14 02:29:29'),
(4, 'Barisal', 'Bangladesh', '<p>723, Thana Council, C&amp;B Road East Side, Ward No:14, BCC, Barishal&nbsp;</p><p><br></p>', '+8801604-123816', 'test@example.com', 0, '2025-12-22 23:43:22', '2026-01-14 05:18:19');

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
(3, '4', NULL, NULL, 'uploads/reviews/1768373100-RHeNKTiQMl.png', 1, '2025-12-22 05:01:07', '2026-01-14 00:45:00'),
(5, '3', NULL, NULL, 'uploads/reviews/1768373084-eWBi5tC7JU.png', 1, '2026-01-07 01:28:10', '2026-01-14 00:44:44'),
(6, '2', NULL, NULL, 'uploads/reviews/1768373042-q6sW5PMIOi.png', 1, '2026-01-07 01:28:26', '2026-01-14 00:44:27'),
(7, '1', NULL, NULL, 'uploads/reviews/1768373023-lUi1gEwwxH.png', 1, '2026-01-07 01:28:54', '2026-01-14 00:44:16'),
(8, '5', NULL, NULL, 'uploads/reviews/1768373125-gjGc38Mfqn.png', 1, '2026-01-14 00:45:25', '2026-01-14 00:45:25'),
(9, '6', NULL, NULL, 'uploads/reviews/1768373144-qpQUrLXCm3.png', 1, '2026-01-14 00:45:44', '2026-01-14 00:45:44'),
(10, '7', NULL, NULL, 'uploads/reviews/1768373165-YxHSqiMGwY.png', 1, '2026-01-14 00:46:05', '2026-01-14 00:46:05'),
(11, '8', NULL, NULL, 'uploads/reviews/1768373190-yFn4ET8N0R.png', 1, '2026-01-14 00:46:30', '2026-01-14 00:46:30'),
(12, '9', NULL, NULL, 'uploads/reviews/1768373206-YDWV6wiu2N.png', 1, '2026-01-14 00:46:46', '2026-01-14 00:46:46'),
(13, '10', NULL, '<br>', 'uploads/reviews/1768373226-Ny4zXsAQVU.png', 1, '2026-01-14 00:47:06', '2026-01-14 00:47:06'),
(14, '11', NULL, NULL, 'uploads/reviews/1768373242-oSBlVGjmzn.png', 1, '2026-01-14 00:47:22', '2026-01-14 00:47:22'),
(15, '12', NULL, NULL, 'uploads/reviews/1768373263-Zl97nlyiZ9.png', 1, '2026-01-14 00:47:43', '2026-01-14 00:47:43'),
(16, '13', NULL, NULL, 'uploads/reviews/1768373297-JfD2Xm4l8X.png', 1, '2026-01-14 00:48:17', '2026-01-14 00:48:17'),
(17, '14', NULL, NULL, 'uploads/reviews/1768373312-5BsNkjmzKj.png', 1, '2026-01-14 00:48:32', '2026-01-14 00:48:32'),
(18, '15', NULL, NULL, 'uploads/reviews/1768373332-1I4KANPedG.png', 1, '2026-01-14 00:48:52', '2026-01-14 00:48:52'),
(19, '16', NULL, NULL, 'uploads/reviews/1768373348-5nCaBQOCuc.png', 1, '2026-01-14 00:49:08', '2026-01-14 00:49:08'),
(20, '17', NULL, NULL, 'uploads/reviews/1768373368-h7Lw47O8zz.png', 1, '2026-01-14 00:49:28', '2026-01-14 00:49:28');

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
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
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
(3, 4, 'Scholarships in Australia', '2025-12-31 05:08:44', '2025-12-31 05:08:44'),
(4, 4, 'Australian Student Visa Requirements for Bangladeshi Students', '2026-01-14 06:30:26', '2026-01-14 06:30:26');

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
('GO6JX9H0uTQqdKDM1eTo18Zu4JuXesxLqp3LC2ZQ', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:146.0) Gecko/20100101 Firefox/146.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiVU1ZZ1gwNjJmRGg3WngyYjBMZkNlM1N1UFhyc2NraDkwWG9LdU1VMSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9kZXN0aW5hdGlvbl9pdGVtX3NlY3Rpb25zIjtzOjU6InJvdXRlIjtzOjM3OiJhZG1pbi5kZXN0aW5hdGlvbl9pdGVtX3NlY3Rpb25zLmluZGV4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czoxMDoidHlyby1sb2dpbiI7YToxOntzOjc6ImNhcHRjaGEiO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1768397001);

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `subtitle`, `image`, `is_active`, `created_at`, `updated_at`, `url`) VALUES
(6, 'Your Passport to a Brighter Future Starts Here!', 'Study in top countries like USA, UK, Canada, Malaysia, and Europe. Expert visa guidance, airport pickup, and all support from day one', 'uploads/sliders/1768367060-6GT1erTHIX.webp', 1, '2025-12-30 23:32:44', '2026-01-13 23:14:52', NULL),
(8, 'Thousands of Dreams Turned into Reality!', 'Join hundreds of students who got their visas through Insaf Immigration. Fast, reliable, and 100% resultoriented service!', 'uploads/sliders/1768367679-3dcCYQbyXV.png', 1, '2026-01-07 23:06:50', '2026-01-13 23:14:39', NULL),
(9, 'Study Abroad + Earn While You Learn!', 'Exclusive programs in Malaysia & Europe with work opportunities. Minimal investment, maximum income. Pay only after visa approval!', 'uploads/sliders/1768367959-ij1LsKX7KB.webp', 1, '2026-01-13 23:19:19', '2026-01-13 23:19:19', NULL);

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
(1, 'Asraful Islam Sakib', 'Chief Executive Officer', 'uploads/team/1768390605-faCy7eDsVV.png', 'Founded Insaf Immigration with a strong belief that global education should be transparent, affordable, and accessible for every student.<br>Recognized by international universities and partners for ethical consultancy and outstanding student recruitment performance.<br>Committed to building long-term student success through honest guidance, strategic planning, and global partnerships.', 1, '2025-12-10 23:23:06', '2026-01-14 05:36:45'),
(2, 'Mohammad Faisal', 'Chief Accountant', 'uploads/team/1768390654-C1EWD6PZVv.png', '<p>Oversees all financial operations of Insaf Immigration with accuracy, integrity, and full regulatory compliance.<br>Ensures transparent handling of student payments, university fees, and international transactions.<br>Maintains strict compliance with tax regulations, audit requirements, and financial governance standards.</p>', 1, '2026-01-14 05:37:34', '2026-01-14 05:37:34'),
(3, 'Lutfur Kabir Rana', 'Senior Consultant (HRM)', 'uploads/team/1768390704-MMbGyE1pFG.png', '<p>Provides strategic HR leadership, policy development, and workforce planning aligned with organizational goals.<br>Brings strong expertise in recruitment, talent management, employee relations, and performance management systems<br>Acts as a trusted advisor to leadership on employee engagement, retention, and HR strategy.</p>', 1, '2026-01-14 05:38:24', '2026-01-14 05:38:24'),
(4, 'Rasel Shikder', 'Senior Country Director (Bangladesh)', 'uploads/team/1768390769-AlkVTYOK0f.png', '<p>Brings extensive experience in international education management, student recruitment, and partner relations.</p><p>Oversees university partnerships, visa processing standards, and local compliance requirements.<br>Ensures service excellence, brand integrity, and consistent student success across the country.</p>', 1, '2026-01-14 05:39:29', '2026-01-14 05:39:29');

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
(1, '<h6 class=\"style-scope ytd-watch-metadata\">Russia Study Visa Success</h6><h1 class=\"style-scope ytd-watch-metadata\"></h1><br>', 'Ashraful Islam', 'Student', NULL, 'https://www.youtube.com/watch?v=t9wQtZFGtWQ&list=PL9z8CWGR3i2wuecMmPOhH0jX8rJRxvEhk&index=1', 1, '2025-12-10 22:58:09', '2026-01-14 05:45:35'),
(2, '<p>test</p>', 'Others', 'Student', NULL, 'https://www.youtube.com/watch?v=OMuWbdyWAAI&list=PL9z8CWGR3i2wuecMmPOhH0jX8rJRxvEhk&index=2', 1, '2026-01-14 05:43:09', '2026-01-14 05:43:09'),
(3, '<p>𝐌𝐚𝐥𝐚𝐲𝐬𝐢𝐚 𝐒𝐭𝐮𝐝𝐲 𝐕𝐢𝐬𝐚</p>', 'Others 2', 'Student', NULL, 'https://www.youtube.com/watch?v=lflqkk9lym8', 1, '2026-01-14 05:44:44', '2026-01-14 05:44:44');

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
(1, 'Inoodex', 'hello@inoodex.com', NULL, '$2y$12$WY3ZDqc79mI0dv9X6rkJhuuCKjhAUM0Kr.7FFQH.6Xoza22mM6.Za', 'sVwghh9MuEdIVYZpox6yjFO2X69y0TiXbxQKpdSJarxswj2DUtzEEM1Y3tm8', '2025-12-09 23:03:03', '2025-12-09 23:03:03', NULL, NULL);

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
(4, 2000, 15, 96, 8, NULL, 1, '2025-12-21 00:31:49', '2026-01-14 00:50:25');

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
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_destination_id_index` (`destination_id`),
  ADD KEY `documents_scholarship_id_index` (`scholarship_id`);

--
-- Indexes for table `document_download_contact_forms`
--
ALTER TABLE `document_download_contact_forms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document_download_contact_forms_destination_id_foreign` (`destination_id`),
  ADD KEY `document_download_contact_forms_scholarship_id_foreign` (`scholarship_id`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact_forms`
--
ALTER TABLE `contact_forms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `destination_items`
--
ALTER TABLE `destination_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `destination_item_sections`
--
ALTER TABLE `destination_item_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `document_download_contact_forms`
--
ALTER TABLE `document_download_contact_forms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `scholarship_item_sections`
--
ALTER TABLE `scholarship_item_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `terms_conditions`
--
ALTER TABLE `terms_conditions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- Constraints for table `document_download_contact_forms`
--
ALTER TABLE `document_download_contact_forms`
  ADD CONSTRAINT `document_download_contact_forms_destination_id_foreign` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `document_download_contact_forms_scholarship_id_foreign` FOREIGN KEY (`scholarship_id`) REFERENCES `scholarships` (`id`) ON DELETE SET NULL;

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
