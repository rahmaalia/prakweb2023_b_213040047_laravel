-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 03, 2023 at 04:41 AM
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
(1, ' Web Programming', 'web-programming', '2023-11-24 03:18:23', '2023-11-24 03:18:23'),
(2, ' Web Design', 'web-design', '2023-11-24 03:18:23', '2023-11-24 03:18:23'),
(3, ' Personal', 'personal', '2023-11-24 03:18:23', '2023-11-24 03:18:23');

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
(6, '2023_11_03_041351_create_categories_table', 1),
(7, '2023_11_25_150848_add_is_admin_in_users_table', 2);

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
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Commodi vel fuga deserunt sit quas eum at exercitationem harum.', 'nisi-vitae-numquam-dignissimos-sapiente-enim-dicta-quia', NULL, 'At similique assumenda tenetur similique non eligendi. Quidem debitis temporibus quia ut aut voluptas. Aliquam sed sed temporibus. Aut labore sunt rem ut et voluptatem assumenda.', '<p>Ipsum ut et dolorem sunt laudantium. Error sit eos occaecati optio omnis atque. Non ad placeat exercitationem reiciendis id. Ipsa qui sed et hic fugiat quia ipsa.</p><p>Pariatur quia sunt voluptas enim aliquid sunt sed. Rerum et asperiores aut qui aperiam suscipit voluptatem. Tempora perferendis quidem recusandae dicta assumenda delectus mollitia. Consequuntur ea atque ipsum aut non.</p><p>Dolores aut nobis quaerat itaque. Ut nam deserunt et nulla ex.</p><p>Consectetur quia quia eos at officiis aut ut. Omnis quos aliquid facilis ex veniam. Itaque ullam occaecati in qui quam fugit. Explicabo est expedita ut ut. Aut sit tempora quam consequatur.</p><p>Consequatur sit molestias tempore ex dolores. Enim quia ullam quo est dolorum vel sapiente. Natus provident eaque est dolor exercitationem quidem ducimus.</p><p>Non corporis repellat ut et architecto. Est rerum maxime ut quisquam laudantium sed. Debitis nostrum voluptatibus veniam voluptas. Animi nemo et veritatis sed dolore omnis rerum.</p><p>Voluptatem eum porro accusamus. Libero dolorem ut ut quia qui.</p><p>Omnis sint ut molestias ea natus. Est sed voluptatem saepe fuga atque consequatur officiis. Dolor adipisci recusandae omnis est temporibus ut.</p><p>Dolores quasi natus quis veniam beatae placeat. Distinctio temporibus dolore et minus odio. Et repellendus architecto eligendi quos.</p>', NULL, '2023-11-24 03:18:23', '2023-11-24 03:18:23'),
(2, 2, 1, 'Nihil animi est velit enim ut voluptas saepe.', 'perspiciatis-quis-qui-error-illo-quo-blanditiis-dolorum-sapiente', NULL, 'Dolorem ducimus odit saepe tenetur quasi eligendi saepe. Eum aut pariatur libero amet et architecto. Reiciendis voluptatum fugit dolorum culpa suscipit optio incidunt.', '<p>Voluptas sed perferendis voluptatibus iste rerum dolores. Non error earum veritatis itaque temporibus aut. Sapiente optio totam officia maiores beatae.</p><p>Nam modi occaecati minus architecto consequatur. Voluptas cumque dolores hic sit harum. Id est quos consequatur non dignissimos quas.</p><p>Nemo quo ea nihil sunt. Ullam ea minus totam quo consequatur. Fugiat quia ipsa voluptatem praesentium. Odio vel sit ipsum consectetur deserunt cupiditate aut.</p><p>Velit voluptatum iusto voluptates officiis illum. Laboriosam quasi velit minus. Dolorem deserunt consectetur tempora error enim quasi accusantium. Delectus ea qui fuga earum vero.</p><p>Qui non architecto sunt. Et quia molestias voluptates unde adipisci. Voluptas libero perferendis nam minima debitis. Laudantium et eum adipisci tempore temporibus sed ea.</p><p>Voluptatem qui animi ut quis. Cupiditate optio ea ullam itaque aut omnis dignissimos. Dolorem aut fugiat est eius. Voluptatem dicta rerum mollitia quo quo. Illum quo libero perferendis voluptas.</p><p>Nulla veniam sit voluptates voluptate ad autem quia distinctio. Beatae et esse distinctio praesentium distinctio aut aliquam debitis. Ut eaque quod incidunt dolorum voluptatum deserunt repellendus. Doloremque rerum hic qui consequatur autem pariatur et praesentium. Explicabo perferendis officiis et dolorem deserunt dignissimos quod.</p><p>Nisi occaecati impedit odio id maiores. Ullam eos ut quasi nemo ea magni error. Animi sint optio perspiciatis quidem laudantium nihil accusamus quia. Ab enim quod suscipit velit dolorem ut quo eum.</p><p>Eveniet quia sed consequatur consectetur dolores et. Consequatur assumenda hic eligendi architecto autem et consequuntur. Ea adipisci necessitatibus ex dolorem. Nisi vitae ducimus in.</p><p>Delectus earum eos corporis aut ea nihil. Recusandae non omnis nemo autem voluptates. Deleniti iste et ullam sed culpa.</p>', NULL, '2023-11-24 03:18:23', '2023-11-24 03:18:23'),
(3, 2, 2, 'Adipisci qui a assumenda.', 'quisquam-doloribus-quaerat-qui-quam-cum-repellendus-quasi-sed', NULL, 'Eveniet voluptatem dolor praesentium corporis est vel nam tempora. Est temporibus perspiciatis nihil aut voluptatem corporis. Rem et velit totam fugit. Nemo totam in et eum ipsam atque. Repellat omnis voluptatem atque consequatur.', '<p>Animi omnis architecto nostrum dignissimos sequi mollitia eos ut. Enim quia voluptatum omnis omnis et assumenda molestiae. Molestiae eum quasi iure temporibus ipsam iusto temporibus amet.</p><p>Ea dolor asperiores illum. Omnis non ut ea cupiditate ad quidem. Ut soluta voluptates unde est. Officiis aut culpa sed voluptatem.</p><p>Ut sed magni et nihil nihil eius dolores distinctio. Dolores sint inventore maiores aut veritatis optio quasi. Perspiciatis blanditiis ea hic nulla aspernatur ad veritatis laboriosam.</p><p>Rerum dolores ducimus voluptatem voluptatem. Illum totam accusamus quod consequuntur minus. Possimus veritatis itaque quis delectus inventore. Eligendi saepe quia molestias enim.</p><p>Nostrum sed quisquam ea labore cum. Sint qui nostrum similique ab cupiditate consequatur neque. Iste ea libero illo dicta sed dolorum iusto. At accusamus nisi eaque ut quibusdam.</p><p>Non beatae corporis ex animi. Aspernatur porro veritatis distinctio praesentium deleniti ducimus optio. Nam dolor soluta iure sint.</p>', NULL, '2023-11-24 03:18:23', '2023-11-24 03:18:23'),
(4, 2, 1, 'Aspernatur ipsam temporibus.', 'atque-quia-ut-qui-reiciendis-et-dolorem', NULL, 'Repellendus quas qui tenetur sit. Voluptatem consequatur quo est sed expedita impedit.', '<p>Deserunt consequatur autem reprehenderit voluptatem suscipit. Dolor eum sit unde. Omnis sed ipsam molestiae vel magnam ut repellendus. Labore et ut praesentium consequuntur iure et.</p><p>Voluptatem tenetur excepturi eveniet ut commodi. Facilis sint quas illum quia eveniet. Voluptatem earum excepturi illum fuga quia aliquid eveniet blanditiis.</p><p>Voluptates facilis dolores ex nesciunt voluptas. Est consectetur id itaque similique iste omnis deserunt. Maxime officia itaque ea dolore.</p><p>Dolores porro id veritatis dolore aut voluptates sed. Vel nulla quia placeat autem. Pariatur optio et alias repudiandae modi similique.</p><p>Culpa dolorem est et expedita doloremque qui quibusdam. In repellat at ut soluta. Dolorem ut et unde accusantium laborum.</p><p>Sed rerum aliquid dolor aspernatur earum aut iure. Dolorem accusantium aut nam eos cupiditate excepturi. Quo enim pariatur odit ab incidunt voluptatem.</p><p>Culpa non pariatur explicabo vel dolor. Possimus vel dolor ea. Ducimus optio quod cumque optio architecto.</p><p>Modi fugiat quia rerum at dolor. Qui aut aut distinctio voluptatum sint animi.</p><p>Aut reiciendis modi in modi minima. Laudantium iure ipsum aut repellendus nemo.</p>', NULL, '2023-11-24 03:18:23', '2023-11-24 03:18:23'),
(5, 1, 3, 'Aut enim dignissimos magnam odit tempora.', 'sed-nihil-temporibus-in-qui-et-numquam-rerum-rerum', NULL, 'Aliquid aut ad possimus et impedit sapiente qui enim. Vel nihil ut inventore doloremque aut.', '<p>Tempore quis tenetur laudantium quidem ut pariatur consequuntur. Facilis doloremque ut ab. Eum porro numquam voluptatem dolores ut quasi. Omnis ut tempora est tempora cum optio molestiae minima.</p><p>A maiores perspiciatis in quidem temporibus hic aut. Et corrupti sunt minima suscipit vel quis voluptatum ab. Dolore qui quo eligendi fugit quia.</p><p>Maxime ipsam quae provident ullam quo et modi. Placeat molestiae possimus sapiente quidem itaque omnis corporis. Expedita sapiente distinctio dolorem et nesciunt. Voluptas enim in enim. Ipsum nobis est natus quia nemo ab iusto.</p><p>Porro vitae quia voluptatem quis eius dolore cum. Et voluptas qui a voluptas aut in accusamus ut. Voluptatem nam quidem inventore blanditiis sed at alias minima.</p><p>Aut iure libero explicabo et voluptas natus. Quo odit corporis a nihil vero.</p><p>Est ut itaque cupiditate et. Saepe asperiores molestias veritatis ad quia rem. Ipsa et quisquam voluptatem animi.</p><p>Dolorem laudantium numquam consequatur voluptatem. Consequuntur quo praesentium amet nostrum. Aliquam atque illum eligendi vel temporibus. Possimus sunt sint vel maxime.</p><p>Voluptatum dolorem omnis est quae ut ut fuga. Dolorum excepturi ut sed odit similique iusto minima.</p><p>Praesentium vitae quo sint ex ab. Inventore delectus qui eos nobis velit optio ut. Atque et est adipisci vero quia consequatur quaerat. Impedit esse dolores ex voluptatem.</p>', NULL, '2023-11-24 03:18:23', '2023-11-24 03:18:23'),
(6, 1, 3, 'Molestias aut harum laudantium illum perferendis.', 'provident-dicta-assumenda-amet-blanditiis', NULL, 'Hic necessitatibus sit dolor asperiores omnis. Autem sapiente et velit excepturi in perferendis.', '<p>Est earum impedit quod quae ea suscipit consequatur. Iusto non libero earum similique et qui. Maiores dicta voluptatem expedita veniam incidunt. Dolorem repellat est nihil magni hic.</p><p>Sit temporibus cupiditate maiores veniam. Amet consequuntur et sit nobis et consequatur autem. Incidunt nihil ut placeat quasi quae et earum. Quae nesciunt eveniet voluptatibus magni reiciendis ad aut.</p><p>Tempora quod voluptate distinctio possimus. Voluptate et consequuntur consequuntur officia ipsum magnam.</p><p>Dolores aut ex fugit dicta odit consectetur expedita. Eos est facere eligendi aut fuga incidunt. Ad labore occaecati mollitia illum vitae molestias et.</p><p>Omnis aut quia totam voluptatum nostrum. Debitis voluptatem ab quia amet ex. Quo cupiditate autem neque facere. Optio inventore ratione ea incidunt iusto.</p><p>Dolor tenetur temporibus minus qui. Perspiciatis iste impedit alias officia velit quo corrupti. Modi vel aliquid cum inventore nostrum corrupti. Molestiae et totam labore.</p><p>Laudantium eum tempore et voluptatem. Et eos deleniti est corrupti aut voluptate eos.</p><p>Dignissimos suscipit doloribus voluptas non. Mollitia sint quisquam quos enim aut. Nulla deleniti nisi nesciunt repellendus quis amet. Quaerat odit quia excepturi a vel.</p><p>Perspiciatis illo vero tempora eum odit labore. Animi eaque voluptates aperiam at qui voluptatibus neque. Temporibus eos ea ullam suscipit enim accusantium velit. Esse ad asperiores temporibus aliquid aut rem.</p>', NULL, '2023-11-24 03:18:23', '2023-11-24 03:18:23'),
(7, 1, 3, 'Iusto repudiandae aut fugit reprehenderit asperiores non adipisci.', 'adipisci-ut-similique-minus', NULL, 'Magni aliquam quod sequi et aut neque provident. Autem rem qui dolorem. A repudiandae tempore ex impedit sunt eum cumque.', '<p>Perspiciatis quo ex non eum est doloribus voluptas fugit. Animi vel eveniet at facilis aut in molestiae. Ut corporis eos aspernatur in quo beatae. Et nihil sit quam ea.</p><p>Aut ut vel libero eveniet id. Est aut odio architecto veritatis earum autem velit nam. Error laborum pariatur est nihil voluptatibus. Consequuntur quo placeat et magni consequuntur sunt.</p><p>Debitis quia eos consequatur et. Quia consectetur repudiandae est. Aperiam numquam pariatur eum animi tempore provident. Placeat voluptatem nihil sit velit cum. Autem repellat ad rerum tempore id minima.</p><p>Est sed sunt id libero placeat consequatur eaque illum. Sint nesciunt inventore nesciunt voluptas eos. Ducimus et reprehenderit libero alias dolorum nostrum dolore sed. Voluptate perspiciatis animi ratione architecto sapiente corrupti.</p><p>Totam fuga consequuntur et quasi fugiat. Et labore et earum ut reiciendis et quos maiores. Nisi suscipit rem quia vel ut totam voluptate.</p><p>Rerum deserunt deserunt possimus nobis consequatur. Porro nihil asperiores ut voluptas cumque. Reprehenderit architecto minus id ex.</p><p>Ut omnis vero omnis ratione provident voluptates qui. Velit repellat et sed molestiae sit accusantium. Et sed animi quisquam voluptate voluptatem corrupti.</p><p>Repudiandae doloremque saepe rerum consequatur explicabo. Et aut perspiciatis porro quos ipsa tempore. Cum nemo nulla cumque debitis odio quia et.</p><p>Sed mollitia veritatis et voluptate odit tempora sit. Nihil cupiditate voluptas sapiente. Maxime nihil molestias eum omnis. Ea et reprehenderit laudantium numquam recusandae quidem sint. Quaerat ullam temporibus consequuntur earum cum ea.</p>', NULL, '2023-11-24 03:18:23', '2023-11-24 03:18:23'),
(8, 1, 3, 'Id assumenda dolore consequatur iure.', 'modi-fugiat-ut-qui-iste-cupiditate', NULL, 'Corrupti est doloribus beatae porro ut sint. Eaque magnam tempore dolor sunt. Architecto est ut quae. Aut laborum quibusdam minus eum.', '<p>Ipsum nam vel nostrum voluptatum deleniti. Dolore et voluptatem cupiditate porro non voluptatem est. Ut in quasi ea corporis atque et ut aliquid. Nam dolorem ratione et beatae nam.</p><p>Sit eaque aut delectus repellat esse deserunt quo aut. Et dolorum est ut assumenda. Vel libero voluptatem molestiae.</p><p>Quibusdam amet et dolor ut sed ab et. Et suscipit quasi rerum nam consequatur est est.</p><p>Eveniet pariatur enim omnis quo iusto itaque. Ex voluptas enim eos aspernatur at. Aspernatur excepturi quos et iusto in facere laborum. Quia aut aut ut voluptatem enim.</p><p>Expedita unde dolorum architecto quis minima. Et molestiae facere eos assumenda et ut vel. Esse nostrum saepe quisquam. Corporis modi dicta dolorem doloremque deleniti distinctio dolor.</p><p>Dolor quae ratione officiis tenetur vel. Odit commodi molestiae accusamus quisquam qui. Excepturi possimus quia reprehenderit quod praesentium eveniet omnis.</p><p>Totam adipisci ab reprehenderit ut quibusdam repellat omnis quasi. Aut hic alias ratione et sed quisquam culpa. Laudantium eum quasi libero facilis. Aut ad nobis aliquid.</p><p>Nesciunt repudiandae praesentium earum omnis assumenda officiis necessitatibus laborum. Fuga error dignissimos fugiat nihil dolore. Laborum sint deserunt fugit officia. Quos omnis tempore nostrum officia cupiditate.</p>', NULL, '2023-11-24 03:18:23', '2023-11-24 03:18:23'),
(9, 2, 2, 'Omnis eligendi et.', 'aut-vero-voluptatum-voluptas', NULL, 'Reiciendis perferendis ipsam voluptate fuga. Ut nobis autem et officiis enim quis laboriosam. Vel iure tempora quam tenetur consectetur hic. Eum necessitatibus qui non cumque quas doloremque.', '<p>Dolores molestias deleniti ipsum. Quae accusantium occaecati dolore eos ducimus illum.</p><p>Minus natus nisi qui. Similique adipisci eos molestias iusto nihil. Magni molestiae voluptatem architecto et voluptatem tenetur dolores. Sequi ratione vitae aut.</p><p>Optio unde nobis et corrupti atque assumenda. Perferendis voluptatum voluptates iure deleniti. Est magni quibusdam maiores quasi pariatur nobis.</p><p>Tempore veniam ut quo amet ipsa minima dolor ad. Libero illo repellendus sunt hic. Illum et et autem.</p><p>Minus et voluptatem veritatis rerum exercitationem ducimus. Ab culpa molestiae dolor exercitationem et dolor non. Et aut dolor dolorem doloribus. Corrupti maiores rerum voluptatibus.</p><p>Aut error non minus est earum et. Qui omnis repudiandae autem sequi. Doloremque molestiae harum consequatur. Officia qui dolorem aut autem.</p><p>Necessitatibus facere est hic et eveniet. Aliquam sit assumenda id quasi in vitae et saepe. Exercitationem quos quibusdam sit accusamus ad. Facere eligendi quae illo omnis assumenda maiores.</p>', NULL, '2023-11-24 03:18:23', '2023-11-24 03:18:23'),
(10, 1, 3, 'Omnis reprehenderit autem perspiciatis temporibus inventore laudantium aspernatur.', 'delectus-perspiciatis-aperiam-repellat-tempore-ut-reiciendis-et', NULL, 'Est quis expedita commodi qui eos quos. Ut accusamus consequatur non veniam. In deserunt et quos et. Quibusdam eum dolorum non consequuntur et. Quia voluptatem minus esse dolores id qui dicta.', '<p>Molestiae et earum asperiores hic officiis sit sint. Qui laboriosam esse voluptatibus eos. Et aut voluptatem repellat sequi et nemo hic iste. Tenetur explicabo voluptatem et nobis perferendis sit.</p><p>Pariatur animi ea eligendi porro. Asperiores itaque placeat qui atque dolorum quis consequatur. Necessitatibus magnam voluptates quia recusandae est et dolores. Ea voluptatem molestias et sapiente dolores ad quos dicta.</p><p>Officiis atque vero necessitatibus voluptatibus repudiandae praesentium reiciendis suscipit. Non quia voluptas debitis voluptatum ut nemo quo. Reprehenderit alias error ullam.</p><p>Ullam nam enim quasi voluptatem nisi voluptates. Quas in distinctio deleniti eligendi ipsa rem. Amet ea doloribus odio consectetur labore voluptas.</p><p>Voluptate ratione et recusandae possimus corporis ex. Corporis animi sint vitae voluptatem iste. Occaecati omnis minus iure eveniet.</p><p>Et ut asperiores a nihil iste. Iusto sint aut omnis consectetur qui impedit possimus. Qui sint ut recusandae sint dolor. Sequi fuga autem est ut eligendi ut.</p>', NULL, '2023-11-24 03:18:24', '2023-11-24 03:18:24'),
(11, 2, 1, 'Incidunt sint voluptatem.', 'et-sapiente-eos-sit-doloremque-rerum-laborum-error-sunt', NULL, 'Mollitia ducimus inventore et atque quia. Voluptatibus quas aperiam quam fugiat ea blanditiis sint.', '<p>Eum iure ad dolores exercitationem aut. Magnam et ut ullam non. Odit ut qui eum. Voluptas nulla omnis impedit est non molestiae eligendi enim. Nulla nihil et dolorem quia dicta nobis.</p><p>Est laudantium nobis praesentium quae. Neque ipsum voluptas dolores et.</p><p>Et qui sint quos possimus quos id. Atque tempora tempore eum qui. Qui dolorem sed deleniti rerum accusamus tempora consequatur.</p><p>Eum consequatur et sequi porro nihil veritatis quibusdam. Est dignissimos cupiditate vel et soluta laudantium modi. Dicta non adipisci quibusdam ullam. Dolor atque ut expedita eveniet.</p><p>Error earum aut quia qui architecto sint adipisci. Ullam facilis eligendi accusamus sit sapiente aut non ut. Ut minus reiciendis quo est necessitatibus laudantium omnis. Recusandae laborum officiis harum voluptas fuga perferendis.</p><p>Accusantium repudiandae nihil asperiores error repudiandae ex ipsa harum. Dolorem vero nisi voluptatibus rem numquam ipsam consequuntur voluptas. Possimus qui aut eum exercitationem adipisci nulla.</p><p>Modi omnis dolore doloremque expedita quae veniam placeat. Ut eligendi aliquid dolor illum eos nemo dolorem eligendi. Placeat nulla nihil et natus sunt hic. Est ea provident inventore.</p><p>Et omnis at quas magnam eum accusantium. Veritatis repellendus unde eos. Error et maiores ipsam voluptatem.</p>', NULL, '2023-11-24 03:18:24', '2023-11-24 03:18:24'),
(12, 2, 2, 'Sint aut consequatur.', 'facere-nam-eligendi-quae-amet-dolorum-error', NULL, 'Omnis cum qui iusto et quaerat pariatur. Eaque aut dolore et non doloremque nihil maiores.', '<p>Repellat et voluptas est explicabo. Non pariatur aut qui vitae ratione ipsa ab. Facere nihil numquam dolores fugiat consequatur aperiam. Tempore dolore eius voluptatum quo veritatis ea. Eaque hic occaecati accusamus perspiciatis maxime nisi sunt.</p><p>Temporibus quis sit voluptatem saepe cumque blanditiis. Ea voluptatem occaecati modi sit molestias laudantium. Veniam dolores nesciunt et inventore et autem rerum fugit. Molestiae laudantium minus cupiditate pariatur dolorem dolorem.</p><p>Magnam aut qui officia est. Voluptatem earum consequatur beatae cupiditate. Quis similique dolor nulla eos.</p><p>Aliquam qui earum qui ut ut dignissimos quam. Quidem vel voluptatem harum facere. Quae non sint enim ut sed.</p><p>Quia voluptas et et dicta quaerat qui. Non culpa est quo et et in consequatur. Tempore quidem dolorem eum architecto. Est omnis facilis et nostrum quae placeat ullam.</p>', NULL, '2023-11-24 03:18:24', '2023-11-24 03:18:24'),
(13, 2, 2, 'Architecto eius in explicabo sit sed rerum.', 'qui-optio-et-ex-aut-beatae-nobis-qui-harum', NULL, 'Dolor id illum accusantium quas voluptate sed aut. Qui delectus quidem nostrum eum. Et harum consequuntur quisquam odit suscipit molestias dolorem.', '<p>Delectus eveniet ipsam molestiae corporis. Expedita omnis molestiae non veritatis. Tempore iste veniam explicabo sapiente molestias a.</p><p>Explicabo voluptatibus pariatur inventore nostrum amet repudiandae molestiae. Numquam adipisci non consequuntur iure perspiciatis et ut dolor. Cumque vero nam excepturi sed ipsum sed fugit. Quam qui praesentium tenetur velit voluptatem.</p><p>Nesciunt voluptatibus cumque impedit cumque enim voluptate. Aperiam ex alias est impedit praesentium et ea qui. Rem dolorem quos voluptas delectus magni corrupti. Voluptatem sed cum minus omnis.</p><p>Corrupti consequatur vel velit. Omnis culpa alias est temporibus quia quam. Quaerat laboriosam consequatur et libero quis. Est nulla occaecati nam laboriosam. Dolores officiis aut quidem iure.</p><p>Cupiditate qui dignissimos necessitatibus consequuntur beatae assumenda. Deleniti voluptatem a ab modi non. Omnis vero dolores omnis quam distinctio id. Ex a tempora rerum distinctio voluptas et.</p>', NULL, '2023-11-24 03:18:24', '2023-11-24 03:18:24'),
(14, 2, 2, 'Ea dolor ut quo eos.', 'nihil-nihil-ea-aut-aut-et-itaque', NULL, 'Assumenda praesentium veniam distinctio est deserunt rem cumque optio. Dolorum itaque omnis ut repellat assumenda aspernatur vero. Fugiat laudantium numquam dolores quia nam.', '<p>Asperiores eum atque sunt quae amet molestiae in. Non expedita corrupti a et voluptatem voluptas ab dolorem. Non sint veritatis qui voluptatem placeat. Sed corrupti ut reiciendis qui.</p><p>Vero dolor quia magni omnis laborum ut. Reiciendis dignissimos eos numquam quis.</p><p>Animi corporis magni cumque tempore. Corporis accusamus exercitationem harum eligendi natus. Voluptate quidem et ut rerum et ratione. Non temporibus unde et vero modi ut minus aut.</p><p>Totam reiciendis aliquid nihil qui. Harum ut molestiae perferendis iusto tempora et. Qui quam ut et delectus aut saepe corrupti assumenda. Fugiat quis et modi nisi laudantium ut laborum.</p><p>In sed aut quos unde vitae. Aut accusamus iste dolorem asperiores distinctio et. Qui omnis sint qui beatae velit quasi aut.</p><p>Dolor vitae tenetur neque consequatur. Distinctio at labore ad molestias pariatur ex quam. Quia ea sint nulla dolorum aliquid et.</p><p>Dicta libero fugit velit tenetur sed qui quis. Qui fugiat voluptatem tempora voluptatibus sapiente ut. Labore assumenda nesciunt ducimus odit.</p><p>Eveniet id quidem consectetur recusandae reiciendis maiores est. Est exercitationem architecto enim saepe est ex. Eos repudiandae et beatae dicta veritatis. Laboriosam assumenda error laborum veniam sunt rem eos. Earum temporibus accusantium repudiandae enim reiciendis.</p>', NULL, '2023-11-24 03:18:24', '2023-11-24 03:18:24'),
(15, 2, 1, 'Illo sint cumque et.', 'dolore-eius-earum-ipsa-incidunt-et', NULL, 'Tenetur adipisci dolore ratione est nam provident ea animi. Omnis praesentium dolore est. Voluptatum laboriosam aut quia eaque.', '<p>Aliquid reprehenderit qui incidunt nulla. Enim aspernatur odit sint qui quis perferendis. Maiores quibusdam inventore consectetur dicta. Nesciunt aut nesciunt enim ut nostrum.</p><p>Architecto quidem tempore rerum voluptates. Doloribus blanditiis quaerat eos nihil excepturi vitae sequi. Praesentium eveniet ullam ipsa voluptatem temporibus provident ut. Inventore a ut et temporibus sed rem.</p><p>Qui sunt quibusdam ducimus alias eos consectetur quos error. Debitis exercitationem perferendis quo eos ullam.</p><p>Deleniti assumenda porro eum recusandae voluptas est laudantium. Quibusdam cum aut id ut fugiat ducimus. Ut doloribus et corrupti debitis tenetur. Debitis laboriosam ea libero molestiae rerum est qui. Qui ipsum ipsam voluptas animi voluptates nulla et.</p><p>Consequatur illum consequatur maiores fuga. Sit molestiae autem animi velit cum rerum cumque.</p><p>Molestiae non quisquam labore quidem et deserunt et. Repellat iusto error ea ducimus tenetur. Voluptatem laborum voluptatem maiores.</p><p>Et omnis quia nesciunt ut non est. Aliquid perspiciatis et quia facilis amet omnis eos. Possimus recusandae ipsum quia est suscipit provident aut et. Dolorem laboriosam dolores molestias dolorum est rem explicabo deserunt.</p><p>Illum eum voluptatem earum consequuntur qui repellendus reiciendis et. Nobis porro quia nobis non. Quidem at est sequi qui. Omnis facere atque dolor vitae sunt ut.</p><p>Doloribus sint qui quibusdam quidem ipsa harum quis. Voluptatem nihil nihil accusamus. Ea dolor eaque omnis suscipit cupiditate atque nostrum eos. Ducimus dolore sit quaerat veritatis doloremque fuga.</p><p>Incidunt sed quia non autem ipsam laborum eligendi ab. Illum deleniti hic tempora deserunt voluptate qui. Sunt ea ut excepturi ex.</p>', NULL, '2023-11-24 03:18:24', '2023-11-24 03:18:24'),
(16, 1, 2, 'Ut cumque et voluptatem earum.', 'repellendus-qui-qui-libero-accusantium-enim-odit', NULL, 'Ab architecto adipisci pariatur et id ea ad. Autem facilis eaque ut nemo. Consequuntur veritatis maxime assumenda earum.', '<p>Exercitationem ea et aut ullam asperiores. Reiciendis nihil alias aut eum dolores quia. Aliquam a alias sit placeat ex iusto quia. Magni voluptatem error qui dolorum nihil.</p><p>Omnis dolore saepe unde incidunt. Magni quia ab recusandae et temporibus enim. Nesciunt hic eligendi error harum. Repellendus itaque deserunt nesciunt id quis enim.</p><p>Architecto officia velit quibusdam laborum asperiores. Est sit odit adipisci.</p><p>Ex rerum repellat et consequuntur. Quia mollitia molestias maxime nisi fugit. Minus totam aut voluptas voluptas. Vitae facilis atque quidem quia rerum vero id nam.</p><p>A facere suscipit laboriosam est eum quam. Est totam voluptatem quos distinctio sint sed quia. Eaque laborum ullam sed sint quidem placeat ut est.</p><p>Rerum veniam omnis quas. Aut in est occaecati qui velit.</p>', NULL, '2023-11-24 03:18:24', '2023-11-24 03:18:24'),
(17, 1, 3, 'Ipsum aut.', 'qui-at-quis-aut-autem-labore', NULL, 'Qui rerum et sunt est quas deleniti. Non quaerat et consectetur quia sint. Illo dolor veritatis ea voluptate reprehenderit.', '<p>Ipsam commodi consequatur aliquid veritatis exercitationem sed blanditiis. Laborum aliquam voluptas ut animi fugiat in rerum. Libero sed possimus necessitatibus suscipit et omnis et vel. Sunt eum dolor velit occaecati quo suscipit.</p><p>Dolorem nam qui dolores saepe distinctio. Ad est qui incidunt ad corrupti repudiandae earum. Velit omnis fugit esse omnis sed consequatur accusamus. Ab aut inventore eum deserunt dolor qui excepturi. Sit et consectetur voluptate voluptatibus dolor.</p><p>Tempore error inventore eum officia dolores nesciunt. Facilis eos qui neque deleniti exercitationem minima rerum excepturi. Distinctio consequatur placeat qui voluptatum enim porro qui.</p><p>Ipsam eos ea nobis vitae. Laboriosam distinctio nobis tenetur dolore laborum. Labore et dolor nostrum optio.</p><p>Odio dolore officiis illum. Excepturi at voluptas dolores qui temporibus eum tempore natus.</p><p>Magnam voluptas et molestiae eaque. Occaecati voluptas aperiam voluptatem pariatur dolores. Necessitatibus voluptates quia impedit cumque natus quo ut. Aut eum ea rerum incidunt alias autem in optio.</p><p>Reprehenderit natus sit sed maxime est. Et saepe dolores iste sunt in et. Architecto deserunt quaerat dignissimos architecto quod in dolorem. Quia ut deserunt perspiciatis esse quae quia qui.</p><p>Autem in tempore voluptas et repudiandae ab voluptas. Aut tempore quod omnis et. Animi error saepe et ex ut possimus. Vitae illo maxime ipsa quo tempora et ratione voluptas.</p>', NULL, '2023-11-24 03:18:24', '2023-11-24 03:18:24'),
(18, 1, 2, 'Quod perspiciatis dolores minima qui ad tenetur reiciendis molestiae et.', 'autem-sint-sed-vero-repudiandae', NULL, 'Labore excepturi quas voluptatum. Aut aperiam aliquam perspiciatis exercitationem tempora et nihil ut. Eos maiores quo sint voluptas provident maiores. Temporibus non sit modi aspernatur ea odit.', '<p>Consequuntur minus est accusantium distinctio ut ducimus. Temporibus corporis explicabo non vel ab quo. Unde qui commodi perferendis perferendis exercitationem repellat.</p><p>Sunt tempora dicta cupiditate incidunt reiciendis itaque numquam. Ut neque et officia ea debitis est. Ullam autem odio ipsum harum a inventore. Ea distinctio quia mollitia ea tempora officiis tempora ad.</p><p>Rerum consectetur sit saepe facere nulla magni. Est unde illo tempore ipsam minima in. Quo voluptas tenetur nulla qui illum.</p><p>Qui voluptatem amet corrupti ut voluptatum. Quo similique autem magnam voluptas occaecati. Voluptas modi modi dolor quis commodi accusantium est sed.</p><p>Odio fuga adipisci distinctio. Autem sint perferendis et sapiente est corporis. Cum ut sed optio ut.</p><p>Delectus numquam distinctio et molestiae qui nihil vel consequatur. Mollitia nisi ratione delectus et. Voluptatem dolor fugit voluptatem aperiam accusamus.</p>', NULL, '2023-11-24 03:18:24', '2023-11-24 03:18:24'),
(19, 2, 1, 'Ea in.', 'tempora-dolores-qui-velit-doloribus', NULL, 'Aut repudiandae molestiae consequatur. Soluta saepe doloribus deserunt omnis reiciendis non. Suscipit fuga modi enim esse nihil. Quibusdam nesciunt eligendi et.', '<p>Molestiae eligendi tempore quis adipisci commodi maxime. Ducimus repudiandae hic unde cum eos vero doloremque. Excepturi impedit veniam quidem quasi. Ea est saepe dolor.</p><p>Explicabo et aut deleniti molestiae non autem. Non officiis qui ea odio veniam. Suscipit molestias voluptatem iure et.</p><p>Aliquid laboriosam saepe voluptates qui. Repudiandae consectetur enim velit beatae. Sed ipsa suscipit minima cum.</p><p>Cumque officiis non iusto esse. Velit deleniti voluptas fuga architecto et. Aspernatur debitis beatae non quo sint officiis. Natus minus corrupti molestias accusamus at.</p><p>Id nisi molestiae iure aut qui est dolore consequatur. Labore eos tempora non. Et molestiae atque perferendis qui quo.</p><p>Aut esse sequi omnis itaque vero maxime sapiente. Enim sit dolores quod. Id fuga nam nesciunt omnis. Facere ut hic doloribus quod numquam quo.</p><p>Nesciunt quod aut aut vel soluta assumenda nostrum. Deleniti et quisquam id suscipit. Iusto at dolor sunt necessitatibus earum et nostrum. Quis ut sed consequatur ab sequi laudantium.</p><p>Sit ut ut accusamus harum. Voluptas eum natus reprehenderit facilis magni fugiat. Explicabo animi architecto alias enim quis. Id itaque nobis id illum voluptate.</p><p>Veritatis nulla et fugit sed nihil consequuntur pariatur. Facere praesentium eligendi tempore architecto soluta veniam ullam.</p><p>Et modi aut accusamus dolor culpa quia. Non neque sunt praesentium rerum eum. Asperiores dolorem at dolorem omnis et dolorem. Sint rerum id eum.</p>', NULL, '2023-11-24 03:18:24', '2023-11-24 03:18:24'),
(20, 1, 2, 'Corrupti nihil ab officiis delectus sit id consequuntur id at amet voluptas.', 'et-sit-perspiciatis-eius-autem-eum-incidunt-autem', NULL, 'Earum qui ut voluptas qui et voluptas assumenda voluptatem. Aspernatur assumenda sint sunt alias quibusdam enim et porro. Eligendi odit et reiciendis dolorum.', '<p>Aspernatur necessitatibus quia iste quo fugit id voluptate. Sit quaerat dolore quo ullam. Quia assumenda rerum unde qui magni. Qui odio et dolorem ut quia.</p><p>Eum magni delectus quia quam provident. Quisquam molestiae qui veritatis iste dolore. Nihil id perferendis error similique dolores sint enim. Laudantium sint id nihil.</p><p>Et ea sequi quisquam porro sunt. Sequi quo quisquam esse debitis sunt.</p><p>Et quaerat possimus et commodi modi facilis. Tempore doloribus eaque quo natus. Deserunt facere officia distinctio corrupti qui.</p><p>Tempora est officia totam doloribus qui placeat molestias. Qui aut cum assumenda ut sit et nam. Dolores et et sunt veritatis nihil.</p>', NULL, '2023-11-24 03:18:24', '2023-11-24 03:18:24'),
(21, 1, 1, 'judul baru', 'judul-baru', 'post-image/S9tpXyvDkHosovXJtLllLbe8qlf6pi4C5wsA8Dtb.jpg', 'ini body', '<div>ini body</div>', NULL, '2023-11-24 07:52:20', '2023-11-24 07:52:20'),
(22, 3, 1, 'lo gue end', 'lo-gue-end', 'post-image/Ptxs0rTeccn3aEnlpuw5XrZulPMWXgdfoDvuAkOv.jpg', 'kata gua lu mending diem aja', '<div>kata gua lu mending diem aja</div>', NULL, '2023-11-24 08:03:13', '2023-11-24 08:03:13');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, ' Rahma Aliaputri Efendi', 'rahmaalia', 'rahma@gmail.com', NULL, '$2y$10$dYTkwh6tuS6Q7aquSS2MpuyK6kDRhVM2U782MAt7VgkmkoQzZkMbC', NULL, '2023-11-24 03:18:21', '2023-11-24 03:18:21', 1),
(2, 'Ade Zahra Melani S.Farm', 'nardianto', 'martaka.rahmawati@example.org', '2023-11-24 03:18:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ruoAWWNseN', '2023-11-24 03:18:23', '2023-11-24 03:18:23', 0),
(3, 'Ratih Namaga', 'fujiati.elma', 'chutasoit@example.org', '2023-11-24 03:18:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RHQ6ATC1K5', '2023-11-24 03:18:23', '2023-11-24 03:18:23', 0),
(4, 'Abyasa Narji Hardiansyah S.Pd', 'maryadi.halima', 'luluh03@example.org', '2023-11-24 03:18:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'efdes5kmdE95yJjgrOeCTT1q4m3TeboKq1Tk1sBtB55yAbjUCHoiZUCHbj5M', '2023-11-24 03:18:23', '2023-11-24 03:18:23', 0);

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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
