-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 01, 2022 lúc 07:30 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mydata`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `accountid` int(11) NOT NULL,
  `password` varchar(250) DEFAULT NULL,
  `avatar` varchar(250) DEFAULT NULL,
  `experience` int(11) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `username_id` int(11) DEFAULT NULL,
  `callsignid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`accountid`, `password`, `avatar`, `experience`, `createdate`, `editdate`, `isenable`, `note`, `username_id`, `callsignid_id`) VALUES
(5, 'user1', NULL, 0, '2021-11-17', '2021-11-16 18:11:27.041776', 1, NULL, 8, 1),
(6, 'user2', NULL, 0, '2021-11-17', '2021-11-16 19:30:56.768999', 1, NULL, 9, 1),
(7, 'user3', '/media/users//background2.png', 9960, '2021-11-17', '2021-12-16 05:53:02.903035', 1, NULL, 10, 1),
(8, 'tran', '/media/avatar.PNG', 0, '2021-11-17', '2021-11-17 11:01:25.058505', 1, NULL, 11, 1),
(9, 'user5', '/media/bee.png', 0, '2021-11-17', '2021-11-17 11:24:43.115341', 1, NULL, 12, 1),
(10, 'user', '/media/avatar_TY2zBd9.PNG', 0, '2021-11-17', '2021-11-17 12:59:28.548119', 1, NULL, 13, 1),
(11, 'a', '/media/lesson1.png', 0, '2021-11-17', '2021-11-17 13:03:44.805783', 1, NULL, 14, 1),
(12, 'b', '/media/lesson1_Rf6Ju9E.png', 0, '2021-11-17', '2021-11-17 13:07:44.241303', 1, NULL, 15, 1),
(13, 'aa', '/media/lesson1_veU6pVC.png', 0, '2021-11-17', '2021-11-17 13:09:59.800919', 1, NULL, 16, 1),
(14, 'c', '/media/lesson6.png', 0, '2021-11-17', '2021-11-17 13:12:11.876030', 1, NULL, 17, 1),
(15, 'khai', '/media/users//2beefinger.png', 60, '2021-11-30', '2021-12-17 11:14:06.295062', 1, NULL, 18, 1),
(16, 'tuyet', '/media/users//3stars.png', 170, '2021-12-16', '2022-01-01 17:58:20.302378', 1, NULL, 24, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `activity`
--

CREATE TABLE `activity` (
  `activityid` int(11) NOT NULL,
  `activityorder` int(11) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `stars` int(11) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `lessonid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `activity`
--

INSERT INTO `activity` (`activityid`, `activityorder`, `name`, `image`, `description`, `link`, `stars`, `createdate`, `editdate`, `isenable`, `note`, `lessonid_id`) VALUES
(1, 1, 'Giới thiệu bàn phím', 'media/lessons/images/hdgioithieu.png', '', '/media/lessons/lesson1/script1/asdf.mp4', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 1),
(2, 1, 'Kỹ năng gõ phím', 'media/lessons/images/hdgioithieu.png', '', '', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 2),
(3, 1, 'Giới thiệu', 'media/lessons/images/hdgioithieu.png', '', 'https://www.youtube.com/embed/MWE9mcSUAU4', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 3),
(4, 2, 'Gõ phím A S D F', 'media/lessons/images/hdlamquen.png\n', '', '/media/lessons/lesson3/script2/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 3),
(5, 3, 'Thử tài trí nhớ', 'media/lessons/images/hdtracnghiem.png', '', '/media/lessons/lesson3/script3/index.html', 3, '2021-11-05', '2021-12-24 20:28:49.080837', 1, '', 3),
(6, 4, 'Giải mã bàn phím', 'media/lessons/images/hdgiaima.png', '', '/media/lessons/lesson3/script4/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 3),
(7, 5, 'Vui gõ phím', 'media/lessons/images/hdvuigophim.png', '', '/media/lessons/lesson3/script5/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 3),
(8, 2, 'Thử tài trí nhớ', 'media/lessons/images/hdtracnghiem.png', '', '/media/lessons/lesson1/script2/index.html', 3, '2021-11-05', '2021-12-24 20:29:23.339810', 1, '', 1),
(9, 3, 'Giải mã bàn phím', 'media/lessons/images/hdgiaima.png', '', '/media/lessons/lesson1/script3/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 1),
(10, 2, 'Thử tài trí nhớ', 'media/lessons/images/hdtracnghiem.png', '', NULL, 3, '2021-11-05', '2021-12-24 20:29:14.705185', 1, '', 2),
(11, 3, 'Giải mã bàn phím', 'media/lessons/images/hdgiaima.png', '', '', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 2),
(12, 1, 'Giới thiệu', 'media/lessons/images/hdgioithieu.png', '', '/media/lessons/lesson4/script1/asdf.mp4', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 4),
(13, 2, 'Gõ phím J K L ;', 'media/lessons/images/hdlamquen.png\r\n', '', '/media/lessons/lesson4/script2/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 4),
(14, 3, 'Thử tài trí nhớ', 'media/lessons/images/hdtracnghiem.png', '', '/media/lessons/lesson4/script3/index.html', 3, '2021-11-05', '2021-12-24 20:29:07.320495', 1, '', 4),
(15, 5, 'Vui gõ phím', 'media/lessons/images/hdvuigophim.png', '', '/media/lessons/lesson4/script5/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 4),
(16, 4, 'Giải mã bàn phím', 'media/lessons/images/hdgiaima.png', '', '/media/lessons/lesson4/script4/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 4),
(17, 1, 'Giới thiệu', 'media/lessons/images/hdgioithieu.png', '', '/media/lessons/lesson5/script1/asdf.mp4', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 5),
(18, 2, 'Gõ phím G H', 'media/lessons/images/hdlamquen.png\r\n', '', '/media/lessons/lesson5/script2/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 5),
(19, 3, 'Thử tài trí nhớ', 'media/lessons/images/hdtracnghiem.png', '', '/media/lessons/lesson5/script3/index.html', 3, '2021-11-05', '2021-12-24 20:29:01.366692', 1, '', 5),
(20, 5, 'Vui gõ phím', 'media/lessons/images/hdvuigophim.png', '', '/media/lessons/lesson5/script5/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 5),
(21, 4, 'Giải mã bàn phím', 'media/lessons/images/hdgiaima.png', '', '/media/lessons/lesson5/script4/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 5),
(22, 5, 'Vui gõ phím', 'media/lessons/images/hdvuigophim.png', '', '/media/lessons/lesson6/script5/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 6),
(23, 4, 'Giải mã bàn phím', 'media/lessons/images/hdgiaima.png', '', '/media/lessons/lesson6/script4/index.html', 3, '2021-11-05', '2021-11-05 15:12:23.000000', 1, '', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add account', 7, 'add_account'),
(26, 'Can change account', 7, 'change_account'),
(27, 'Can delete account', 7, 'delete_account'),
(28, 'Can view account', 7, 'view_account'),
(29, 'Can add character', 8, 'add_character'),
(30, 'Can change character', 8, 'change_character'),
(31, 'Can delete character', 8, 'delete_character'),
(32, 'Can view character', 8, 'view_character'),
(33, 'Can add competition', 9, 'add_competition'),
(34, 'Can change competition', 9, 'change_competition'),
(35, 'Can delete competition', 9, 'delete_competition'),
(36, 'Can view competition', 9, 'view_competition'),
(37, 'Can add contact', 10, 'add_contact'),
(38, 'Can change contact', 10, 'change_contact'),
(39, 'Can delete contact', 10, 'delete_contact'),
(40, 'Can view contact', 10, 'view_contact'),
(41, 'Can add document', 11, 'add_document'),
(42, 'Can change document', 11, 'change_document'),
(43, 'Can delete document', 11, 'delete_document'),
(44, 'Can view document', 11, 'view_document'),
(45, 'Can add lesson', 12, 'add_lesson'),
(46, 'Can change lesson', 12, 'change_lesson'),
(47, 'Can delete lesson', 12, 'delete_lesson'),
(48, 'Can view lesson', 12, 'view_lesson'),
(49, 'Can add news', 13, 'add_news'),
(50, 'Can change news', 13, 'change_news'),
(51, 'Can delete news', 13, 'delete_news'),
(52, 'Can view news', 13, 'view_news'),
(53, 'Can add practice badge', 14, 'add_practicebadge'),
(54, 'Can change practice badge', 14, 'change_practicebadge'),
(55, 'Can delete practice badge', 14, 'delete_practicebadge'),
(56, 'Can view practice badge', 14, 'view_practicebadge'),
(57, 'Can add text', 15, 'add_text'),
(58, 'Can change text', 15, 'change_text'),
(59, 'Can delete text', 15, 'delete_text'),
(60, 'Can view text', 15, 'view_text'),
(61, 'Can add topic lesson', 16, 'add_topiclesson'),
(62, 'Can change topic lesson', 16, 'change_topiclesson'),
(63, 'Can delete topic lesson', 16, 'delete_topiclesson'),
(64, 'Can view topic lesson', 16, 'view_topiclesson'),
(65, 'Can add topic practice', 17, 'add_topicpractice'),
(66, 'Can change topic practice', 17, 'change_topicpractice'),
(67, 'Can delete topic practice', 17, 'delete_topicpractice'),
(68, 'Can view topic practice', 17, 'view_topicpractice'),
(69, 'Can add word', 18, 'add_word'),
(70, 'Can change word', 18, 'change_word'),
(71, 'Can delete word', 18, 'delete_word'),
(72, 'Can view word', 18, 'view_word'),
(73, 'Can add user detail', 19, 'add_userdetail'),
(74, 'Can change user detail', 19, 'change_userdetail'),
(75, 'Can delete user detail', 19, 'delete_userdetail'),
(76, 'Can view user detail', 19, 'view_userdetail'),
(77, 'Can add time test', 20, 'add_timetest'),
(78, 'Can change time test', 20, 'change_timetest'),
(79, 'Can delete time test', 20, 'delete_timetest'),
(80, 'Can view time test', 20, 'view_timetest'),
(81, 'Can add lesson badge', 21, 'add_lessonbadge'),
(82, 'Can change lesson badge', 21, 'change_lessonbadge'),
(83, 'Can delete lesson badge', 21, 'delete_lessonbadge'),
(84, 'Can view lesson badge', 21, 'view_lessonbadge'),
(85, 'Can add game', 22, 'add_game'),
(86, 'Can change game', 22, 'change_game'),
(87, 'Can delete game', 22, 'delete_game'),
(88, 'Can view game', 22, 'view_game'),
(89, 'Can add content test', 23, 'add_contenttest'),
(90, 'Can change content test', 23, 'change_contenttest'),
(91, 'Can delete content test', 23, 'delete_contenttest'),
(92, 'Can view content test', 23, 'view_contenttest'),
(93, 'Can add competition badge', 24, 'add_competitionbadge'),
(94, 'Can change competition badge', 24, 'change_competitionbadge'),
(95, 'Can delete competition badge', 24, 'delete_competitionbadge'),
(96, 'Can view competition badge', 24, 'view_competitionbadge'),
(97, 'Can add call sign', 25, 'add_callsign'),
(98, 'Can change call sign', 25, 'change_callsign'),
(99, 'Can delete call sign', 25, 'delete_callsign'),
(100, 'Can view call sign', 25, 'view_callsign'),
(101, 'Can add activity', 26, 'add_activity'),
(102, 'Can change activity', 26, 'change_activity'),
(103, 'Can delete activity', 26, 'delete_activity'),
(104, 'Can view activity', 26, 'view_activity'),
(105, 'Can add faq', 27, 'add_faq'),
(106, 'Can change faq', 27, 'change_faq'),
(107, 'Can delete faq', 27, 'delete_faq'),
(108, 'Can view faq', 27, 'view_faq'),
(109, 'Can add header', 28, 'add_header'),
(110, 'Can change header', 28, 'change_header'),
(111, 'Can delete header', 28, 'delete_header'),
(112, 'Can view header', 28, 'view_header'),
(113, 'Can add tracking', 29, 'add_tracking'),
(114, 'Can change tracking', 29, 'change_tracking'),
(115, 'Can delete tracking', 29, 'delete_tracking'),
(116, 'Can view tracking', 29, 'view_tracking'),
(117, 'Can add tracking activity', 29, 'add_trackingactivity'),
(118, 'Can change tracking activity', 29, 'change_trackingactivity'),
(119, 'Can delete tracking activity', 29, 'delete_trackingactivity'),
(120, 'Can view tracking activity', 29, 'view_trackingactivity'),
(121, 'Can add tracking game', 30, 'add_trackinggame'),
(122, 'Can change tracking game', 30, 'change_trackinggame'),
(123, 'Can delete tracking game', 30, 'delete_trackinggame'),
(124, 'Can view tracking game', 30, 'view_trackinggame'),
(125, 'Can add game level', 31, 'add_gamelevel'),
(126, 'Can change game level', 31, 'change_gamelevel'),
(127, 'Can delete game level', 31, 'delete_gamelevel'),
(128, 'Can view game level', 31, 'view_gamelevel'),
(129, 'Can add tracking level game', 32, 'add_trackinglevelgame'),
(130, 'Can change tracking level game', 32, 'change_trackinglevelgame'),
(131, 'Can delete tracking level game', 32, 'delete_trackinglevelgame'),
(132, 'Can view tracking level game', 32, 'view_trackinglevelgame');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$qkszsHqs5Vev83BDi3VH0F$Hur5ioP3yit46daKibnvE3l07aXHLNsMK1s8uqBMyVU=', '2022-01-01 17:07:25.388293', 1, 'admin', '', '', '', 1, 1, '2021-11-15 17:57:04.108713'),
(8, 'pbkdf2_sha256$260000$EZKfdqQ5xmP9XRQUeJRhj9$i/vCgukW59FZOlbq99m+TU9VCHKAPf0ttW5bCIwaULQ=', '2021-11-16 18:50:43.132575', 0, 'user1', '', '', '', 0, 1, '2021-11-16 18:11:26.806392'),
(9, 'pbkdf2_sha256$260000$uAlLMdh6mwKMIrvG5791fa$r8WeZrTIGM6l+xPEZK0Qp4E/0bD36lzJrFK3K34Mc7s=', '2021-11-24 12:25:11.839459', 0, 'user2', '', '', '', 0, 1, '2021-11-16 19:30:56.514067'),
(10, 'pbkdf2_sha256$260000$PA5rakwIEwlr8TjL4eYk46$hU61S6I2sErnrdy8Y+sKw75j6zDECqwKJpnDhiY0wRE=', '2021-12-16 10:59:21.785700', 0, 'user3', '', '', '', 0, 1, '2021-11-17 03:37:18.270245'),
(11, 'pbkdf2_sha256$260000$QLWzeCU2bHKCm7zqMhA07t$oAlHMacVy4GgdtV3DYGSdas2vfS+9N+Anv2T51Yzs9o=', '2021-11-17 11:01:25.050830', 0, 'tran', '', '', '', 0, 1, '2021-11-17 11:01:24.788436'),
(12, 'pbkdf2_sha256$260000$I8lJhP9sf1hOayYUdtmrVc$QhTqwDO772Sx3+CAYpGjHxR0sq3JD5OQZE/+HinZdgQ=', '2021-11-17 11:24:43.107533', 0, 'user5', '', '', '', 0, 1, '2021-11-17 11:24:42.856819'),
(13, 'pbkdf2_sha256$260000$wkykGNGo01KpP8xVbTyp3c$/W4pfrlgG9oSd0wRz0QmTmaaDY3IFj88j+6gILp7/y8=', '2021-11-17 12:59:28.537963', 0, 'user', '', '', '', 0, 1, '2021-11-17 12:59:27.903827'),
(14, 'pbkdf2_sha256$260000$3Bmpx0wOYdIW3dTIegxVoH$PLO6n2TLuMTd9JQ9YIlAyVK0zk9ECtDijMjXfmR+Bdw=', '2021-11-17 13:03:44.795551', 0, 'a', '', '', '', 0, 1, '2021-11-17 13:03:44.125223'),
(15, 'pbkdf2_sha256$260000$wdjq2ccB29O3KRcZrsOw0V$LiYMnL4SNUSbIzVOg5IMqHMBuj3UbX5PDt07UdJDVro=', '2021-11-17 13:07:44.227791', 0, 'b', '', '', '', 0, 1, '2021-11-17 13:07:43.483380'),
(16, 'pbkdf2_sha256$260000$qU1o4kC0TNXNE9STXnm2jl$Z4yszxhy/y/T1N+tf5cdXycHM7Da50akhgX6+H6hPxU=', '2021-11-17 13:09:59.788182', 0, 'aa', '', '', '', 0, 1, '2021-11-17 13:09:59.143465'),
(17, 'pbkdf2_sha256$260000$VMIWjyMLC6IQGYXexosKdu$9y8ABseF+XhboUTo6gqmjJB5cNxgguQQ9k1jSp3RZXQ=', '2021-11-17 13:12:11.856230', 0, 'c', '', '', '', 0, 1, '2021-11-17 13:12:11.099719'),
(18, 'pbkdf2_sha256$260000$P4QHNaqEF01A12AsHHtPwL$FwC328ZvfQswUbUCF+enCNqNrsJ7Fz8Mxr9tS5dlYbY=', '2021-12-17 10:53:43.417401', 0, 'khai', '', '', '', 0, 1, '2021-11-29 17:13:21.959850'),
(24, 'pbkdf2_sha256$260000$vVJysss2GfWAf5kvtidrZK$kSrD14kFoxex/uv7bhAdSsTtfLMPja4h8glmd2yfrN0=', '2022-01-01 17:24:24.859682', 0, 'tuyet', '', '', '', 0, 1, '2021-12-16 11:08:41.897857');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `callsign`
--

CREATE TABLE `callsign` (
  `callsignid` int(11) NOT NULL,
  `callsignorder` int(11) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `frame` varchar(250) DEFAULT NULL,
  `exrequired` int(11) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `callsign`
--

INSERT INTO `callsign` (`callsignid`, `callsignorder`, `name`, `frame`, `exrequired`, `createdate`, `editdate`, `isenable`, `note`) VALUES
(1, 1, 'Tân binh', 'media/callsign/tanbinh.png', 100, '2021-11-05', '2021-11-05 13:08:02.000000', 1, ''),
(2, 2, 'Binh nhất', 'media/callsign/binhnhat.png', 500, '2021-11-05', '2021-11-05 13:08:02.000000', 1, ''),
(3, 3, 'Thượng sĩ', 'media/callsign/thuongsi.png', 1000, '2021-11-05', '2021-11-05 13:08:02.000000', 1, ''),
(4, 4, 'Đại úy', 'media/callsign/daiuy.png', 2000, '2021-11-05', '2021-11-05 13:08:02.000000', 1, ''),
(5, 5, 'Đại tá', 'media/callsign/daita.png', 5000, '2021-11-05', '2021-11-05 13:08:02.000000', 1, ''),
(6, 6, 'Đại tướng', 'media/callsign/daituong.png', 10000, '2021-11-05', '2021-11-05 13:08:02.000000', 1, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `character`
--

CREATE TABLE `character` (
  `characterid` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `typekey` varchar(250) DEFAULT NULL,
  `row` varchar(250) DEFAULT NULL,
  `finger` varchar(250) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `competition`
--

CREATE TABLE `competition` (
  `competitionid` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `startdate` datetime(6) DEFAULT NULL,
  `enddate` datetime(6) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `competition`
--

INSERT INTO `competition` (`competitionid`, `name`, `startdate`, `enddate`, `image`, `description`, `link`, `createdate`, `editdate`, `isenable`, `note`) VALUES
(1, 'Tranh tài tháng 12/2021', '2021-12-01 10:00:00.000000', '2021-12-31 22:00:00.000000', '/media/test/competition.png', '<p>Tranh t&agrave;i th&aacute;ng 12/2021</p>', '/media/competion/script-12-2021', '2021-12-16', '2021-12-16 06:58:12.322621', 1, ''),
(2, 'Tranh tài tháng 01/2022', '2022-01-01 10:00:00.000000', '2022-01-31 22:00:00.000000', '/media/test/competition.png', '<p>Tranh t&agrave;i th&aacute;ng 01/2022</p>', '/media/competion/script-01-2021', '2021-12-16', '2021-12-16 06:58:06.108669', 1, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `competitionbadge`
--

CREATE TABLE `competitionbadge` (
  `competitionbadgeid` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `competitionid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `contactid` int(11) NOT NULL,
  `fullname` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contenttest`
--

CREATE TABLE `contenttest` (
  `contenttestid` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `contenttest`
--

INSERT INTO `contenttest` (`contenttestid`, `name`, `description`, `link`, `createdate`, `editdate`, `isenable`, `note`, `image`) VALUES
(1, 'KIỂM TRA VĂN BẢN - DỄ', '', NULL, '2021-12-04', '2021-12-04 14:15:54.228637', 1, '', '/media/test/content1.png'),
(2, 'KIỂM TRA VĂN BẢN - TRUNG BÌNH', '', NULL, '2021-12-04', '2021-12-04 14:16:19.394614', 1, '', '/media/test/content2.png'),
(3, 'KIỂM TRA VĂN BẢN - KHÓ', '', NULL, '2021-12-04', '2021-12-04 14:16:38.654801', 1, '', '/media/test/content3.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-12-03 12:44:08.466993', '1', 'KIỂM TRA 1 PHÚT', 1, '[{\"added\": {}}]', 20, 1),
(2, '2021-12-03 12:52:24.458805', '1', 'KIỂM TRA 1 PHÚT', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 20, 1),
(3, '2021-12-03 13:39:33.426907', '2', 'KIỂM TRA 3 PHÚT', 1, '[{\"added\": {}}]', 20, 1),
(4, '2021-12-03 13:40:04.306589', '3', 'KIỂM TRA 5 PHÚT', 1, '[{\"added\": {}}]', 20, 1),
(5, '2021-12-03 13:40:23.759912', '4', 'KIỂM TRA 10 PHÚT', 1, '[{\"added\": {}}]', 20, 1),
(6, '2021-12-03 13:40:37.241007', '5', 'KIỂM TRA 15 PHÚT', 1, '[{\"added\": {}}]', 20, 1),
(7, '2021-12-03 13:41:01.019621', '6', 'KIỂM TRA KHÔNG GIỚI HẠN', 1, '[{\"added\": {}}]', 20, 1),
(8, '2021-12-04 14:15:54.229671', '1', 'KIỂM TRA VĂN BẢN - DỄ', 1, '[{\"added\": {}}]', 23, 1),
(9, '2021-12-04 14:16:19.395631', '2', 'KIỂM TRA VĂN BẢN - TRUNG BÌNH', 1, '[{\"added\": {}}]', 23, 1),
(10, '2021-12-04 14:16:38.655315', '3', 'KIỂM TRA VĂN BẢN - KHÓ', 1, '[{\"added\": {}}]', 23, 1),
(11, '2021-12-12 16:04:33.697339', '5', 'Phím được bấm nhiều nhất', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Content\"]}}]', 13, 1),
(12, '2021-12-12 16:04:41.948594', '4', 'Tượng đài bàn phím', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Content\"]}}]', 13, 1),
(13, '2021-12-12 16:04:52.122024', '3', 'Nước nào đánh máy khó nhất', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Content\"]}}]', 13, 1),
(14, '2021-12-12 16:05:05.443034', '2', 'Vệ sinh bàn phím thường xuyên', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Content\"]}}]', 13, 1),
(15, '2021-12-12 16:05:21.598296', '1', 'Tốc độ đánh máy chuẩn', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Content\"]}}]', 13, 1),
(16, '2021-12-12 16:06:06.132873', '3', 'Mách bạn những mẹo nhỏ trong quá trình đánh máy mười ngón.', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Content\"]}}]', 11, 1),
(17, '2021-12-12 16:06:14.449388', '2', 'Chia sẻ cho bạn bí quyết học đánh máy mười ngón hiệu quả.', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Content\"]}}]', 11, 1),
(18, '2021-12-12 16:06:27.723830', '1', 'Bạn cần thời gian bao lâu để học đánh máy mười ngón?', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Content\"]}}]', 11, 1),
(19, '2021-12-16 06:50:05.535666', '1', 'KIỂM TRA 1 PHÚT', 2, '[{\"changed\": {\"fields\": [\"Isenable\"]}}]', 20, 1),
(20, '2021-12-16 06:50:21.889166', '1', 'KIỂM TRA 1 PHÚT', 2, '[{\"changed\": {\"fields\": [\"Isenable\"]}}]', 20, 1),
(21, '2021-12-16 06:50:33.893528', '4', 'KIỂM TRA 10 PHÚT', 2, '[{\"changed\": {\"fields\": [\"Isenable\"]}}]', 20, 1),
(22, '2021-12-16 06:50:40.794230', '5', 'KIỂM TRA 15 PHÚT', 2, '[{\"changed\": {\"fields\": [\"Isenable\"]}}]', 20, 1),
(23, '2021-12-16 06:50:47.323418', '6', 'KIỂM TRA KHÔNG GIỚI HẠN', 2, '[{\"changed\": {\"fields\": [\"Isenable\"]}}]', 20, 1),
(24, '2021-12-16 06:56:21.309267', '1', 'Tranh tài tháng 12/2021', 1, '[{\"added\": {}}]', 9, 1),
(25, '2021-12-16 06:58:06.116673', '2', 'Tranh tài tháng 01/2022', 1, '[{\"added\": {}}]', 9, 1),
(26, '2021-12-16 06:58:12.330793', '1', 'Tranh tài tháng 12/2021', 2, '[{\"changed\": {\"fields\": [\"Link\"]}}]', 9, 1),
(27, '2021-12-24 20:28:49.080837', '5', 'Thử tài trí nhớ', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 26, 1),
(28, '2021-12-24 20:29:01.374761', '19', 'Thử tài trí nhớ', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 26, 1),
(29, '2021-12-24 20:29:07.328441', '14', 'Thử tài trí nhớ', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 26, 1),
(30, '2021-12-24 20:29:14.713197', '10', 'Thử tài trí nhớ', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 26, 1),
(31, '2021-12-24 20:29:23.347888', '8', 'Thử tài trí nhớ', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Image\"]}}]', 26, 1),
(32, '2021-12-30 10:10:58.673450', '1', 'Màn 1- Dễ', 1, '[{\"added\": {}}]', 31, 1),
(33, '2021-12-30 10:11:18.853575', '1', 'Dễ', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 31, 1),
(34, '2021-12-30 10:11:39.843517', '1', 'Dễ', 2, '[{\"changed\": {\"fields\": [\"Gameid\"]}}]', 31, 1),
(35, '2021-12-30 10:12:52.312075', '2', 'Trung bình', 1, '[{\"added\": {}}]', 31, 1),
(36, '2021-12-30 10:13:05.052427', '1', 'Dễ', 2, '[{\"changed\": {\"fields\": [\"Stars\"]}}]', 31, 1),
(37, '2021-12-30 10:13:33.177026', '3', 'Khó', 1, '[{\"added\": {}}]', 31, 1),
(38, '2021-12-30 10:17:21.567386', '1', 'Dễ', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 31, 1),
(39, '2021-12-30 10:17:46.710460', '1', 'Dễ', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 31, 1),
(40, '2021-12-30 10:18:46.406413', '1', 'Dễ', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 31, 1),
(41, '2021-12-30 10:23:59.562237', '1', 'Dễ', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 31, 1),
(42, '2021-12-30 10:25:29.535863', '1', 'Dễ', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 31, 1),
(43, '2021-12-30 10:33:39.861471', '1', 'Dễ', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 31, 1),
(44, '2021-12-30 10:35:36.324771', '1', 'Dễ', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 31, 1),
(45, '2021-12-30 10:37:17.944634', '2', 'Trung bình', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 31, 1),
(46, '2021-12-30 10:37:25.610350', '2', 'Trung bình', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 31, 1),
(47, '2021-12-30 10:37:34.603822', '3', 'Khó', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 31, 1),
(48, '2021-12-31 11:05:18.492213', '4', 'Dễ', 1, '[{\"added\": {}}]', 31, 1),
(49, '2021-12-31 11:06:01.275825', '1', 'Dễ', 2, '[]', 31, 1),
(50, '2021-12-31 11:06:27.669648', '5', 'Trung bình', 1, '[{\"added\": {}}]', 31, 1),
(51, '2021-12-31 11:06:51.204210', '6', 'Khó', 1, '[{\"added\": {}}]', 31, 1),
(52, '2022-01-01 17:07:40.985197', '3', 'Khó', 2, '[{\"changed\": {\"fields\": [\"Link\"]}}]', 31, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'homepage', 'account'),
(26, 'homepage', 'activity'),
(25, 'homepage', 'callsign'),
(8, 'homepage', 'character'),
(9, 'homepage', 'competition'),
(24, 'homepage', 'competitionbadge'),
(10, 'homepage', 'contact'),
(23, 'homepage', 'contenttest'),
(11, 'homepage', 'document'),
(27, 'homepage', 'faq'),
(22, 'homepage', 'game'),
(31, 'homepage', 'gamelevel'),
(28, 'homepage', 'header'),
(12, 'homepage', 'lesson'),
(21, 'homepage', 'lessonbadge'),
(13, 'homepage', 'news'),
(14, 'homepage', 'practicebadge'),
(15, 'homepage', 'text'),
(20, 'homepage', 'timetest'),
(16, 'homepage', 'topiclesson'),
(17, 'homepage', 'topicpractice'),
(29, 'homepage', 'trackingactivity'),
(30, 'homepage', 'trackinggame'),
(32, 'homepage', 'trackinglevelgame'),
(19, 'homepage', 'userdetail'),
(18, 'homepage', 'word'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-11-14 10:21:03.557991'),
(2, 'auth', '0001_initial', '2021-11-14 10:21:04.046127'),
(3, 'admin', '0001_initial', '2021-11-14 10:21:04.189714'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-11-14 10:21:04.213938'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-11-14 10:21:04.234820'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-11-14 10:21:04.306292'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-11-14 10:21:04.357250'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-11-14 10:21:04.382186'),
(9, 'auth', '0004_alter_user_username_opts', '2021-11-14 10:21:04.400279'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-11-14 10:21:04.448374'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-11-14 10:21:04.452096'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-11-14 10:21:04.467868'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-11-14 10:21:04.489121'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-11-14 10:21:04.505151'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-11-14 10:21:04.529143'),
(16, 'auth', '0011_update_proxy_permissions', '2021-11-14 10:21:04.553151'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-11-14 10:21:04.583301'),
(18, 'homepage', '0001_initial', '2021-11-14 10:21:06.288226'),
(19, 'homepage', '0002_activity_topiclessonid', '2021-11-14 10:21:06.390166'),
(20, 'homepage', '0003_alter_character_characterid', '2021-11-14 10:21:06.673704'),
(21, 'homepage', '0004_auto_20211101_2307', '2021-11-14 10:21:09.081850'),
(22, 'homepage', '0005_remove_scriptactivity_lessonid', '2021-11-14 10:21:09.155971'),
(23, 'homepage', '0006_auto_20211105_1259', '2021-11-14 10:21:09.518317'),
(24, 'homepage', '0007_auto_20211105_1318', '2021-11-14 10:21:09.725611'),
(25, 'homepage', '0008_auto_20211105_1414', '2021-11-14 10:21:09.763637'),
(26, 'homepage', '0009_alter_game_image', '2021-11-14 10:21:09.775221'),
(27, 'homepage', '0010_alter_account_avatar', '2021-11-14 10:21:09.833453'),
(28, 'homepage', '0011_auto_20211114_1719', '2021-11-14 10:21:11.913083'),
(29, 'sessions', '0001_initial', '2021-11-14 10:21:12.014776'),
(30, 'homepage', '0012_faq', '2021-11-17 02:10:22.951693'),
(31, 'homepage', '0013_auto_20211117_0912', '2021-11-17 02:12:33.793145'),
(32, 'homepage', '0014_header', '2021-11-18 02:47:36.325626'),
(33, 'homepage', '0015_delete_header', '2021-11-18 02:55:49.844387'),
(34, 'homepage', '0016_activity_image', '2021-11-18 03:04:00.884969'),
(35, 'homepage', '0017_delete_activity', '2021-11-18 03:07:20.692415'),
(36, 'homepage', '0018_activity', '2021-11-18 03:07:36.069584'),
(37, 'homepage', '0019_header', '2021-11-18 08:20:24.314909'),
(38, 'homepage', '0020_tracking', '2021-11-28 12:53:02.101824'),
(39, 'homepage', '0021_alter_callsign_frame', '2021-11-29 15:47:13.033877'),
(40, 'homepage', '0022_auto_20211203_1941', '2021-12-03 12:41:14.715134'),
(41, 'homepage', '0023_auto_20211203_1943', '2021-12-03 12:43:56.659757'),
(42, 'homepage', '0024_auto_20211216_1251', '2021-12-16 05:51:57.095921'),
(43, 'homepage', '0025_auto_20211230_1704', '2021-12-30 10:05:08.319281'),
(44, 'homepage', '0026_gamelevel_levelorder', '2021-12-30 10:09:39.171482'),
(45, 'homepage', '0027_auto_20220101_2309', '2022-01-01 16:10:03.720737'),
(46, 'homepage', '0028_auto_20220102_0110', '2022-01-01 18:10:21.371611');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('36cgu10p114n94mfxpv5z9jyx9ub2jyu', '.eJxVjMEOwiAQRP-FsyHA1lo8eu83kF12K1UDSWlPxn-XJj3ocea9mbcKuK0pbFWWMLO6KqtOvx1hfEreAT8w34uOJa_LTHpX9EGrHgvL63a4fwcJa2prb8gZ10MXCYEulqAlAjGM3kfAHpzQ2XTWNEMQkAW9pYmHwSFNTn2-2rU4XQ:1mshJn:U_zOhG9sCNxbchEloU6tDW72bcUgANnm_KA_Qp2MPag', '2021-12-16 08:19:51.036995'),
('4yzrkezc5iggf5hdnozvpgq88lcmt6zj', 'e30:1mxoZG:2DvSCLOVH6iIxcaQY5yFtMROvb3JjUzeaSm2MZN-KW8', '2021-12-30 11:04:58.291127'),
('7ds9rj1fe9urlhnex85zxpu5s9roc6y5', '.eJxVjMEOwiAQRP-FsyHA1lo8eu83kF12K1UDSWlPxn-XJj3ocea9mbcKuK0pbFWWMLO6KqtOvx1hfEreAT8w34uOJa_LTHpX9EGrHgvL63a4fwcJa2prb8gZ10MXCYEulqAlAjGM3kfAHpzQ2XTWNEMQkAW9pYmHwSFNTn2-2rU4XQ:1mwRK0:MAk11aqb1vJfQybdGzxgLdrhYdiFQqklh4GAZAJgzPk', '2021-12-26 16:03:32.355644'),
('7q94wrvfy2t8wz9hwsczyomp0ppwc948', '.eJxVjMsOwiAQRf-FtSG8KS7d-w2EYQapGkhKuzL-uzbpQrf3nHNfLKZtrXEbtMQZ2ZlJwU6_I6T8oLYTvKd26zz3ti4z8F3hBx382pGel8P9O6hp1G9NVkmdvXG2SNSUJxsMTAaVTCBAWyBUwgeBXksAciRVAZczFWWDIGDvDwMoOIE:1mnd0N:Je9NubioruCC29YoKfRbRM9PClfwH-7hfpqGrfeF8Ao', '2021-12-02 08:42:51.543815'),
('81fuf8tl8ew0jf2ed27uk627awsbtceh', '.eJxVjEEOgjAQRe_StWmmlCnUpXvPQGamU4saSCisjHdXEha6_e-9_zIDbWsZtqrLMCZzNk1rTr8jkzx02km603SbrczTuoxsd8UetNrrnPR5Ody_g0K1fGsv4iByQz22LknPiC0ioSftIMQMDJqT77QTnzMCQmCljC44yRrZvD8KBTiN:1n3i7E:NYMwXZy6OaTCKCmku7e9U8zopNaigNo6oxkwqns4dHw', '2022-01-15 17:24:24.859682'),
('8l6uvspb5va7hmlf5fsv41prqu8gadaw', 'e30:1mxoWQ:7Jzvz3L-ToFX-ZnD97oI30v2EZ5J0McjcbkyyRky1Us', '2021-12-30 11:02:02.781660'),
('bk0t58zcn7fjofvxenn2uruqaw8hecm5', '.eJxVjMEOwiAQRP-FsyHA1lo8eu83kF12K1UDSWlPxn-XJj3ocea9mbcKuK0pbFWWMLO6KqtOvx1hfEreAT8w34uOJa_LTHpX9EGrHgvL63a4fwcJa2prb8gZ10MXCYEulqAlAjGM3kfAHpzQ2XTWNEMQkAW9pYmHwSFNTn2-2rU4XQ:1mnKks:lWcb-monv48wDf_og1z4sQSw3aj264zpidVVNypJ_Lo', '2021-12-01 13:13:38.260469'),
('c7uj8fmcpia7u5663st70k1q6bevbvnv', '.eJxVjMEOwiAQRP-FsyHA1lo8eu83kF12K1UDSWlPxn-XJj3ocea9mbcKuK0pbFWWMLO6KqtOvx1hfEreAT8w34uOJa_LTHpX9EGrHgvL63a4fwcJa2prb8gZ10MXCYEulqAlAjGM3kfAHpzQ2XTWNEMQkAW9pYmHwSFNTn2-2rU4XQ:1mtVop:_u8c0f0k4Id-ThrWIC_qQvXyhL2JCJxFDyJunGG4URA', '2021-12-18 14:15:15.862939'),
('czta0ujiwiuitfetevzwe0gux1ltpg3o', '.eJxVjMEOwiAQRP-FsyHA1lo8eu83kF12K1UDSWlPxn-XJj3ocea9mbcKuK0pbFWWMLO6KqtOvx1hfEreAT8w34uOJa_LTHpX9EGrHgvL63a4fwcJa2prb8gZ10MXCYEulqAlAjGM3kfAHpzQ2XTWNEMQkAW9pYmHwSFNTn2-2rU4XQ:1n0rVA:paWvnWJseOS5yMtGgWts5jBe4FRUWbVIY7CjEcfpZsY', '2022-01-07 20:49:20.557999'),
('ftbas66lw1ljtygswany6l66wpbrvyda', '.eJxVjMEOwiAQRP-FsyHA1lo8eu83kF12K1UDSWlPxn-XJj3ocea9mbcKuK0pbFWWMLO6KqtOvx1hfEreAT8w34uOJa_LTHpX9EGrHgvL63a4fwcJa2prb8gZ10MXCYEulqAlAjGM3kfAHpzQ2XTWNEMQkAW9pYmHwSFNTn2-2rU4XQ:1mt7pB:aFEP2eRUHoztsyXF7JsHTAsuXHEwgFHqWBGVj_Dy42M', '2021-12-17 12:38:01.968668'),
('h7lneeetf7lfhsuw150ks5it8k35uozw', '.eJxVjEEOgjAQRe_StWmmlCnUpXvPQGamU4saSCisjHdXEha6_e-9_zIDbWsZtqrLMCZzNk1rTr8jkzx02km603SbrczTuoxsd8UetNrrnPR5Ody_g0K1fGsv4iByQz22LknPiC0ioSftIMQMDJqT77QTnzMCQmCljC44yRrZvD8KBTiN:1n00tJ:VUcJ5OX5zXWtbTK6q3LO2KypW-WAEpJDrAzaZnzIl4o', '2022-01-05 12:38:45.584056'),
('j6ufy1hcqinkmqmzpsaauboa49ud116m', '.eJxVjEEOgjAQRe_StWmmlCnUpXvPQGamU4saSCisjHdXEha6_e-9_zIDbWsZtqrLMCZzNk1rTr8jkzx02km603SbrczTuoxsd8UetNrrnPR5Ody_g0K1fGsv4iByQz22LknPiC0ioSftIMQMDJqT77QTnzMCQmCljC44yRrZvD8KBTiN:1mxpFg:iAnw0VmQ2QIX9EY0IcbZQAikREyqKv4gL4doFYv0CIQ', '2021-12-30 11:48:48.490450'),
('jqj7rzgsurrfcckknpfjit0ehgas6y6h', '.eJxVjEEOgjAQRe_StWmmlCnUpXvPQGamU4saSCisjHdXEha6_e-9_zIDbWsZtqrLMCZzNk1rTr8jkzx02km603SbrczTuoxsd8UetNrrnPR5Ody_g0K1fGsv4iByQz22LknPiC0ioSftIMQMDJqT77QTnzMCQmCljC44yRrZvD8KBTiN:1mxozI:45wLKzfwwFLnS7TWxgZbVl5ZFZu_0PK9MGIc5bdIG6Y', '2021-12-30 11:31:52.577899'),
('k1uvcu6gahjtygve1rr0lilwq91hbbt6', '.eJxVjEEOgjAQRe_StWmmlCnUpXvPQGamU4saSCisjHdXEha6_e-9_zIDbWsZtqrLMCZzNk1rTr8jkzx02km603SbrczTuoxsd8UetNrrnPR5Ody_g0K1fGsv4iByQz22LknPiC0ioSftIMQMDJqT77QTnzMCQmCljC44yRrZvD8KBTiN:1mzuPX:LYciE-ABey9sU6KX2YaW7dDKae5lArMFWjMOFj_Z36M', '2022-01-05 05:43:35.525057'),
('ms5ocfqe7s6vhsbmlojr7pw2fs61rzwg', '.eJxVjEEOgjAQRe_StWmmlCnUpXvPQGamU4saSCisjHdXEha6_e-9_zIDbWsZtqrLMCZzNk1rTr8jkzx02km603SbrczTuoxsd8UetNrrnPR5Ody_g0K1fGsv4iByQz22LknPiC0ioSftIMQMDJqT77QTnzMCQmCljC44yRrZvD8KBTiN:1mxpNY:fbLmvEjl9RCThxtBLvy2WDRhHaWqfeicwYABWB2umVY', '2021-12-30 11:56:56.568755'),
('no6brdgl4cytov4zths5rahfzy3ee5n6', '.eJxVjEEOgjAQRe_StWmmlCnUpXvPQGamU4saSCisjHdXEha6_e-9_zIDbWsZtqrLMCZzNk1rTr8jkzx02km603SbrczTuoxsd8UetNrrnPR5Ody_g0K1fGsv4iByQz22LknPiC0ioSftIMQMDJqT77QTnzMCQmCljC44yRrZvD8KBTiN:1n2xxu:PgXvUcjGKDlAEjfJq8qRjj9XSEMYXojtDHdGhKOXOKQ', '2022-01-13 16:07:42.669144'),
('p72lgn5tgtwu7zgb8004zbxl47ik9eis', '.eJxVjEEOgjAQRe_StWmmlCnUpXvPQGamU4saSCisjHdXEha6_e-9_zIDbWsZtqrLMCZzNk1rTr8jkzx02km603SbrczTuoxsd8UetNrrnPR5Ody_g0K1fGsv4iByQz22LknPiC0ioSftIMQMDJqT77QTnzMCQmCljC44yRrZvD8KBTiN:1mxqYp:Yy7PcErFeF1LNTFhcBAYI-TaKYOj4LUX5IaFStiRAak', '2021-12-30 13:12:39.973177'),
('twutz06wh4xubu7so62cd0gt4vkfiid8', 'e30:1mxoXg:CiRv_3NEEN6jTqAV2DDqBzEEbrUGv63L8ECXQMhtsfk', '2021-12-30 11:03:20.136859'),
('utr5yd08o4t4mkh2e7yqy77go0i62hle', 'e30:1mn1wd:pO41zrUaPRKYDfNNaybwTaNByXICgKsi4fVknSBpS70', '2021-11-30 17:08:31.749705'),
('w3737ctm85h7g3qi2yhwmrgmbchnw33f', '.eJxVjEEOgjAQRe_StWmmlCnUpXvPQGamU4saSCisjHdXEha6_e-9_zIDbWsZtqrLMCZzNk1rTr8jkzx02km603SbrczTuoxsd8UetNrrnPR5Ody_g0K1fGsv4iByQz22LknPiC0ioSftIMQMDJqT77QTnzMCQmCljC44yRrZvD8KBTiN:1mzg3B:Vw2385XzWYXGeMVwrfFNJS6dCVAGn2TCAuBXHZ67ppo', '2022-01-04 14:23:33.879317'),
('wzxstjpfa3snfnwteluzud1l3vwkdm0z', '.eJxVjEEOwiAQRe_C2hAHKIJL956BDDODVA1NSrsy3l2bdKHb_977L5VwXWpau8xpZHVWENThd8xID2kb4Tu226Rpass8Zr0peqddXyeW52V3_w4q9vqtPaAzxgSmDKfCgIV9pGhCHqhYCRAxUiiWjWd_zCjWgYAN5IjdIEa9Pxt-OJg:1myArv:C6qqqMfytuaZ1vTIkBnOtTKDV8w7mjmgA0wZHYZ0-60', '2021-12-31 10:53:43.423655'),
('ya7u5k4plpx7f98ff1dbb9se4cz3lztz', '.eJxVjMEOwiAQRP-FsyHA1lo8eu83kF12K1UDSWlPxn-XJj3ocea9mbcKuK0pbFWWMLO6KqtOvx1hfEreAT8w34uOJa_LTHpX9EGrHgvL63a4fwcJa2prb8gZ10MXCYEulqAlAjGM3kfAHpzQ2XTWNEMQkAW9pYmHwSFNTn2-2rU4XQ:1n2sJk:0ObD1gu26Q4nj3GreJhE-t4BbRHBRT42SI0zyuffvTo', '2022-01-13 10:05:52.936192');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `document`
--

CREATE TABLE `document` (
  `documentid` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `document`
--

INSERT INTO `document` (`documentid`, `title`, `image`, `description`, `content`, `createdate`, `editdate`, `isenable`, `note`) VALUES
(1, 'Bạn cần thời gian bao lâu để học đánh máy mười ngón?', 'documents/bee5.png', '', '<p>Bạn h&atilde;y nhớ c&acirc;u n&oacute;i &quot;C&oacute; c&ocirc;ng m&agrave;i sắt c&oacute; ng&agrave;y n&ecirc;n kim&quot;. Thế n&ecirc;n việc học đ&aacute;nh m&aacute;y mười ng&oacute;n phụ thuộc v&agrave;o bản th&acirc;n của bạn. Việc r&egrave;n luyện v&agrave; thực h&agrave;nh đ&aacute;nh m&aacute;y thường xuy&ecirc;n cũng rất quan trọng. Để đạt được kết quả tốt, bạn n&ecirc;n đặt ra mục ti&ecirc;u thực hiện một b&agrave;i học trong một ng&agrave;y. Bạn h&atilde;y ghi nhớ vị tr&iacute; tất cả c&aacute;c chữ c&aacute;i kh&ocirc;ng c&oacute; nghĩa l&agrave; bạn đ&atilde; sẵn s&agrave;ng để c&oacute; thể đ&aacute;nh m&aacute;y nhanh. Ng&oacute;n tay của bạn cần dần dần nhớ được c&aacute;c mẫu chuyển động hay c&ograve;n gọi l&agrave; phản xạ chuyển động c&oacute; điều kiện về vị tr&iacute; của mỗi ph&iacute;m cụ thể, m&agrave; kh&ocirc;ng cần suy nghĩ về c&aacute;c ph&iacute;m hoặc nh&igrave;n xuống b&agrave;n ph&iacute;m. Khả năng phản xạ tự động di chuyển n&agrave;y được h&igrave;nh th&agrave;nh th&ocirc;ng qua việc r&egrave;n luyện đ&aacute;nh m&aacute;y nhiều lần lặp đi lặp lại. Bạn h&atilde;y nhớ c&acirc;u n&oacute;i &quot;C&oacute; c&ocirc;ng m&agrave;i sắt c&oacute; ng&agrave;y n&ecirc;n kim&quot;. Thế n&ecirc;n việc học đ&aacute;nh m&aacute;y mười ng&oacute;n phụ thuộc v&agrave;o bản th&acirc;n của bạn. Việc r&egrave;n luyện v&agrave; thực h&agrave;nh đ&aacute;nh m&aacute;y thường xuy&ecirc;n cũng rất quan trọng. Để đạt được kết quả tốt, bạn n&ecirc;n đặt ra mục ti&ecirc;u thực hiện một b&agrave;i học trong một ng&agrave;y. Bạn h&atilde;y ghi nhớ vị tr&iacute; tất cả c&aacute;c chữ c&aacute;i kh&ocirc;ng c&oacute; nghĩa l&agrave; bạn đ&atilde; sẵn s&agrave;ng để c&oacute; thể đ&aacute;nh m&aacute;y nhanh. Ng&oacute;n tay của bạn cần dần dần nhớ được c&aacute;c mẫu chuyển động hay c&ograve;n gọi l&agrave; phản xạ chuyển động c&oacute; điều kiện về vị tr&iacute; của mỗi ph&iacute;m cụ thể, m&agrave; kh&ocirc;ng cần suy nghĩ về c&aacute;c ph&iacute;m hoặc nh&igrave;n xuống b&agrave;n ph&iacute;m. Khả năng phản xạ tự động di chuyển n&agrave;y được h&igrave;nh th&agrave;nh th&ocirc;ng qua việc r&egrave;n luyện đ&aacute;nh m&aacute;y nhiều lần lặp đi lặp lại. Bạn h&atilde;y nhớ c&acirc;u n&oacute;i &quot;C&oacute; c&ocirc;ng m&agrave;i sắt c&oacute; ng&agrave;y n&ecirc;n kim&quot;. Thế n&ecirc;n việc học đ&aacute;nh m&aacute;y mười ng&oacute;n phụ thuộc v&agrave;o bản th&acirc;n của bạn. Việc r&egrave;n luyện v&agrave; thực h&agrave;nh đ&aacute;nh m&aacute;y thường xuy&ecirc;n cũng rất quan trọng. Để đạt được kết quả tốt, bạn n&ecirc;n đặt ra mục ti&ecirc;u thực hiện một b&agrave;i học trong một ng&agrave;y. Bạn h&atilde;y ghi nhớ vị tr&iacute; tất cả c&aacute;c chữ c&aacute;i kh&ocirc;ng c&oacute; nghĩa l&agrave; bạn đ&atilde; sẵn s&agrave;ng để c&oacute; thể đ&aacute;nh m&aacute;y nhanh. Ng&oacute;n tay của bạn cần dần dần nhớ được c&aacute;c mẫu chuyển động hay c&ograve;n gọi l&agrave; phản xạ chuyển động c&oacute; điều kiện về vị tr&iacute; của mỗi ph&iacute;m cụ thể, m&agrave; kh&ocirc;ng cần suy nghĩ về c&aacute;c ph&iacute;m hoặc nh&igrave;n xuống b&agrave;n ph&iacute;m. Khả năng phản xạ tự động di chuyển n&agrave;y được h&igrave;nh th&agrave;nh th&ocirc;ng qua việc r&egrave;n luyện đ&aacute;nh m&aacute;y nhiều lần lặp đi lặp lại. Bạn h&atilde;y nhớ c&acirc;u n&oacute;i &quot;C&oacute; c&ocirc;ng m&agrave;i sắt c&oacute; ng&agrave;y n&ecirc;n kim&quot;. Thế n&ecirc;n việc học đ&aacute;nh m&aacute;y mười ng&oacute;n phụ thuộc v&agrave;o bản th&acirc;n của bạn. Việc r&egrave;n luyện v&agrave; thực h&agrave;nh đ&aacute;nh m&aacute;y thường xuy&ecirc;n cũng rất quan trọng. Để đạt được kết quả tốt, bạn n&ecirc;n đặt ra mục ti&ecirc;u thực hiện một b&agrave;i học trong một ng&agrave;y. Bạn h&atilde;y ghi nhớ vị tr&iacute; tất cả c&aacute;c chữ c&aacute;i kh&ocirc;ng c&oacute; nghĩa l&agrave; bạn đ&atilde; sẵn s&agrave;ng để c&oacute; thể đ&aacute;nh m&aacute;y nhanh. Ng&oacute;n tay của bạn cần dần dần nhớ được c&aacute;c mẫu chuyển động hay c&ograve;n gọi l&agrave; phản xạ chuyển động c&oacute; điều kiện về vị tr&iacute; của mỗi ph&iacute;m cụ thể, m&agrave; kh&ocirc;ng cần suy nghĩ về c&aacute;c ph&iacute;m hoặc nh&igrave;n xuống b&agrave;n ph&iacute;m. Khả năng phản xạ tự động di chuyển n&agrave;y được h&igrave;nh th&agrave;nh th&ocirc;ng qua việc r&egrave;n luyện đ&aacute;nh m&aacute;y nhiều lần lặp đi lặp lại. Bạn h&atilde;y nhớ c&acirc;u n&oacute;i &quot;C&oacute; c&ocirc;ng m&agrave;i sắt c&oacute; ng&agrave;y n&ecirc;n kim&quot;. Thế n&ecirc;n việc học đ&aacute;nh m&aacute;y mười ng&oacute;n phụ thuộc v&agrave;o bản th&acirc;n của bạn. Việc r&egrave;n luyện v&agrave; thực h&agrave;nh đ&aacute;nh m&aacute;y thường xuy&ecirc;n cũng rất quan trọng. Để đạt được kết quả tốt, bạn n&ecirc;n đặt ra mục ti&ecirc;u thực hiện một b&agrave;i học trong một ng&agrave;y. Bạn h&atilde;y ghi nhớ vị tr&iacute; tất cả c&aacute;c chữ c&aacute;i kh&ocirc;ng c&oacute; nghĩa l&agrave; bạn đ&atilde; sẵn s&agrave;ng để c&oacute; thể đ&aacute;nh m&aacute;y nhanh. Ng&oacute;n tay của bạn cần dần dần nhớ được c&aacute;c mẫu chuyển động hay c&ograve;n gọi l&agrave; phản xạ chuyển động c&oacute; điều kiện về vị tr&iacute; của mỗi ph&iacute;m cụ thể, m&agrave; kh&ocirc;ng cần suy nghĩ về c&aacute;c ph&iacute;m hoặc nh&igrave;n xuống b&agrave;n ph&iacute;m. Khả năng phản xạ tự động di chuyển n&agrave;y được h&igrave;nh th&agrave;nh th&ocirc;ng qua việc r&egrave;n luyện đ&aacute;nh m&aacute;y nhiều lần lặp đi lặp lại. Bạn h&atilde;y nhớ c&acirc;u n&oacute;i &quot;C&oacute; c&ocirc;ng m&agrave;i sắt c&oacute; ng&agrave;y n&ecirc;n kim&quot;. Thế n&ecirc;n việc học đ&aacute;nh m&aacute;y mười ng&oacute;n phụ thuộc v&agrave;o bản th&acirc;n của bạn. Việc r&egrave;n luyện v&agrave; thực h&agrave;nh đ&aacute;nh m&aacute;y thường xuy&ecirc;n cũng rất quan trọng. Để đạt được kết quả tốt, bạn n&ecirc;n đặt ra mục ti&ecirc;u thực hiện một b&agrave;i học trong một ng&agrave;y. Bạn h&atilde;y ghi nhớ vị tr&iacute; tất cả c&aacute;c chữ c&aacute;i kh&ocirc;ng c&oacute; nghĩa l&agrave; bạn đ&atilde; sẵn s&agrave;ng để c&oacute; thể đ&aacute;nh m&aacute;y nhanh. Ng&oacute;n tay của bạn cần dần dần nhớ được c&aacute;c mẫu chuyển động hay c&ograve;n gọi l&agrave; phản xạ chuyển động c&oacute; điều kiện về vị tr&iacute; của mỗi ph&iacute;m cụ thể, m&agrave; kh&ocirc;ng cần suy nghĩ về c&aacute;c ph&iacute;m hoặc nh&igrave;n xuống b&agrave;n ph&iacute;m. Khả năng phản xạ tự động di chuyển n&agrave;y được h&igrave;nh th&agrave;nh th&ocirc;ng qua việc r&egrave;n luyện đ&aacute;nh m&aacute;y nhiều lần lặp đi lặp lại.</p>', '2021-11-17', '2021-12-12 16:06:27.707323', 1, ''),
(2, 'Chia sẻ cho bạn bí quyết học đánh máy mười ngón hiệu quả.', 'documents/bee2.png', '', '<p>1) Quyết định rằng bạn cần ph&aacute;t triển c&aacute;c kỹ năng của m&igrave;nh (hoặc l&agrave; học c&aacute;ch chạm v&agrave;o loại, để học bơi nhanh hoặc thậm ch&iacute; học lịch sử tiếng Anh) l&agrave; sự khởi đầu của cuộc h&agrave;nh tr&igrave;nh của bạn. Bạn phải n&oacute;i với ch&iacute;nh m&igrave;nh -tại sao bạn cần n&oacute; v&agrave; lợi &iacute;ch của n&oacute; l&agrave; g&igrave;? Mục ti&ecirc;u của bạn l&agrave; g&igrave;? Tại sao những c&acirc;u hỏi n&agrave;y lại quan trọng m&agrave; bạn c&oacute; thể hỏi? Bất cứ khi n&agrave;o một người bắt đầu một sở th&iacute;ch mới hoặc, v&iacute; dụ, bắt đầu học một m&ocirc;n học mới ở trường, họ c&oacute; thể cảm thấy thất vọng hoặc lo lắng, bởi v&igrave; sự khởi đầu c&oacute; thể kh&ocirc;ng dễ d&agrave;ng. Bạn c&oacute; thể vui v&igrave; bắt đầu một điều g&igrave; đ&oacute; mới, nhưng bạn cũng c&oacute; thể buồn khi trải qua những kh&oacute; khăn đầu ti&ecirc;n. Đ&oacute; l&agrave; b&igrave;nh thường! Ngo&agrave;i ra, đặt mục ti&ecirc;u c&oacute; thể đo lường được (v&iacute; dụ: số từ mỗi ph&uacute;t *) l&agrave; rất quan trọng trong mọi lĩnh vực - kinh doanh, thể thao hoặc gi&aacute;o dục. V&igrave; vậy, nếu bạn đ&atilde; viết ra mục ti&ecirc;u v&agrave; lợi &iacute;ch của m&igrave;nh, bạn c&oacute; thể đọc lại ch&uacute;ng nhiều lần khi mất động lực. C&oacute;, bạn c&oacute; thể l&agrave; người trợ gi&uacute;p tốt nhất cho ch&iacute;nh m&igrave;nh! * Từ mỗi ph&uacute;t trong b&agrave;i kiểm tra tốc độ c&oacute; nghĩa l&agrave; - bạn c&oacute; thể viết bao nhi&ecirc;u từ mỗi ph&uacute;t. 1 từ = 5 chữ c&aacute;i bao gồm khoảng trắng v&agrave; k&yacute; hiệu. 2) Thiết lập lịch tr&igrave;nh. Trừ khi bạn lập thời gian biểu cho việc học, nếu kh&ocirc;ng bạn sẽ rất dễ kiếm cớ để kh&ocirc;ng luyện tập. H&atilde;y l&agrave; người cố vấn v&agrave; gi&aacute;m s&aacute;t của ch&iacute;nh bạn. Nhiều trường học đang sử dụng c&aacute;c c&ocirc;ng cụ đ&aacute;nh m&aacute;y bằng cảm ứng trong c&ocirc;ng việc h&agrave;ng ng&agrave;y của họ. Họ cũng c&oacute; một lịch tr&igrave;nh m&agrave; họ phải tu&acirc;n thủ nghi&ecirc;m ngặt. H&atilde;y tưởng tượng bạn quay trở lại những ng&agrave;y bạn c&ograve;n l&agrave; một đứa trẻ v&agrave; thực hiện nghi&ecirc;m t&uacute;c thời gian biểu m&agrave; bạn đ&atilde; thực hiện. V&igrave; vậy, h&atilde;y b&aacute;m v&agrave;o n&oacute;! Trước khi bạn bắt đầu qu&aacute; tr&igrave;nh học tập của m&igrave;nh, h&atilde;y quyết định một số h&igrave;nh phạt h&agrave;i hước m&agrave; bạn c&oacute; thể l&agrave;m, v&igrave; vậy bạn sẽ kh&ocirc;ng muốn bỏ lỡ một b&agrave;i học n&agrave;o nữa. 3) Để t&igrave;m hiểu xem bạn c&oacute; đang tiến bộ hay kh&ocirc;ng, trước ti&ecirc;n bạn phải t&igrave;m ra vị tr&iacute; hiện tại bạn đang đứng. H&atilde;y l&agrave;m b&agrave;i kiểm tra tốc độ v&agrave; l&agrave;m tốt nhất c&oacute; thể. Đừng lo lắng nếu bạn kh&ocirc;ng h&agrave;i l&ograve;ng về kết quả. Bạn đang ở đ&acirc;y để t&igrave;m hiểu! V&agrave; h&atilde;y nhớ rằng kết quả bạn đang gặp phải c&agrave;ng tệ th&igrave; c&agrave;ng c&oacute; nhiều kh&ocirc;ng gian cho sự ph&aacute;t triển của bạn! Ghi lại kết quả kiểm tra tốc độ của bạn hoặc tạo t&agrave;i khoản trong TypingStudy để bạn c&oacute; thể theo d&otilde;i tiến tr&igrave;nh của m&igrave;nh bằng c&aacute;ch kiểm tra lịch sử hoạt động của m&igrave;nh. 4) L&agrave;m từng b&agrave;i một . N&ecirc;n l&agrave;m 1 b&agrave;i đầy đủ mỗi ng&agrave;y. Sau mỗi b&agrave;i học, bạn n&ecirc;n l&agrave;m b&agrave;i kiểm tra tốc độ. Nếu bạn cảm thấy m&igrave;nh kh&ocirc;ng thể l&agrave;m được nhiều việc mỗi ng&agrave;y, bạn c&oacute; thể chọn c&aacute;c tr&ograve; chơi đ&aacute;nh m&aacute;y để l&agrave;m cho qu&aacute; tr&igrave;nh học tập trở n&ecirc;n vui vẻ hơn. Nếu bạn chọn chơi tr&ograve; chơi đ&aacute;nh m&aacute;y, ch&uacute;ng t&ocirc;i khuy&ecirc;n bạn n&ecirc;n chọn cấp độ theo b&agrave;i học bạn đang l&agrave;m, tức l&agrave; - nếu bạn đang l&agrave;m b&agrave;i 1, h&atilde;y chọn cấp độ 1 trong phần chơi tr&ograve; chơi, nếu bạn đang l&agrave;m b&agrave;i học 2, h&atilde;y chọn cấp độ 2 v&agrave; Sớm. Vui l&ograve;ng đảm bảo bạn c&oacute; &iacute;t nhất 30 ph&uacute;t cho mỗi b&agrave;i học. 5) Đo lường sự tiến bộ của ch&iacute;nh bạn. Bạn c&oacute; cảm thấy an to&agrave;n hơn l&uacute;c ban đầu kh&ocirc;ng? Bạn c&oacute; thể g&otilde; m&agrave; kh&ocirc;ng cần nh&igrave;n tr&ecirc;n b&agrave;n ph&iacute;m? Kết quả của b&agrave;i kiểm tra tốc độ c&oacute; tốt hơn kh&ocirc;ng? Bộ nhớ cơ bắp của bạn đ&atilde; hoạt động chưa? Nếu bạn c&oacute; thể trả lời C&Oacute; cho tất cả c&aacute;c c&acirc;u hỏi, bạn đang l&agrave;m rất tốt. Nếu KH&Ocirc;NG, h&atilde;y tiếp tục luyện tập. 6) T&iacute;nh bền bỉ.Chỉ c&oacute; thực h&agrave;nh mới tạo n&ecirc;n sự ho&agrave;n hảo. Kh&ocirc;ng c&oacute; c&aacute;ch kỳ diệu n&agrave;o để đ&aacute;nh m&aacute;y ho&agrave;n hảo trong 5 ph&uacute;t hoặc 5 ng&agrave;y. Ki&ecirc;n tr&igrave; l&agrave; điều tốt l&agrave;m n&ecirc;n xuất sắc! Cố gắng mời bạn b&egrave; hoặc gia đ&igrave;nh của bạn tham gia c&ugrave;ng bạn. Bạn thậm ch&iacute; c&oacute; thể cạnh tranh với nhau trong một b&agrave;i kiểm tra tốc độ hoặc c&aacute;c tr&ograve; chơi đ&aacute;nh m&aacute;y c&oacute; sẵn! Sự lựa chọn l&agrave; v&agrave;o bạn. Tuy nhi&ecirc;n, đừng t&igrave;m l&yacute; do để ngăn cản bước tiến của bản th&acirc;n. Ngay cả khi kh&ocirc;ng ai muốn tham gia c&ugrave;ng bạn, điều đ&oacute; kh&ocirc;ng quan trọng - bạn l&agrave; kẻ đ&agrave;o bới hạnh ph&uacute;c của ch&iacute;nh m&igrave;nh. H&atilde;y nhớ rằng, khi bạn nhập văn bản bằng c&aacute;ch chạm, bạn cũng c&oacute; thể học bằng c&aacute;ch thực hiện - sử dụng mạng x&atilde; hội hoặc Skype để tr&ograve; chuyện với bạn b&egrave; v&agrave; gia đ&igrave;nh của bạn. Bạn sẽ nhận thấy rằng sự tiến bộ đến nhanh ch&oacute;ng. 7) Kh&ocirc;ng c&oacute; g&igrave; ngọt ng&agrave;o hơn hương vị của chiến thắng! Khi bạn thấy rằng bạn đ&atilde; đạt được mục ti&ecirc;u của m&igrave;nh, bạn biết rằng n&oacute; rất đ&aacute;ng để cố gắng. Tuy nhi&ecirc;n, nếu bạn đ&atilde; đạt được mục ti&ecirc;u, nhưng bạn vẫn kh&ocirc;ng cảm thấy h&agrave;i l&ograve;ng về kết quả, bạn c&oacute; thể đặt mục ti&ecirc;u mới. Thử th&aacute;ch bản th&acirc;n!</p>', '2021-11-17', '2021-12-12 16:06:14.449388', 1, ''),
(3, 'Mách bạn những mẹo nhỏ trong quá trình đánh máy mười ngón.', 'documents/bee.png', '', '<p>C&aacute;c em h&atilde;y nhớ giữ c&aacute;c ng&oacute;n tay c&agrave;ng gần vị tr&iacute; h&agrave;ng ph&iacute;m ch&iacute;nh c&agrave;ng tốt v&agrave; giảm thiểu di chuyển b&agrave;n tay trong khi học. C&aacute;c b&agrave;i tập phối hợp ng&oacute;n tay sẽ gi&uacute;p giảm căng thẳng v&agrave; thường gi&uacute;p c&aacute;c em lu&ocirc;n vui vẻ. Một m&ocirc;i trường l&agrave;nh mạnh v&agrave; thoải m&aacute;i c&oacute; thể gi&uacute;p cho việc học trở n&ecirc;n th&uacute; vị hơn nhiều. C&agrave;ng thực h&agrave;nh nhiều, c&aacute;c em sẽ c&agrave;ng g&otilde; tốt hơn v&agrave; tốc độ nhanh hơn. Nếu c&oacute; thể, h&atilde;y thử thực h&agrave;nh tr&ecirc;n một b&agrave;n ph&iacute;m th&ocirc;ng thường, kh&ocirc;ng phải b&agrave;n ph&iacute;m m&aacute;y t&iacute;nh. Trước khi bắt đầu kiểm tra tốc độ đ&aacute;nh m&aacute;y, h&atilde;y chắc chắn rằng c&aacute;c em đang ngồi thẳng, hai ch&acirc;n đặt thẳng tr&ecirc;n s&agrave;n nh&agrave;. Kh&eacute;p khuỷu tay s&aacute;t người, để cổ tay thẳng v&agrave; cẳng tay c&acirc;n bằng v&agrave; nhớ thường xuy&ecirc;n nghỉ ngơi. C&aacute;c em h&atilde;y nhớ giữ c&aacute;c ng&oacute;n tay c&agrave;ng gần vị tr&iacute; h&agrave;ng ph&iacute;m ch&iacute;nh c&agrave;ng tốt v&agrave; giảm thiểu di chuyển b&agrave;n tay trong khi học. C&aacute;c b&agrave;i tập phối hợp ng&oacute;n tay sẽ gi&uacute;p giảm căng thẳng v&agrave; thường gi&uacute;p c&aacute;c em lu&ocirc;n vui vẻ. Một m&ocirc;i trường l&agrave;nh mạnh v&agrave; thoải m&aacute;i c&oacute; thể gi&uacute;p cho việc học trở n&ecirc;n th&uacute; vị hơn nhiều. C&agrave;ng thực h&agrave;nh nhiều, c&aacute;c em sẽ c&agrave;ng g&otilde; tốt hơn v&agrave; tốc độ nhanh hơn. Nếu c&oacute; thể, h&atilde;y thử thực h&agrave;nh tr&ecirc;n một b&agrave;n ph&iacute;m th&ocirc;ng thường, kh&ocirc;ng phải b&agrave;n ph&iacute;m m&aacute;y t&iacute;nh. Trước khi bắt đầu kiểm tra tốc độ đ&aacute;nh m&aacute;y, h&atilde;y chắc chắn rằng c&aacute;c em đang ngồi thẳng, hai ch&acirc;n đặt thẳng tr&ecirc;n s&agrave;n nh&agrave;. Kh&eacute;p khuỷu tay s&aacute;t người, để cổ tay thẳng v&agrave; cẳng tay c&acirc;n bằng v&agrave; nhớ thường xuy&ecirc;n nghỉ ngơi.</p>', '2021-11-17', '2021-12-12 16:06:06.124915', 1, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `faq`
--

CREATE TABLE `faq` (
  `faqid` int(11) NOT NULL,
  `question` varchar(250) NOT NULL,
  `answer` longtext DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `faq`
--

INSERT INTO `faq` (`faqid`, `question`, `answer`, `createdate`, `editdate`, `isenable`, `note`) VALUES
(1, 'Khóa học này hoàn toàn miễn phí?', 'Đúng vậy, Smart Typing là ứng dụng web luyện tập đánh máy mười ngón.', '2021-11-17', '2021-11-17 10:12:46.000000', 1, ''),
(2, 'Tại sao tôi cần đăng ký ứng dụng này?', '1) Nếu đăng ký, bạn sẽ có thông tin về sự tiến bộ và lịch sử của mình.Nếu bạn có đăng ký thông tin tài khoản, bạn sẽ được lưu vết quá trình học và luyện tập trên ứng dụng Smart Typing. Ngoài ra, hệ thống còn cung cấp danh hiệu cho người học nếu đạt đủ điểm kinh nghiệm mà hệ thống đưa ra.', '2021-11-17', '2021-11-17 10:12:46.000000', 1, ''),
(3, 'Mất bao nhiêu thời gian để có thể học gõ 10 ngón?', 'Thời gian cần để học gõ 10 ngón phụ thuộc vào bản thân bạn. Thực hành thường xuyên cũng rất quan trọng. Để có kết quả tốt, chúng tôi đề nghị bạn thực hiện 1 bài học một ngày. Hãy nhớ rằng, biết vị trí tất cả các chữ cái không có nghĩa là bạn đã sẵn sang để có thể đánh máy nhanh. Ngón tay của bạn cần dần dần nhớ được các mẫu chuyển động hay còn gọi là \'phản xạ chuyển động có điều kiện\' về vị trí của mỗi phím cụ thể, mà không cần suy nghĩ về các phím hoặc nhìn xuống bàn phím. Khả năng tự động di chuyển này chỉ được phát triển sau nhiều lần lặp lại. Hãy nhớ rằng – Có công mài sắt có ngày nên kim!', '2021-11-17', '2021-11-17 10:12:46.000000', 1, ''),
(4, 'Chỉ số từ trên phút (wpm) được đo bằng cách nào?', 'Để đo WPM, chương trình đếm tổng số từ bạn đã viết trong một phút. 1 từ = 5 ký tự, bao gồm cả dấu cách và dấu câu.', '2021-11-17', '2021-11-17 10:12:46.000000', 1, ''),
(5, 'Làm sao để tôi truy cập vào ứng dụng Smart Typing?', 'Về mặt kỹ thuật, bạn chỉ cần có kết nối Internet. Tuy nhiên, bạn cũng cần có động lực và sẵn sàng để cải thiện kỹ năng gõ bàn phím của mình.', '2021-11-17', '2021-11-17 10:12:46.000000', 1, ''),
(6, 'Tại sao khi bắt đầu bài học, chương trình thông báo tôi phải tắt Vietnamese mode.', 'Đầu tiên, bạn hãy kiểm tra xem bạn có đang bật chế độ gõ tiếng Việt hay không. Nếu bạn đang bật chế độ gõ tiếng Việt, chương trình sẽ yêu cầu bạn tắt chế độ gõ tiếng việt để luyện gõ kí tự và những từ vựng không dấu.', '2021-11-17', '2021-11-17 10:12:46.000000', 1, ''),
(7, 'Ứng dụng Smart Typing dành cho đối tượng nào?', 'Smart Typing ra đời chủ yếu nhắm đến việc hướng dẫn luyện tập đánh máy cho học sinh tiểu học. Tuy nhiên, Smart Typing còn dành cho tất cả những người muốn phát triển kỹ năng đánh máy của mình. Đây là một kỹ năng cho phép người đánh máy không cần nhìn vào bàn phím để tìm phím đúng.', '2021-11-17', '2021-11-17 10:12:46.000000', 1, ''),
(8, 'Chương trình có phù hợp cho những người mắc chứng khó đọc không?', 'Ứng dụng luyện tập gõ phím mười ngón có thích hợp cho những người bị chứng khó đọc. Với kỹ năng đánh máy 10 ngón những người này có một lợi thế đặc biệt trong một số lĩnh vực so với những người không có kỹ năng đánh máy mười ngón. Với một số người mắc chứng khó đọc với chữ viết tay, cả về mặt tốc độ và khả năng đọc, việc đánh máy sẽ thuận tiện hơn nhiều.', '2021-11-17', '2021-11-17 10:12:46.000000', 1, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `game`
--

CREATE TABLE `game` (
  `gameid` int(11) NOT NULL,
  `gameorder` int(11) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `stars` int(11) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `topicpracticeid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `game`
--

INSERT INTO `game` (`gameid`, `gameorder`, `name`, `image`, `description`, `link`, `stars`, `createdate`, `editdate`, `isenable`, `note`, `topicpracticeid_id`) VALUES
(1, 1, 'Ong vàng thăm vườn hoa', '/media/practices/images/game1.png', '', '/media/practices/game1/index.html', 3, '2021-11-05', '2021-11-05 12:40:09.000000', 1, '', 1),
(2, 2, 'Ong vàng bắn bong bóng', '/media/practices/images/game2.png', '', '/media/practices/game2/index.html', 3, '2021-11-05', '2021-11-05 12:40:09.000000', 1, '', 1),
(3, 3, 'Ong vàng đi tìm mật', '/media/practices/images/game3.png', '', '/media/practices/game3/index.html', 3, '2021-11-05', '2021-11-05 12:40:09.000000', 1, '', 2),
(4, 4, 'Ong vàng chơi gắp thú', '/media/practices/images/game4.png', '', '/media/practices/game4/index.html', 3, '2021-11-05', '2021-11-05 12:40:09.000000', 1, '', 2),
(5, 5, 'Ong vàng siêu vui nhộn', '/media/practices/images/game5.png', '', '/media/practices/game5/index.html', 3, '2021-11-05', '2021-11-05 12:40:09.000000', 1, '', 3),
(6, 6, 'Ong vàng bay về tổ', '/media/practices/images/game6.png', '', '/media/practices/game6/index.html', 3, '2021-11-05', '2021-11-05 12:40:09.000000', 1, '', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gamelevel`
--

CREATE TABLE `gamelevel` (
  `levelid` int(11) NOT NULL,
  `name` longtext DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `stars` int(11) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `gameid_id` int(11) DEFAULT NULL,
  `levelorder` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `gamelevel`
--

INSERT INTO `gamelevel` (`levelid`, `name`, `image`, `link`, `stars`, `createdate`, `editdate`, `isenable`, `note`, `gameid_id`, `levelorder`) VALUES
(1, 'Dễ', '/media/practices/images/game1/level1.png', '/media/practices/game1/level1/index.html', 3, '2021-12-30', '2021-12-31 11:06:01.267736', 1, '', 1, 1),
(2, 'Trung bình', '/media/practices/images/game1/level2.png', '/media/practices/game1/level2/index.html', 3, '2021-12-30', '2021-12-30 10:37:25.602351', 1, '', 1, 2),
(3, 'Khó', '/media/practices/images/game1/level3.png', '/media/practices/game1/level3/index.html', 3, '2021-12-30', '2022-01-01 17:07:40.977198', 1, '', 1, 3),
(4, 'Dễ', '/media/practices/images/game2/level1.png', '/media/practices/game2/level1/index.html', 3, '2021-12-31', '2021-12-31 11:05:18.484155', 1, '', 2, 1),
(5, 'Trung bình', '/media/practices/images/game2/level2.png', '/media/practices/game2/level2/index.html', 3, '2021-12-31', '2021-12-31 11:06:27.666086', 1, '', 2, 2),
(6, 'Khó', '/media/practices/images/game2/level3.png', '/media/practices/game2/level3/index.html', 3, '2021-12-31', '2021-12-31 11:06:51.196293', 1, '', 2, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `header`
--

CREATE TABLE `header` (
  `headerid` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `header`
--

INSERT INTO `header` (`headerid`, `name`, `link`, `createdate`, `editdate`, `isenable`, `note`) VALUES
(1, 'Trang Chủ', '\'homepage:index\'', '2021-11-18', '2021-11-18 09:48:46.000000', 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lesson`
--

CREATE TABLE `lesson` (
  `lessonid` int(11) NOT NULL,
  `lessonorder` int(11) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `stars` int(11) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `topiclessonid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `lesson`
--

INSERT INTO `lesson` (`lessonid`, `lessonorder`, `name`, `image`, `description`, `stars`, `createdate`, `editdate`, `isenable`, `note`, `topiclessonid_id`) VALUES
(1, 1, 'Làm quen với bàn phím', 'media/lessons/images/lesson1.PNG', 'Giới thiệu và làm quen với bàn phím', 3, '2021-11-02', '2021-11-02 00:33:04.000000', 1, '', 1),
(2, 2, 'Kỹ năng gõ phím 10 ngón', 'media/lessons/images/lesson2.PNG', 'Giới thiệu kỹ năng gõ phím 10 ngón', 3, '2021-11-02', '2021-11-02 00:33:04.000000', 1, '', 1),
(3, 3, 'PHÍM A, S, D, F', 'media/lessons/images/lesson3.png', 'Học gõ hàng phím giữa bên tay trái', 3, '2021-11-02', '2021-11-02 00:33:04.000000', 1, '', 2),
(4, 4, 'PHÍM J, K, L, ;', 'media/lessons/images/lesson4.PNG', 'Học gõ hàng phím giữa bên tay phải', 3, '2021-11-02', '2021-11-02 00:33:04.000000', 1, '', 2),
(5, 5, 'PHÍM G, H', 'media/lessons/images/lesson5.PNG', 'Gõ kết hợp tay trái và tay phải', 3, '2021-11-02', '2021-11-02 00:33:04.000000', 1, '', 2),
(6, 6, 'ÔN TẬP 1', 'media/lessons/images/lesson6.PNG', 'Ôn tập hàng phím giữa', 3, '2021-11-02', '2021-11-02 00:33:04.000000', 1, '', 2),
(7, 7, 'PHÍM Q, W, E, R', 'media/lessons/images/lesson7.PNG', 'Học gõ hàng phím trên bên tay trái', 3, '2021-11-02', '2021-11-02 00:33:04.000000', 1, '', 3),
(8, 8, 'PHÍM U, I, O, P', 'media/lessons/images/lesson8.PNG', 'Học gõ hàng phím trên bên tay phải', 3, '2021-11-02', '2021-11-02 00:33:04.000000', 1, '', 3),
(9, 9, 'PHÍM T, Y', 'media/lessons/images/lesson9.PNG', 'Gõ kết hợp tay trái và tay phải', 3, '2021-11-02', '2021-11-02 00:33:04.000000', 1, '', 3),
(10, 10, 'ÔN TẬP 2', 'media/lessons/images/lesson10.PNG', 'Ôn tập hàng phím trên', 3, '2021-11-02', '2021-11-02 00:33:04.000000', 1, '', 3),
(11, 11, 'PHÍM Z, X, C, V', 'media/lessons/images/lesson11.PNG', 'Học gõ hàng phím dưới bên tay trái', 3, '2021-11-02', '2021-11-02 00:33:04.000000', 1, '', 4),
(12, 12, 'Phím M , . /', 'media/lessons/images/lesson12.PNG', 'Học gõ hàng phía dưới bên tay phải', 3, '2021-11-02', '2021-11-02 00:33:04.000000', 1, '', 4),
(13, 13, 'PHÍM B, N', 'media/lessons/images/lesson13.PNG', 'Gõ kết hợp tay trái và tay phải', 3, '2021-11-02', '2021-11-02 00:33:04.000000', 1, '', 4),
(14, 14, 'ÔN TẬP 3', 'media/lessons/images/lesson14.PNG', 'Ôn tập hàng phím dưới', 3, '2021-11-02', '2021-11-02 00:33:04.000000', 1, '', 4),
(15, 15, 'PHÍM SỐ', '', 'Học gõ phím số', 3, '2021-11-05', '2021-11-05 15:08:37.000000', 1, '', 5),
(16, 16, 'PHÍM CHỨC NĂNG', '', 'Học một số phím chức năng', 3, '2021-11-05', '2021-11-05 15:08:37.000000', 1, '', 6),
(17, 17, 'HỌC GÕ TIẾNG VIỆT', '', 'Học gõ tiếng Việt có dấu', 3, '2021-11-05', '2021-11-05 15:08:37.000000', 1, '', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lessonbadge`
--

CREATE TABLE `lessonbadge` (
  `lessonbadgeid` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `logo` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL,
  `condition` longtext DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `topiclessonid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lessonbadge_own`
--

CREATE TABLE `lessonbadge_own` (
  `id` bigint(20) NOT NULL,
  `lessonbadge_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `newsid` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`newsid`, `title`, `image`, `description`, `content`, `createdate`, `editdate`, `isenable`, `note`) VALUES
(1, 'Tốc độ đánh máy chuẩn', 'news/background3.png', '', '<p>từ n&agrave;y. Khả năng g&otilde; ph&iacute;m hay được viết tắt l&agrave; WPM ( word per min) t&iacute;nh theo tiếng anh. Được chia l&agrave;m 4 cấp độ + Tốc độ đ&aacute;nh m&aacute;y thấp: Dưới 60WPM + Tốc độ đ&aacute;nh m&aacute;y trung b&igrave;nh: Từ 60 đến 100 WPM + Tốc độ đ&aacute;nh m&aacute;y cao: Từ 100 WPM đến 140WPM. + Tốc độ đ&aacute;nh m&aacute;y chuy&ecirc;n nghiệp: Tr&ecirc;n 140WPM</p>', '2021-11-17', '2021-12-12 16:05:21.590387', 1, ''),
(2, 'Vệ sinh bàn phím thường xuyên', 'news/bee4.png', '', '<p>B&agrave;n ph&iacute;m bẩn gấp 5 lần nh&agrave; vệ sinh Kh&ocirc;ng nhiều người d&ugrave;ng c&oacute; th&oacute;i quen vệ sinh b&agrave;n ph&iacute;m thường xuy&ecirc;n, khiến c&aacute;c chất bẩn như t&oacute;c, da chết v&agrave; nhiều loại vi khuẩn từ tay bạn bị b&aacute;m lại tr&ecirc;n b&agrave;n ph&iacute;m. Đ&oacute; l&agrave; l&yacute; do b&agrave;n ph&iacute;m n&ecirc;n được vệ sinh v&agrave;i th&aacute;ng 1 lần. H&agrave;ng ng&agrave;y hầu hết ch&uacute;ng ta đều đ&aacute;nh m&aacute;y rất nhiều, mồ h&ocirc;i v&agrave; những chất bất, vi khuẩn c&oacute; thể từ ch&uacute;ng ta tăng th&ecirc;m l&ecirc;n b&agrave;n ph&iacute;m v&agrave; cũng ngược lại. Do vậy lời khuy&ecirc;n l&agrave; lu&ocirc;n rửa tay khi rời khỏi b&agrave;n ph&iacute;m. Nhất l&agrave; c&aacute;c bạn văn ph&ograve;ng , đang ngồi m&agrave; c&oacute; đồ ăn vặt bốc tay lu&ocirc;n l&agrave; rất kh&ocirc;ng tốt.</p>', '2021-11-17', '2021-12-12 16:05:05.439754', 1, ''),
(3, 'Nước nào đánh máy khó nhất', 'news/bee3.png', '', '<p>Bạn đ&atilde; bao giờ hỏi m&igrave;nh l&agrave; : &ldquo;Tiếng việt g&otilde; thật đơn giản. Thế với những k&yacute; tự loằng ngoằng như chữ Nhật, Trung th&igrave; b&agrave;n ph&iacute;m g&otilde; kiểu g&igrave; &rdquo; kh&ocirc;ng ? Sự thật l&agrave; 2 quốc gia tr&ecirc;n c&oacute; bộ g&otilde; kh&oacute; nhất thế giới. Cũng sử dụng b&agrave;n ph&iacute;m bố tr&iacute; QWERTY, nhưng khi ấn ph&iacute;m bạn cần hiểu phi&ecirc;n bản chữ Latinh của chữ cần nhập hoặc chỉ nhập c&aacute;c k&yacute; tự đơn giản, chắp nối. Sau đ&oacute; lại cần nh&igrave;n v&agrave; thay đổi n&oacute; th&agrave;nh từ đ&uacute;ng với ng&ocirc;n ngữ Trung hoặc Nhật ( chọn lại tr&ecirc;n m&agrave;n h&igrave;nh). Thực sự việc đ&aacute;nh m&aacute;y ở những nước n&agrave;y cần khổ luyện rất nhiều, ki&ecirc;n nhẫn v&agrave; đầy rẫy kh&oacute; khăn. Đặc biệt tiếng Trung v&igrave; bạn cũng biết đ&oacute;, chỉ hơn k&eacute;m nhau 1 t&yacute; về độ d&agrave;i n&eacute;t th&ocirc;i cũng đ&atilde; th&agrave;nh 1 chữ kh&aacute;c rồi. Ch&iacute;nh v&igrave; vậy tất nhi&ecirc;n hai nước n&agrave;y cũng c&oacute; mặt trong danh s&aacute;ch những b&agrave;n ph&iacute;m phức tạp nhất thế giới. V&igrave; c&oacute; qu&aacute; nhiều ng&ocirc;n ngữ tr&ecirc;n c&ugrave;ng 1 b&agrave;n ph&iacute;m hoặc bảng chữ c&aacute;i c&oacute; h&agrave;ng trăm k&yacute; tự v&agrave; sẽ được thể hiện bằng c&aacute;c tổ hợp ph&iacute;m. V&iacute; dụ Th&aacute;i Lan, H&agrave;n Quốc, Ấn Độ. Tất nhi&ecirc;n l&agrave; cả 2 nước vừa n&oacute;i ph&iacute;a tr&ecirc;n. C&aacute;c b&agrave;n phim của c&aacute;c nước n&agrave;y c&oacute; từ 3 tới 4 k&yacute; tự tr&ecirc;n mỗi ph&iacute;m. L&acirc;u l&acirc;u ấn tổ hợp ph&iacute;m c&ograve;n thấy th&iacute;ch chứ phải ấn cả ng&agrave;y để viết th&igrave; thật sự rất nản ch&iacute; lu&ocirc;n.</p>', '2021-11-17', '2021-12-12 16:04:52.114088', 1, ''),
(4, 'Tượng đài bàn phím', 'news/background2.png', '', '<p>Tượng đ&agrave;i thường xuất hiện để thể hiện sự ngưỡng mộ, t&ocirc;n s&ugrave;ng, ghi nhớ v&agrave; k&iacute;nh trọng với một nh&acirc;n vật n&agrave;o đ&oacute;, 1 sự kiện n&agrave;o đ&oacute;. Cũng c&oacute; thể l&agrave; 1 biểu tượng n&agrave;o đ&oacute; của một quốc gia c&oacute; &yacute; nghĩa đặc biệt với người d&acirc;n địa phương hay quốc gia đ&oacute;. Thế nhưng b&agrave;n ph&iacute;m m&aacute;y t&iacute;nh &ndash; thứ m&agrave; ai cũng thấy &amp; sử dụng h&agrave;ng ng&agrave;y cũng lại c&oacute; tượng đ&agrave;i của m&igrave;nh theo đ&uacute;ng nghĩa đen. Tại th&agrave;nh phố Yekaterinburg &ndash; Nga c&oacute; một tượng đ&agrave;i cho b&agrave;n ph&iacute;m QWERTY kh&ocirc;ng nhỏ. C&aacute;c ph&iacute;m l&agrave; đ&aacute; nguy&ecirc;n khối v&agrave; giữa ch&uacute;ng l&agrave; cỏ tạo th&agrave;nh m&ocirc; h&igrave;nh ti&ecirc;u chuẩn của 1 chiếc b&agrave;n ph&iacute;m. 1 điều th&uacute; vị l&agrave; khi ai đ&oacute; m&agrave; chủ yếu l&agrave; d&acirc;n địa phương ch&aacute;n nản cuộc sống muốn refresh cuộc đời. Họ sẽ tới đ&acirc;y v&agrave; l&agrave;m động t&aacute;c ấn tổ hợp ph&iacute;m CTRL + AlT + DEL bằng c&aacute;ch nhảy theo đ&uacute;ng thứ tự 3 ph&iacute;m n&agrave;y. V&agrave; bạn c&oacute; biết tổ hợp ph&iacute;m Ctrl + Alt + Del được ph&aacute;t minh bởi David Bradley c&ocirc;ng ty IBM sau khi xem x&eacute;t mọi khả năng thấp nhất tr&aacute;nh k&iacute;ch hoạt ngẫu nhi&ecirc;n. V&igrave; chức năng b&agrave;n đầu của n&oacute; bao gồm khởi động lại phần mềm v&agrave; đ&oacute;ng chương tr&igrave;nh tr&ecirc;n Windows. Tượng đ&agrave;i thường xuất hiện để thể hiện sự ngưỡng mộ, t&ocirc;n s&ugrave;ng, ghi nhớ v&agrave; k&iacute;nh trọng với một nh&acirc;n vật n&agrave;o đ&oacute;, 1 sự kiện n&agrave;o đ&oacute;. Cũng c&oacute; thể l&agrave; 1 biểu tượng n&agrave;o đ&oacute; của một quốc gia c&oacute; &yacute; nghĩa đặc biệt với người d&acirc;n địa phương hay quốc gia đ&oacute;. Thế nhưng b&agrave;n ph&iacute;m m&aacute;y t&iacute;nh &ndash; thứ m&agrave; ai cũng thấy &amp; sử dụng h&agrave;ng ng&agrave;y cũng lại c&oacute; tượng đ&agrave;i của m&igrave;nh theo đ&uacute;ng nghĩa đen. Tại th&agrave;nh phố Yekaterinburg &ndash; Nga c&oacute; một tượng đ&agrave;i cho b&agrave;n ph&iacute;m QWERTY kh&ocirc;ng nhỏ. C&aacute;c ph&iacute;m l&agrave; đ&aacute; nguy&ecirc;n khối v&agrave; giữa ch&uacute;ng l&agrave; cỏ tạo th&agrave;nh m&ocirc; h&igrave;nh ti&ecirc;u chuẩn của 1 chiếc b&agrave;n ph&iacute;m. 1 điều th&uacute; vị l&agrave; khi ai đ&oacute; m&agrave; chủ yếu l&agrave; d&acirc;n địa phương ch&aacute;n nản cuộc sống muốn refresh cuộc đời. Họ sẽ tới đ&acirc;y v&agrave; l&agrave;m động t&aacute;c ấn tổ hợp ph&iacute;m CTRL + AlT + DEL bằng c&aacute;ch nhảy theo đ&uacute;ng thứ tự 3 ph&iacute;m n&agrave;y. V&agrave; bạn c&oacute; biết tổ hợp ph&iacute;m Ctrl + Alt + Del được ph&aacute;t minh bởi David Bradley c&ocirc;ng ty IBM sau khi xem x&eacute;t mọi khả năng thấp nhất tr&aacute;nh k&iacute;ch hoạt ngẫu nhi&ecirc;n. V&igrave; chức năng b&agrave;n đầu của n&oacute; bao gồm khởi động lại phần mềm v&agrave; đ&oacute;ng chương tr&igrave;nh tr&ecirc;n Windows.</p>', '2021-11-17', '2021-12-12 16:04:41.940669', 1, ''),
(5, 'Phím được bấm nhiều nhất', 'news/bee7.png', '', '<p>Nếu phải đo&aacute;n ph&iacute;m n&agrave;o bị ấn nhiều nhất chắc chắn c&aacute;c bạn sẽ đo&aacute;n ra ngay l&agrave; n&uacute;t Space. Đặc biệt nếu ai đ&atilde; từng chơi hay đam m&ecirc; tựa game audition th&igrave; n&uacute;t Space của b&agrave;n ph&iacute;m chắc chắn l&agrave; bị tra tấn khủng khiếp v&agrave; thường phải thay thế kh&aacute; sớm so với th&ocirc;ng thường. N&uacute;t Space được ấn nhiều tới nỗi, cứ mỗi khi bạn ấn n&uacute;t Space 1 lần th&igrave; c&oacute; khoảng 600.000 người kh&aacute;c tr&ecirc;n thế giới cũng c&ugrave;ng l&uacute;c ấn ph&iacute;m Space với bạn. N&oacute; chiếm tới 18% tổng số nhập văn bản trung b&igrave;nh. Kh&ocirc;ng tin th&igrave; bạn thử đếm số k&yacute; tự v&agrave; số khoảng trắng trong 1 văn bản của m&igrave;nh xem. Dễ d&agrave;ng ta thấy số từ sẽ bằng số khoảng trắng, v&agrave; nếu trung b&igrave;nh 1 từ c&oacute; từ 4-5 k&yacute; tự th&igrave; bạn biết t&iacute;nh ra % của space rồi đ&oacute;. Nhưng thực tế n&uacute;t Space kh&ocirc;ng được t&igrave;nh v&igrave; n&oacute; kh&ocirc;ng thể hiện k&yacute; tự g&igrave; cả, n&oacute;i ch&iacute;nh x&aacute;c l&agrave; n&oacute; chỉ c&oacute; &yacute; nghĩa tr&ecirc;n m&aacute;y t&iacute;nh cũng giống như 1 số n&uacute;t kh&aacute;c. Bạn kh&ocirc;ng thể ph&aacute;t &acirc;m ra ph&iacute;m Space bằng miệng được. C&ograve;n nếu t&iacute;nh về ph&iacute;m c&oacute; nghĩa, c&oacute; thể ph&aacute;t &acirc;m ra được th&igrave; E v&agrave; T l&agrave; 2 ph&iacute;m được ấn nhiều nhất tr&ecirc;n thế giới.</p>', '2021-11-17', '2021-12-12 16:04:33.689308', 1, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `practicebadge`
--

CREATE TABLE `practicebadge` (
  `practicebadgeid` int(11) NOT NULL,
  `name` longtext DEFAULT NULL,
  `logo` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL,
  `condition` longtext DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `text`
--

CREATE TABLE `text` (
  `id` bigint(20) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `characterid_id` int(11) DEFAULT NULL,
  `wordid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `timetest`
--

CREATE TABLE `timetest` (
  `timetestid` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `timetest`
--

INSERT INTO `timetest` (`timetestid`, `name`, `time`, `description`, `link`, `createdate`, `editdate`, `isenable`, `note`, `image`) VALUES
(1, 'KIỂM TRA 1 PHÚT', 60, '', NULL, '2021-12-03', '2021-12-16 06:50:21.881170', 1, '', '/media/test/timer1.png'),
(2, 'KIỂM TRA 3 PHÚT', 180, '', NULL, '2021-12-03', '2021-12-03 13:39:33.418753', 1, '', '/media/test/timer2.png'),
(3, 'KIỂM TRA 5 PHÚT', NULL, '', NULL, '2021-12-03', '2021-12-03 13:40:04.306589', 1, '', '/media/test/timer3.png'),
(4, 'KIỂM TRA 10 PHÚT', NULL, '', NULL, '2021-12-03', '2021-12-16 06:50:33.885481', 0, '', '/media/test/timer4.png'),
(5, 'KIỂM TRA 15 PHÚT', NULL, '', NULL, '2021-12-03', '2021-12-16 06:50:40.794230', 0, '', '/media/test/timer5.png'),
(6, 'KIỂM TRA KHÔNG GIỚI HẠN', NULL, '', NULL, '2021-12-03', '2021-12-16 06:50:47.323418', 0, '', '/media/test/timer6.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `topiclesson`
--

CREATE TABLE `topiclesson` (
  `topiclessonid` int(11) NOT NULL,
  `topicorder` int(11) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `stars` int(11) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `topiclesson`
--

INSERT INTO `topiclesson` (`topiclessonid`, `topicorder`, `name`, `description`, `stars`, `createdate`, `editdate`, `isenable`, `note`) VALUES
(1, 1, 'GIỚI THIỆU', 'Giới thiệu kỹ năng gõ phím mười ngón', 6, '2021-11-02', '2021-11-02 00:15:22.000000', 1, ''),
(2, 2, 'HÀNG PHÍM GIỮA', 'Các bài học về gõ phím hàng giữa', 12, '2021-11-02', '2021-11-02 00:15:22.000000', 1, ''),
(3, 3, 'HÀNG PHÍM TRÊN', 'Các bài học về gõ phím hàng trên', 12, '2021-11-02', '2021-11-02 00:15:22.000000', 1, ''),
(4, 4, 'HÀNG PHÍM DƯỚI', 'Các bài học về gõ phím hàng dưới', 12, '2021-11-02', '2021-11-02 00:15:22.000000', 1, ''),
(5, 5, 'HÀNG PHÍM SỐ', 'Các bài học về gõ phím hàng số', 12, '2021-11-05', '2021-11-05 15:05:37.000000', 1, ''),
(6, 6, 'HÀNG PHÍM CHỨC NĂNG', 'Các bài học về gõ phím hàng chức năng', 12, '2021-11-05', '2021-11-05 15:05:37.000000', 1, ''),
(7, 7, 'HỌC GÕ TIẾNG VIỆT', 'Các bài học gõ tiếng Việt có dấu', 12, '2021-11-05', '2021-11-05 15:05:37.000000', 1, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `topicpractice`
--

CREATE TABLE `topicpractice` (
  `topicpracticeid` int(11) NOT NULL,
  `topicorder` int(11) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `stars` int(11) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `topicpractice`
--

INSERT INTO `topicpractice` (`topicpracticeid`, `topicorder`, `name`, `description`, `stars`, `createdate`, `editdate`, `isenable`, `note`) VALUES
(1, 1, 'Luyện gõ kí tự', '', 6, '2021-11-05', '2021-11-05 12:40:09.000000', 1, ''),
(2, 2, 'Luyện gõ cụm từ', '', 6, '2021-11-05', '2021-11-05 12:40:09.000000', 1, ''),
(3, 3, 'Luyện gõ văn bản', '', 6, '2021-11-05', '2021-11-05 12:40:09.000000', 1, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trackingactivity`
--

CREATE TABLE `trackingactivity` (
  `trackingactivityid` int(11) NOT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `accountid_id` int(11) DEFAULT NULL,
  `activityid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `trackingactivity`
--

INSERT INTO `trackingactivity` (`trackingactivityid`, `createdate`, `editdate`, `isenable`, `note`, `accountid_id`, `activityid_id`) VALUES
(1, '2021-12-21', '2021-12-21 14:26:52.271897', 1, NULL, 16, 9),
(2, '2021-12-24', '2021-12-24 02:19:12.728588', 1, NULL, 16, 4),
(3, '2021-12-24', '2021-12-24 02:22:53.076199', 1, NULL, 16, 14),
(4, '2021-12-24', '2021-12-24 02:33:48.218281', 1, NULL, 16, 6),
(5, '2021-12-24', '2021-12-24 02:40:12.034746', 1, NULL, 16, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trackinglevelgame`
--

CREATE TABLE `trackinglevelgame` (
  `trackinglevelid` int(11) NOT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `accountid_id` int(11) DEFAULT NULL,
  `gameid_id` int(11) DEFAULT NULL,
  `levelid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `trackinglevelgame`
--

INSERT INTO `trackinglevelgame` (`trackinglevelid`, `createdate`, `editdate`, `isenable`, `note`, `accountid_id`, `gameid_id`, `levelid_id`) VALUES
(1, '2022-01-01', '2022-01-01 16:16:26.698459', 1, NULL, 16, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `userdetail`
--

CREATE TABLE `userdetail` (
  `userdetailid` int(11) NOT NULL,
  `lastname` varchar(250) DEFAULT NULL,
  `firstname` varchar(250) DEFAULT NULL,
  `yearofbirth` int(11) DEFAULT NULL,
  `userobject` varchar(250) DEFAULT NULL,
  `grade` varchar(250) DEFAULT NULL,
  `guardian` varchar(250) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `accountid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `userdetail`
--

INSERT INTO `userdetail` (`userdetailid`, `lastname`, `firstname`, `yearofbirth`, `userobject`, `grade`, `guardian`, `phone`, `email`, `createdate`, `editdate`, `isenable`, `note`, `accountid_id`) VALUES
(5, 'Huynh', 'Tuyet', NULL, NULL, NULL, NULL, NULL, 'user1@gmail.com', '2021-11-17', '2021-11-16 18:11:27.044607', 1, NULL, 5),
(7, 'Huynh', 'Tuyet', 2000, NULL, NULL, '', '123', 'user1@gmail.com', '2021-11-17', '2021-11-16 19:36:45.599535', 1, NULL, 6),
(8, 'Huynh', 'Tuyet', 2000, NULL, NULL, 'HNT', '123', 'user3@gmail.com', '2021-11-17', '2021-11-17 03:40:19.594327', 1, NULL, 7),
(9, 'Nguyen', 'Tran', 1, NULL, NULL, '1', '123', 'a@g', '2021-11-17', '2021-11-17 13:04:05.505998', 1, NULL, 11),
(10, 'Huynh', 'Tran', 200, NULL, NULL, 'HNT', '123', 'user3@gmail.com', '2021-11-17', '2021-11-17 13:08:07.725392', 1, NULL, 12),
(11, 'a', 'a', 2, NULL, NULL, '2', '123', 'user1@gmail.com', '2021-11-17', '2021-11-17 13:10:16.966107', 1, NULL, 13),
(12, 'Nguyen', 'Tran', 2, NULL, NULL, 'NNBT', '123', 'user1@gmail.com', '2021-11-17', '2021-11-17 13:12:29.946262', 1, NULL, 14),
(13, 'Đỗ', 'Khải', 2000, NULL, NULL, 'DQK', '1123', 'abc@gmail.com', '2021-11-30', '2021-11-29 17:13:50.854575', 1, NULL, 15),
(14, 'Huynh', 'Tuyet', 2000, NULL, NULL, 'HNT', '0903759180', 'tuyethuynh@gmail.com', '2021-12-16', '2021-12-16 11:09:14.297410', 1, NULL, 16);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `word`
--

CREATE TABLE `word` (
  `wordid` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `editdate` datetime(6) DEFAULT NULL,
  `isenable` tinyint(1) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `characterid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`accountid`),
  ADD KEY `Account_username_id_6d202649_fk_auth_user_id` (`username_id`),
  ADD KEY `Account_callsignid_id_f081161c_fk` (`callsignid_id`);

--
-- Chỉ mục cho bảng `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`activityid`),
  ADD KEY `Activity_lessonid_id_70fc49ad_fk_Lesson_lessonid` (`lessonid_id`);

--
-- Chỉ mục cho bảng `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Chỉ mục cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Chỉ mục cho bảng `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Chỉ mục cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Chỉ mục cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Chỉ mục cho bảng `callsign`
--
ALTER TABLE `callsign`
  ADD PRIMARY KEY (`callsignid`);

--
-- Chỉ mục cho bảng `character`
--
ALTER TABLE `character`
  ADD PRIMARY KEY (`characterid`);

--
-- Chỉ mục cho bảng `competition`
--
ALTER TABLE `competition`
  ADD PRIMARY KEY (`competitionid`);

--
-- Chỉ mục cho bảng `competitionbadge`
--
ALTER TABLE `competitionbadge`
  ADD PRIMARY KEY (`competitionbadgeid`),
  ADD KEY `CompetitionBadge_competitionid_id_b766acfd_fk` (`competitionid_id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contactid`);

--
-- Chỉ mục cho bảng `contenttest`
--
ALTER TABLE `contenttest`
  ADD PRIMARY KEY (`contenttestid`);

--
-- Chỉ mục cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Chỉ mục cho bảng `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Chỉ mục cho bảng `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Chỉ mục cho bảng `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`documentid`);

--
-- Chỉ mục cho bảng `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`faqid`);

--
-- Chỉ mục cho bảng `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`gameid`),
  ADD KEY `Game_topicpracticeid_id_19b7cd09_fk` (`topicpracticeid_id`);

--
-- Chỉ mục cho bảng `gamelevel`
--
ALTER TABLE `gamelevel`
  ADD PRIMARY KEY (`levelid`),
  ADD KEY `GameLevel_gameid_id_31118348_fk_Game_gameid` (`gameid_id`);

--
-- Chỉ mục cho bảng `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`headerid`);

--
-- Chỉ mục cho bảng `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`lessonid`),
  ADD KEY `Lesson_topiclessonid_id_5d9e96a2_fk` (`topiclessonid_id`);

--
-- Chỉ mục cho bảng `lessonbadge`
--
ALTER TABLE `lessonbadge`
  ADD PRIMARY KEY (`lessonbadgeid`),
  ADD KEY `LessonBadge_topiclessonid_id_872edf05_fk` (`topiclessonid_id`);

--
-- Chỉ mục cho bảng `lessonbadge_own`
--
ALTER TABLE `lessonbadge_own`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `LessonBadge_own_lessonbadge_id_account_id_03f7beae_uniq` (`lessonbadge_id`,`account_id`),
  ADD KEY `LessonBadge_own_account_id_e7ca9e5c_fk_Account_accountid` (`account_id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`newsid`);

--
-- Chỉ mục cho bảng `practicebadge`
--
ALTER TABLE `practicebadge`
  ADD PRIMARY KEY (`practicebadgeid`);

--
-- Chỉ mục cho bảng `text`
--
ALTER TABLE `text`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Text_characterid_id_dbacc2bc_fk` (`characterid_id`),
  ADD KEY `Text_wordid_id_7ce108ad_fk` (`wordid_id`);

--
-- Chỉ mục cho bảng `timetest`
--
ALTER TABLE `timetest`
  ADD PRIMARY KEY (`timetestid`);

--
-- Chỉ mục cho bảng `topiclesson`
--
ALTER TABLE `topiclesson`
  ADD PRIMARY KEY (`topiclessonid`);

--
-- Chỉ mục cho bảng `topicpractice`
--
ALTER TABLE `topicpractice`
  ADD PRIMARY KEY (`topicpracticeid`);

--
-- Chỉ mục cho bảng `trackingactivity`
--
ALTER TABLE `trackingactivity`
  ADD PRIMARY KEY (`trackingactivityid`),
  ADD KEY `Tracking_accountid_id_2cf50a66_fk_Account_accountid` (`accountid_id`),
  ADD KEY `Tracking_activityid_id_cee4d1c8_fk_Activity_activityid` (`activityid_id`);

--
-- Chỉ mục cho bảng `trackinglevelgame`
--
ALTER TABLE `trackinglevelgame`
  ADD PRIMARY KEY (`trackinglevelid`),
  ADD KEY `TrackingLevelGame_accountid_id_4a11cda2_fk_Account_accountid` (`accountid_id`),
  ADD KEY `TrackingLevelGame_gameid_id_b830c5b2_fk_Game_gameid` (`gameid_id`),
  ADD KEY `TrackingLevelGame_levelid_id_e12c58ec_fk_GameLevel_levelid` (`levelid_id`);

--
-- Chỉ mục cho bảng `userdetail`
--
ALTER TABLE `userdetail`
  ADD PRIMARY KEY (`userdetailid`),
  ADD KEY `UserDetail_accountid_id_2d38ed41_fk` (`accountid_id`);

--
-- Chỉ mục cho bảng `word`
--
ALTER TABLE `word`
  ADD PRIMARY KEY (`wordid`),
  ADD KEY `Word_characterid_id_7b0ab798_fk` (`characterid_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `accountid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `activity`
--
ALTER TABLE `activity`
  MODIFY `activityid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT cho bảng `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `callsign`
--
ALTER TABLE `callsign`
  MODIFY `callsignid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `character`
--
ALTER TABLE `character`
  MODIFY `characterid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `competition`
--
ALTER TABLE `competition`
  MODIFY `competitionid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `competitionbadge`
--
ALTER TABLE `competitionbadge`
  MODIFY `competitionbadgeid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `contactid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `contenttest`
--
ALTER TABLE `contenttest`
  MODIFY `contenttestid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `document`
--
ALTER TABLE `document`
  MODIFY `documentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `faq`
--
ALTER TABLE `faq`
  MODIFY `faqid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `game`
--
ALTER TABLE `game`
  MODIFY `gameid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `gamelevel`
--
ALTER TABLE `gamelevel`
  MODIFY `levelid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `header`
--
ALTER TABLE `header`
  MODIFY `headerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `lesson`
--
ALTER TABLE `lesson`
  MODIFY `lessonid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `lessonbadge`
--
ALTER TABLE `lessonbadge`
  MODIFY `lessonbadgeid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `lessonbadge_own`
--
ALTER TABLE `lessonbadge_own`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `newsid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `practicebadge`
--
ALTER TABLE `practicebadge`
  MODIFY `practicebadgeid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `text`
--
ALTER TABLE `text`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `timetest`
--
ALTER TABLE `timetest`
  MODIFY `timetestid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `topiclesson`
--
ALTER TABLE `topiclesson`
  MODIFY `topiclessonid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `topicpractice`
--
ALTER TABLE `topicpractice`
  MODIFY `topicpracticeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `trackingactivity`
--
ALTER TABLE `trackingactivity`
  MODIFY `trackingactivityid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `trackinglevelgame`
--
ALTER TABLE `trackinglevelgame`
  MODIFY `trackinglevelid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `userdetail`
--
ALTER TABLE `userdetail`
  MODIFY `userdetailid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `word`
--
ALTER TABLE `word`
  MODIFY `wordid` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `Account_callsignid_id_f081161c_fk` FOREIGN KEY (`callsignid_id`) REFERENCES `callsign` (`callsignid`),
  ADD CONSTRAINT `Account_username_id_6d202649_fk_auth_user_id` FOREIGN KEY (`username_id`) REFERENCES `auth_user` (`id`);

--
-- Các ràng buộc cho bảng `activity`
--
ALTER TABLE `activity`
  ADD CONSTRAINT `Activity_lessonid_id_70fc49ad_fk_Lesson_lessonid` FOREIGN KEY (`lessonid_id`) REFERENCES `lesson` (`lessonid`);

--
-- Các ràng buộc cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Các ràng buộc cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Các ràng buộc cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Các ràng buộc cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Các ràng buộc cho bảng `competitionbadge`
--
ALTER TABLE `competitionbadge`
  ADD CONSTRAINT `CompetitionBadge_competitionid_id_b766acfd_fk` FOREIGN KEY (`competitionid_id`) REFERENCES `competition` (`competitionid`);

--
-- Các ràng buộc cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Các ràng buộc cho bảng `game`
--
ALTER TABLE `game`
  ADD CONSTRAINT `Game_topicpracticeid_id_19b7cd09_fk` FOREIGN KEY (`topicpracticeid_id`) REFERENCES `topicpractice` (`topicpracticeid`);

--
-- Các ràng buộc cho bảng `gamelevel`
--
ALTER TABLE `gamelevel`
  ADD CONSTRAINT `GameLevel_gameid_id_31118348_fk_Game_gameid` FOREIGN KEY (`gameid_id`) REFERENCES `game` (`gameid`);

--
-- Các ràng buộc cho bảng `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `Lesson_topiclessonid_id_5d9e96a2_fk` FOREIGN KEY (`topiclessonid_id`) REFERENCES `topiclesson` (`topiclessonid`);

--
-- Các ràng buộc cho bảng `lessonbadge`
--
ALTER TABLE `lessonbadge`
  ADD CONSTRAINT `LessonBadge_topiclessonid_id_872edf05_fk` FOREIGN KEY (`topiclessonid_id`) REFERENCES `topiclesson` (`topiclessonid`);

--
-- Các ràng buộc cho bảng `text`
--
ALTER TABLE `text`
  ADD CONSTRAINT `Text_characterid_id_dbacc2bc_fk` FOREIGN KEY (`characterid_id`) REFERENCES `character` (`characterid`),
  ADD CONSTRAINT `Text_wordid_id_7ce108ad_fk` FOREIGN KEY (`wordid_id`) REFERENCES `word` (`wordid`);

--
-- Các ràng buộc cho bảng `trackingactivity`
--
ALTER TABLE `trackingactivity`
  ADD CONSTRAINT `Tracking_accountid_id_2cf50a66_fk_Account_accountid` FOREIGN KEY (`accountid_id`) REFERENCES `account` (`accountid`),
  ADD CONSTRAINT `Tracking_activityid_id_cee4d1c8_fk_Activity_activityid` FOREIGN KEY (`activityid_id`) REFERENCES `activity` (`activityid`);

--
-- Các ràng buộc cho bảng `trackinglevelgame`
--
ALTER TABLE `trackinglevelgame`
  ADD CONSTRAINT `TrackingLevelGame_accountid_id_4a11cda2_fk_Account_accountid` FOREIGN KEY (`accountid_id`) REFERENCES `account` (`accountid`),
  ADD CONSTRAINT `TrackingLevelGame_gameid_id_b830c5b2_fk_Game_gameid` FOREIGN KEY (`gameid_id`) REFERENCES `game` (`gameid`),
  ADD CONSTRAINT `TrackingLevelGame_levelid_id_e12c58ec_fk_GameLevel_levelid` FOREIGN KEY (`levelid_id`) REFERENCES `gamelevel` (`levelid`);

--
-- Các ràng buộc cho bảng `userdetail`
--
ALTER TABLE `userdetail`
  ADD CONSTRAINT `UserDetail_accountid_id_2d38ed41_fk` FOREIGN KEY (`accountid_id`) REFERENCES `account` (`accountid`);

--
-- Các ràng buộc cho bảng `word`
--
ALTER TABLE `word`
  ADD CONSTRAINT `Word_characterid_id_7b0ab798_fk` FOREIGN KEY (`characterid_id`) REFERENCES `character` (`characterid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
