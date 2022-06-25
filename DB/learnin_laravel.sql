-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2022 at 07:00 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learnin_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_10_061928_create_posts_table', 1),
(6, '2022_06_11_161532_create_students_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `post`, `created_at`, `updated_at`) VALUES
(82, 'Exercitationem non qui.', 'Ipsum ut ut eligendi. Consequatur dolores sit rem dolores non asperiores. Beatae et qui veritatis sit ut. Maxime minima distinctio et ducimus magni officia eius. Dolorum veniam similique ab soluta sit accusantium delectus voluptatem. Est doloremque in eveniet consequuntur. Repellendus ullam quis ipsam voluptas vitae beatae.', '2022-06-17 21:06:03', '2022-06-17 21:06:03'),
(83, 'Magnam libero.', 'Adipisci esse nesciunt sapiente neque. Voluptas sed officia dolore quidem veniam quam iusto. Delectus nulla accusamus aut velit odio. Dolores blanditiis necessitatibus est incidunt expedita aut repudiandae placeat.', '2022-06-17 21:06:03', '2022-06-17 21:06:03'),
(84, 'Dolor natus.', 'A qui quia ut hic repudiandae consequuntur enim. Totam voluptas exercitationem asperiores deserunt est ipsum. Eos provident et quos et voluptate quas omnis voluptatem. Autem fugit molestiae quaerat expedita numquam. Voluptatum eum architecto eligendi rem eos hic.', '2022-06-17 21:06:03', '2022-06-17 21:06:03'),
(85, 'Corrupti inventore.', 'Omnis accusantium vel et nihil aut laboriosam quia. Ut deleniti dolor doloremque esse rerum culpa. Sint dolores adipisci et quia provident molestiae sed aut. Quisquam eveniet ut recusandae voluptas. Quaerat nam et in et.', '2022-06-17 21:06:03', '2022-06-17 21:06:03'),
(86, 'Quaerat est.', 'Odio vero eligendi labore et commodi similique. Dolor soluta suscipit vitae sunt dolores dolores nihil. Id totam sunt quia voluptatem. Perspiciatis ducimus soluta hic eum et blanditiis. Sit laudantium error animi ducimus et fuga mollitia. Similique reprehenderit maiores deserunt commodi.', '2022-06-17 21:06:03', '2022-06-17 21:06:03'),
(87, 'Consequatur rem voluptas.', 'Qui voluptates in voluptatem ullam. Voluptatum in nulla harum inventore voluptatem aut. Corporis aperiam in itaque natus earum dolores minus ratione. Magnam voluptatum distinctio et deleniti expedita ducimus.', '2022-06-17 21:06:03', '2022-06-17 21:06:03'),
(88, 'Blanditiis perspiciatis repellendus.', 'Amet ex molestias cum quia illo optio. Distinctio sed et in voluptatem optio. Porro eaque accusantium et ab enim. Ad tenetur porro dolor et.', '2022-06-17 21:06:03', '2022-06-17 21:06:03'),
(89, 'Corporis impedit necessitatibus.', 'Enim sit beatae aliquid illo. Excepturi dolor facere doloremque rerum nemo adipisci fuga voluptas. Unde mollitia dolores quo nisi qui eveniet nemo. Perspiciatis voluptatum aut quae impedit ad exercitationem distinctio. Suscipit nam vel aut dolorem sit ipsam impedit. Officia incidunt quo aut voluptas at iste quibusdam.', '2022-06-17 21:06:03', '2022-06-17 21:06:03'),
(90, 'Ut in non.', 'Quam dolore aliquid repudiandae ut quam ea adipisci. Reprehenderit pariatur sint nostrum omnis numquam. Illo tempora facere neque animi est ipsa. Nam neque numquam voluptatem reiciendis. Et ut sit enim pariatur. Minus omnis velit minima.', '2022-06-17 21:06:03', '2022-06-17 21:06:03'),
(91, 'Autem enim.', 'Id distinctio numquam earum corrupti cumque iste repudiandae. Harum earum nulla rem accusamus non dolore. Aut aut temporibus vel sed. Quaerat qui qui fuga ipsam.', '2022-06-17 21:06:03', '2022-06-17 21:06:03'),
(92, 'Eius commodi.', 'Mollitia quidem ad sed cumque et ratione. Sed ut sed velit eum esse. Quam voluptatum ad quis odio rerum et cum. Adipisci assumenda aut et reiciendis ut eos. Assumenda voluptas non aut cumque quod dignissimos.', '2022-06-17 21:06:03', '2022-06-17 21:06:03'),
(93, 'Qui veniam.', 'Porro quos ab earum laudantium adipisci cumque. Non id dolore quo qui optio. Veniam dolores possimus debitis nulla exercitationem praesentium iure quod. Earum impedit aliquam eligendi accusamus modi quos. Cupiditate in veniam nesciunt iusto sequi.', '2022-06-17 21:06:03', '2022-06-17 21:06:03'),
(94, 'Mollitia voluptatum numquam.', 'Accusamus doloremque nostrum ea possimus occaecati ut. Eum quam ea officiis temporibus enim in eos neque. Delectus quia labore fugiat quibusdam sit. Omnis inventore reiciendis est eveniet magni est. Sint veritatis temporibus aut qui. Doloremque quia consequuntur et culpa atque. Voluptas expedita exercitationem ad in libero voluptas.', '2022-06-17 21:06:03', '2022-06-17 21:06:03'),
(95, 'Tenetur et assumenda.', 'Corporis quis velit eum perspiciatis qui distinctio. Non sed expedita qui aut ut quia nihil. Voluptatem recusandae fugit veritatis rerum. Facere maiores rerum voluptates ut maxime dolores et. Sed sunt consectetur voluptatem libero provident iste mollitia. Sint nulla fuga voluptas.', '2022-06-17 21:06:03', '2022-06-17 21:06:03'),
(96, 'Nostrum exercitationem.', 'Quisquam eos qui error. Ad nisi nihil debitis veritatis. Velit unde velit magni et corrupti voluptatem quisquam. Eos quia iste dolorem nostrum odit delectus vero.', '2022-06-17 21:06:03', '2022-06-17 21:06:03'),
(97, 'Id dicta quis.', 'Ipsa assumenda consectetur beatae. Praesentium nesciunt enim commodi. In omnis sunt voluptates et pariatur facere excepturi. Perferendis nihil et cum enim maxime error. Occaecati ut accusamus molestias molestiae. Neque at labore animi minima. Vitae vero cumque eius repudiandae qui et.', '2022-06-17 21:06:03', '2022-06-17 21:06:03'),
(98, 'Dolorem in.', 'Quia consectetur quis occaecati culpa blanditiis. Quia quis doloribus enim recusandae fuga assumenda. Facere atque fugiat autem consectetur vel recusandae. Ratione quia sed repellendus porro impedit. Sit minima ducimus maiores sit culpa iste consectetur rem.', '2022-06-17 21:06:03', '2022-06-17 21:06:03'),
(99, 'Tempora et.', 'Consequuntur aperiam perferendis quo fugit. Magni odio omnis laudantium laboriosam aliquid amet. Tempore enim qui nam harum autem. Ipsum qui ipsam dolore. Atque itaque voluptates illo voluptatem nihil aut laboriosam necessitatibus. Est quam debitis unde quod sed magnam.', '2022-06-17 21:06:03', '2022-06-17 21:06:03'),
(100, 'Fugit deleniti velit.', 'Natus aliquid fugit exercitationem quae. Quia veritatis perspiciatis aut. Magni enim quis dolor quidem quia occaecati praesentium. Non neque accusamus voluptas quam.', '2022-06-17 21:06:03', '2022-06-17 21:06:03'),
(101, 'Odio vel.', 'Ex facere sunt inventore. Repellendus quod vero earum quibusdam ipsam possimus blanditiis. Qui quis et repudiandae consequuntur. Consectetur atque omnis voluptatem totam. Sit voluptatum nihil voluptatem omnis enim quibusdam. Ipsum sint maiores at non saepe sint. Veritatis in aut sit molestiae non quis sunt. Ut sed est accusantium.', '2022-06-17 21:06:03', '2022-06-17 21:06:03'),
(102, 'Voluptate quasi.', 'Eum et ut dolor eos molestias suscipit reiciendis. Sunt cumque accusamus ratione vel ea quis. Ad explicabo qui et quis enim quisquam laboriosam. Molestiae molestias sequi eligendi earum. Ipsum cupiditate optio nemo magnam est est. Consectetur quod odit a velit ut hic. Officia corrupti laborum officiis magnam.', '2022-06-17 21:06:03', '2022-06-17 21:06:03'),
(103, 'Sed voluptas.', 'Ipsam odit soluta hic qui voluptatibus qui est. Suscipit nisi quas quia corrupti quis cupiditate autem. Fugiat et blanditiis sed omnis aut. Iusto maxime sit tempora quia. Quo modi porro explicabo et et ipsam.', '2022-06-17 21:06:03', '2022-06-17 21:06:03'),
(104, 'Asperiores culpa sunt.', 'Voluptatem assumenda placeat voluptatem soluta et vero autem expedita. Qui libero aut non sed. Inventore perspiciatis vero aperiam illum recusandae laborum aut nihil. Sint molestiae maiores veniam et voluptatem nam ut.', '2022-06-17 21:06:03', '2022-06-17 21:06:03'),
(105, 'Quis molestiae excepturi.', 'Laborum ad quia quam dolore excepturi magni ipsa. A eum quis blanditiis sint omnis tenetur. Omnis est impedit alias voluptatum in est. Ab voluptates rem numquam ex vero.', '2022-06-17 21:06:03', '2022-06-17 21:06:03'),
(106, 'Magnam est eveniet.', 'Quis aut aperiam totam cumque vitae pariatur. Excepturi accusamus officiis in. Laborum rem necessitatibus libero ut voluptates laborum aut. Est facere impedit consequatur non totam ad.', '2022-06-17 21:06:03', '2022-06-17 21:06:03'),
(107, 'Magnam quo.', 'Vel accusamus sint iste aliquam. Nemo velit qui rem ut iusto. Vel delectus eaque sint molestiae. Quam excepturi ex ut sed consequatur. Iusto et aut facere eveniet nam ea. Nam consequatur optio perspiciatis voluptas dolor.', '2022-06-17 21:06:03', '2022-06-17 21:06:03'),
(108, 'Qui rerum ut.', 'Quisquam asperiores aut quia voluptas. Enim molestias culpa magni atque. Quis et amet fuga ullam minus quas eos. Excepturi dolore distinctio qui repellat quo fugit.', '2022-06-17 21:06:03', '2022-06-17 21:06:03'),
(109, 'Animi magni.', 'Illum tempore expedita corporis soluta. Iure et aut enim exercitationem et corporis repudiandae. Ut deleniti quos sunt qui. Est in placeat natus sed ut dolorum.', '2022-06-17 21:06:03', '2022-06-17 21:06:03'),
(110, 'Accusantium et consectetur.', 'Non animi cumque facilis sint consequuntur at quo. Et officia vero quasi quo sed laudantium culpa. Est eaque eligendi ut quo perferendis sit quidem. Aut repudiandae dolor doloribus. Facilis expedita tenetur tempora aut enim blanditiis. Consectetur quas sed ut nostrum est minus inventore. Similique aspernatur laudantium nemo beatae at animi ipsa.', '2022-06-17 21:06:03', '2022-06-17 21:06:03'),
(111, 'Enim est dolores.', 'Nam et molestias id dicta amet corrupti. Repellendus sunt delectus necessitatibus itaque neque. Minima quae nulla repellendus expedita consequatur. Fuga qui pariatur accusamus libero. Vel soluta et placeat est accusantium vitae. Accusamus in nihil non sunt nisi. Voluptatem commodi illum quo dolor non.', '2022-06-17 21:06:03', '2022-06-17 21:06:03');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Student Name.',
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Moriah Pollich', 'tmorar@example.org', '2022-06-17 20:17:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yHR0EIOGiw', '2022-06-17 20:17:39', '2022-06-17 20:17:39'),
(2, 'Sabina Harber', 'breitenberg.donavon@example.com', '2022-06-17 20:17:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'l8u5lnmYbq', '2022-06-17 20:17:39', '2022-06-17 20:17:39'),
(3, 'Daryl Littel PhD', 'dtorphy@example.net', '2022-06-17 20:17:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'k3Nwi5qpJH', '2022-06-17 20:17:39', '2022-06-17 20:17:39'),
(4, 'Miss Janiya Harvey', 'pinkie.kassulke@example.org', '2022-06-17 20:17:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HPTV66eKXW', '2022-06-17 20:17:39', '2022-06-17 20:17:39'),
(5, 'Miss Duane Hansen II', 'betty.wisoky@example.org', '2022-06-17 20:17:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QzRPA6xuKd', '2022-06-17 20:17:39', '2022-06-17 20:17:39'),
(6, 'Devin Trantow', 'cornelius.weissnat@example.net', '2022-06-17 20:17:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'S2K8dHW7QS', '2022-06-17 20:17:39', '2022-06-17 20:17:39'),
(7, 'Prof. Treva Bashirian', 'sbergstrom@example.com', '2022-06-17 20:17:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CqFXcY4itN', '2022-06-17 20:17:39', '2022-06-17 20:17:39'),
(8, 'Demond Cassin', 'uconnelly@example.net', '2022-06-17 20:17:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2g6thq6GnN', '2022-06-17 20:17:39', '2022-06-17 20:17:39'),
(9, 'Andres Labadie', 'noah05@example.com', '2022-06-17 20:17:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'es8P4iidcM', '2022-06-17 20:17:39', '2022-06-17 20:17:39'),
(10, 'Toney Keeling', 'jsanford@example.org', '2022-06-17 20:17:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oXOr4Mg6TL', '2022-06-17 20:17:39', '2022-06-17 20:17:39'),
(11, 'Mr. Elroy Pfannerstill III', 'rogahn.ben@example.org', '2022-06-17 20:17:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'q7fNesciyU', '2022-06-17 20:17:39', '2022-06-17 20:17:39'),
(12, 'Josefina Cummings', 'pauline38@example.org', '2022-06-17 20:17:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CJYozf8QC7', '2022-06-17 20:17:39', '2022-06-17 20:17:39'),
(13, 'Uriel Dare IV', 'darion.mitchell@example.net', '2022-06-17 20:17:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6nJOC4c46N', '2022-06-17 20:17:39', '2022-06-17 20:17:39'),
(14, 'Deshaun Smith', 'wehner.andres@example.net', '2022-06-17 20:17:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8ZVPNFwYyb', '2022-06-17 20:17:39', '2022-06-17 20:17:39'),
(15, 'Elissa Emmerich', 'julian.russel@example.org', '2022-06-17 20:17:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ir1u811XAl', '2022-06-17 20:17:39', '2022-06-17 20:17:39'),
(16, 'Prof. Patrick Huels', 'mlang@example.com', '2022-06-17 20:17:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1ZMyjVdRli', '2022-06-17 20:17:39', '2022-06-17 20:17:39'),
(17, 'Miguel Herzog', 'larkin.norene@example.net', '2022-06-17 20:17:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lY4Aw3KovJ', '2022-06-17 20:17:39', '2022-06-17 20:17:39'),
(18, 'Amira McCullough Sr.', 'rico13@example.net', '2022-06-17 20:17:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RrBVdwZSLh', '2022-06-17 20:17:39', '2022-06-17 20:17:39'),
(19, 'Owen Schoen', 'douglas.florian@example.org', '2022-06-17 20:17:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TJQwreYOHw', '2022-06-17 20:17:39', '2022-06-17 20:17:39'),
(20, 'Brayan Kovacek', 'shannon.feeney@example.net', '2022-06-17 20:17:39', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qMjPqvkYy8', '2022-06-17 20:17:39', '2022-06-17 20:17:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_post_id_foreign` (`post_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
