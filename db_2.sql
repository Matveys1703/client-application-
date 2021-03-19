-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2020 at 02:03 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `actions`
--

CREATE TABLE `actions` (
  `id_action` int(11) NOT NULL,
  `action_name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `actions`
--

INSERT INTO `actions` (`id_action`, `action_name`) VALUES
(1, 'Авторизация'),
(2, 'Деавторизация'),
(3, 'Удаление пользователя'),
(4, 'Добавление пользователя'),
(5, 'Изменение данных'),
(6, 'Сброс пароля');

-- --------------------------------------------------------

--
-- Table structure for table `akcii/skidki`
--

CREATE TABLE `akcii/skidki` (
  `ID_Akcii_Skidki` int(11) NOT NULL,
  `Naimenovanye` longtext DEFAULT NULL,
  `Usloviya` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `akcii/skidki`
--

INSERT INTO `akcii/skidki` (`ID_Akcii_Skidki`, `Naimenovanye`, `Usloviya`) VALUES
(1, 'Купи 4 + 1 в подарок', '5 литров масла по цене 4'),
(2, 'Время выбирать погоду!', 'Скидка 10% и шиномонтаж в ПОДАРОК при покупке шин Nokian!'),
(3, 'Кешбэк 15%', 'При покупке моторного масла Genesis - кешбэк 15%.'),
(4, 'Бесплатный шиномонтаж', 'Шиномонтаж в подарок при покупке комплекта шин Cordiant\r\nПри покупке 4-х шин Continental (R16+) получи шиномонтаж бесплатно!');

-- --------------------------------------------------------

--
-- Table structure for table `dolj`
--

CREATE TABLE `dolj` (
  `ID_Dolj` int(11) NOT NULL,
  `Naimenovanie` varchar(20) DEFAULT NULL,
  `Zarplata` decimal(19,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dolj`
--

INSERT INTO `dolj` (`ID_Dolj`, `Naimenovanie`, `Zarplata`) VALUES
(1, 'Продавец-консультант', '30000.0000'),
(2, 'Директор', '50000.0000'),
(3, 'Уборщик', '19000.0000'),
(4, 'Менеджер', '35000.0000');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id_employee` int(11) NOT NULL,
  `ID_Nakladnoi` int(11) DEFAULT 0,
  `ID_Postavshika` int(11) DEFAULT 0,
  `ID_Pola` int(11) DEFAULT 0,
  `Last_Name` varchar(255) DEFAULT NULL,
  `First_Name` varchar(64) NOT NULL,
  `Mid_Name` varchar(64) DEFAULT NULL,
  `Number phone` varchar(11) DEFAULT NULL,
  `Pasport Dannye` varchar(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id_employee`, `ID_Nakladnoi`, `ID_Postavshika`, `ID_Pola`, `Last_Name`, `First_Name`, `Mid_Name`, `Number phone`, `Pasport Dannye`) VALUES
(1, 2, 2, 2, 'Каримова', 'Кристи', 'Крабс', '88005553535', '4518 675923'),
(2, 3, 3, 2, 'Матвеева', 'Софи', 'Кофи', '89237564927', '4517 987234');

-- --------------------------------------------------------

--
-- Table structure for table `favourites_tab`
--

CREATE TABLE `favourites_tab` (
  `id_favourites_tab` int(11) NOT NULL,
  `user_login` varchar(30) NOT NULL,
  `tab_name` varchar(30) NOT NULL,
  `visit_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `favourites_tab`
--

INSERT INTO `favourites_tab` (`id_favourites_tab`, `user_login`, `tab_name`, `visit_count`) VALUES
(20, 'Matveeva.io', 'Users', 23),
(21, 'Matveeva.io', 'Requests', 19),
(22, 'Matveeva.io', 'FavouritesTabs', 22),
(23, 'Karimova', 'Account', 19),
(24, 'Karimova', 'FavouritesTabs', 3),
(25, 'Matveeva.io', 'Actions', 4),
(26, 'Matveeva.io', 'Akcii/skidki', 1),
(27, 'Matveeva.io', 'Dolj', 1),
(28, 'Matveeva.io', 'Employees', 1),
(29, 'Matveeva.io', 'Groups', 2),
(30, 'Matveeva.io', 'KategoriyaPostavshika', 6),
(31, 'Matveeva.io', 'MenedjerMagazina', 2),
(32, 'Matveeva.io', 'ModelZapchasti', 1),
(33, 'Matveeva.io', 'Nakladnaya', 2),
(34, 'Matveeva.io', 'Partii', 1),
(35, 'Matveeva.io', 'Pol', 1),
(36, 'Matveeva.io', 'Postavshik', 1),
(37, 'Matveeva.io', 'Prodaja', 1),
(38, 'Matveeva.io', 'Proizvoditel', 1),
(39, 'Matveeva.io', 'Sklad', 1),
(40, 'Matveeva.io', 'SwitchboardItems', 2),
(41, 'Matveeva.io', 'Trudoustroistvo', 1),
(42, 'Matveeva.io', 'Zakazchik', 3),
(43, 'Matveeva.io', 'Zapchasti', 1);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id_group` int(11) NOT NULL,
  `group_name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id_group`, `group_name`) VALUES
(1, 'Администратор'),
(2, 'Пользователь');

-- --------------------------------------------------------

--
-- Table structure for table `kategoriya_postavshika`
--

CREATE TABLE `kategoriya_postavshika` (
  `ID_Kategorii_Postavshika` varchar(18) NOT NULL,
  `Naimenovanie` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kategoriya_postavshika`
--

INSERT INTO `kategoriya_postavshika` (`ID_Kategorii_Postavshika`, `Naimenovanie`) VALUES
('1', 'Одобренные поставщики'),
('2', 'Заключение договора возможно'),
('3', 'Заключение договора невозможно'),
('4', 'Потенциальные');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id_log` int(11) NOT NULL,
  `id_action` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `log_datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id_log`, `id_action`, `id_user`, `log_datetime`) VALUES
(49, 1, 3, '2020-11-04 23:16:16'),
(50, 1, 3, '2020-11-04 23:19:02'),
(51, 2, 3, '2020-11-04 23:19:02'),
(52, 3, 3, '2020-11-04 23:19:02'),
(53, 4, 3, '2020-11-04 23:19:02'),
(54, 5, 3, '2020-11-04 23:19:02'),
(55, 1, 3, '2020-11-04 23:20:02'),
(56, 1, 3, '2020-11-08 14:16:35'),
(57, 1, 3, '2020-11-08 14:17:48'),
(58, 2, 3, '2020-11-08 14:17:48'),
(59, 3, 3, '2020-11-08 14:17:48'),
(60, 4, 3, '2020-11-08 14:17:48'),
(61, 5, 3, '2020-11-08 14:17:48'),
(62, 1, 3, '2020-11-08 14:17:51'),
(63, 2, 3, '2020-11-08 14:17:51'),
(64, 3, 3, '2020-11-08 14:17:51'),
(65, 4, 3, '2020-11-08 14:17:51'),
(66, 5, 3, '2020-11-08 14:17:51'),
(67, 1, 3, '2020-12-07 08:20:04'),
(68, 1, 3, '2020-12-07 08:24:54'),
(69, 1, 3, '2020-12-07 08:25:42'),
(70, 1, 3, '2020-12-07 08:26:32'),
(71, 1, 3, '2020-12-07 09:12:43'),
(72, 1, 3, '2020-12-07 10:02:32'),
(73, 1, 3, '2020-12-07 10:04:16'),
(74, 1, 3, '2020-12-07 10:11:34'),
(75, 1, 3, '2020-12-07 10:12:39'),
(76, 1, 3, '2020-12-07 11:25:11'),
(77, 1, 3, '2020-12-07 11:32:21'),
(78, 1, 3, '2020-12-07 11:33:40'),
(79, 1, 3, '2020-12-07 12:09:48'),
(80, 1, 3, '2020-12-07 12:11:00'),
(81, 1, 3, '2020-12-07 12:40:39'),
(82, 1, 3, '2020-12-07 12:55:18'),
(83, 1, 3, '2020-12-07 12:56:30'),
(84, 1, 3, '2020-12-07 12:58:04'),
(85, 1, 3, '2020-12-07 12:59:06'),
(86, 1, 3, '2020-12-07 12:59:56'),
(87, 1, 3, '2020-12-07 13:07:50'),
(88, 1, 3, '2020-12-07 13:12:11'),
(89, 1, 3, '2020-12-07 13:13:08'),
(90, 1, 3, '2020-12-07 13:21:18'),
(91, 1, 3, '2020-12-07 13:24:08'),
(92, 1, 3, '2020-12-07 13:49:57'),
(93, 1, 3, '2020-12-08 08:20:47'),
(94, 1, 3, '2020-12-08 08:56:50'),
(95, 1, 3, '2020-12-08 09:01:28'),
(96, 1, 3, '2020-12-08 09:29:30'),
(97, 1, 3, '2020-12-08 09:30:49'),
(98, 1, 3, '2020-12-08 09:31:30'),
(99, 1, 3, '2020-12-08 09:34:16'),
(100, 1, 3, '2020-12-08 09:36:19'),
(101, 1, 3, '2020-12-08 09:37:50'),
(102, 1, 3, '2020-12-08 09:38:34'),
(103, 1, 3, '2020-12-08 09:39:40'),
(104, 1, 3, '2020-12-08 10:38:01'),
(105, 1, 4, '2020-12-08 11:27:47'),
(106, 1, 3, '2020-12-08 12:04:02'),
(107, 1, 3, '2020-12-08 14:37:09'),
(108, 1, 4, '2020-12-09 15:02:58'),
(109, 1, 3, '2020-12-09 15:16:38'),
(110, 1, 4, '2020-12-09 15:39:24'),
(111, 1, 3, '2020-12-09 15:48:38'),
(112, 1, 4, '2020-12-09 16:31:41'),
(113, 1, 3, '2020-12-09 16:40:52'),
(114, 1, 4, '2020-12-09 17:06:18'),
(115, 1, 3, '2020-12-09 17:56:51'),
(116, 1, 3, '2020-12-09 19:37:20');

-- --------------------------------------------------------

--
-- Table structure for table `menedjer_magazina`
--

CREATE TABLE `menedjer_magazina` (
  `ID_Menedjera_magazina` int(11) NOT NULL,
  `FIO` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menedjer_magazina`
--

INSERT INTO `menedjer_magazina` (`ID_Menedjera_magazina`, `FIO`) VALUES
(1, 'Петров Г.Л.'),
(2, 'Иванов Д.О.'),
(3, 'Сидоров П.Р.'),
(4, 'Леонов А.И.');

-- --------------------------------------------------------

--
-- Table structure for table `model_zapchasti`
--

CREATE TABLE `model_zapchasti` (
  `ID_Modeli_Zapchasti` int(11) NOT NULL,
  `Naimenovanie` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `model_zapchasti`
--

INSERT INTO `model_zapchasti` (`ID_Modeli_Zapchasti`, `Naimenovanie`) VALUES
(1, 'Двигатель'),
(2, 'Шина'),
(3, 'Шестеренка'),
(4, 'Масло');

-- --------------------------------------------------------

--
-- Table structure for table `nakladnaya`
--

CREATE TABLE `nakladnaya` (
  `ID_Nakladnoi` int(11) NOT NULL DEFAULT 0,
  `Number nakladnoi` int(11) DEFAULT 0,
  `Data` datetime DEFAULT NULL,
  `ID_Postavshika` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nakladnaya`
--

INSERT INTO `nakladnaya` (`ID_Nakladnoi`, `Number nakladnoi`, `Data`, `ID_Postavshika`) VALUES
(1, 567, '2020-05-05 00:00:00', 1),
(2, 234, '2020-06-27 00:00:00', 2),
(3, 594, '2020-03-04 00:00:00', 3),
(4, 93, '2020-08-15 00:00:00', 4);

-- --------------------------------------------------------

--
-- Table structure for table `partii`
--

CREATE TABLE `partii` (
  `ID_Partii` int(11) NOT NULL,
  `ID_Postavshika` int(11) DEFAULT NULL,
  `Number partii` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `partii`
--

INSERT INTO `partii` (`ID_Partii`, `ID_Postavshika`, `Number partii`) VALUES
(1, 1, 440),
(2, 2, 280),
(3, 3, 399),
(4, 4, 88);

-- --------------------------------------------------------

--
-- Table structure for table `pol`
--

CREATE TABLE `pol` (
  `ID_Pola` int(11) NOT NULL,
  `Naimenovanie` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pol`
--

INSERT INTO `pol` (`ID_Pola`, `Naimenovanie`) VALUES
(1, 'Мужской'),
(2, 'Женский');

-- --------------------------------------------------------

--
-- Table structure for table `postavshik`
--

CREATE TABLE `postavshik` (
  `ID_Postavshika` int(11) NOT NULL,
  `Number` varchar(11) DEFAULT NULL,
  `Website` varchar(20) DEFAULT NULL,
  `ID_Pesonala` int(11) DEFAULT NULL,
  `ID_Proizvoditelya` int(11) DEFAULT NULL,
  `ID_Kategorii_Postavshika` varchar(18) DEFAULT NULL,
  `ID_Menedjera_magazina` int(11) DEFAULT NULL,
  `ID_Partii` int(11) DEFAULT 0,
  `ID_Nakladnoi` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `postavshik`
--

INSERT INTO `postavshik` (`ID_Postavshika`, `Number`, `Website`, `ID_Pesonala`, `ID_Proizvoditelya`, `ID_Kategorii_Postavshika`, `ID_Menedjera_magazina`, `ID_Partii`, `ID_Nakladnoi`) VALUES
(1, '89238759345', 'postavshhiki.ru', 1, 1, '1', 1, 1, 1),
(2, '89231472374', 'Autorus.ru', 2, 2, '2', 2, 2, 2),
(3, '89213245433', '24zap.ru', 3, 3, '3', 3, 3, 3),
(4, '89436272734', 'Alluniparts.ru', 4, 4, '4', 4, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `prodaja`
--

CREATE TABLE `prodaja` (
  `Kolichestvo` int(11) DEFAULT NULL,
  `Price` decimal(19,4) DEFAULT NULL,
  `Summa` decimal(19,4) DEFAULT NULL,
  `Data` datetime DEFAULT NULL,
  `ID_Prodaji` int(11) NOT NULL,
  `ID_Zakazchika` int(11) DEFAULT NULL,
  `ID_Zapchasti` int(11) DEFAULT NULL,
  `ID_Akcii_Skidki` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prodaja`
--

INSERT INTO `prodaja` (`Kolichestvo`, `Price`, `Summa`, `Data`, `ID_Prodaji`, `ID_Zakazchika`, `ID_Zapchasti`, `ID_Akcii_Skidki`) VALUES
(3, '2000.0000', '6000.0000', '2020-05-05 00:00:00', 1, 1, 1, 1),
(2, '3000.0000', '6000.0000', '2020-05-03 00:00:00', 2, 2, 2, 2),
(5, '2500.0000', '12500.0000', '2020-03-11 00:00:00', 3, 3, 3, 3),
(1, '560.0000', '560.0000', '2020-03-07 00:00:00', 4, 4, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `proizvoditel`
--

CREATE TABLE `proizvoditel` (
  `ID_Proizvoditelya` int(11) NOT NULL,
  `Number` varchar(11) DEFAULT NULL,
  `Website` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `proizvoditel`
--

INSERT INTO `proizvoditel` (`ID_Proizvoditelya`, `Number`, `Website`) VALUES
(1, '89776670876', 'https://avto.pro/'),
(2, '88953288800', 'autowelt.ru'),
(3, '89754385337', 'drive2.ru'),
(4, '89156458766', 'parts.auto.ru');

-- --------------------------------------------------------

--
-- Table structure for table `reset_request`
--

CREATE TABLE `reset_request` (
  `id_request` int(11) NOT NULL,
  `id_employee` int(11) NOT NULL,
  `date` varchar(20) NOT NULL,
  `isApproved` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reset_request`
--

INSERT INTO `reset_request` (`id_request`, `id_employee`, `date`, `isApproved`) VALUES
(4, 2, '07.12.2020 12:44:04', 'expired'),
(5, 2, '10.12.2020 12:46:00', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `sklad`
--

CREATE TABLE `sklad` (
  `Kolichestvo` int(11) DEFAULT NULL,
  `ID_Partii` int(11) DEFAULT NULL,
  `ID_Sklada` int(11) NOT NULL,
  `ID_Pesonala` int(11) DEFAULT NULL,
  `ID_Nakladnoi` int(11) DEFAULT NULL,
  `ID_Postavshika` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sklad`
--

INSERT INTO `sklad` (`Kolichestvo`, `ID_Partii`, `ID_Sklada`, `ID_Pesonala`, `ID_Nakladnoi`, `ID_Postavshika`) VALUES
(5000, 1, 1, 1, 1, 1),
(2900, 2, 2, 2, 2, 2),
(480, 3, 3, 3, 3, 3),
(1500, 4, 4, 4, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `switchboard_items`
--

CREATE TABLE `switchboard_items` (
  `SwitchboardID` int(11) NOT NULL,
  `ItemNumber` int(11) NOT NULL DEFAULT 0,
  `ItemText` varchar(255) DEFAULT NULL,
  `Command` int(11) DEFAULT NULL,
  `Argument` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `switchboard_items`
--

INSERT INTO `switchboard_items` (`SwitchboardID`, `ItemNumber`, `ItemText`, `Command`, `Argument`) VALUES
(18, 0, 'Главная кнопочная форма', 0, 'По умолчанию'),
(18, 1, 'Акции', 7, 'Акции'),
(19, 0, 'Акции', 0, NULL),
(19, 1, 'Акции', 7, 'Акции');

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id_token` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `token` varchar(64) NOT NULL,
  `token_datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  `deactivated` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id_token`, `id_user`, `token`, `token_datetime`, `deactivated`) VALUES
(1, 1, 'SP2YCY5XZWJG1DA2PSLE3WVU0T3OJLZYH8PMIWTS2TPI0DUIMA0RQIN53H8S5RNO', '2020-10-04 18:10:22', 1),
(2, 1, '87NVHAMCMX4ZP75L0169QOM14PGPHZOUDGLZ30E80XYYFKA5WXGRF2HTUV11475X', '2020-10-07 12:40:40', 0),
(3, 1, 'P5XC9OXXH6YSKUEYY0R0S0OQQZI1WZLRK04MOH38X0VXSOGKJYA82HGZRGWJG5BR', '2020-10-07 15:44:07', 0),
(4, 3, 'C4XRMK2UI0EIC9E9BYX6X8VOY5UHYHJCI0UO0VYQYY91SY3VW66XMD0EII2QZU5A', '2020-10-25 19:39:03', 0),
(6, 3, 'UXILOVKVIO1UB3O6JFG4E1CV1P19SQSJO30ADG6DY2MX6HW6MIVCJ4W3UXU94KC2', '2020-11-04 11:41:09', 0),
(7, 3, 'V4SJVC6M65ZLY3AEYYF4NPUF3T817ETYQQVA5WYX6FIR0Z35FKRTI5GFKNPBEFP1', '2020-11-04 15:51:12', 0),
(8, 3, 'TQOMFXJSW0ZA3EM3PL7OJX2R5S9HP6S8EHRT9H905LEH9018U0UY5NH5Y7QWXCDZ', '2020-11-04 16:38:37', 0),
(9, 3, 'ICYFXDWVPH5J6ZY98SJ0SCBR7FM6UFR64EVYYJ5PQTH9LIV7LIXW4GOGAHIS00BJ', '2020-11-04 16:39:26', 0),
(10, 3, '2KVC1F8R8YQ2SI8S08ABAJGPV97XUNPE6HOSYOTCLR55ZVNB1GLAAF1TEGR2HK6V', '2020-11-04 17:39:32', 0),
(11, 3, '18SACY0S9Z8R1871X1292D3SEXUMTNVQ20N83ILAISCTXU4T82P117DYEA5PEO8V', '2020-11-04 17:40:48', 0),
(12, 3, '5U1UUIZK0F0XFSDY0K96COK1C4BO4SNY1DYND2499TX9G9O3WSU1XRVRJAS0HLQH', '2020-11-04 17:41:36', 0),
(13, 3, 'ZZI4SLMDR2QBMIBULA60VRYA7CGKTLM3WH23S4P1WB75GL4MLYQKZCKIBI7QECTG', '2020-11-04 18:34:29', 0),
(14, 3, '1T1HBDEI7NRL8H7N1W8B4LR034V3L3JA5YAYNY7ASL3RNZAVUBB0EZ9QBANGRK7E', '2020-11-04 18:38:01', 0),
(15, 3, 'W29VDTY1TYSLHPDPTZSN67GCFN9ACNJ8VNYNUESOXZHIZZIHGMNOXLAZW6PZTYYG', '2020-11-04 18:39:16', 0),
(16, 3, '5TOAD1JDZTF0Z2S246GVHYBMYPY9U7GTU35TTK0UEH190YIS05JUFC8HRCLYDJT2', '2020-11-04 18:40:10', 0),
(17, 3, 'LSVWNI88E0EOEA2YE0LAMNA8R1K13H49S1JU7J6YWP8UHJZE0G87A3F8SWFW7GF7', '2020-11-04 18:40:56', 0),
(18, 3, '4P8FUIHKF91FCLA8YA33JRMXEVDYCU835RORXOI6BUE7SAIUISJ3BIHNDLB8ETHV', '2020-11-04 18:44:32', 0),
(19, 3, 'SEF1TVGA1R58KFEXQ8SYA7WK8ZV1JRT27CEJ8XZN82PGBH4IMILLRH0US4239O1J', '2020-11-04 18:57:07', 0),
(20, 3, 'UJ41RL4TBR34MU4E3S0Z8OC1YIS9Q3LSWN9Q4Y2305Q6UXFCBTKJQ95GGDCI25CI', '2020-11-04 18:58:52', 0),
(21, 3, 'IAMDUTFFRNKG72HI2GTYMYJH3HXIJBN8XSZLISK2D8HS4100G4ZHV1GU1FJN575P', '2020-11-04 20:09:59', 0),
(22, 3, '0EX6BTMWFTZZUX3TIFPXB5IKT0DSGGPDLJH8WXZQ8F7OZW8OA8Z2PCY46MMKQ3Q8', '2020-11-04 20:12:54', 0),
(23, 3, 'LTLL5O4AA2NVIYHTZ3O522Q4IGW7SR34P3S4SB1QF4JQESL6EC6D8ADTCRCY26RT', '2020-11-04 20:22:25', 0),
(24, 3, 'Z1IS27ZTKAXMMZ6JC5LBH82NAQ8H5IEFSX7JEBJFXKCWSYAZL35QDAJ084RM8SXB', '2020-11-04 22:48:54', 0),
(25, 3, '7JYJ9QWICB6HBW6QE29730U0DHDOVWSGR9DTIL1DQSGMTAED2VRCDN8GY7F2MHWQ', '2020-11-04 22:52:28', 0),
(26, 3, 'FLDGYNJCW08P442NMH5L43GCINYQ5X6BMRP4DRZALNB2VVHRV5YFXY3LEA7LY3G8', '2020-11-04 23:05:00', 0),
(27, 3, '804O6OBHB6FVBV371H1BDGSM2BBSFE54UC7O9BFTMR12MC32T52EEBW1IRV4MTC7', '2020-11-04 23:16:16', 0),
(28, 3, 'KHGTB0JF8YAMXWYACHDJSUS2WYX4V34MRVH58PGCUHD5J5L0CJV5PJZZZN7NDOUF', '2020-11-04 23:20:02', 0),
(29, 3, '7UXULCHXM0H3T8J5ZJ2WIZV55RFURZJ59C94PCLN3LTQSUMZP6G249DH81Z47WGX', '2020-11-08 14:16:35', 0),
(30, 3, 'Q7XCC23VT5ET42RM2B424Z4YQ6U7766N7FO4OQIWWI6QZRH1TL10UTG1D8WGH6YX', '2020-12-07 08:20:04', 0),
(31, 3, 'YCCV20999H2QHV0EGGQGBHA81ODEEQUJPIGP97Q7P40JLR4JEYJJJOXRBD3NW44S', '2020-12-07 08:24:54', 0),
(32, 3, 'YDLHVW7632T3MGDLKUBLJ7W9RP2XR1YHMX750LJNTG2R67RPETTKEGH1QL0G4KOC', '2020-12-07 08:25:42', 0),
(33, 3, 'OLRD87218OK6Q1NMZVI3Y533BA76W9R9T08OB6HM6IF35TVH6DR34MITRXB8A6E9', '2020-12-07 08:26:32', 0),
(34, 3, '6SY0U65EJOTISNSJ4O6CBN81XML1DI6UTWA6D9J3VQ0QM0SOVWACIEDTT6CIVEAB', '2020-12-07 09:12:43', 0),
(35, 3, '2WGE8HK3NUYBXNSCVVRBQZXIQ2Z8JMQJOO1VR862FNB20T12XSND277D88XFSLUA', '2020-12-07 10:02:32', 0),
(36, 3, 'OLFO63ZS4YXAVRYZID2YTEYKATX5LHGBGREYGUGHLHIF8A247BEEG68KW5NNF4GW', '2020-12-07 10:04:16', 0),
(37, 3, 'D6MFAJEM8268LF36CJDQ0H6E7SKK3H5J4078RFE0HNSJ7F8UJMQGOZ46AHHS93T1', '2020-12-07 10:11:34', 0),
(38, 3, 'ZWI6A9O3W3ONUD7PI85Z4G3QEYBI3ZCLG9SJVXWZEAK5Z4365BW8CEUS322L8FA6', '2020-12-07 10:12:39', 0),
(39, 3, '9FF35RBADX88JVVF1PQ0CRS3KII6FNQMIJGRS6PFIAZUVQTKS6QYPCXSWLTWJF40', '2020-12-07 11:25:11', 0),
(40, 3, 'UAXQNFB74G7H691IAJB178YDDZQC8N6TYXS2V96VP7YTUSU839GPDU9WMUNXY88R', '2020-12-07 11:32:21', 0),
(41, 3, '2BXLESRQ48A2PKZ07GCDLRUBKPXLP8GNB7G5FX4X83SWRKP21TIALQUKRVBY5GA6', '2020-12-07 11:33:40', 0),
(42, 3, 'TL483CYUC18LE6KDKT8OJ7I4CVX9MJL2JYB4HD5CLW3PA00LDP4NKLYVD95IPYI3', '2020-12-07 12:09:48', 0),
(43, 3, 'OK07DDG2VSJPK7K79VDLXGQAF0UA4FCQICNZBPBCKA3PA9MREW4PJ1MI402MTF7P', '2020-12-07 12:11:00', 0),
(44, 3, 'UR7HZ4FLB70SJ3CZOWH00Q5FPGSYXC5EVQSO0I2NN17RNYXXYY0IZIBEW12TLQY8', '2020-12-07 12:40:39', 0),
(45, 3, '21SRDCUP6LJNWUN5SGCPOS248PNOU0XQPSRBBHHTYD3MO6EHV056SLUJ9YTXZG4F', '2020-12-07 12:55:18', 0),
(46, 3, 'P5922660FRICY6AAUAK9W7O0DL4THUWMMUNZWEC1B9WC5IBT5JWJZA3SQIYRCMSV', '2020-12-07 12:56:30', 0),
(47, 3, 'AEN114NMYGKWQZ976D8E5GVP74PHQH622B6M56CPZJNTYGRI0Y0GE013S746PF6Q', '2020-12-07 12:58:04', 0),
(48, 3, 'DN8FMCPRCJG0RTGWYS4II8T30VEPGA3DYQYPC9O8QOIAXRGFTDUB54RE4EP08ALC', '2020-12-07 12:59:06', 0),
(49, 3, 'OTGKZW1EWMF490XKENTAY0F7NL5ZHT0N5FG5EUX3MHWMJCYMK9LAHYHYNI7N0C7D', '2020-12-07 12:59:56', 0),
(50, 3, 'BL20SU60FJKSD90JGABJE65X6WWUB7D0TMCNWZPCSDPSISS7UI1NMAQFPF467LYH', '2020-12-07 13:07:50', 0),
(51, 3, 'ZUX76DZI4QID8XUFM2E8FQNWETR8CQP23BOLQJDEA431ZLSAA5W2HWRIGB2MW0GN', '2020-12-07 13:12:11', 0),
(52, 3, 'I3DN4WFQ739BZFYNVRETYY1D33OBZNMR9MP5OBB2MHM847O6FNHI43JUB9TBID0U', '2020-12-07 13:13:08', 0),
(53, 3, 'SLQT40MYX2OJYYQBL66KTUZBVE4JH9GV268LN3EY1TL9NPIBGYLBO687VO8Z6DRY', '2020-12-07 13:21:18', 0),
(54, 3, 'OHMY6C1SV3KW15D1B9C6XT3RX6J5BHT9ZF3O457L885GG3ACMUKL0QP5N5A925QO', '2020-12-07 13:24:08', 0),
(55, 3, 'B8SISJUHTKSJC1R3ENOV8SWTNCQZTPVO3LN47IKFX9616IJ8J0S90BQSL84P25YE', '2020-12-07 13:49:57', 0),
(56, 3, '680PIRZL4XPLWVXG08Y7EQINOP54TP00T3BKX6I6V60OBMXMW3KVUI3P0MB3W51P', '2020-12-08 08:20:47', 0),
(57, 3, 'PU5AWNQJ6GXUW1FNZ5OFAVYFBJ2IT88XAV501SPMGVHTEZ14XJX0U7A3509NUIZ8', '2020-12-08 08:56:50', 0),
(58, 3, 'PE5YWK0VZGUJY75ENMJCDALRS6EA5SU3KW3HMXMZFYVSI3L666RZE2PP3OG0G00H', '2020-12-08 09:01:28', 0),
(59, 3, 'FZBBT1SXEKD9S4RJRCEKCHLU7DT8D7YGVTTEBO5M8HDZUCJGR8REAYM8NREPHUUG', '2020-12-08 09:29:30', 0),
(60, 3, 'UEG3P6UOSCMJBSJHYBHPJQFX97XBB11KC812BMWDBEW8RRDHFV60NFZE9S4RJSM1', '2020-12-08 09:30:49', 0),
(61, 3, 'ZW0F5S8PRTJGVEUE5LYQDBPID12U3IG0D15XUCJERYHNR6Y98SIJ7OZXGSBEZOVI', '2020-12-08 09:31:30', 0),
(62, 3, '4LI1RKMDIRFZ4POBGW7AWEFA7JCUCZ939DBRBLIQGSX4ZYHB2U4DVKRZGI3IH2AS', '2020-12-08 09:34:16', 0),
(63, 3, 'VVNU4MI6O6QTCN8GROYJLD1IPOV5UHAYSUFY5MHW9AEDQ9Q9SB681WIR4EFQ1NLH', '2020-12-08 09:36:19', 0),
(64, 3, 'L7WCL9YDJMT6QKLW2VZMKLBFUFJTV2ZGLM252UYD4N8X42TG1G7U85WA5QRG0ERR', '2020-12-08 09:37:50', 0),
(65, 3, 'NUHB4N3N4DCMEMWU8Z85VASTEM918J1KEPUATCM8ZS8JIY4VC5BCTUUMBY7SOBOU', '2020-12-08 09:38:34', 0),
(66, 3, 'HLUGEDGQTQDX700A5BRQ2OBVCNQ8GSFYT216SAQL7UETFGU6S3QV9KM2K8D0WIJB', '2020-12-08 09:39:40', 0),
(67, 3, '5W98GP77ZN6AM6BXEOAON3TJBI65PS5CLO5DUQ183IQA1US9EABV02ACD068SBSH', '2020-12-08 10:38:01', 0),
(68, 4, 'ZO8LA674B50W3M9DNS1MODSZ6QW3VF77WQVZYWNTPUNNLA11VAFK2J9V5IPUKEJ5', '2020-12-08 11:27:47', 0),
(69, 3, 'U6AO5VMX8YCTNIRU8GGF9KU8SMGNDIDM4B1CPVWQJ4BMSGQOVG1CYKIJMC5TP8UZ', '2020-12-08 12:04:02', 0),
(70, 3, 'U4HIAVXHFTKC7ESX7T4GBUWJUD7APF20XJ79RH7EW7CQYY6C9BH4NLKAH8Y6YX29', '2020-12-08 14:37:09', 0),
(71, 4, 'QV1W41MTVQJQ8GR7F9ZVGMIGO7SD5TDORNY19T3MO5NKBDKJKNJ1SEKENUI6IIXB', '2020-12-09 15:02:58', 0),
(72, 3, '3UYUC47ZVHRU0535D03VJA5FJNHWPOLHTXMZUJK165B7QCF3HZ591CN2ZTLYWKKG', '2020-12-09 15:16:38', 0),
(73, 4, '3LB92EJDSYXQVAXN1HX6OWJVMNI6E3WEBEVTS4ZLGWM4IGGSAOKH4RMHCPWP6N9Y', '2020-12-09 15:39:24', 0),
(74, 3, 'I0BY4CB2XP5MOB6ZF888IS0W08TO5MS71PB6O5EEIYC6X48ELPTDIPR09O75SW7K', '2020-12-09 15:48:38', 0),
(75, 4, 'TJU0LE6FPPM1C1HIE1PABJK9HD47LRBN5KWT9CTFQM3LRHQZP49NYMNK9VSIJ937', '2020-12-09 16:31:41', 0),
(76, 3, '17CSBMNLVILAAFZZ8MFZNGFQO3H950Q4DSZMA9Z9KLMIDLYL9LY85BCU1WDHEOP4', '2020-12-09 16:40:52', 0),
(77, 4, 'DIGBYP05NRVGESO6SRYEOG9R55Y61JDZEUI08KWGYZZYYMMLLAEQENJ6IYF304DD', '2020-12-09 17:06:18', 0),
(78, 3, '438XCLNDEEZH21J1JO08FH13DF0PYGE72MLJ85VDQQBRZZ7ZPVQJFAFWBEU6V7P8', '2020-12-09 17:56:51', 0),
(79, 3, 'P2TWATSINL593TACLKE7N51GXLJR01MBZPBUG6TBHK0KNYMBYMAN0SUTBN9YKBRW', '2020-12-09 19:37:20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `trudoustroistvo`
--

CREATE TABLE `trudoustroistvo` (
  `Otpusknie` decimal(19,4) DEFAULT NULL,
  `Experience` longtext DEFAULT NULL,
  `ID_Trudoustroistva` int(11) NOT NULL,
  `ID_Dolj` int(11) DEFAULT NULL,
  `ID_Pesonala` int(11) DEFAULT NULL,
  `ID_Nakladnoi` int(11) DEFAULT NULL,
  `ID_Postavshika` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trudoustroistvo`
--

INSERT INTO `trudoustroistvo` (`Otpusknie`, `Experience`, `ID_Trudoustroistva`, `ID_Dolj`, `ID_Pesonala`, `ID_Nakladnoi`, `ID_Postavshika`) VALUES
('20000.0000', '3 года', 1, 1, 1, 1, 1),
('30000.0000', '5 лет', 2, 2, 2, 2, 2),
('15000.0000', '2 года', 3, 3, 3, 3, 3),
('25000.0000', '1 год', 4, 4, 4, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `id_group` int(11) NOT NULL,
  `id_employee` int(11) NOT NULL,
  `user_login` varchar(32) NOT NULL,
  `user_password` varchar(32) NOT NULL,
  `user_email` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `id_group`, `id_employee`, `user_login`, `user_password`, `user_email`) VALUES
(3, 1, 2, 'Matveeva.io', 'ead27c7b3fbfda7b6c4a6ca628ae8c2e', 'isip_s.p.matveeva@mpt.ru'),
(4, 2, 1, 'Karimova', '510ef57441fa4e4635b2ba044655b7e7', 'isip_k.d.karimova@mpt.ru');

-- --------------------------------------------------------

--
-- Table structure for table `zakazchik`
--

CREATE TABLE `zakazchik` (
  `ID_Zakazchika` int(11) NOT NULL,
  `Number` varchar(11) DEFAULT NULL,
  `Adress` varchar(20) DEFAULT NULL,
  `ID_Pesonala` int(11) DEFAULT NULL,
  `ID_Nakladnoi` int(11) DEFAULT NULL,
  `ID_Postavshika` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zakazchik`
--

INSERT INTO `zakazchik` (`ID_Zakazchika`, `Number`, `Adress`, `ID_Pesonala`, `ID_Nakladnoi`, `ID_Postavshika`) VALUES
(1, '89165573221', 'Филевская, 4', 1, 1, 1),
(3, '89153847303', 'Щелковская, 21', 3, 3, 3),
(2, '89048736392', 'Маяковская, 15', 2, 2, 2),
(4, '89777448323', 'Шипиловская,13', 4, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `zapchasti`
--

CREATE TABLE `zapchasti` (
  `ID_Zapchasti` int(11) NOT NULL,
  `Price` decimal(19,4) DEFAULT NULL,
  `ID_Modeli_Zapchasti` int(11) DEFAULT NULL,
  `ID_Sklada` int(11) DEFAULT NULL,
  `ID_Proizvoditelya` int(11) DEFAULT NULL,
  `ID_Partii` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zapchasti`
--

INSERT INTO `zapchasti` (`ID_Zapchasti`, `Price`, `ID_Modeli_Zapchasti`, `ID_Sklada`, `ID_Proizvoditelya`, `ID_Partii`) VALUES
(1, '2000.0000', 1, 1, 1, 1),
(2, '5000.0000', 2, 2, 2, 2),
(3, '1500.0000', 3, 3, 3, 3),
(4, '700.0000', 4, 4, 4, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actions`
--
ALTER TABLE `actions`
  ADD PRIMARY KEY (`id_action`);

--
-- Indexes for table `akcii/skidki`
--
ALTER TABLE `akcii/skidki`
  ADD PRIMARY KEY (`ID_Akcii_Skidki`);

--
-- Indexes for table `dolj`
--
ALTER TABLE `dolj`
  ADD PRIMARY KEY (`ID_Dolj`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id_employee`),
  ADD KEY `ID_Pola` (`ID_Pola`);

--
-- Indexes for table `favourites_tab`
--
ALTER TABLE `favourites_tab`
  ADD PRIMARY KEY (`id_favourites_tab`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id_group`);

--
-- Indexes for table `kategoriya_postavshika`
--
ALTER TABLE `kategoriya_postavshika`
  ADD PRIMARY KEY (`ID_Kategorii_Postavshika`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id_log`),
  ADD KEY `id_action` (`id_action`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `menedjer_magazina`
--
ALTER TABLE `menedjer_magazina`
  ADD PRIMARY KEY (`ID_Menedjera_magazina`);

--
-- Indexes for table `model_zapchasti`
--
ALTER TABLE `model_zapchasti`
  ADD PRIMARY KEY (`ID_Modeli_Zapchasti`);

--
-- Indexes for table `nakladnaya`
--
ALTER TABLE `nakladnaya`
  ADD PRIMARY KEY (`ID_Nakladnoi`);

--
-- Indexes for table `partii`
--
ALTER TABLE `partii`
  ADD PRIMARY KEY (`ID_Partii`);

--
-- Indexes for table `pol`
--
ALTER TABLE `pol`
  ADD PRIMARY KEY (`ID_Pola`);

--
-- Indexes for table `postavshik`
--
ALTER TABLE `postavshik`
  ADD PRIMARY KEY (`ID_Postavshika`),
  ADD KEY `ID_Kategorii_Postavshika` (`ID_Kategorii_Postavshika`);

--
-- Indexes for table `prodaja`
--
ALTER TABLE `prodaja`
  ADD PRIMARY KEY (`ID_Prodaji`);

--
-- Indexes for table `proizvoditel`
--
ALTER TABLE `proizvoditel`
  ADD PRIMARY KEY (`ID_Proizvoditelya`);

--
-- Indexes for table `reset_request`
--
ALTER TABLE `reset_request`
  ADD PRIMARY KEY (`id_request`);

--
-- Indexes for table `sklad`
--
ALTER TABLE `sklad`
  ADD PRIMARY KEY (`ID_Sklada`);

--
-- Indexes for table `switchboard_items`
--
ALTER TABLE `switchboard_items`
  ADD PRIMARY KEY (`SwitchboardID`,`ItemNumber`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id_token`);

--
-- Indexes for table `trudoustroistvo`
--
ALTER TABLE `trudoustroistvo`
  ADD PRIMARY KEY (`ID_Trudoustroistva`),
  ADD KEY `ID_Nakladnoi` (`ID_Nakladnoi`),
  ADD KEY `ID_Pesonala` (`ID_Pesonala`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_group` (`id_group`);

--
-- Indexes for table `zakazchik`
--
ALTER TABLE `zakazchik`
  ADD PRIMARY KEY (`ID_Zakazchika`);

--
-- Indexes for table `zapchasti`
--
ALTER TABLE `zapchasti`
  ADD PRIMARY KEY (`ID_Zapchasti`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actions`
--
ALTER TABLE `actions`
  MODIFY `id_action` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id_employee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `favourites_tab`
--
ALTER TABLE `favourites_tab`
  MODIFY `id_favourites_tab` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id_group` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `pol`
--
ALTER TABLE `pol`
  MODIFY `ID_Pola` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reset_request`
--
ALTER TABLE `reset_request`
  MODIFY `id_request` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id_token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_ibfk_1` FOREIGN KEY (`id_action`) REFERENCES `actions` (`id_action`),
  ADD CONSTRAINT `logs_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_group`) REFERENCES `groups` (`id_group`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
