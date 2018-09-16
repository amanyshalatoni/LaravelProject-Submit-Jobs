-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2018 at 05:03 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobs`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `isdelete` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `mobile`, `active`, `isdelete`, `created_by`, `created_at`, `updated_at`, `updated_by`, `user_id`) VALUES
(1, 'ياسر فؤاد ابوزهري', 'yaser@gmail.com', '0599535535', 1, 0, 0, '0000-00-00 00:00:00', '2018-05-05 13:58:12', 1, 1),
(3, 'yaser@yahoo.com', 'yaser@yahoo.com', '0599624984', 1, 0, 1, '2018-05-05 13:51:30', '2018-05-05 13:51:30', NULL, 6);

-- --------------------------------------------------------

--
-- Table structure for table `admin_link`
--

CREATE TABLE `admin_link` (
  `admin_id` int(11) NOT NULL,
  `link_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `isdelete` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `active`, `isdelete`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'ادارة', 1, 0, '2018-04-23 13:22:57', '2018-04-25 12:47:23', 1, 1),
(2, 'محاسبة', 1, 0, '2018-04-23 13:29:57', '2018-04-25 12:46:16', 1, 1),
(3, 'هندسة', 1, 0, '2018-04-23 13:30:06', '2018-04-25 12:46:54', 1, 1),
(4, 'تكنولوجيا معلومات', 1, 0, '2018-04-23 13:30:19', '2018-04-25 12:46:57', 1, 1),
(5, 'علوم', 1, 0, '2018-04-23 13:30:23', '2018-04-23 13:52:41', 1, 1),
(6, 'طب', 1, 0, '2018-04-23 13:30:27', '2018-04-23 13:52:40', 1, 1),
(7, 'تبريد وتكييف', 1, 1, '2018-04-25 12:53:23', '2018-04-25 13:02:40', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `details` text NOT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `isdelete` tinyint(1) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `details`, `logo`, `email`, `mobile`, `address`, `created_at`, `updated_at`, `active`, `isdelete`, `updated_by`, `user_id`) VALUES
(1, 'Vision Plus', 'وصف بسيط عن الشركة يكون هنا وصف بسيط عن الشركة يكون هنا وصف بسيط عن الشركة يكون هنا وصف بسيط عن الشركة يكون هنا وصف بسيط عن الشركة يكون هنا وصف بسيط عن الشركة يكون هنا وصف بسيط عن الشركة يكون هنا وصف بسيط عن الشركة يكون هنا وصف بسيط عن الشركة يكون هنا وصف بسيط عن الشركة يكون هنا وصف بسيط عن الشركة يكون هنا وصف بسيط عن الشركة يكون هنا وصف بسيط عن الشركة يكون هنا وصف بسيط عن الشركة يكون هنا وصف بسيط عن الشركة يكون هنا وصف بسيط عن الشركة يكون هنا وصف بسيط عن الشركة يكون هنا وصف بسيط عن الشركة يكون هنا وصف بسيط عن الشركة يكون هنا', NULL, 'info@visionplus.ps', '082884888', 'غزة الرمال', '2018-04-25 00:00:00', '2018-05-02 13:38:37', 1, 0, 1, 3),
(2, 'السقا', 'شركة السقا للاجهزة الكهربائية', '', 'info@saqqa.com', '0599624984', 'الرمال', '2018-04-30 00:00:00', NULL, 1, 0, NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `company_id` int(11) NOT NULL,
  `details` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `job_type_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `active` tinyint(1) NOT NULL,
  `isdelete` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`id`, `title`, `company_id`, `details`, `category_id`, `job_type_id`, `from_date`, `to_date`, `active`, `isdelete`, `created_at`, `updated_at`, `updated_by`) VALUES
(1, 'محاسب قانوني', 1, 'مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب مطلوب ومطلوب ومطلوب', 6, 1, '2018-05-31', '2018-07-31', 0, 0, '2018-04-25 00:00:00', '2018-04-30 13:27:40', 1),
(2, 'مهندس كهربائي', 1, 'تفاصيل الوظيفة يكون هنا', 2, 2, '2018-05-31', '2018-06-30', 0, 0, '2018-04-30 00:00:00', '2018-04-30 13:30:16', 0);

-- --------------------------------------------------------

--
-- Table structure for table `job_seeker`
--

CREATE TABLE `job_seeker` (
  `id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `seeker_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `cv` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `job_seeker`
--

INSERT INTO `job_seeker` (`id`, `job_id`, `seeker_id`, `name`, `email`, `mobile`, `cv`, `created_at`, `updated_at`) VALUES
(2, 2, 1, 'محمد', 'mhd@aa.com', '0599808080', 'My CV.docx', '2018-04-30 13:56:40', '2018-04-30 13:56:40');

-- --------------------------------------------------------

--
-- Table structure for table `job_type`
--

CREATE TABLE `job_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `job_type`
--

INSERT INTO `job_type` (`id`, `name`) VALUES
(1, 'دوام كامل'),
(2, 'دوام جزئي');

-- --------------------------------------------------------

--
-- Table structure for table `link`
--

CREATE TABLE `link` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `showinmenu` tinyint(1) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `link_type`
--

CREATE TABLE `link_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `link_type`
--

INSERT INTO `link_type` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'company'),
(3, 'seeker');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seeker`
--

CREATE TABLE `seeker` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `gender` char(1) NOT NULL,
  `dob` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `address` varchar(500) NOT NULL,
  `cv` varchar(50) DEFAULT NULL,
  `isdelete` tinyint(1) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `seeker`
--

INSERT INTO `seeker` (`id`, `name`, `email`, `mobile`, `gender`, `dob`, `created_at`, `updated_at`, `updated_by`, `active`, `address`, `cv`, `isdelete`, `user_id`) VALUES
(1, 'محمد علي', 'mhd@aa.com', '0599636363', 'M', '1982-04-02', '2018-04-25 00:00:00', '2018-05-02 13:31:31', 1, 1, 'غزة الصبرة', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ياسر فؤاد ابوزهري', 'yaser@gmail.com', '$2y$10$OzsFo2QOoDJZxKMHDOqFV.GbMyuZBKLk1qouu3XtZsdjPtMuk533G', 'lyJTuz1tqc8KpSog7M1xHFzBAs05GmMkZLOfmY3QEsSCWQmhNZUE2ZY1UdDf', '2018-05-05 10:18:12', '2018-05-05 10:58:12'),
(2, 'محمد علي', 'mhd@aa.com', '$2y$10$/rbPmP9qgtWF4BYgtTyglOoaV9lU1GJFC8frGLrkhI1IxT4Jlvoue', 'ZKbfyTdpDaX842bGWtpSU5bIxc1duQmRFIi6cIwbtaS76116HrOORPYiGksv', '2018-05-05 10:22:56', '2018-05-05 10:22:56'),
(3, 'Vision Plus', 'info@visionplus.ps', '$2y$10$iPO4Owku5D/odckE6MTWVeTsMcvdo3K.y9AA9jsWXwsJlRhDnRk0G', 'pagz7sJe7KhvN1oc1imt61qc7h6sBqludRYOS3xqALjFWWmuBkGgVz0U85qK', '2018-05-05 10:23:26', '2018-05-05 10:23:26'),
(4, 'شركة السقا', 'info@saqqa.com', '$2y$10$OfKGnMEn1whmpmqs5RS32uCBWBxpYfvwaSjQmUWDWs5INvpRVvdIW', 'CYDBKvVIo5Ak4jOQ3L12ZwMscIdROzurKRipUxygX7xj3S5Dtw1n8e1kSRv8', '2018-05-05 10:23:49', '2018-05-05 10:23:49'),
(6, 'ياسر يا هو', 'yaser@yahoo.com', '$2y$10$.B3Vw6UxcZJ4/7zMJTigIuMp07LqtJBnsNpwfg/qdrsTYWpDT6n3m', NULL, '2018-05-05 10:51:29', '2018-05-05 10:51:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_link`
--
ALTER TABLE `admin_link`
  ADD PRIMARY KEY (`admin_id`,`link_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_seeker`
--
ALTER TABLE `job_seeker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_type`
--
ALTER TABLE `job_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `link_type`
--
ALTER TABLE `link_type`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `seeker`
--
ALTER TABLE `seeker`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `job_seeker`
--
ALTER TABLE `job_seeker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `job_type`
--
ALTER TABLE `job_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `link`
--
ALTER TABLE `link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `link_type`
--
ALTER TABLE `link_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `seeker`
--
ALTER TABLE `seeker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
