-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 05, 2023 at 04:15 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpu_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, ' Web Programming', 'web-programming', '2023-11-03 21:22:52', '2023-11-03 21:22:52'),
(2, ' Web Design', 'web-design', '2023-11-03 21:22:52', '2023-11-03 21:22:52'),
(3, ' Personal', 'personal', '2023-11-03 21:22:52', '2023-11-03 21:22:52');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_02_164623_create_posts_table', 1),
(6, '2023_11_03_041351_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Enim error iste.', 'enim-et-sint-maiores-praesentium-et', 'Est molestiae ut qui sunt. Itaque quo fuga cupiditate nemo error dolores quae. Quae aut fuga nisi facilis quia ut. Tempora delectus et veritatis occaecati possimus.', '<p>Accusantium accusamus soluta eaque nobis atque non. Velit tempora odio vero maxime est. Modi reiciendis reiciendis doloremque nostrum vel.</p><p>At consectetur at explicabo. Itaque recusandae facere libero qui in itaque quam. Rerum nulla adipisci eos labore libero eius impedit.</p><p>Dolores aut quidem ipsam vero et sit sunt. Amet provident non delectus ut. A nam esse eius neque. Et corporis est similique qui.</p><p>Eos sunt maiores ad corporis id. Ab harum quod ex velit itaque qui dicta perferendis. Eos maxime quas doloribus laboriosam consequuntur. Ex voluptas debitis odit qui ut dolorem qui voluptatem.</p><p>Rerum aperiam quia voluptatem eligendi recusandae. Quis a nam dolorem veritatis quo ducimus quia. Velit rerum et repudiandae error beatae suscipit ut. Non debitis sit illo velit.</p>', NULL, '2023-11-03 21:22:52', '2023-11-03 21:22:52'),
(2, 1, 1, 'Aliquam odio aut molestias cum corrupti.', 'molestiae-accusantium-nostrum-amet-nemo-recusandae', 'Rerum est eius suscipit et et deserunt. Unde molestias numquam et adipisci. Ipsa qui aut doloribus aut reiciendis qui inventore.', '<p>Dolorem rerum minima occaecati in repellat quia neque. Voluptatem pariatur officiis est vitae eveniet aut nesciunt. Impedit ut dolores optio omnis. Necessitatibus sint id ut id nihil dolorem.</p><p>Pariatur nemo maiores optio voluptate sed aut asperiores. Distinctio deleniti est autem. Non consectetur et iusto et tenetur sit.</p><p>Quasi dolorum nesciunt fuga non. Expedita tempore ut consequatur reprehenderit omnis iusto. Deleniti quidem ea maxime quos adipisci velit minus. Harum omnis id in excepturi sunt et animi.</p><p>Nobis minima reiciendis cupiditate omnis. Est officia sequi assumenda sed odio ducimus. Exercitationem inventore sed necessitatibus incidunt magni dolor aperiam. Natus dolorem dolor aut sit exercitationem. Ducimus odit qui qui praesentium dolorem est accusamus.</p><p>Et necessitatibus vel aspernatur tempora tenetur. Sit id voluptatem enim incidunt distinctio est. Quia autem consectetur voluptatem et aspernatur quaerat. Officiis accusamus tempore quo labore ex dicta.</p><p>Sunt nostrum non non dolorum voluptatum dolorum. Consequatur quae vel maxime sit. Qui quo et modi repudiandae modi. Suscipit maxime alias ab qui ducimus.</p>', NULL, '2023-11-03 21:22:52', '2023-11-03 21:22:52'),
(3, 1, 3, 'Sed voluptate qui et maiores magni et.', 'sed-autem-temporibus-asperiores-accusantium', 'Omnis et rerum blanditiis natus. Eum porro architecto aliquid natus recusandae veniam ut nisi. Laborum libero est reprehenderit est delectus.', '<p>Omnis tempora qui maiores sed mollitia. Adipisci ducimus animi sed molestiae ducimus fugit omnis. Quis ut inventore sit dicta numquam. Quia molestiae doloremque saepe molestiae at. Nihil animi eaque ad saepe.</p><p>Dicta est maiores asperiores. Et enim et tenetur laudantium ut. Corrupti maxime illo enim quam incidunt laboriosam. Incidunt iusto est fuga eveniet vel non.</p><p>Aut voluptatem perspiciatis voluptatem sequi asperiores aut deserunt officiis. Unde itaque aut minima perspiciatis. Enim assumenda incidunt aliquid rerum beatae est in. Tempore laudantium voluptate eius beatae aliquid itaque sit rem.</p><p>Possimus aut aliquam magnam dolorem sit. Et nobis quaerat natus autem soluta. Reiciendis maxime omnis exercitationem assumenda. Et temporibus tempora et doloribus pariatur nemo blanditiis facilis.</p><p>Natus aperiam porro dolores ea sit. Et autem error eum odit totam dolores expedita enim. Velit voluptatum modi rerum laudantium.</p>', NULL, '2023-11-03 21:22:52', '2023-11-03 21:22:52'),
(4, 2, 2, 'Qui odio excepturi.', 'praesentium-possimus-facilis-velit-incidunt-cum-dolores-in-consequuntur', 'Excepturi veniam adipisci commodi dolore. Optio voluptatem iste iure quisquam commodi. Qui aperiam qui dolorem ipsa at. Excepturi ipsa ut accusantium fugit perferendis. Et iusto eos quis aut quis doloremque blanditiis esse.', '<p>Unde ex vitae autem sapiente modi necessitatibus. Praesentium autem deserunt et explicabo. Atque impedit quia aut nihil repellat aut. Dignissimos modi repudiandae corporis et occaecati quis.</p><p>Vero magni aspernatur earum consequatur vel tempora. Distinctio labore sapiente aut. Placeat consequuntur iste natus magnam dolores.</p><p>Doloribus voluptatum optio eum quod voluptatem. Autem et enim nihil optio tenetur veniam. Et reprehenderit quae labore quibusdam temporibus non ab in. Quidem ut iste beatae nihil nostrum.</p><p>Eveniet maxime sint repellat aut. Voluptatem ut iusto sed nulla. Nemo placeat rerum sit dolorum occaecati. Aut assumenda quo rem error quisquam rerum eaque.</p><p>Tenetur voluptatem quidem sit est et. Qui nihil assumenda non odit nobis et est sed. Voluptate ut est doloribus voluptate eos sint.</p><p>Sapiente dignissimos asperiores ratione autem quisquam autem. Similique tempore mollitia in dignissimos eos voluptatem. Tempore dolores veritatis explicabo et ullam neque voluptate odio. Harum dolorem qui est earum sed consequatur.</p><p>Vel iure maxime repellendus. Ut quae rerum similique aut quo. Voluptatem nostrum aliquid accusantium voluptas ullam corrupti. Impedit vel quae voluptates sequi porro et voluptas.</p>', NULL, '2023-11-03 21:22:52', '2023-11-03 21:22:52'),
(5, 2, 2, 'Ducimus est hic ad minima.', 'ut-in-corrupti-sed-dicta', 'Quo nesciunt voluptatem ab nostrum corporis consequuntur aut autem. Dolores doloribus similique veniam. Et ut tempora quod commodi.', '<p>Maiores officiis quo eum ut. Recusandae omnis voluptatem eveniet rerum. Vel saepe voluptas repellat est consequuntur corrupti.</p><p>Nesciunt nobis ipsam velit libero et deleniti veniam. Est nostrum ut ut ad eligendi aut. Odio ut minus ullam veritatis reprehenderit animi officiis.</p><p>Numquam nisi et enim ut dolorem reiciendis ut. Occaecati id repudiandae libero voluptatum et culpa provident. Perferendis molestias repellendus tempora necessitatibus ipsum culpa. Itaque neque sed neque ipsa non qui.</p><p>Omnis voluptate et voluptatem dolores. Optio dolorem qui perspiciatis ipsam officia officia. Maxime praesentium ipsam quas. Maiores autem natus libero veritatis quia. Eum sit possimus ut voluptate consequatur.</p><p>Nemo veritatis quasi sequi. At natus recusandae harum ex. Excepturi quod eaque accusamus et.</p><p>Quis quod deserunt consequuntur dicta inventore rerum aut fugit. Perspiciatis dolorem voluptates est consequatur dolorem sint ut. In perspiciatis consectetur eius.</p><p>Qui dicta fugiat et alias. Voluptatem velit quis consequuntur quis nulla ut est. Aut vel qui at nihil veritatis.</p>', NULL, '2023-11-03 21:22:52', '2023-11-03 21:22:52'),
(6, 2, 1, 'Repellat cum aspernatur recusandae.', 'iste-dicta-possimus-ipsum-ut-suscipit', 'Sint aut assumenda in et. Quibusdam odit occaecati quia quos et. Doloribus numquam quisquam nobis quis et.', '<p>Qui facilis magni voluptatem. Cumque ex cumque eaque velit eveniet et. Aut earum nesciunt praesentium est. Sint illum quia consequatur odio quis nemo.</p><p>Aut consequatur reprehenderit quidem. Expedita id aut consequuntur vel sunt. Sit sequi voluptas tenetur quia. Sit est sit ad dolores reiciendis.</p><p>Sint maxime sit et quo vel consequatur sed. Dignissimos excepturi quo adipisci nisi tempore maiores. Quibusdam maiores labore excepturi asperiores aspernatur quaerat. Quo facilis temporibus eos illum deserunt quibusdam.</p><p>Officia voluptas cumque voluptates nihil ut illum temporibus blanditiis. Dignissimos dolorum et debitis totam vel cum labore. Soluta ut rem repellat accusantium similique illo. Possimus aut esse ratione quia ut ea voluptas.</p><p>Atque temporibus voluptas quae perferendis quasi id sint aut. Illo est ut perferendis deserunt. Inventore totam repudiandae enim laboriosam.</p><p>Fuga eum impedit cum. Ea et ut dolor ut placeat ratione. Qui tempora qui odio accusantium. Ea temporibus ut et modi.</p><p>Minima nemo libero placeat laborum est. Illum ut sit sed ipsum recusandae ad laudantium. Ducimus in reprehenderit facilis cupiditate.</p><p>Harum aut voluptatem in quidem saepe natus. Deleniti et aspernatur doloremque quidem ipsum laboriosam. Sequi deserunt laudantium facilis modi sed quasi omnis. Magnam non quidem dolorem quam amet repudiandae. Veniam eaque omnis at eius et expedita.</p>', NULL, '2023-11-03 21:22:52', '2023-11-03 21:22:52'),
(7, 2, 2, 'Quo reiciendis nemo est eos placeat.', 'laudantium-voluptas-delectus-est-minus-fugiat-nam-quas', 'Voluptatem totam assumenda beatae aut ut. Sunt tempora autem voluptas dolor. Dolorem dolorem voluptatem excepturi ipsam officia. Iste sed dolor ea rem.', '<p>Pariatur qui repudiandae et officiis. Dolor molestias id debitis provident molestiae rerum excepturi. Quia sequi sint illo non.</p><p>Aut consequatur velit ex ipsum quo aut nulla. Nihil hic dolorem qui praesentium porro vel voluptatem. Aliquam culpa placeat molestias molestiae fuga.</p><p>Eius corporis esse consequuntur. Quia expedita eos quis placeat molestiae. Libero dolorum molestiae et deleniti.</p><p>Sequi mollitia saepe placeat laudantium repellat rerum veritatis. Non iste quam dolorem aut perferendis sapiente hic. Quidem ut aperiam consequatur porro fugit accusamus fuga nobis. Voluptatem et laudantium reprehenderit eum.</p><p>Officia quis saepe et ipsam vel et iure. Hic rerum et illo eligendi dolorum. Sed sed aut neque ipsa quo est nam.</p><p>Aliquid rerum culpa quo ab ea. Expedita fugiat eveniet provident non ullam veritatis fuga. Nemo et eius est neque consequatur dolor ut.</p>', NULL, '2023-11-03 21:22:52', '2023-11-03 21:22:52'),
(8, 1, 1, 'Possimus quibusdam mollitia tempore reiciendis debitis quia.', 'iure-libero-aut-ea-sequi-consequuntur-unde', 'Reiciendis in odio explicabo totam ab pariatur molestias officia. Tenetur quia in neque voluptatem. Voluptas sapiente consequuntur quia. Deserunt animi labore exercitationem.', '<p>Officia eum id consectetur ullam. Qui totam fugit suscipit quis labore corporis sunt. Qui est suscipit ipsam non autem. Placeat quaerat consectetur in adipisci tenetur ut minus.</p><p>Rerum pariatur quam et. Est eaque dicta ut voluptas adipisci aliquam natus. Sit aut et corporis maiores velit. Odit ea voluptatibus enim voluptas. Nisi quis asperiores et eum dignissimos ut.</p><p>Quibusdam minima voluptates nobis error maiores quos voluptatem saepe. Aliquid assumenda minus accusantium consequatur consectetur delectus. Assumenda accusantium ut quod asperiores eaque voluptas sed.</p><p>Qui quos est facere at consequatur. Perspiciatis fugiat rerum in nostrum nemo. Repudiandae harum deleniti minima nostrum iure error omnis. Veniam sunt quo minima magnam nisi.</p><p>Debitis quia eos repudiandae est. Unde reprehenderit non voluptate rem ut voluptate dolorem. Ducimus rerum autem laudantium tenetur omnis.</p>', NULL, '2023-11-03 21:22:53', '2023-11-03 21:22:53'),
(9, 2, 2, 'Commodi necessitatibus nihil nihil illo.', 'repellat-et-quod-numquam-eius', 'Aperiam architecto rerum nulla consequuntur. Enim consequuntur corrupti qui mollitia tenetur. Qui quam impedit sunt eum ipsa corporis voluptatem error.', '<p>Dolores consectetur qui facilis ipsam. Porro rem reprehenderit voluptatem doloremque tenetur nihil ratione et. Libero voluptatibus quis explicabo. Voluptatem et consequatur totam non sunt in animi.</p><p>Quo quae ea ipsum. Culpa facilis dolorem tempora impedit. Et est eligendi tempora eligendi sed velit similique. Esse sunt cupiditate nobis. Nemo tenetur dicta minima suscipit consequuntur dignissimos omnis.</p><p>Et repellendus eveniet enim accusantium. Iusto beatae rem adipisci amet qui. Illum aspernatur voluptatem et.</p><p>Et quia quia voluptate est et et aliquid. Tempore nulla quas qui error autem necessitatibus. Inventore necessitatibus tempora qui.</p><p>Quis quam aut libero quia doloribus molestias architecto id. Repudiandae perspiciatis facilis perferendis laborum praesentium et. Neque voluptas cupiditate distinctio aut.</p><p>Quam sapiente at error ut. Beatae labore doloribus optio omnis eum dolore et.</p><p>Eos ab fuga assumenda odit qui error. Amet quia et voluptatem corrupti rerum. Minima dolorem explicabo necessitatibus et placeat dolorum cum.</p><p>Eveniet expedita illum officia nulla blanditiis. Reiciendis quia et sequi et labore rem animi. Sint sed dolorem id laborum blanditiis. Ipsam perspiciatis rem aspernatur.</p>', NULL, '2023-11-03 21:22:53', '2023-11-03 21:22:53'),
(10, 1, 3, 'Aliquam libero perferendis.', 'autem-asperiores-facere-non-dolor-voluptatem-nisi', 'Ea exercitationem aliquid sit. Consequatur ab earum esse ut repellendus vitae ad. Vel dolorum quo enim eaque illo illum. Animi rerum neque sapiente in. Nihil et voluptatem nobis dolores eaque.', '<p>Fugiat non magni facere et deleniti porro dolor. Aliquam debitis nihil ut iste qui. Minus laboriosam optio non aliquid beatae eum placeat. Cumque vel nostrum aspernatur. Cupiditate vel numquam asperiores est earum distinctio.</p><p>Dicta aliquid et velit adipisci alias quibusdam. Qui placeat ipsam dolore et. Repudiandae assumenda id qui dolore saepe reprehenderit.</p><p>Consectetur modi dicta tenetur commodi rerum. Autem autem molestiae et corrupti dicta dolorem. Molestias eos sed voluptatem quibusdam libero. Maiores eligendi maiores molestiae voluptate officiis.</p><p>Rerum qui voluptatum iure sunt in. Cumque aut fugiat magnam cupiditate rerum. Eligendi quam corporis cumque et qui est.</p><p>Magnam suscipit numquam sint incidunt amet ut. Accusantium eos quae quod quia et non. Fugiat et neque aut voluptatem commodi aut.</p><p>Quis dolorem quia sunt laboriosam dignissimos voluptatem sint. Incidunt doloribus alias labore adipisci modi qui voluptatem. Voluptate quod dolorem doloremque qui.</p><p>Tenetur cum sequi id placeat laboriosam ut quidem. Temporibus totam vel corporis asperiores odio voluptate ut. Facilis sapiente amet porro quo odio culpa. Officia sit impedit ut.</p>', NULL, '2023-11-03 21:22:53', '2023-11-03 21:22:53'),
(11, 2, 3, 'Ut esse voluptatem.', 'eligendi-id-minima-sed-in-cupiditate', 'Ut est aliquam est vero. Reiciendis qui quae mollitia. Ut necessitatibus fuga ea assumenda iste.', '<p>Itaque deleniti et similique cumque eum enim. Nisi facere commodi numquam iste cupiditate aut ad aut. Fuga consequatur voluptatem qui similique iusto officiis.</p><p>Tempore qui commodi beatae adipisci. Molestiae doloribus quaerat velit pariatur. Ad architecto distinctio dicta non aut quia corrupti. Unde animi in molestias velit adipisci. Labore a voluptatem ipsa ab atque nobis exercitationem.</p><p>Sapiente voluptates quam aliquid rerum. Et fugiat autem sunt eius qui corrupti. Nostrum fugit consequatur rerum doloribus perferendis adipisci ut a. Id aut quia in aut reprehenderit ut suscipit.</p><p>Debitis ullam est rerum. Dolore voluptate totam modi consequuntur. Hic officiis illum dolorem doloribus quidem tempore et.</p><p>Et sunt ex ut qui maxime. Quia aut ullam sed et fuga dolorem est. Eius sit debitis voluptate sit. Dicta numquam esse explicabo non nihil dolores.</p>', NULL, '2023-11-03 21:22:53', '2023-11-03 21:22:53'),
(12, 2, 1, 'Adipisci nostrum officiis suscipit.', 'sit-nam-consequatur-voluptatibus', 'Quod est nihil et est. Aliquam mollitia ipsum vitae doloremque.', '<p>Sunt saepe blanditiis commodi sit quia. Omnis tempore rem nisi voluptatem omnis est. Et consequuntur quia molestias molestiae laboriosam possimus ipsa. Labore nihil fugiat in animi alias sint delectus. Ut ut expedita voluptas deserunt.</p><p>Quam dolores nostrum fugiat praesentium non. Hic atque cum consequatur. Reprehenderit aut blanditiis quos fuga.</p><p>Illum mollitia voluptatum harum quibusdam est sunt laudantium. Placeat exercitationem aliquam cupiditate eum animi quis porro enim.</p><p>Quia occaecati voluptates dolorem distinctio sint voluptate. Praesentium delectus quod assumenda aut est. Ut reiciendis reprehenderit voluptatem. Delectus earum et ut et.</p><p>Dolore magnam illum expedita omnis sit. Voluptatum quis ipsam aperiam ea incidunt. Omnis debitis porro recusandae nostrum pariatur. Molestiae veritatis et ducimus molestiae ducimus.</p><p>Quidem perferendis in pariatur laboriosam asperiores voluptatem at. Quibusdam accusantium illo voluptatem voluptatum. Atque sit id eum sed accusamus. Aut molestias quia facere quis dolores facere suscipit natus.</p><p>Sint labore amet aut ullam repudiandae quae animi. Amet voluptates qui eius. Deleniti impedit quod vero quae reprehenderit et soluta. Nemo tempora blanditiis vel pariatur quidem.</p>', NULL, '2023-11-03 21:22:53', '2023-11-03 21:22:53'),
(13, 2, 1, 'Asperiores voluptates odit ab consectetur voluptate ullam.', 'rerum-incidunt-alias-id-est-commodi-saepe-quo-quo', 'Voluptate quo molestias cum dolor culpa. Modi non asperiores necessitatibus repudiandae quas. Magni error ipsa sed dolore tenetur.', '<p>A optio a unde assumenda. Autem omnis necessitatibus ut voluptatum quod explicabo. Ut quam aut autem quia perspiciatis sit. Occaecati eligendi aut eos molestiae illo quae.</p><p>Culpa laudantium harum odit laborum nostrum quo. Ut aut amet quod aut. Sint qui et voluptatem similique. Neque aut quia cum inventore natus fugit est.</p><p>Vero ut sint eaque quos esse ducimus. Occaecati eligendi mollitia laborum minima magnam. In aspernatur minus nesciunt ad. Possimus inventore et delectus. Dolor officia molestiae hic commodi ea velit.</p><p>Alias molestiae corporis et est rerum molestiae qui et. Beatae explicabo et sit velit necessitatibus incidunt. Et eos natus adipisci iure cumque labore porro. Et non velit aut omnis aut corrupti est.</p><p>Ullam itaque tempora aut sit. A et et et quia. Repudiandae aut ut quas fugit. Quo omnis sit quos quae. Est laudantium quasi laboriosam.</p><p>Eos et voluptatem numquam minus nobis eum dolor impedit. Ut numquam animi omnis quia dicta dignissimos. Sint quidem velit voluptas cumque nostrum voluptatum.</p>', NULL, '2023-11-03 21:22:53', '2023-11-03 21:22:53'),
(14, 1, 3, 'Qui officiis natus sint quod perspiciatis velit.', 'ipsum-aliquid-voluptates-minima-impedit-praesentium-suscipit-magni-nostrum', 'Aliquam laboriosam est vitae asperiores aut. Ut vitae laudantium quasi necessitatibus ut nam exercitationem. Ut aspernatur qui ipsum cumque illo.', '<p>Explicabo tempora quod in dignissimos ratione. Quae veritatis qui sunt qui molestias est modi. Voluptatem soluta aspernatur autem in iste. Consequatur fuga tenetur incidunt at.</p><p>Ratione consequuntur excepturi sit enim. Et tempora beatae omnis dolor vitae nostrum laboriosam. Quia ut omnis architecto possimus corrupti quasi repudiandae recusandae. Non debitis dolor labore.</p><p>Repellat nesciunt voluptatem optio omnis corporis veritatis. Omnis ea et velit dolores.</p><p>Debitis debitis id qui sunt fugiat aut. Consequuntur nihil et omnis a est atque aut. Eaque ab eos voluptatem eum est.</p><p>Magni quis fuga nobis sit est ex dolor. Est reprehenderit labore veritatis recusandae. Ducimus nihil nisi rem qui consequatur aut rerum.</p><p>Nihil autem et quam maxime laboriosam est neque. Officia alias explicabo et qui consectetur aliquam velit. Cupiditate fugit dolore a enim enim dicta. Dolores ducimus non repellendus voluptatibus nostrum et omnis. Recusandae ratione repellendus sint molestiae omnis.</p><p>Eligendi voluptates illo ut omnis quia distinctio. Quibusdam totam eligendi odio voluptate ab quis eligendi dicta. Doloremque libero non atque voluptas non. Harum illum consequuntur dolores quo itaque voluptas dicta.</p><p>Quod omnis est sunt incidunt maiores cumque. Ut odit earum numquam suscipit. Velit nostrum repudiandae autem vel tempora. Laboriosam fuga quos quia ab reiciendis harum sequi aut. Quia placeat qui aliquam quod eius.</p>', NULL, '2023-11-03 21:22:53', '2023-11-03 21:22:53'),
(15, 2, 3, 'Ut explicabo nobis facere rem voluptas aut deleniti molestias tenetur.', 'vel-nesciunt-dignissimos-deserunt-molestiae-est-cupiditate', 'Harum qui architecto veritatis et quia. Sunt sed illum est. Fugiat ut sunt inventore et.', '<p>Eveniet voluptatem repellendus consectetur praesentium. Magni asperiores tenetur non nam quo nulla aspernatur earum. Molestiae quas ipsum ipsa sit ab maxime alias.</p><p>Mollitia enim maxime hic corrupti. Pariatur quis voluptas similique et. Accusamus laudantium velit laborum vitae id. At alias nulla vel voluptatem odit amet et officia.</p><p>Asperiores dolorem eos eaque accusamus veniam officiis repudiandae. Nihil quod sit et autem consequatur. Doloremque aperiam sit id dolorem minima ut eum et.</p><p>Nesciunt sunt ullam magnam minima. Expedita corporis quaerat porro at dolorem consequuntur. Beatae eum rerum commodi quia nostrum.</p><p>Qui tenetur distinctio possimus consectetur. Et mollitia temporibus perferendis. Expedita fugit qui placeat suscipit.</p><p>Provident voluptate et impedit ut explicabo quisquam. Ipsa molestias dolore quis impedit. Voluptatem dolores est est distinctio vero.</p><p>Sed aspernatur aut et est eveniet. In adipisci velit et magni. Quo adipisci velit laborum doloremque. Mollitia rerum dignissimos et hic qui sint sed. Repudiandae autem eum harum ut qui est.</p><p>Voluptatem voluptate sunt voluptas et voluptas aliquam. Aut suscipit ducimus et eligendi mollitia consequuntur velit. Optio quia molestias recusandae doloribus sit ea.</p><p>Et doloribus deserunt enim voluptatem accusamus et. Et ea nobis nulla nihil quidem et sapiente. Voluptate commodi laboriosam velit non incidunt sapiente illum. Aut pariatur et facilis ad.</p><p>Qui quas atque aliquam accusamus ipsa error dolores. Dicta nihil mollitia autem odit eum pariatur explicabo libero. Quibusdam harum molestiae eveniet hic et aut.</p>', NULL, '2023-11-03 21:22:53', '2023-11-03 21:22:53'),
(16, 1, 1, 'Rem minus facilis.', 'minus-velit-et-dolorum-est', 'Facere recusandae voluptas quia reprehenderit reprehenderit. Aut iure perferendis debitis. Qui tenetur ipsa repellendus voluptas.', '<p>Eligendi molestiae magni est. Voluptatem assumenda provident consequatur dolor. Ipsam dignissimos dolor cum quibusdam. Quis voluptatem officia labore perferendis nam id hic.</p><p>Velit est facilis et aut. Molestiae harum ad corporis dolores quo et. Odit earum qui odio est rem labore qui.</p><p>Quis voluptatem dolores corporis facilis qui. Fuga doloribus consequuntur porro qui. Sint quo mollitia blanditiis.</p><p>Non ut quod quae. Voluptas ratione quis quis quo voluptas cumque voluptates.</p><p>Ut et accusamus perspiciatis natus est. Corrupti rerum expedita non expedita ad eos.</p>', NULL, '2023-11-03 21:22:53', '2023-11-03 21:22:53'),
(17, 2, 3, 'Ratione eum sit similique.', 'non-quaerat-enim-porro-animi-rerum', 'Perferendis delectus officiis molestiae ut. Est sed non assumenda adipisci totam. Qui earum ipsam neque ex. Hic iusto magni recusandae rem quia neque.', '<p>Earum quis distinctio nihil debitis aut repudiandae. Ut aut odit rerum necessitatibus aut. Eos sint quidem quis quae.</p><p>Ea ut perspiciatis aliquam consequuntur. Beatae autem corrupti ut numquam sed. Quia culpa repudiandae velit.</p><p>Maiores unde impedit sapiente asperiores porro similique quia. Placeat esse deleniti neque vero voluptas. Vero consequatur id consequuntur officia recusandae repellendus explicabo.</p><p>Dignissimos ipsum sapiente cumque dolores hic quasi omnis. Quis deleniti ut officiis officia reprehenderit possimus tenetur. Placeat facilis debitis omnis. Libero est tempore molestias.</p><p>Dignissimos dolores alias sed et quisquam rerum itaque. Eos qui nesciunt ipsa inventore sit consequatur sit. Nostrum blanditiis est eaque ut iusto sunt.</p>', NULL, '2023-11-03 21:22:54', '2023-11-03 21:22:54'),
(18, 1, 1, 'Omnis deleniti voluptatibus.', 'qui-nulla-est-minus-ipsam-corporis-quia', 'Nostrum qui corporis beatae unde eveniet alias in corporis. Eius tenetur culpa enim aliquid magni.', '<p>Explicabo quis suscipit ipsam suscipit qui vitae necessitatibus aut. Atque quasi et repudiandae amet laboriosam amet.</p><p>Id velit animi deleniti veritatis dolorem labore fuga. Autem repellendus architecto omnis aut nam.</p><p>Inventore est voluptatem velit aut consequatur. Aperiam aut et laboriosam aut delectus ex itaque. Quam et et qui aut et. Possimus et qui voluptatum beatae est reprehenderit asperiores.</p><p>Consequatur excepturi laboriosam quidem quibusdam ut et. Est et quos ad optio harum quisquam officiis. Et reiciendis voluptas ut.</p><p>Enim exercitationem asperiores consequatur iste dicta unde perspiciatis. Et expedita unde aut qui dolor. Quisquam eos quos vero enim corporis cumque. Optio ipsam non animi sequi.</p>', NULL, '2023-11-03 21:22:54', '2023-11-03 21:22:54'),
(19, 2, 3, 'Aperiam maxime iste.', 'nemo-sit-modi-aut', 'Consequatur natus dolor aut dicta est culpa. Expedita fuga consequatur nihil eum. Ipsam commodi sit deserunt. Temporibus aut libero dicta non.', '<p>Et magni consequatur consequatur fugit. Et officia dolores fugit recusandae aliquam quos tempore. Sapiente laudantium eos voluptas aperiam in.</p><p>Quia iusto cum id earum hic quis dolor ex. Cumque odio facere ut sint voluptatum et rerum saepe. Voluptatum consectetur repellat quam beatae et quae.</p><p>Aut quia cum incidunt aperiam quibusdam a. Nihil voluptas dolore qui sed qui vel. Neque explicabo ut blanditiis beatae quidem culpa.</p><p>Est deleniti amet tempore voluptatem ut. Et aspernatur ut est consequatur. Molestiae alias amet temporibus vero modi perspiciatis id perspiciatis. Nemo neque esse voluptatem.</p><p>Quaerat quia debitis error voluptatum. Dolore fugit quibusdam sit voluptatum qui ut velit. Est repudiandae veritatis non vel eligendi atque magnam. Dolorum tempora omnis dignissimos deserunt tenetur.</p><p>Deserunt eveniet ut similique laborum. Illo quisquam explicabo tempore et. Velit aspernatur aliquam doloribus delectus tenetur rerum officia quam.</p>', NULL, '2023-11-03 21:22:54', '2023-11-03 21:22:54'),
(20, 2, 3, 'Reprehenderit distinctio officia ea id illum officiis in.', 'voluptatem-aspernatur-commodi-odit-eum-et-expedita-ut', 'Numquam voluptates quibusdam culpa fugiat. Velit libero autem mollitia quis rerum pariatur. Vel laboriosam doloribus atque dolorem praesentium.', '<p>Provident veritatis laudantium rem id ipsum optio. Fuga aut neque ipsa similique non sunt ut. Dolor voluptatibus animi vitae ipsa repellat est distinctio. Qui labore dolorum sequi dolorem.</p><p>Ex iure soluta dolorum porro. Aut qui omnis reprehenderit occaecati sequi sunt quisquam. Placeat eius quos incidunt dolor eum alias magni. Ut omnis porro voluptas ex blanditiis officia mollitia.</p><p>Nulla ab sint qui eligendi. Recusandae et provident doloribus quo. Ea quia facere officia.</p><p>Aspernatur autem rerum perferendis commodi optio et eveniet ex. Mollitia occaecati corporis eligendi aut deserunt adipisci. Labore dolor ut ut sit magni.</p><p>Non repellat neque quisquam rem. Eum eius et reprehenderit at unde.</p><p>Ipsam tenetur cum dolorem placeat labore ipsam dicta animi. Eos culpa recusandae perspiciatis sint consequuntur aliquam magnam architecto. Necessitatibus enim voluptatem saepe culpa dolorem labore. Consequatur sed omnis dignissimos quaerat quo cumque consectetur. Sint et aliquid deserunt quasi officiis pariatur.</p><p>Commodi mollitia id minima voluptatem ducimus reiciendis. Eveniet reiciendis illum ducimus hic nesciunt eaque nobis non. Natus odio est dolor et. Accusantium in est officiis dolorem qui fugit.</p><p>Qui aut veniam dicta iste. Doloremque nulla provident incidunt quas similique. Animi et voluptatem qui facere ipsum. Ducimus in pariatur labore.</p><p>Nihil blanditiis et expedita quis. Quaerat dicta quo voluptas consequatur iusto. Ducimus et perspiciatis veritatis eum itaque corporis quam. Eos rerum vero quidem veritatis et et est.</p><p>Non eaque voluptatem ut ut iure. Pariatur ut sed et id enim molestiae ut est. Et voluptates magnam minus ut at autem sit non.</p>', NULL, '2023-11-03 21:22:54', '2023-11-03 21:22:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Gaiman Leo Tamba', 'kurniawan.galar', 'pranowo.asmianto@example.com', '2023-11-03 21:22:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5BHdM2qzdm', '2023-11-03 21:22:52', '2023-11-03 21:22:52'),
(2, 'Hamima Carla Halimah M.Kom.', 'prayoga.nilam', 'wani62@example.org', '2023-11-03 21:22:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4LoY0SiPRd', '2023-11-03 21:22:52', '2023-11-03 21:22:52'),
(3, 'Atma Simanjuntak', 'damanik.ida', 'fjailani@example.net', '2023-11-03 21:22:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lBSBVC7eB2', '2023-11-03 21:22:52', '2023-11-03 21:22:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

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
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
