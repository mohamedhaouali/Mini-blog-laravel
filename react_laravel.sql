-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 08 jan. 2021 à 19:24
-- Version du serveur :  10.1.37-MariaDB
-- Version de PHP :  7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `react_laravel`
--

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `commentable_id` int(11) NOT NULL,
  `commentable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `content`, `user_id`, `commentable_id`, `commentable_type`, `created_at`, `updated_at`) VALUES
(1, 'mmmmmmmmm', 51, 51, 'App\\Topic', '2021-01-04 09:17:10', '2021-01-04 09:17:10'),
(2, 'sdddddddddddddddddddddddd', 51, 51, 'App\\Topic', '2021-01-04 09:17:23', '2021-01-04 09:17:23'),
(3, 'fffffffffffffffffff', 52, 51, 'App\\Topic', '2021-01-04 09:42:51', '2021-01-04 09:42:51'),
(4, 'zzzzzzzzzzzzzzzzzzzzzzzzz', 53, 51, 'App\\Topic', '2021-01-04 09:43:38', '2021-01-04 09:43:38'),
(5, 'ppppppppppppppppppppppppppppppppppppppp', 51, 51, 'App\\Topic', '2021-01-04 12:16:25', '2021-01-04 12:16:25'),
(6, 'fff', 51, 5, 'App\\Comment', '2021-01-05 07:50:06', '2021-01-05 07:50:06'),
(7, 'ccc', 51, 5, 'App\\Comment', '2021-01-05 07:59:10', '2021-01-05 07:59:10'),
(8, 'commentaire pour tester la notification', 51, 51, 'App\\Topic', '2021-01-05 09:56:51', '2021-01-05 09:56:51'),
(15, 'commentaire du test 2', 51, 51, 'App\\Topic', '2021-01-05 10:05:35', '2021-01-05 10:05:35'),
(16, '2 notification', 54, 51, 'App\\Topic', '2021-01-05 10:50:21', '2021-01-05 10:50:21'),
(17, 'looooooooooooooooooooooooooooool', 54, 51, 'App\\Topic', '2021-01-05 11:59:27', '2021-01-05 11:59:27'),
(18, 'commentaire du test', 54, 51, 'App\\Topic', '2021-01-05 12:02:08', '2021-01-05 12:02:08'),
(19, 'test 2', 54, 51, 'App\\Topic', '2021-01-05 12:03:08', '2021-01-05 12:03:08'),
(20, 'test 3', 54, 51, 'App\\Topic', '2021-01-05 12:03:16', '2021-01-05 12:03:16'),
(21, 'test 4', 54, 51, 'App\\Topic', '2021-01-05 12:03:25', '2021-01-05 12:03:25'),
(22, 'test 5', 54, 51, 'App\\Topic', '2021-01-05 12:03:33', '2021-01-05 12:03:33'),
(23, 'rrrrrrrreavta bgarereeeeeeeeeeeeeeeeeeeeeeeeeeeeeehhyyyhdhd gsggeg', 51, 52, 'App\\Topic', '2021-01-05 14:59:34', '2021-01-05 14:59:34'),
(24, 'ddddddddddddddddddddddddddhh', 54, 52, 'App\\Topic', '2021-01-05 15:00:21', '2021-01-05 15:00:21');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_12_31_104302_create_topics_table', 1),
(4, '2021_01_04_092833_create_comments_table', 2),
(5, '2021_01_05_102359_create_notifications_table', 3);

-- --------------------------------------------------------

--
-- Structure de la table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('1da1cab7-0008-41f4-8c98-597f35a52bc6', 'App\\Notifications\\NewCommentPosted', 'App\\User', 51, '{\"name\":\"ridha sehli\",\"topicTitle\":\"sssssssssssssssss\",\"topicId\":52}', '2021-01-05 15:00:48', '2021-01-05 15:00:21', '2021-01-05 15:00:48'),
('4a575f39-66c9-4871-9d8e-3c7ee9604e24', 'App\\Notifications\\NewCommentPosted', 'App\\User', 51, '{\"name\":\"ridha sehli\",\"topicTitle\":\"D\\u00e9veloppeur web chez\",\"topicId\":51}', '2021-01-05 12:04:27', '2021-01-05 12:03:33', '2021-01-05 12:04:27'),
('69269a8f-bda9-4064-bd5f-f32101f983fd', 'App\\Notifications\\NewCommentPosted', 'App\\User', 51, '{\"name\":\"ridha sehli\",\"topicTitle\":\"D\\u00e9veloppeur web chez\",\"topicId\":51}', '2021-01-05 12:04:25', '2021-01-05 12:03:25', '2021-01-05 12:04:25'),
('9a6148bb-911a-4cfe-ac0b-8aa1b8d4f43b', 'App\\Notifications\\NewCommentPosted', 'App\\User', 51, '{\"name\":\"ridha sehli\",\"topicTitle\":\"D\\u00e9veloppeur web chez\",\"topicId\":51}', '2021-01-05 12:04:22', '2021-01-05 12:03:16', '2021-01-05 12:04:22'),
('b7fc9612-bb35-4758-bd0e-0fdf9f2a8133', 'App\\Notifications\\NewCommentPosted', 'App\\User', 51, '{\"name\":\"ridha sehli\",\"topicTitle\":\"D\\u00e9veloppeur web chez\",\"topicId\":51}', '2021-01-05 11:57:14', '2021-01-05 10:50:21', '2021-01-05 11:57:14'),
('c5a8ebf6-503c-4f29-a2cd-98c8a7cb6ffe', 'App\\Notifications\\NewCommentPosted', 'App\\User', 51, '{\"name\":\"ridha sehli\",\"topicTitle\":\"D\\u00e9veloppeur web chez\",\"topicId\":51}', '2021-01-05 15:07:31', '2021-01-05 12:03:08', '2021-01-05 15:07:31'),
('cef95fec-dc4e-4aba-a7eb-291b68ab3912', 'App\\Notifications\\NewCommentPosted', 'App\\User', 51, '{\"name\":\"mohamed\",\"topicTitle\":\"sssssssssssssssss\",\"topicId\":52}', '2021-01-05 15:07:28', '2021-01-05 14:59:34', '2021-01-05 15:07:28'),
('dbeb8cb6-7b10-4e70-8cb0-542371ec2f2f', 'App\\Notifications\\NewCommentPosted', 'App\\User', 51, '{\"name\":\"ridha sehli\",\"topicTitle\":\"D\\u00e9veloppeur web chez\",\"topicId\":51}', '2021-01-05 12:01:47', '2021-01-05 11:59:27', '2021-01-05 12:01:47'),
('fbd71127-eb1c-4da8-9a8c-c04e8b891200', 'App\\Notifications\\NewCommentPosted', 'App\\User', 51, '{\"name\":\"ridha sehli\",\"topicTitle\":\"D\\u00e9veloppeur web chez\",\"topicId\":51}', '2021-01-05 12:02:42', '2021-01-05 12:02:08', '2021-01-05 12:02:42');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `topics`
--

CREATE TABLE `topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `topics`
--

INSERT INTO `topics` (`id`, `title`, `content`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Voluptatem harum ipsa voluptatem quis nam in non ea.', 'Assumenda nihil et modi placeat. Maiores rerum sit quibusdam a. Expedita ut omnis quis ab accusamus sint alias.', 1, '2020-12-31 11:08:27', '2020-12-31 11:08:27'),
(2, 'Modi repellat est rem recusandae aspernatur minus hic.', 'Tempora et nam eius nesciunt et modi. Similique itaque id sed nam possimus quibusdam consequuntur iure.', 2, '2020-12-31 11:08:27', '2020-12-31 11:08:27'),
(3, 'Fuga fuga sapiente repellendus nulla aperiam.', 'Dicta pariatur aut aut aut impedit. Explicabo qui cum deserunt dolores magni beatae. Consectetur dolores in dolorem perspiciatis. Possimus sit velit et ut sed itaque.', 3, '2020-12-31 11:08:27', '2020-12-31 11:08:27'),
(4, 'Illo ea quo qui eum et sed.', 'Maiores ipsam repellendus rerum autem ad consequatur. Iste maxime et dolor modi doloribus. Eaque esse ratione eligendi earum ea consectetur corporis. Pariatur corrupti dolores aut consequatur incidunt commodi dicta.', 4, '2020-12-31 11:08:27', '2020-12-31 11:08:27'),
(5, 'Expedita repudiandae illo temporibus dolores.', 'Quia quas et doloremque harum molestias dignissimos. Esse libero odio excepturi iste delectus qui at. Ut sequi et minus sed omnis.', 5, '2020-12-31 11:08:27', '2020-12-31 11:08:27'),
(6, 'Sed qui consequatur quas eligendi aut.', 'Et odit exercitationem possimus distinctio ullam similique et. Officia non repudiandae sapiente nobis. Deserunt laboriosam numquam veniam magni in magni omnis. Fuga aliquid quaerat quod provident.', 6, '2020-12-31 11:08:27', '2020-12-31 11:08:27'),
(7, 'In corporis quisquam blanditiis.', 'Voluptatum dolor ipsa et officia. Perspiciatis fugiat sint et pariatur tenetur. Rerum tempora itaque voluptas ipsa quaerat soluta.', 7, '2020-12-31 11:08:27', '2020-12-31 11:08:27'),
(8, 'Sunt dolorum ut sit quia voluptas.', 'Ducimus et quisquam voluptate qui earum. Cum in non tempora ducimus et. Temporibus est iste perferendis officiis vel voluptatibus qui. Eaque error enim modi optio voluptatum quasi sed.', 8, '2020-12-31 11:08:27', '2020-12-31 11:08:27'),
(9, 'Et corporis consequatur nesciunt consectetur vero excepturi.', 'Dolor velit qui exercitationem quasi. Officiis mollitia accusantium et labore sed atque vel. Et voluptatem incidunt rerum. Assumenda nesciunt modi tempore modi ut cumque.', 9, '2020-12-31 11:08:28', '2020-12-31 11:08:28'),
(10, 'Atque et sint numquam voluptas.', 'Voluptatem id ut aliquam doloribus esse praesentium. Molestiae veritatis voluptas eaque. Sint ab ratione sunt ut quia repellendus. Nobis totam quam autem occaecati qui.', 10, '2020-12-31 11:08:28', '2020-12-31 11:08:28'),
(11, 'Temporibus eligendi maxime et animi eos consequatur repellendus ut.', 'Nam tenetur fugiat vitae officiis adipisci. Magni quo et consectetur architecto blanditiis magni voluptatibus quaerat. Dolorum et veniam minima totam iste rerum libero.', 11, '2020-12-31 11:08:28', '2020-12-31 11:08:28'),
(12, 'Qui eos exercitationem qui voluptatibus.', 'Dolorem rerum voluptatem qui aspernatur repellat. Provident aut laudantium hic doloremque. Debitis nemo quam consequatur libero. Qui odit aperiam voluptatem laborum et dolor. Repellendus cum voluptatem possimus aut magnam.', 12, '2020-12-31 11:08:28', '2020-12-31 11:08:28'),
(13, 'Aperiam ut et est aliquid dolores iusto vero perspiciatis.', 'Sunt nulla qui ipsam praesentium aliquam consequatur ipsa. Enim reiciendis sapiente commodi. Corporis et rem nisi ut aut eum et.', 13, '2020-12-31 11:08:28', '2020-12-31 11:08:28'),
(14, 'Deserunt doloremque esse animi magni illum.', 'Eum sed adipisci quos sint tempora consequatur excepturi. Sequi id ut aperiam non adipisci est. Sed voluptatem est molestias omnis.', 14, '2020-12-31 11:08:28', '2020-12-31 11:08:28'),
(15, 'Odio consequuntur dolorem deserunt ut possimus voluptatem in.', 'Nam aut accusamus voluptas deleniti laboriosam quod. At reiciendis est et ea ipsum sint. Tenetur numquam harum quibusdam nulla. Consequatur vel iure dolore commodi. Voluptatum praesentium sequi modi quaerat.', 15, '2020-12-31 11:08:28', '2020-12-31 11:08:28'),
(16, 'Veritatis necessitatibus dolore nihil ea eveniet blanditiis modi.', 'Ea et laudantium laborum est soluta nulla. Vel omnis eligendi sunt necessitatibus. Deleniti laudantium dolorem natus.', 16, '2020-12-31 11:08:28', '2020-12-31 11:08:28'),
(17, 'Sapiente consectetur repellat est labore earum.', 'Ea sint nemo maiores quia. Consequuntur distinctio quidem culpa ut mollitia. Qui ut molestiae illo laborum rerum voluptatibus. Velit sit sunt nihil reprehenderit dolores.', 17, '2020-12-31 11:08:28', '2020-12-31 11:08:28'),
(18, 'Sed perferendis ab quia quis.', 'Cumque consectetur et quia asperiores quas eaque. Aut nulla sit rerum dolorem repellendus. Quo maxime nisi et facere qui quia et ut. Ut accusamus itaque veniam dolor.', 18, '2020-12-31 11:08:28', '2020-12-31 11:08:28'),
(19, 'Officiis maiores nam quam quia aut nesciunt.', 'Provident qui et ipsam tempore dolorum quidem vel. Suscipit culpa asperiores inventore distinctio repellat accusamus repellendus. Cupiditate tempore deserunt error alias facilis quo. Illo nostrum facere velit non aliquid. Aspernatur necessitatibus et sit eos.', 19, '2020-12-31 11:08:28', '2020-12-31 11:08:28'),
(20, 'Voluptatem rerum sint numquam facere culpa facere.', 'Repudiandae ut aspernatur fugiat numquam nesciunt rem. Sunt molestias voluptas aliquid reprehenderit. Sunt dignissimos voluptatibus at non quis repudiandae. Dolores dolores dolor maiores quae.', 20, '2020-12-31 11:08:28', '2020-12-31 11:08:28'),
(21, 'Labore a earum nostrum amet iusto consequatur.', 'Sint temporibus sint ea dignissimos mollitia nemo tenetur. Quam corporis ipsa id fugiat eveniet. Et assumenda dolor voluptatem laboriosam dolorum ad. Dolorum autem sed non ut quas nesciunt voluptatem. Omnis quidem corrupti aut minima aliquam non omnis.', 21, '2020-12-31 11:08:28', '2020-12-31 11:08:28'),
(22, 'Delectus ex quisquam officia.', 'Quisquam dolorum non ipsa. Sint quibusdam magnam voluptates et rerum sapiente aperiam praesentium. Aut exercitationem et aut ut quasi. Quia et qui quia maxime autem perspiciatis.', 22, '2020-12-31 11:08:28', '2020-12-31 11:08:28'),
(23, 'Voluptates quo consectetur ut repellendus.', 'Laborum sed dolorum in. Hic ipsam molestiae rerum aspernatur maiores autem debitis. Pariatur vero et expedita facilis a corrupti. Rerum quis debitis rerum voluptatem et odit dolores aut.', 23, '2020-12-31 11:08:28', '2020-12-31 11:08:28'),
(24, 'Dignissimos rerum quam ab et dolor distinctio.', 'Reprehenderit aut ea voluptatum voluptates quas. Aspernatur quo eos ut voluptatibus autem. Voluptatibus magnam reprehenderit incidunt nisi quo. Quis officia magni dolorem ut maiores laborum harum.', 24, '2020-12-31 11:08:28', '2020-12-31 11:08:28'),
(25, 'Vero ea laboriosam laboriosam excepturi dolore.', 'Dolores sed temporibus voluptate et. Iure voluptates et expedita sed quis accusamus. Non amet ullam et sed atque omnis.', 25, '2020-12-31 11:08:28', '2020-12-31 11:08:28'),
(26, 'Consequuntur ipsa nesciunt quia molestias quia.', 'Aliquid molestiae expedita eveniet iste soluta. Cupiditate id soluta sint. Consequatur autem molestias quo adipisci excepturi placeat. Et minima voluptatum facere adipisci accusamus aut ad.', 26, '2020-12-31 11:08:28', '2020-12-31 11:08:28'),
(27, 'Repellendus est adipisci atque explicabo maiores labore ut.', 'Magnam quisquam explicabo iste numquam ut dolore. Ea architecto omnis qui assumenda doloribus rem. Vitae delectus quo culpa voluptatem optio nisi. Repudiandae ab in sed fugiat.', 27, '2020-12-31 11:08:28', '2020-12-31 11:08:28'),
(28, 'Necessitatibus ea aut ipsa est esse non voluptatibus.', 'Consequatur cupiditate unde voluptatem magni. Aut voluptates repellendus est velit quis facere. Molestiae magni sit natus nulla. Et nam laborum ea natus quo ut sapiente.', 28, '2020-12-31 11:08:29', '2020-12-31 11:08:29'),
(29, 'Sed quod voluptatum facilis iusto debitis ut dolorem.', 'Voluptatibus nisi qui pariatur impedit aut molestiae fuga. Autem illo nulla quam id voluptatem. Non voluptatem alias accusantium sed voluptatibus quia. Consequuntur provident facilis eum rerum molestias incidunt minima.', 29, '2020-12-31 11:08:29', '2020-12-31 11:08:29'),
(30, 'Aut consequatur rerum fuga doloribus ducimus.', 'Explicabo omnis architecto qui soluta. Laborum et consequatur pariatur iste. Incidunt odio ullam nihil ex provident adipisci enim. Voluptates quia eos rerum dolore distinctio aut.', 30, '2020-12-31 11:08:29', '2020-12-31 11:08:29'),
(31, 'Aliquid aut possimus ut iure.', 'Inventore sint incidunt nobis eaque neque consequatur eligendi illo. Enim ut sed ullam nostrum ipsam. Modi nobis rerum perspiciatis sint consequatur. Deserunt eos quis mollitia harum quisquam est.', 31, '2020-12-31 11:08:29', '2020-12-31 11:08:29'),
(32, 'Ut et odio corrupti ut.', 'Quo autem corrupti possimus dolor tempore commodi ut. Ratione eaque iusto recusandae voluptate quam non. Atque qui nihil iste officiis facilis. Delectus error est impedit omnis qui accusantium nobis.', 32, '2020-12-31 11:08:29', '2020-12-31 11:08:29'),
(33, 'Alias quaerat distinctio nihil rerum magnam consequatur.', 'Laudantium dolorem consequatur rerum eum sunt et similique dignissimos. Atque est libero nihil hic quia dolorem repellendus. Voluptatem non tempora molestiae magni voluptatem et odio impedit.', 33, '2020-12-31 11:08:29', '2020-12-31 11:08:29'),
(34, 'A ab quae mollitia.', 'Eligendi aut mollitia sit soluta odit sapiente possimus. Dicta excepturi architecto eaque consequatur illum ullam maxime non. Culpa dolores praesentium sit quis et perferendis natus. Est consequatur fugit facilis.', 34, '2020-12-31 11:08:29', '2020-12-31 11:08:29'),
(35, 'Debitis vel enim voluptatem architecto quod.', 'Laborum aspernatur accusamus perferendis iste. Quo voluptatem ad et laborum esse ipsam aut. Eos aut necessitatibus perferendis saepe nemo dolor amet.', 35, '2020-12-31 11:08:29', '2020-12-31 11:08:29'),
(36, 'Voluptatem beatae quasi deserunt itaque corrupti vel voluptas.', 'Doloremque atque molestiae nisi corrupti veniam perspiciatis esse. Voluptate sit possimus quia voluptate non libero sint. Sed eveniet assumenda alias quae saepe quibusdam et.', 36, '2020-12-31 11:08:29', '2020-12-31 11:08:29'),
(37, 'Quibusdam quis sit expedita minus libero atque eum inventore.', 'Non laboriosam aliquam quo vel voluptatem ea dolore. At aut voluptas ipsum. Laboriosam voluptatem minus dolore totam animi temporibus inventore.', 37, '2020-12-31 11:08:29', '2020-12-31 11:08:29'),
(38, 'Dolorem totam dignissimos reprehenderit ducimus.', 'At sit voluptate tenetur numquam in quis. Officiis architecto nulla sed non voluptatem. Illum vel et quis odio enim inventore ipsum tempore.', 38, '2020-12-31 11:08:29', '2020-12-31 11:08:29'),
(39, 'Expedita illo magni enim consequatur magni assumenda non quisquam.', 'Aut est nulla reprehenderit aut. Tempore architecto est consequatur laborum. Modi esse doloribus placeat sed laudantium consequatur laboriosam occaecati.', 39, '2020-12-31 11:08:29', '2020-12-31 11:08:29'),
(40, 'Ipsam et aut fugit dignissimos dolores.', 'Deserunt ad amet atque at minus molestias vero. Et commodi veritatis illum nihil sunt. Quia quis quia nesciunt rerum. Facere quisquam quis ut voluptatem distinctio minus. Qui dolore porro vel et.', 40, '2020-12-31 11:08:29', '2020-12-31 11:08:29'),
(41, 'Veritatis sapiente expedita corporis.', 'Deleniti recusandae quo nemo harum. Fugit sint et autem neque in ipsum. Delectus odio animi voluptas quidem voluptas omnis nulla. Nostrum quis sunt quia nisi voluptas eligendi. Doloremque doloribus necessitatibus consectetur est.', 41, '2020-12-31 11:08:29', '2020-12-31 11:08:29'),
(42, 'Commodi nostrum quo consequuntur deleniti voluptatem ut.', 'Quia qui quibusdam laborum. Praesentium corrupti nam nobis odit amet soluta. Doloremque delectus sit atque magnam eveniet non eos.', 42, '2020-12-31 11:08:29', '2020-12-31 11:08:29'),
(43, 'Laboriosam occaecati quasi maxime asperiores culpa atque beatae.', 'Rem corrupti quod et ullam asperiores eius. Laudantium sit quod ea odit recusandae facilis. Veritatis in doloribus ut et quas ab quibusdam et. Accusantium impedit sequi aut quisquam quia.', 43, '2020-12-31 11:08:29', '2020-12-31 11:08:29'),
(44, 'Ea fuga repudiandae dolorem repudiandae voluptatem est nobis facere.', 'Ut corporis sunt velit aut vel qui. Hic qui modi sed quis saepe. Tempore est occaecati dolorum quaerat iste recusandae.', 44, '2020-12-31 11:08:29', '2020-12-31 11:08:29'),
(45, 'Illum fugiat nesciunt voluptas error ipsam cupiditate nemo.', 'Voluptates saepe eum pariatur velit inventore hic. Nisi corporis quia et aperiam modi quia.', 45, '2020-12-31 11:08:29', '2020-12-31 11:08:29'),
(46, 'Nulla quis aliquam dignissimos enim vel qui inventore.', 'Nulla minus deleniti dolorum facere nisi enim. Voluptatem nihil illo quod. Quis doloremque sapiente autem enim non tempora sed.', 46, '2020-12-31 11:08:29', '2020-12-31 11:08:29'),
(47, 'Qui velit fugiat rerum repudiandae sit dolorum quo.', 'Dolor totam sunt nisi nam aut. Assumenda fugiat esse culpa et. Quia vitae molestias deleniti quo quidem fugit repellendus. Pariatur magni nam et assumenda illum fugiat ea.', 47, '2020-12-31 11:08:29', '2020-12-31 11:08:29'),
(49, 'Eaque blanditiis facere at.', 'Sed nihil ea maiores aut exercitationem eos. Fuga odio ut ducimus quia dolorem. Facilis praesentium rerum similique harum sunt omnis. Consequatur explicabo id voluptatem quia et illum.', 49, '2020-12-31 11:08:30', '2020-12-31 11:08:30'),
(50, 'Non velit quibusdam beatae rerum nihil magni velit.', 'Pariatur reiciendis eaque quo possimus. Rem praesentium quibusdam est ut qui facilis perferendis dolor. Voluptas consectetur necessitatibus eveniet atque reprehenderit expedita quia.', 50, '2020-12-31 11:08:30', '2020-12-31 11:08:30'),
(51, 'Développeur web chez', 'ppppppppppppppppppppppppp', 51, '2021-01-01 15:34:42', '2021-01-01 15:34:42'),
(52, 'sssssssssssssssss', 'ssssssssssssssssssssssssgrg\"', 51, '2021-01-05 14:59:04', '2021-01-05 14:59:04');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Valentin Sanford', 'princess.daniel@example.com', '2020-12-31 11:08:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'O1DDLy7JUC', '2020-12-31 11:08:25', '2020-12-31 11:08:25'),
(2, 'Kariane Krajcik', 'kautzer.josue@example.net', '2020-12-31 11:08:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vZmRjfjsZf', '2020-12-31 11:08:25', '2020-12-31 11:08:25'),
(3, 'Prof. Jonas Carroll III', 'zkreiger@example.org', '2020-12-31 11:08:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'A9nwdEgBy4', '2020-12-31 11:08:25', '2020-12-31 11:08:25'),
(4, 'Prof. Reagan Barrows', 'sonya.littel@example.com', '2020-12-31 11:08:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'x6uSUU08PG', '2020-12-31 11:08:25', '2020-12-31 11:08:25'),
(5, 'Fatima Morar', 'vgrant@example.com', '2020-12-31 11:08:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Cx9GsfArPs', '2020-12-31 11:08:25', '2020-12-31 11:08:25'),
(6, 'Sally Huel II', 'bgoldner@example.org', '2020-12-31 11:08:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5Bo64ZjwnB', '2020-12-31 11:08:25', '2020-12-31 11:08:25'),
(7, 'Wilhelmine Medhurst', 'kassulke.modesta@example.net', '2020-12-31 11:08:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UfNxzZHy6Z', '2020-12-31 11:08:25', '2020-12-31 11:08:25'),
(8, 'Vella Fahey', 'webster.kemmer@example.com', '2020-12-31 11:08:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ppKzRAl0tG', '2020-12-31 11:08:25', '2020-12-31 11:08:25'),
(9, 'Mr. Quinten Bailey MD', 'edna86@example.org', '2020-12-31 11:08:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'D4FYlWPyBy', '2020-12-31 11:08:25', '2020-12-31 11:08:25'),
(10, 'Bernadette Murazik V', 'earnest.klein@example.com', '2020-12-31 11:08:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'S5jHwY97Pj', '2020-12-31 11:08:25', '2020-12-31 11:08:25'),
(11, 'Mariano Hodkiewicz', 'elaina.orn@example.org', '2020-12-31 11:08:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Dgjazjmf0G', '2020-12-31 11:08:25', '2020-12-31 11:08:25'),
(12, 'Dannie Wunsch', 'skyla91@example.org', '2020-12-31 11:08:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uWECI9nAXX', '2020-12-31 11:08:25', '2020-12-31 11:08:25'),
(13, 'Maida Greenfelder', 'feil.pamela@example.net', '2020-12-31 11:08:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hp0qbeKvtv', '2020-12-31 11:08:25', '2020-12-31 11:08:25'),
(14, 'Mrs. Jacinthe Kshlerin Jr.', 'maci.lynch@example.net', '2020-12-31 11:08:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1HtZM7HSxT', '2020-12-31 11:08:25', '2020-12-31 11:08:25'),
(15, 'Lavern Schneider', 'sabryna.simonis@example.org', '2020-12-31 11:08:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'niVB8Vnqgm', '2020-12-31 11:08:25', '2020-12-31 11:08:25'),
(16, 'Viva Roberts', 'morissette.ramona@example.net', '2020-12-31 11:08:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'p6Q1gJsKLs', '2020-12-31 11:08:25', '2020-12-31 11:08:25'),
(17, 'Elenor Hudson', 'coby.shields@example.com', '2020-12-31 11:08:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ErSFn8ZhtZ', '2020-12-31 11:08:26', '2020-12-31 11:08:26'),
(18, 'Dr. Agustin Gusikowski I', 'israel61@example.net', '2020-12-31 11:08:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HAtaUNFSJ4', '2020-12-31 11:08:26', '2020-12-31 11:08:26'),
(19, 'Dr. Brandt Ledner Jr.', 'dimitri65@example.net', '2020-12-31 11:08:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '48KloZbAes', '2020-12-31 11:08:26', '2020-12-31 11:08:26'),
(20, 'Marlon Gusikowski', 'krussel@example.org', '2020-12-31 11:08:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JXsYEyAYtj', '2020-12-31 11:08:26', '2020-12-31 11:08:26'),
(21, 'Dr. Candelario Bailey', 'fmorar@example.net', '2020-12-31 11:08:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4e4wCDH4wj', '2020-12-31 11:08:26', '2020-12-31 11:08:26'),
(22, 'Lia Rath', 'romaguera.armando@example.org', '2020-12-31 11:08:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CoxYwf4NU6', '2020-12-31 11:08:26', '2020-12-31 11:08:26'),
(23, 'Antone Hackett', 'dora.ondricka@example.net', '2020-12-31 11:08:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6QE8V8pmTy', '2020-12-31 11:08:26', '2020-12-31 11:08:26'),
(24, 'Autumn Simonis Jr.', 'tre69@example.org', '2020-12-31 11:08:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oxYblfgkBT', '2020-12-31 11:08:26', '2020-12-31 11:08:26'),
(25, 'Tressie Legros II', 'jasen87@example.net', '2020-12-31 11:08:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fKLhD74g2h', '2020-12-31 11:08:26', '2020-12-31 11:08:26'),
(26, 'Ansel Jast', 'taurean.effertz@example.net', '2020-12-31 11:08:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '846CBX2eeu', '2020-12-31 11:08:26', '2020-12-31 11:08:26'),
(27, 'Kyler Jakubowski DVM', 'pearl.glover@example.net', '2020-12-31 11:08:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DR6d9xrIyl', '2020-12-31 11:08:26', '2020-12-31 11:08:26'),
(28, 'Eryn Bayer II', 'ruecker.thad@example.net', '2020-12-31 11:08:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZBCPQL0Zzj', '2020-12-31 11:08:26', '2020-12-31 11:08:26'),
(29, 'Ansel Runte', 'oconner.mafalda@example.net', '2020-12-31 11:08:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pHgNRYTRj0', '2020-12-31 11:08:26', '2020-12-31 11:08:26'),
(30, 'Prof. Sophia Yost', 'dharvey@example.net', '2020-12-31 11:08:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YGq2vxEt4J', '2020-12-31 11:08:26', '2020-12-31 11:08:26'),
(31, 'Bart Marvin', 'frederic98@example.com', '2020-12-31 11:08:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PEUcYyb1CL', '2020-12-31 11:08:26', '2020-12-31 11:08:26'),
(32, 'Jaida Luettgen', 'name67@example.com', '2020-12-31 11:08:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VTKgCuXtdc', '2020-12-31 11:08:26', '2020-12-31 11:08:26'),
(33, 'Herman Mueller', 'borer.kasey@example.com', '2020-12-31 11:08:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '41rl1ROBH5', '2020-12-31 11:08:26', '2020-12-31 11:08:26'),
(34, 'Clay Trantow', 'twila24@example.org', '2020-12-31 11:08:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'f2BXQt3Nrc', '2020-12-31 11:08:26', '2020-12-31 11:08:26'),
(35, 'Noemie Yost', 'nharber@example.org', '2020-12-31 11:08:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UrwHBCUp3c', '2020-12-31 11:08:26', '2020-12-31 11:08:26'),
(36, 'Germaine DuBuque', 'heather48@example.org', '2020-12-31 11:08:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zbZ8FCpWqa', '2020-12-31 11:08:26', '2020-12-31 11:08:26'),
(37, 'Prof. Daphnee Huels I', 'torp.hillary@example.org', '2020-12-31 11:08:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6QPuDXWimG', '2020-12-31 11:08:26', '2020-12-31 11:08:26'),
(38, 'Queenie Bogisich', 'zwiza@example.net', '2020-12-31 11:08:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bAlaP6lvg1', '2020-12-31 11:08:27', '2020-12-31 11:08:27'),
(39, 'Dr. Alfred Greenfelder MD', 'waylon.rutherford@example.org', '2020-12-31 11:08:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HMPp8qJMR2', '2020-12-31 11:08:27', '2020-12-31 11:08:27'),
(40, 'Josefa Ryan', 'rosella.larson@example.net', '2020-12-31 11:08:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6vvYMPcCdm', '2020-12-31 11:08:27', '2020-12-31 11:08:27'),
(41, 'Mrs. Aurelie Langworth', 'gerlach.stephania@example.net', '2020-12-31 11:08:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a7UKNZsdXQ', '2020-12-31 11:08:27', '2020-12-31 11:08:27'),
(42, 'Tate Gorczany', 'geovanny.hand@example.net', '2020-12-31 11:08:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zCb5qmimQC', '2020-12-31 11:08:27', '2020-12-31 11:08:27'),
(43, 'Frieda Howell', 'werner.kemmer@example.net', '2020-12-31 11:08:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'H6uhggUltZ', '2020-12-31 11:08:27', '2020-12-31 11:08:27'),
(44, 'Kasandra Heathcote PhD', 'calista.abernathy@example.com', '2020-12-31 11:08:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ufm90BReeb', '2020-12-31 11:08:27', '2020-12-31 11:08:27'),
(45, 'Piper Morissette', 'xlindgren@example.org', '2020-12-31 11:08:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xOq6xuhnXk', '2020-12-31 11:08:27', '2020-12-31 11:08:27'),
(46, 'Prof. Greg Goyette', 'don14@example.net', '2020-12-31 11:08:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rwd4usZZP5', '2020-12-31 11:08:27', '2020-12-31 11:08:27'),
(47, 'Brandon Lesch', 'josefina.thiel@example.com', '2020-12-31 11:08:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'le1PaGS0Lv', '2020-12-31 11:08:27', '2020-12-31 11:08:27'),
(48, 'Marty Brekke', 'willy.zulauf@example.net', '2020-12-31 11:08:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CxVdSRTYQV', '2020-12-31 11:08:27', '2020-12-31 11:08:27'),
(49, 'Asha Hilpert', 'maddison.nitzsche@example.com', '2020-12-31 11:08:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Y2NyPoFEDB', '2020-12-31 11:08:27', '2020-12-31 11:08:27'),
(50, 'Kimberly Legros', 'vbrown@example.net', '2020-12-31 11:08:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tDtGej7X3G', '2020-12-31 11:08:27', '2020-12-31 11:08:27'),
(51, 'mohamed', 'mohamed.haouali1@gmail.com', NULL, '$2y$10$Gd05aEqULcmKXVuutK65JukCAKJ0tIn8MvejtZKgmz0I7At31EwLC', NULL, '2020-12-31 12:07:43', '2020-12-31 12:07:43'),
(52, 'mohamedRejab', 'ridha.sehli@yahoo.com', NULL, '$2y$10$T3V1lCC8yVZRFKk9dbmLs.ArNmEiUF/x3E7y7Y3N5CrklamWR9xoK', NULL, '2021-01-04 09:42:42', '2021-01-04 09:42:42'),
(53, 'haouali', 'mohamedhaoili@gmail.com', NULL, '$2y$10$yr/Qna03SAqcT0NfzRmm1efeowH/o4jBj4VmgfuFoPrCjb4lGm6p6', NULL, '2021-01-04 09:43:23', '2021-01-04 09:43:23'),
(54, 'ridha sehli', 'ridha.sehli1@yahoo.com', NULL, '$2y$10$dXRxEmHvyN/KVY8C9jhtEOjvTlugZ5iYeLaXZv62u9fjkuFhictEi', NULL, '2021-01-05 10:07:03', '2021-01-05 10:07:03');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topics_user_id_foreign` (`user_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `topics`
--
ALTER TABLE `topics`
  ADD CONSTRAINT `topics_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
