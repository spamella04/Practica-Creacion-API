-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.30 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para parentcareapi
CREATE DATABASE IF NOT EXISTS `parentcareapi` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `parentcareapi`;

-- Volcando estructura para tabla parentcareapi.employees
CREATE TABLE IF NOT EXISTS `employees` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cedula` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` decimal(8,2) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `shift` enum('morning','night') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employees_cedula_unique` (`cedula`),
  UNIQUE KEY `employees_phone_unique` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla parentcareapi.employees: ~30 rows (aproximadamente)
INSERT INTO `employees` (`id`, `cedula`, `first_name`, `last_name`, `phone`, `address`, `salary`, `start_date`, `end_date`, `status`, `shift`, `created_at`, `updated_at`) VALUES
	(1, '156-702992-4912H', 'Amos Schiller', 'Kessler', '+1-283-293-6915', '889 Murphy Hollow Apt. 685\nNorth Charlotteport, MO 10050-0831', 14299.90, '2004-12-20', NULL, 'active', 'morning', '2024-08-29 22:46:42', '2024-08-29 22:46:42'),
	(2, '309-445479-3689Z', 'Donny Vandervort', 'Kautzer', '743-574-6833', '6305 Hintz Wall Suite 828\nNew Melbaview, WV 07923-0134', 22274.36, '1976-10-13', '1995-09-22', 'inactive', 'night', '2024-08-29 22:46:42', '2024-08-29 22:46:42'),
	(3, '973-616135-0528U', 'Prof. Joe Buckridge I', 'Conn', '989-292-1094', '75589 Pagac Mountain Suite 145\nLake Ransom, WY 21413-0712', 20604.64, '1980-03-06', '2017-02-11', 'active', 'night', '2024-08-29 22:46:42', '2024-08-29 22:46:42'),
	(4, '463-883856-3891D', 'Mrs. Destini Feest Sr.', 'Schaefer', '+1-574-237-5353', '85270 Jaskolski Plaza\nSouth Danikatown, MA 44586-4734', 38908.22, '1997-02-12', '1998-07-03', 'active', 'morning', '2024-08-29 22:46:42', '2024-08-29 22:46:42'),
	(5, '725-751027-6853L', 'Prof. Liam Metz', 'Koss', '458-501-4078', '309 Wyman River\nLake Elnora, IL 69605-6322', 29723.33, '2014-11-19', '1986-08-21', 'active', 'night', '2024-08-29 22:46:42', '2024-08-29 22:46:42'),
	(6, '504-231447-2355E', 'Kayla Schneider', 'Swift', '1-570-814-2316', '336 Audie Tunnel\nStrackeside, MO 08968-9500', 35868.50, '2015-04-05', NULL, 'active', 'night', '2024-08-29 22:46:42', '2024-08-29 22:46:42'),
	(7, '159-294051-1969A', 'Imelda Leffler', 'Anderson', '(810) 292-1306', '542 Torphy Overpass Apt. 293\nSouth Camden, KY 94610', 12542.30, '2018-12-31', '1988-03-16', 'inactive', 'morning', '2024-08-29 22:46:42', '2024-08-29 22:46:42'),
	(8, '554-237632-9892P', 'Saige Hirthe', 'Wyman', '+15409835461', '7972 Gleichner Lodge Apt. 126\nHanehaven, ME 12246-4979', 35369.98, '2003-03-16', NULL, 'active', 'night', '2024-08-29 22:46:42', '2024-08-29 22:46:42'),
	(9, '533-100508-2422I', 'Kaylee Wilkinson', 'Feeney', '1-321-425-6287', '47614 Toy Plain Suite 612\nRempelton, KY 76128-8557', 21405.20, '2017-09-09', NULL, 'active', 'night', '2024-08-29 22:46:42', '2024-08-29 22:46:42'),
	(10, '534-853331-5826Z', 'Nayeli Kuhic', 'Wiegand', '(551) 663-0804', '9168 Demarco Bypass\nSouth Gillian, NJ 49677', 11951.24, '1994-10-10', '1985-07-23', 'inactive', 'night', '2024-08-29 22:46:42', '2024-08-29 22:46:42'),
	(11, '485-452992-3273L', 'Ms. Lindsay Cruickshank', 'Harber', '+1 (463) 283-5131', '23759 Daugherty View Suite 208\nEast Darionbury, WI 92000', 40592.38, '2022-06-22', '1973-11-08', 'inactive', 'morning', '2024-08-29 22:46:42', '2024-08-29 22:46:42'),
	(12, '299-117796-5680Z', 'Prof. Modesto Greenfelder V', 'Rogahn', '+1-202-615-0067', '595 Birdie Lane Apt. 653\nConnmouth, RI 26448', 12960.44, '2000-04-16', '1976-02-11', 'active', 'night', '2024-08-29 22:46:42', '2024-08-29 22:46:42'),
	(13, '874-598219-3425B', 'Domenic Kuhic', 'Lehner', '325-740-9442', '63257 Kerluke Locks\nPort Cortez, GA 88759', 20560.84, '2005-09-18', '2003-12-21', 'inactive', 'night', '2024-08-29 22:46:42', '2024-08-29 22:46:42'),
	(14, '376-273217-9359N', 'Mrs. Maya Mueller', 'Mayer', '315.641.5061', '7818 Demarcus Fort Apt. 871\nLake Sean, AK 83951-9070', 19719.89, '2020-03-26', '2019-09-21', 'inactive', 'night', '2024-08-29 22:46:42', '2024-08-29 22:46:42'),
	(15, '599-672774-7273J', 'Gabrielle Kihn', 'Hackett', '1-820-922-4928', '49156 Hermiston Throughway\nLake Madyson, ME 30100', 48776.50, '1993-04-15', NULL, 'active', 'morning', '2024-08-29 22:46:42', '2024-08-29 22:46:42'),
	(16, '902-867551-9755D', 'Ms. Ethelyn Ebert IV', 'Christiansen', '1-641-995-1828', '3568 Jesse Unions\nLake Nicklaus, PA 58422-6509', 12419.39, '1998-08-05', NULL, 'inactive', 'night', '2024-08-29 22:46:42', '2024-08-29 22:46:42'),
	(17, '117-265137-5813G', 'Alycia West', 'Moen', '512-272-0433', '5553 Mills Lake\nHenrichester, OK 93687-5869', 10600.00, '1979-05-24', NULL, 'inactive', 'morning', '2024-08-29 22:46:42', '2024-08-29 22:46:42'),
	(18, '956-353649-8156T', 'Delphia Deckow', 'Nikolaus', '1-743-525-5246', '2467 Larkin Row\nLangchester, AL 36535-4262', 30608.20, '2008-03-31', NULL, 'inactive', 'morning', '2024-08-29 22:46:42', '2024-08-29 22:46:42'),
	(19, '795-778819-6720I', 'Dr. Teagan Witting', 'Brakus', '(320) 334-3138', '7725 Hegmann Estates\nLockmanburgh, LA 00199', 27409.85, '2019-03-22', NULL, 'active', 'morning', '2024-08-29 22:46:42', '2024-08-29 22:46:42'),
	(20, '763-378799-9021U', 'Monserrate Padberg', 'Feest', '762-215-8615', '86981 Lang Circle Suite 138\nLake Adrian, HI 49258-0522', 13317.15, '1982-05-29', '2016-12-05', 'inactive', 'morning', '2024-08-29 22:46:42', '2024-08-29 22:46:42'),
	(21, '827-039344-2696B', 'Landen Waters', 'Upton', '561-996-5773', '236 Alda Mission\nKavonville, MN 88739', 49515.91, '2000-09-29', '2013-04-14', 'active', 'morning', '2024-08-29 22:46:42', '2024-08-29 22:46:42'),
	(22, '687-796211-6681P', 'Earlene Jacobs', 'Donnelly', '272.591.6014', '978 Kreiger Mountains\nNorth Earnestine, HI 78582', 20145.82, '1970-11-04', NULL, 'active', 'morning', '2024-08-29 22:46:42', '2024-08-29 22:46:42'),
	(23, '493-539954-2351N', 'Leopold Schumm', 'Murazik', '(831) 290-3371', '5331 Greenholt Haven\nEast Cadenstad, AZ 89633-7765', 38823.69, '2008-06-28', '2003-06-29', 'inactive', 'morning', '2024-08-29 22:46:42', '2024-08-29 22:46:42'),
	(24, '911-024153-3192M', 'Ms. Susanna Olson', 'Emmerich', '(831) 872-8286', '641 Boyle Center\nLake Issac, HI 57542-9672', 36913.30, '1996-05-05', '2021-01-04', 'inactive', 'night', '2024-08-29 22:46:42', '2024-08-29 22:46:42'),
	(25, '453-309688-0347K', 'Manley Bayer', 'Thiel', '+1-703-687-3213', '181 Constance Trafficway Apt. 807\nEvalynbury, WY 54155', 16314.91, '2017-10-29', NULL, 'active', 'morning', '2024-08-29 22:46:42', '2024-08-29 22:46:42'),
	(26, '861-632443-5466M', 'Name Ebert', 'Fisher', '+1-480-485-2585', '3383 Parker Highway Apt. 280\nRussport, CT 58640-2792', 14975.41, '1985-10-21', '2006-03-15', 'inactive', 'night', '2024-08-29 22:46:42', '2024-08-29 22:46:42'),
	(27, '468-796589-4514S', 'Jules Pacocha', 'Kulas', '+1.854.343.0914', '5865 Randal Passage\nGrantberg, DC 00074', 29774.56, '1980-03-23', '2019-07-14', 'inactive', 'morning', '2024-08-29 22:46:42', '2024-08-29 22:46:42'),
	(28, '924-919557-2060I', 'Heber Runte DDS', 'Larkin', '+1 (458) 863-0670', '27787 Jensen River Apt. 694\nSouth Deon, NH 47615', 41093.79, '2000-07-02', NULL, 'inactive', 'morning', '2024-08-29 22:46:42', '2024-08-29 22:46:42'),
	(29, '804-992645-1517T', 'Antonietta Conn', 'Botsford', '1-762-880-0079', '8937 Connie Ranch Apt. 689\nPort Raleigh, IN 00450', 27076.57, '1988-02-13', NULL, 'inactive', 'night', '2024-08-29 22:46:42', '2024-08-29 22:46:42'),
	(30, '083-993262-6016G', 'Mrs. Esther Nitzsche II', 'Bauch', '802-421-6540', '706 Heidi Harbor\nEvieborough, WY 48465-1398', 17737.51, '2024-01-07', '1972-08-25', 'inactive', 'morning', '2024-08-29 22:46:42', '2024-08-29 22:46:42');

-- Volcando estructura para tabla parentcareapi.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla parentcareapi.failed_jobs: ~0 rows (aproximadamente)

-- Volcando estructura para tabla parentcareapi.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla parentcareapi.migrations: ~5 rows (aproximadamente)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2024_08_29_162458_create_employees_table', 2);

-- Volcando estructura para tabla parentcareapi.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla parentcareapi.password_reset_tokens: ~0 rows (aproximadamente)

-- Volcando estructura para tabla parentcareapi.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla parentcareapi.personal_access_tokens: ~0 rows (aproximadamente)

-- Volcando estructura para tabla parentcareapi.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla parentcareapi.users: ~0 rows (aproximadamente)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
