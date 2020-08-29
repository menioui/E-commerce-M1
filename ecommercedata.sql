-- --------------------------------------------------------
-- Hôte :                        localhost
-- Version du serveur:           5.7.24 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Listage de la structure de la table commerce. categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table commerce.categories : ~5 rows (environ)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'High Tech', 'high-tech', '2020-04-25 16:03:42', '2020-04-25 16:03:42'),
	(2, 'Livres', 'livres', '2020-04-25 16:03:42', '2020-04-25 16:03:42'),
	(3, 'Meubles', 'meubles', '2020-04-25 16:03:42', '2020-04-25 16:03:42'),
	(4, 'Jeux', 'jeux', '2020-04-25 16:03:42', '2020-04-25 16:03:42'),
	(5, 'Nourriture', 'nourriture', '2020-04-25 16:03:43', '2020-04-25 16:03:43');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Listage de la structure de la table commerce. category_product
CREATE TABLE IF NOT EXISTS `category_product` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_product_category_id_foreign` (`category_id`),
  KEY `category_product_product_id_foreign` (`product_id`),
  CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table commerce.category_product : ~61 rows (environ)
/*!40000 ALTER TABLE `category_product` DISABLE KEYS */;
INSERT INTO `category_product` (`id`, `category_id`, `product_id`, `created_at`, `updated_at`) VALUES
	(1, 3, 1, NULL, NULL),
	(2, 2, 1, NULL, NULL),
	(3, 2, 2, NULL, NULL),
	(4, 3, 2, NULL, NULL),
	(5, 4, 3, NULL, NULL),
	(6, 1, 3, NULL, NULL),
	(7, 1, 4, NULL, NULL),
	(8, 4, 4, NULL, NULL),
	(9, 2, 5, NULL, NULL),
	(10, 2, 5, NULL, NULL),
	(11, 1, 6, NULL, NULL),
	(12, 1, 6, NULL, NULL),
	(13, 1, 7, NULL, NULL),
	(14, 3, 7, NULL, NULL),
	(15, 2, 8, NULL, NULL),
	(16, 1, 8, NULL, NULL),
	(17, 3, 9, NULL, NULL),
	(18, 1, 9, NULL, NULL),
	(19, 4, 10, NULL, NULL),
	(20, 1, 10, NULL, NULL),
	(21, 2, 11, NULL, NULL),
	(22, 4, 11, NULL, NULL),
	(23, 3, 12, NULL, NULL),
	(24, 2, 12, NULL, NULL),
	(25, 4, 13, NULL, NULL),
	(26, 3, 13, NULL, NULL),
	(27, 4, 14, NULL, NULL),
	(28, 1, 14, NULL, NULL),
	(29, 4, 15, NULL, NULL),
	(30, 3, 15, NULL, NULL),
	(31, 2, 16, NULL, NULL),
	(32, 4, 16, NULL, NULL),
	(33, 2, 17, NULL, NULL),
	(34, 2, 17, NULL, NULL),
	(35, 3, 18, NULL, NULL),
	(36, 3, 18, NULL, NULL),
	(37, 2, 19, NULL, NULL),
	(38, 3, 19, NULL, NULL),
	(39, 2, 20, NULL, NULL),
	(40, 3, 20, NULL, NULL),
	(41, 4, 21, NULL, NULL),
	(42, 1, 21, NULL, NULL),
	(43, 3, 22, NULL, NULL),
	(44, 2, 22, NULL, NULL),
	(45, 2, 23, NULL, NULL),
	(46, 4, 23, NULL, NULL),
	(47, 3, 24, NULL, NULL),
	(48, 3, 24, NULL, NULL),
	(49, 4, 25, NULL, NULL),
	(50, 2, 25, NULL, NULL),
	(51, 4, 26, NULL, NULL),
	(52, 2, 26, NULL, NULL),
	(53, 1, 27, NULL, NULL),
	(54, 1, 27, NULL, NULL),
	(55, 4, 28, NULL, NULL),
	(56, 1, 28, NULL, NULL),
	(57, 3, 29, NULL, NULL),
	(58, 2, 29, NULL, NULL),
	(59, 2, 30, NULL, NULL),
	(60, 1, 30, NULL, NULL),
	(61, 1, 31, NULL, NULL);
/*!40000 ALTER TABLE `category_product` ENABLE KEYS */;

-- Listage de la structure de la table commerce. data_rows
CREATE TABLE IF NOT EXISTS `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table commerce.data_rows : ~35 rows (environ)
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
	(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
	(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
	(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
	(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
	(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
	(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
	(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
	(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
	(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsTo","column":"role_id","key":"id","label":"display_name","pivot_table":"roles","pivot":0}', 10),
	(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsToMany","column":"id","key":"id","label":"display_name","pivot_table":"user_roles","pivot":"1","taggable":"0"}', 11),
	(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
	(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
	(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
	(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
	(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
	(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
	(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
	(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
	(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
	(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
	(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
	(22, 4, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
	(23, 4, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
	(24, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 3),
	(25, 4, 'subtitle', 'text', 'Subtitle', 1, 1, 1, 1, 1, 1, '{}', 4),
	(26, 4, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, '{}', 5),
	(27, 4, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{}', 6),
	(28, 4, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 7),
	(29, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
	(30, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
	(31, 4, 'product_belongstomany_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Category","table":"categories","type":"belongsToMany","column":"id","key":"id","label":"name","pivot_table":"category_product","pivot":"1","taggable":null}', 10),
	(32, 5, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
	(33, 5, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
	(34, 5, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 3),
	(35, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
	(36, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;

-- Listage de la structure de la table commerce. data_types
CREATE TABLE IF NOT EXISTS `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table commerce.data_types : ~5 rows (environ)
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
	(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-04-25 22:29:24', '2020-04-25 22:29:24'),
	(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-04-25 22:29:24', '2020-04-25 22:29:24'),
	(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2020-04-25 22:29:24', '2020-04-25 22:29:24'),
	(4, 'products', 'products', 'Product', 'Products', 'voyager-bag', 'App\\Product', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null}', '2020-04-25 22:58:24', '2020-04-25 22:58:24'),
	(5, 'categories', 'categories', 'Category', 'Categories', 'voyager-tag', 'App\\Category', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null}', '2020-04-25 23:12:16', '2020-04-25 23:12:16');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;

-- Listage de la structure de la table commerce. failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table commerce.failed_jobs : ~0 rows (environ)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Listage de la structure de la table commerce. menus
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table commerce.menus : ~0 rows (environ)
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'admin', '2020-04-25 22:29:25', '2020-04-25 22:29:25');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;

-- Listage de la structure de la table commerce. menu_items
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table commerce.menu_items : ~13 rows (environ)
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
	(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-04-25 22:29:25', '2020-04-25 22:29:25', 'voyager.dashboard', NULL),
	(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 6, '2020-04-25 22:29:25', '2020-04-25 23:13:08', 'voyager.media.index', NULL),
	(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 5, '2020-04-25 22:29:25', '2020-04-25 23:13:08', 'voyager.users.index', NULL),
	(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 4, '2020-04-25 22:29:25', '2020-04-25 23:13:08', 'voyager.roles.index', NULL),
	(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 7, '2020-04-25 22:29:25', '2020-04-25 23:13:08', NULL, NULL),
	(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-04-25 22:29:25', '2020-04-25 23:10:02', 'voyager.menus.index', NULL),
	(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-04-25 22:29:25', '2020-04-25 23:10:02', 'voyager.database.index', NULL),
	(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2020-04-25 22:29:25', '2020-04-25 23:10:02', 'voyager.compass.index', NULL),
	(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-04-25 22:29:25', '2020-04-25 23:10:02', 'voyager.bread.index', NULL),
	(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 8, '2020-04-25 22:29:25', '2020-04-25 23:13:08', 'voyager.settings.index', NULL),
	(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2020-04-25 22:29:27', '2020-04-25 23:10:02', 'voyager.hooks', NULL),
	(12, 1, 'Products', '', '_self', 'voyager-bag', NULL, NULL, 2, '2020-04-25 22:58:24', '2020-04-25 23:10:10', 'voyager.products.index', NULL),
	(13, 1, 'Categories', '', '_self', 'voyager-tag', NULL, NULL, 3, '2020-04-25 23:12:16', '2020-04-25 23:13:08', 'voyager.categories.index', NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;

-- Listage de la structure de la table commerce. migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table commerce.migrations : ~27 rows (environ)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2020_03_27_220933_create_products_table', 1),
	(5, '2020_04_11_133839_create_orders_table', 1),
	(6, '2020_04_25_150812_create_categories_table', 1),
	(7, '2020_04_25_153143_create_category_product_table', 1),
	(8, '2016_01_01_000000_add_voyager_user_fields', 2),
	(9, '2016_01_01_000000_create_data_types_table', 2),
	(10, '2016_05_19_173453_create_menu_table', 2),
	(11, '2016_10_21_190000_create_roles_table', 2),
	(12, '2016_10_21_190000_create_settings_table', 2),
	(13, '2016_11_30_135954_create_permission_table', 2),
	(14, '2016_11_30_141208_create_permission_role_table', 2),
	(15, '2016_12_26_201236_data_types__add__server_side', 2),
	(16, '2017_01_13_000000_add_route_to_menu_items_table', 2),
	(17, '2017_01_14_005015_create_translations_table', 2),
	(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 2),
	(19, '2017_03_06_000000_add_controller_to_data_types_table', 2),
	(20, '2017_04_21_000000_add_order_to_data_rows_table', 2),
	(21, '2017_07_05_210000_add_policyname_to_data_types_table', 2),
	(22, '2017_08_05_000000_add_group_to_settings_table', 2),
	(23, '2017_11_26_013050_add_user_role_relationship', 2),
	(24, '2017_11_26_015000_create_user_roles_table', 2),
	(25, '2018_03_11_000000_add_user_settings', 2),
	(26, '2018_03_14_000000_add_details_to_data_types_table', 2),
	(27, '2018_03_16_000000_make_settings_value_nullable', 2),
	(28, '2020_04_28_013538_add_images_to_products_table', 3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Listage de la structure de la table commerce. orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_intent_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_created_at` datetime NOT NULL,
  `products` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orders_payment_intent_id_unique` (`payment_intent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table commerce.orders : ~0 rows (environ)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`id`, `payment_intent_id`, `amount`, `payment_created_at`, `products`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, 'pi_1GchnaCdhwzRLefz84HE4PaW', 94200, '2020-04-28 00:59:46', 'a:2:{s:9:"product_0";a:3:{i:0;s:11:"à la reche";i:1;s:5:"50000";i:2;i:1;}s:9:"product_1";a:3:{i:0;s:40:"Alias illo voluptas quia tempora fugiat.";i:1;s:5:"28500";i:2;i:1;}}', 2, '2020-04-28 01:00:03', '2020-04-28 01:00:03'),
	(2, 'pi_1Gd2gxCdhwzRLefz0gIGFmWz', 72360, '2020-04-28 23:18:19', 'a:2:{s:9:"product_0";a:3:{i:0;s:42:"Voluptatem debitis nam exercitationem quo.";i:1;s:5:"10300";i:2;i:1;}s:9:"product_1";a:3:{i:0;s:11:"à la reche";i:1;s:5:"50000";i:2;i:1;}}', 1, '2020-04-28 23:24:12', '2020-04-28 23:24:12'),
	(3, 'pi_1GdFn7CdhwzRLefztyerfaD9', 60000, '2020-04-29 13:17:33', 'a:1:{s:9:"product_0";a:3:{i:0;s:11:"à la reche";i:1;s:5:"50000";i:2;i:1;}}', 2, '2020-04-29 13:26:37', '2020-04-29 13:26:37');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Listage de la structure de la table commerce. password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table commerce.password_resets : ~0 rows (environ)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Listage de la structure de la table commerce. permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table commerce.permissions : ~36 rows (environ)
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
	(1, 'browse_admin', NULL, '2020-04-25 22:29:26', '2020-04-25 22:29:26'),
	(2, 'browse_bread', NULL, '2020-04-25 22:29:26', '2020-04-25 22:29:26'),
	(3, 'browse_database', NULL, '2020-04-25 22:29:26', '2020-04-25 22:29:26'),
	(4, 'browse_media', NULL, '2020-04-25 22:29:26', '2020-04-25 22:29:26'),
	(5, 'browse_compass', NULL, '2020-04-25 22:29:26', '2020-04-25 22:29:26'),
	(6, 'browse_menus', 'menus', '2020-04-25 22:29:26', '2020-04-25 22:29:26'),
	(7, 'read_menus', 'menus', '2020-04-25 22:29:26', '2020-04-25 22:29:26'),
	(8, 'edit_menus', 'menus', '2020-04-25 22:29:26', '2020-04-25 22:29:26'),
	(9, 'add_menus', 'menus', '2020-04-25 22:29:26', '2020-04-25 22:29:26'),
	(10, 'delete_menus', 'menus', '2020-04-25 22:29:26', '2020-04-25 22:29:26'),
	(11, 'browse_roles', 'roles', '2020-04-25 22:29:26', '2020-04-25 22:29:26'),
	(12, 'read_roles', 'roles', '2020-04-25 22:29:26', '2020-04-25 22:29:26'),
	(13, 'edit_roles', 'roles', '2020-04-25 22:29:26', '2020-04-25 22:29:26'),
	(14, 'add_roles', 'roles', '2020-04-25 22:29:26', '2020-04-25 22:29:26'),
	(15, 'delete_roles', 'roles', '2020-04-25 22:29:26', '2020-04-25 22:29:26'),
	(16, 'browse_users', 'users', '2020-04-25 22:29:26', '2020-04-25 22:29:26'),
	(17, 'read_users', 'users', '2020-04-25 22:29:26', '2020-04-25 22:29:26'),
	(18, 'edit_users', 'users', '2020-04-25 22:29:26', '2020-04-25 22:29:26'),
	(19, 'add_users', 'users', '2020-04-25 22:29:26', '2020-04-25 22:29:26'),
	(20, 'delete_users', 'users', '2020-04-25 22:29:26', '2020-04-25 22:29:26'),
	(21, 'browse_settings', 'settings', '2020-04-25 22:29:26', '2020-04-25 22:29:26'),
	(22, 'read_settings', 'settings', '2020-04-25 22:29:26', '2020-04-25 22:29:26'),
	(23, 'edit_settings', 'settings', '2020-04-25 22:29:26', '2020-04-25 22:29:26'),
	(24, 'add_settings', 'settings', '2020-04-25 22:29:26', '2020-04-25 22:29:26'),
	(25, 'delete_settings', 'settings', '2020-04-25 22:29:26', '2020-04-25 22:29:26'),
	(26, 'browse_hooks', NULL, '2020-04-25 22:29:27', '2020-04-25 22:29:27'),
	(27, 'browse_products', 'products', '2020-04-25 22:58:24', '2020-04-25 22:58:24'),
	(28, 'read_products', 'products', '2020-04-25 22:58:24', '2020-04-25 22:58:24'),
	(29, 'edit_products', 'products', '2020-04-25 22:58:24', '2020-04-25 22:58:24'),
	(30, 'add_products', 'products', '2020-04-25 22:58:24', '2020-04-25 22:58:24'),
	(31, 'delete_products', 'products', '2020-04-25 22:58:24', '2020-04-25 22:58:24'),
	(32, 'browse_categories', 'categories', '2020-04-25 23:12:16', '2020-04-25 23:12:16'),
	(33, 'read_categories', 'categories', '2020-04-25 23:12:16', '2020-04-25 23:12:16'),
	(34, 'edit_categories', 'categories', '2020-04-25 23:12:16', '2020-04-25 23:12:16'),
	(35, 'add_categories', 'categories', '2020-04-25 23:12:16', '2020-04-25 23:12:16'),
	(36, 'delete_categories', 'categories', '2020-04-25 23:12:16', '2020-04-25 23:12:16');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Listage de la structure de la table commerce. permission_role
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table commerce.permission_role : ~36 rows (environ)
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 1),
	(6, 1),
	(7, 1),
	(8, 1),
	(9, 1),
	(10, 1),
	(11, 1),
	(12, 1),
	(13, 1),
	(14, 1),
	(15, 1),
	(16, 1),
	(17, 1),
	(18, 1),
	(19, 1),
	(20, 1),
	(21, 1),
	(22, 1),
	(23, 1),
	(24, 1),
	(25, 1),
	(26, 1),
	(27, 1),
	(28, 1),
	(29, 1),
	(30, 1),
	(31, 1),
	(32, 1),
	(33, 1),
	(34, 1),
	(35, 1),
	(36, 1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;

-- Listage de la structure de la table commerce. products
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_title_unique` (`title`),
  UNIQUE KEY `products_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table commerce.products : ~31 rows (environ)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `title`, `slug`, `subtitle`, `description`, `price`, `image`, `images`, `created_at`, `updated_at`) VALUES
	(1, 'Dicta aut omnis minus delectus sint.', 'qui-eveniet-amet-quaerat-in-quia-ducimus-eos-tenetur', 'Qui facilis quisquam placeat.', 'Maiores totam repellendus vel dolor. Voluptates ab eos ut molestias eius fugit.', '7700', 'https://via.placeholder.com/200x250', NULL, '2020-04-25 16:03:43', '2020-04-25 16:03:43'),
	(2, 'Esse assumenda vel voluptatibus eius.', 'tenetur-aperiam-voluptatem-aliquam-et-quidem', 'Neque non magnam ipsum.', 'Soluta tenetur dolorum necessitatibus qui tenetur error. Quasi unde magnam ut et. Laudantium ratione delectus provident amet eligendi.', '2700', 'https://via.placeholder.com/200x250', NULL, '2020-04-25 16:03:43', '2020-04-25 16:03:43'),
	(3, 'Consequatur qui voluptate.', 'nulla-sint-aut-et-vero-architecto-dolorum-sed', 'Dolores molestiae et est exercitationem eos.', 'Deleniti dignissimos illum delectus non pariatur reprehenderit. Quis aut voluptatibus provident dicta facilis. Debitis nobis dolorem aut rem et.', '8200', 'https://via.placeholder.com/200x250', NULL, '2020-04-25 16:03:43', '2020-04-25 16:03:43'),
	(4, 'Voluptatem aut cupiditate nam.', 'saepe-dolorem-molestias-quo-labore-at-nihil-quis', 'Sed quo et eaque ex reprehenderit in.', 'Sint hic libero quos vel eligendi. Suscipit nobis facere dolores repudiandae sunt quo. Nisi voluptas sequi ipsa dignissimos natus.', '21000', 'https://via.placeholder.com/200x250', NULL, '2020-04-25 16:03:43', '2020-04-25 16:03:43'),
	(5, 'Doloribus provident omnis id tempora.', 'perferendis-magnam-dolores-maxime-laudantium-et', 'Voluptatem quos quia aut.', 'Voluptate debitis quas ea aut quod explicabo excepturi. In provident tempore omnis porro. Quia numquam aut repellat vel nulla id iusto magnam.', '4100', 'https://via.placeholder.com/200x250', NULL, '2020-04-25 16:03:43', '2020-04-25 16:03:43'),
	(6, 'Illum dolores recusandae nemo quia.', 'officia-distinctio-itaque-nulla-quia-exercitationem-quibusdam-nam', 'Quas dolor voluptate dolorem dolorem qui.', 'Enim voluptatibus adipisci distinctio dolores expedita sint consequuntur. Quis numquam neque perspiciatis.', '7400', 'https://via.placeholder.com/200x250', NULL, '2020-04-25 16:03:43', '2020-04-25 16:03:43'),
	(7, 'Aut voluptatem voluptas quo neque.', 'omnis-necessitatibus-dolores-quas-quibusdam-ducimus-accusamus', 'Unde commodi hic atque modi reiciendis.', 'Eveniet incidunt accusantium saepe voluptatum consectetur eos a. Reprehenderit alias minus sed dolore distinctio quos. Veritatis ut enim culpa. Facere sed fugiat maxime ut.', '6800', 'https://via.placeholder.com/200x250', NULL, '2020-04-25 16:03:43', '2020-04-25 16:03:43'),
	(8, 'Distinctio ut aliquam vel molestias.', 'expedita-sapiente-officia-voluptate-non-rem', 'Dicta rerum sint aut.', 'Ducimus aut magnam voluptas non aut molestiae consequuntur. Perspiciatis eum nostrum animi autem porro. Consectetur pariatur itaque ad laborum odit in ipsa. Velit ex ea aut voluptas quod.', '20000', 'https://via.placeholder.com/200x250', NULL, '2020-04-25 16:03:43', '2020-04-25 16:03:43'),
	(9, 'Quos eum ut maiores.', 'adipisci-asperiores-commodi-eos-voluptatem-modi-facere-iure', 'Qui nam est ducimus molestias eius laboriosam.', 'Necessitatibus ut et voluptatem blanditiis suscipit soluta ipsum beatae. Doloremque eum qui ut vero nesciunt sunt mollitia.', '21200', 'https://via.placeholder.com/200x250', NULL, '2020-04-25 16:03:43', '2020-04-25 16:03:43'),
	(10, 'Qui non iure ut.', 'fugiat-saepe-in-autem-molestias-laborum-quia-consequatur', 'Odio fugiat pariatur iusto assumenda.', 'Ut officiis officia ut quo laborum. Aliquid molestiae qui vero perferendis saepe accusamus hic. Asperiores est velit nihil ea fuga eum vel voluptatibus.', '6700', 'https://via.placeholder.com/200x250', NULL, '2020-04-25 16:03:43', '2020-04-25 16:03:43'),
	(11, 'At reiciendis dolorem molestiae quam ipsum.', 'dicta-quam-et-eaque-est-optio-rerum-sed-pariatur', 'Tempore iusto non quam minus id voluptas.', 'Alias praesentium non aut. Molestiae facilis porro culpa alias et blanditiis aut. Odio aut culpa alias.', '12000', 'https://via.placeholder.com/200x250', NULL, '2020-04-25 16:03:43', '2020-04-25 16:03:43'),
	(12, 'Totam eligendi quo hic velit.', 'consequuntur-ullam-magni-harum-impedit-ratione', 'Quia ut dolore voluptas facilis provident ea.', 'Id assumenda nihil nulla ut sunt doloribus et eveniet. Unde sunt eaque voluptatem sed fugit autem quam. Atque veniam in aut aliquid qui.', '12500', 'https://via.placeholder.com/200x250', NULL, '2020-04-25 16:03:43', '2020-04-25 16:03:43'),
	(13, 'Possimus consequatur consectetur sit.', 'recusandae-voluptatum-sit-rerum-nihil', 'Molestias quia vel unde nulla dicta.', 'Ab dolores quia in error rerum voluptatum. Natus voluptatum voluptatibus explicabo nihil qui assumenda nobis. Eum quia qui hic consequatur quis.', '25800', 'https://via.placeholder.com/200x250', NULL, '2020-04-25 16:03:43', '2020-04-25 16:03:43'),
	(14, 'Dicta blanditiis cupiditate.', 'magni-dolorum-voluptatem-hic-sint-a', 'Id tempora suscipit non doloribus rerum sequi.', 'Soluta amet facilis sunt autem. Nihil consectetur tenetur est autem enim id. Praesentium in dolore architecto nihil ut.', '28800', 'https://via.placeholder.com/200x250', NULL, '2020-04-25 16:03:43', '2020-04-25 16:03:43'),
	(15, 'Deleniti velit sint.', 'ut-iusto-est-porro-est-eaque', 'Et ut corporis ut voluptatem ea.', 'Dignissimos laboriosam quidem voluptates. Rerum non qui explicabo autem culpa veritatis sint. Non vel molestias rerum. Iusto cumque quaerat et neque minima cumque. Temporibus consequatur aut minima.', '30000', 'https://via.placeholder.com/200x250', NULL, '2020-04-25 16:03:43', '2020-04-25 16:03:43'),
	(16, 'Eveniet corporis cumque explicabo.', 'fugit-minima-saepe-delectus-qui-dolorem-minus-expedita-odit', 'Consectetur fuga sequi ut.', 'Et laboriosam doloribus doloribus ducimus quia. Eveniet itaque doloribus eveniet voluptatem odio. Doloribus qui quis rerum sunt numquam ut id.', '15100', 'https://via.placeholder.com/200x250', NULL, '2020-04-25 16:03:43', '2020-04-25 16:03:43'),
	(17, 'Eligendi corporis voluptatum autem sit.', 'sit-tempora-voluptas-eum-praesentium-ut', 'Ab sed hic ab aut.', 'Enim aut veniam saepe qui aut iusto. Aut iure aut repellendus est modi.', '11000', 'https://via.placeholder.com/200x250', NULL, '2020-04-25 16:03:43', '2020-04-25 16:03:43'),
	(18, 'Quia qui eum porro hic saepe.', 'laboriosam-ad-ad-quis-dolorem-dolores', 'Fugiat dolor consequatur nemo aut.', 'Cupiditate autem voluptatem aut non odio delectus earum. Magni tempore quia et dolorum a. Optio perferendis maxime voluptatibus maiores non ipsam.', '18800', 'https://via.placeholder.com/200x250', NULL, '2020-04-25 16:03:43', '2020-04-25 16:03:43'),
	(19, 'Ea ea quidem est.', 'cumque-velit-aspernatur-labore-amet-vel-est-consectetur-dolor', 'Quisquam consequatur ut quisquam.', 'Voluptatem quibusdam et sunt similique ut vel est. Nihil et qui ut error excepturi exercitationem ratione. Possimus dolores qui quisquam laborum. Voluptatem omnis porro velit itaque.', '22000', 'https://via.placeholder.com/200x250', NULL, '2020-04-25 16:03:43', '2020-04-25 16:03:43'),
	(20, 'Nostrum iure doloribus fugit debitis.', 'laborum-quis-cum-sunt-consequatur-exercitationem-eligendi-placeat', 'Doloribus aut voluptatem quis voluptate fuga.', '<p>Consectetur qui alias aperiam rerum ex ut ullam. Rerum quo unde qui unde sit tempore sed molestias. Ea quaerat necessitatibus aperiam eum saepe qui. Culpa et et aliquam.</p>', '11800', 'products\\April2020\\XYM2fTyuTSkUkpKs1WZq.jpg', NULL, '2020-04-25 16:03:00', '2020-04-26 00:08:18'),
	(21, 'Alias illo voluptas quia tempora fugiat.', 'ducimus-facere-mollitia-sit-qui-officiis', 'Quibusdam ea fugiat est nam et.', '<p>Vitae dolores inventore deleniti. Odit culpa ipsa autem facilis et qui. Et asperiores distinctio molestiae.</p>', '28500', 'products\\April2020\\IJath0vgoCK3tiQLdPYs.jpg', NULL, '2020-04-25 16:03:00', '2020-04-28 22:55:45'),
	(22, 'Sit ipsum porro vero exercitationem possimus.', 'qui-nostrum-cumque-et-atque-hic-asperiores', 'Libero quisquam quo eum.', '<p>Impedit eligendi doloribus sed. Nam reprehenderit quis doloremque dolorem. Architecto excepturi repudiandae esse culpa voluptas.</p>', '5000', 'products\\April2020\\pcvcrZvdiSh58EVU2kbk.jpg', NULL, '2020-04-25 16:03:00', '2020-04-28 23:03:50'),
	(23, 'Voluptatem debitis nam exercitationem quo.', 'id-placeat-inventore-fugiat-natus', 'Ab est culpa facere dicta vero aliquid.', '<p>Aliquid expedita nisi placeat temporibus. Eos ad iure recusandae assumenda et quo dolorem. Dolor officiis est repellendus voluptatem. Enim sit dolor sint rerum quae ut deleniti.</p>', '10300', 'products\\April2020\\XC8gvCGAuLvxgpL3m9Xo.png', NULL, '2020-04-25 16:03:00', '2020-04-28 23:10:54'),
	(24, 'Sed non sunt.', 'asperiores-eum-quod-eaque-odio', 'Doloribus debitis voluptatem adipisci saepe.', 'Laborum necessitatibus et praesentium magnam et aut sed. Possimus officia inventore sed repellat qui molestiae. Voluptatem iste et eum.', '15900', 'https://via.placeholder.com/200x250', NULL, '2020-04-25 16:03:44', '2020-04-25 16:03:44'),
	(25, 'Fugiat sit voluptate quo veritatis autem.', 'est-dolorum-iusto-officia-distinctio-ut-est', 'Quia sed dolores qui.', 'Placeat nobis alias inventore minima est repudiandae. Voluptatem possimus earum dicta non iste. Ut nam magni voluptates. Quo eveniet amet accusantium ut cum ut esse.', '2500', 'https://via.placeholder.com/200x250', NULL, '2020-04-25 16:03:44', '2020-04-25 16:03:44'),
	(26, 'Est et accusantium quibusdam.', 'non-beatae-quia-sed-dolores-labore-quaerat-consequatur-est', 'Autem tempore voluptatem aliquam cum.', 'Voluptatibus numquam rerum temporibus atque. Maxime atque itaque aliquid ab inventore ut. Velit animi quod amet.', '28600', 'https://via.placeholder.com/200x250', NULL, '2020-04-25 16:03:44', '2020-04-25 16:03:44'),
	(27, 'Sequi voluptas magnam.', 'architecto-possimus-veritatis-aspernatur-ipsum-possimus-ipsum-quo-officiis', 'Recusandae unde sunt dolores totam quia.', 'Qui velit amet et eos quae iure. Suscipit eveniet ex vel eius qui blanditiis velit rerum. Cum facilis animi praesentium quod. Porro voluptatibus consequatur quae enim quis reprehenderit quia harum.', '21700', 'https://via.placeholder.com/200x250', NULL, '2020-04-25 16:03:44', '2020-04-25 16:03:44'),
	(28, 'Ut vel qui perspiciatis ullam.', 'est-nobis-quia-recusandae-voluptatum-velit-ut', 'Aut ducimus eaque aut nesciunt.', 'Quo et aut aut non. Deleniti nihil nisi sit amet molestias aspernatur totam. Ea culpa nesciunt distinctio. Harum quis vel optio qui tempora explicabo voluptas non.', '12000', 'https://via.placeholder.com/200x250', NULL, '2020-04-25 16:03:44', '2020-04-25 16:03:44'),
	(29, 'Aliquid non nostrum.', 'voluptatem-laboriosam-nulla-animi-non-qui-doloremque-excepturi', 'Quae corporis perspiciatis non ab.', 'Ullam vel nobis quaerat quam optio aspernatur saepe. Eos vitae voluptas quia illum totam molestias voluptas. Eaque eum sequi voluptatem reiciendis quos ea. Sint odio laboriosam praesentium rem.', '27300', 'https://via.placeholder.com/200x250', NULL, '2020-04-25 16:03:44', '2020-04-25 16:03:44'),
	(30, 'Nostrum qui quo aut inventore.', 'perspiciatis-ea-assumenda-odit-et', 'Autem qui in quas ut facere ut.', 'Quam quas nihil quis rerum tempora eos. Debitis quaerat ducimus numquam molestiae. Architecto suscipit ipsa quos ratione voluptas aut voluptate. Quasi eligendi minima nostrum qui.', '14400', 'https://via.placeholder.com/200x250', NULL, '2020-04-25 16:03:44', '2020-04-25 16:03:44'),
	(31, 'à la reche', 'Produit_exilent', 'un exelent produit créé', '<p><span style="color: #242729; font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif; font-size: 13px;">of course i use php artisan storage:link and the folder created in public/storage/image and dosn t work when i would like to show the file because public/storage/image empty</span></p>', '50000', 'products\\April2020\\mx61xzzoJEjD2w4VNFO6.jpg', NULL, '2020-04-26 00:09:28', '2020-04-26 00:09:28');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Listage de la structure de la table commerce. roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table commerce.roles : ~2 rows (environ)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'Administrator', '2020-04-25 22:29:25', '2020-04-25 22:29:25'),
	(2, 'user', 'Normal User', '2020-04-25 22:29:25', '2020-04-25 22:29:25');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Listage de la structure de la table commerce. settings
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table commerce.settings : ~10 rows (environ)
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
	(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
	(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
	(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
	(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
	(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
	(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
	(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
	(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
	(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
	(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

-- Listage de la structure de la table commerce. translations
CREATE TABLE IF NOT EXISTS `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table commerce.translations : ~0 rows (environ)
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;

-- Listage de la structure de la table commerce. users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table commerce.users : ~1 rows (environ)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
	(1, 1, 'admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$YB2S1Gr/GShWJl33.eSxE.N3p396ZFr3q/oJaWAFZ0nt64FOcWE.m', 'PLcWHWZGAiSw9TLr1dimtUrNySTyqJfvqDxdpbpowRgeAN9Ndci4nP4sUoc2', NULL, '2020-04-25 22:36:47', '2020-04-25 22:36:47'),
	(2, 2, 'Mohammed MENNIOUI', 'exemple@exemple.com', 'users/default.png', NULL, '$2y$10$CIqMRXWDDnSQ1zrSkhGdXOFLXIhNtUinfZrM9SQC/tcapeg2Xu9Yy', NULL, NULL, '2020-04-27 14:12:31', '2020-04-27 14:12:31');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Listage de la structure de la table commerce. user_roles
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table commerce.user_roles : ~0 rows (environ)
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
