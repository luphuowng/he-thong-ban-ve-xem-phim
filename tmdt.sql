-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 14, 2021 lúc 08:13 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tmdt`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'action-scheduler-migration');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_arete_buddypress_smileys_manage`
--

CREATE TABLE `wp_arete_buddypress_smileys_manage` (
  `id` mediumint(11) NOT NULL,
  `smiley_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `activity_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `timestamp` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_bp_activity`
--

CREATE TABLE `wp_bp_activity` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `component` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `primary_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `secondary_item_id` bigint(20) DEFAULT NULL,
  `date_recorded` datetime NOT NULL,
  `hide_sitewide` tinyint(1) DEFAULT 0,
  `mptt_left` int(11) NOT NULL DEFAULT 0,
  `mptt_right` int(11) NOT NULL DEFAULT 0,
  `is_spam` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_bp_activity`
--

INSERT INTO `wp_bp_activity` (`id`, `user_id`, `component`, `type`, `action`, `content`, `primary_link`, `item_id`, `secondary_item_id`, `date_recorded`, `hide_sitewide`, `mptt_left`, `mptt_right`, `is_spam`) VALUES
(1, 1, 'members', 'last_activity', '', '', '', 0, NULL, '2020-11-28 10:37:22', 0, 0, 0, 0),
(2, 1, 'groups', 'created_group', '<a href=\"http://localhost/wordpress/members/luphuowng/\">luphuowng</a> đã tạo ra nhóm <a href=\"http://localhost/wordpress/nhom/a/\">a</a>', '', 'http://localhost/wordpress/members/luphuowng/', 1, 0, '2020-10-24 12:38:14', 0, 0, 0, 0),
(3, 3, 'groups', 'joined_group', '<a href=\"http://localhost/wordpress/members/triplehao/\">Hải Hào Hồ</a> đã gia nhập nhóm <a href=\"http://localhost/wordpress/nhom/a/\">Yêu bếp</a>', '', 'http://localhost/wordpress/members/luphuowng/', 1, 0, '2020-10-30 08:45:27', 0, 0, 0, 0),
(4, 2, 'groups', 'joined_group', '<a href=\"http://localhost/wordpress/members/tramanhn/\">Trâm Anh</a> đã gia nhập nhóm <a href=\"http://localhost/wordpress/nhom/a/\">Yêu bếp</a>', '', 'http://localhost/wordpress/members/luphuowng/', 1, 0, '2020-10-30 08:45:27', 0, 0, 0, 0),
(5, 4, 'groups', 'joined_group', '<a href=\"http://localhost/wordpress/members/danghuy/\">Huy Đăng</a> đã gia nhập nhóm <a href=\"http://localhost/wordpress/nhom/a/\">Yêu bếp</a>', '', 'http://localhost/wordpress/members/luphuowng/', 1, 0, '2020-10-30 08:45:28', 0, 0, 0, 0),
(6, 5, 'groups', 'joined_group', '<a href=\"http://localhost/wordpress/members/hven/\">Vẹn Hoàng</a> đã gia nhập nhóm <a href=\"http://localhost/wordpress/nhom/a/\">Yêu bếp</a>', '', 'http://localhost/wordpress/members/luphuowng/', 1, 0, '2020-10-30 08:45:28', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_bp_activity_meta`
--

CREATE TABLE `wp_bp_activity_meta` (
  `id` bigint(20) NOT NULL,
  `activity_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_bp_friends`
--

CREATE TABLE `wp_bp_friends` (
  `id` bigint(20) NOT NULL,
  `initiator_user_id` bigint(20) NOT NULL,
  `friend_user_id` bigint(20) NOT NULL,
  `is_confirmed` tinyint(1) DEFAULT 0,
  `is_limited` tinyint(1) DEFAULT 0,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_bp_groups`
--

CREATE TABLE `wp_bp_groups` (
  `id` bigint(20) NOT NULL,
  `creator_id` bigint(20) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  `parent_id` bigint(20) NOT NULL DEFAULT 0,
  `enable_forum` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_bp_groups`
--

INSERT INTO `wp_bp_groups` (`id`, `creator_id`, `name`, `slug`, `description`, `status`, `parent_id`, `enable_forum`, `date_created`) VALUES
(1, 1, 'Yêu bếp', 'a', 'Nhóm dành cho những người đảm đang, yêu bếp', 'public', 0, 0, '2020-10-24 12:37:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_bp_groups_groupmeta`
--

CREATE TABLE `wp_bp_groups_groupmeta` (
  `id` bigint(20) NOT NULL,
  `group_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_bp_groups_groupmeta`
--

INSERT INTO `wp_bp_groups_groupmeta` (`id`, `group_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'total_member_count', '5'),
(2, 1, 'last_activity', '2020-10-30 08:45:28'),
(3, 1, 'invite_status', 'members'),
(4, 1, 'rtmedia_counts_1', 'a:0:{}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_bp_groups_members`
--

CREATE TABLE `wp_bp_groups_members` (
  `id` bigint(20) NOT NULL,
  `group_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `inviter_id` bigint(20) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `is_mod` tinyint(1) NOT NULL DEFAULT 0,
  `user_title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_modified` datetime NOT NULL,
  `comments` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `is_banned` tinyint(1) NOT NULL DEFAULT 0,
  `invite_sent` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_bp_groups_members`
--

INSERT INTO `wp_bp_groups_members` (`id`, `group_id`, `user_id`, `inviter_id`, `is_admin`, `is_mod`, `user_title`, `date_modified`, `comments`, `is_confirmed`, `is_banned`, `invite_sent`) VALUES
(1, 1, 1, 0, 1, 0, 'Admin nhóm', '2020-10-24 12:37:17', '', 1, 0, 0),
(2, 1, 3, 0, 0, 0, '', '2020-10-30 08:45:27', '', 1, 0, 0),
(3, 1, 2, 0, 0, 0, '', '2020-10-30 08:45:27', '', 1, 0, 0),
(4, 1, 4, 0, 0, 0, '', '2020-10-30 08:45:28', '', 1, 0, 0),
(5, 1, 5, 0, 0, 0, '', '2020-10-30 08:45:28', '', 1, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_bp_invitations`
--

CREATE TABLE `wp_bp_invitations` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `inviter_id` bigint(20) NOT NULL,
  `invitee_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `secondary_item_id` bigint(20) DEFAULT NULL,
  `type` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'invite',
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT '',
  `date_modified` datetime NOT NULL,
  `invite_sent` tinyint(1) NOT NULL DEFAULT 0,
  `accepted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_bp_messages_messages`
--

CREATE TABLE `wp_bp_messages_messages` (
  `id` bigint(20) NOT NULL,
  `thread_id` bigint(20) NOT NULL,
  `sender_id` bigint(20) NOT NULL,
  `subject` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_sent` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_bp_messages_meta`
--

CREATE TABLE `wp_bp_messages_meta` (
  `id` bigint(20) NOT NULL,
  `message_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_bp_messages_notices`
--

CREATE TABLE `wp_bp_messages_notices` (
  `id` bigint(20) NOT NULL,
  `subject` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_sent` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_bp_messages_recipients`
--

CREATE TABLE `wp_bp_messages_recipients` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `thread_id` bigint(20) NOT NULL,
  `unread_count` int(10) NOT NULL DEFAULT 0,
  `sender_only` tinyint(1) NOT NULL DEFAULT 0,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_bp_notifications`
--

CREATE TABLE `wp_bp_notifications` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `secondary_item_id` bigint(20) DEFAULT NULL,
  `component_name` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `component_action` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_notified` datetime NOT NULL,
  `is_new` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_bp_notifications_meta`
--

CREATE TABLE `wp_bp_notifications_meta` (
  `id` bigint(20) NOT NULL,
  `notification_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_bp_user_blogs`
--

CREATE TABLE `wp_bp_user_blogs` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `blog_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_bp_user_blogs`
--

INSERT INTO `wp_bp_user_blogs` (`id`, `user_id`, `blog_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_bp_user_blogs_blogmeta`
--

CREATE TABLE `wp_bp_user_blogs_blogmeta` (
  `id` bigint(20) NOT NULL,
  `blog_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_bp_user_blogs_blogmeta`
--

INSERT INTO `wp_bp_user_blogs_blogmeta` (`id`, `blog_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'url', 'http://localhost/wordpress'),
(2, 1, 'name', 'IInsta'),
(3, 1, 'description', 'Một trang web mới sử dụng WordPress'),
(4, 1, 'last_activity', '2020-10-24 12:24:27'),
(5, 1, 'close_comments_for_old_posts', '0'),
(6, 1, 'close_comments_days_old', '14'),
(7, 1, 'thread_comments_depth', '5'),
(8, 1, 'comment_moderation', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_bp_xprofile_data`
--

CREATE TABLE `wp_bp_xprofile_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `field_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_bp_xprofile_data`
--

INSERT INTO `wp_bp_xprofile_data` (`id`, `field_id`, `user_id`, `value`, `last_updated`) VALUES
(1, 1, 2, 'Trâm Anh', '2020-10-30 08:28:57'),
(2, 1, 3, 'Hải Hào Hồ', '2020-10-30 08:32:02'),
(3, 1, 4, 'Huy Đăng', '2020-10-30 08:35:50'),
(4, 1, 5, 'Vẹn Hoàng', '2020-10-30 08:36:30'),
(5, 1, 6, 'Minh Phúc Phí', '2020-10-30 08:37:13'),
(6, 1, 7, 'Minh Phúc Đào', '2020-10-30 08:38:03'),
(7, 1, 8, 'Lương Sang', '2020-10-30 08:39:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_bp_xprofile_fields`
--

CREATE TABLE `wp_bp_xprofile_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT 0,
  `is_default_option` tinyint(1) NOT NULL DEFAULT 0,
  `field_order` bigint(20) NOT NULL DEFAULT 0,
  `option_order` bigint(20) NOT NULL DEFAULT 0,
  `order_by` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `can_delete` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_bp_xprofile_fields`
--

INSERT INTO `wp_bp_xprofile_fields` (`id`, `group_id`, `parent_id`, `type`, `name`, `description`, `is_required`, `is_default_option`, `field_order`, `option_order`, `order_by`, `can_delete`) VALUES
(1, 1, 0, 'textbox', 'Name', '', 1, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_bp_xprofile_groups`
--

CREATE TABLE `wp_bp_xprofile_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_order` bigint(20) NOT NULL DEFAULT 0,
  `can_delete` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_bp_xprofile_groups`
--

INSERT INTO `wp_bp_xprofile_groups` (`id`, `name`, `description`, `group_order`, `can_delete`) VALUES
(1, 'Base', '', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_bp_xprofile_meta`
--

CREATE TABLE `wp_bp_xprofile_meta` (
  `id` bigint(20) NOT NULL,
  `object_id` bigint(20) NOT NULL,
  `object_type` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_bp_xprofile_meta`
--

INSERT INTO `wp_bp_xprofile_meta` (`id`, `object_id`, `object_type`, `meta_key`, `meta_value`) VALUES
(1, 1, 'field', 'allow_custom_visibility', 'disabled');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 2, 'qa_point', '5'),
(2, 2, 'qa_point', '100'),
(3, 3, 'qa_point', '5'),
(4, 3, 'qa_point', '5'),
(5, 4, 'et_votes', ''),
(6, 4, 'et_votes_count', ''),
(7, 4, 'et_answer_authors', ''),
(8, 4, 'et_answers_count', ''),
(9, 5, 'qa_point', '5'),
(10, 5, 'qa_point', '5'),
(11, 6, 'qa_point', '5'),
(12, 7, 'qa_point', '5'),
(13, 7, 'qa_point', '5'),
(14, 8, 'qa_point', '5'),
(15, 8, 'qa_point', '150'),
(16, 9, 'qa_point', '5'),
(17, 9, 'qa_point', '5'),
(18, 10, 'et_votes', ''),
(19, 10, 'et_votes_count', ''),
(20, 10, 'et_answer_authors', ''),
(21, 10, 'et_answers_count', ''),
(22, 11, 'et_votes', ''),
(23, 11, 'et_votes_count', ''),
(24, 11, 'et_answer_authors', ''),
(25, 11, 'et_answers_count', ''),
(26, 12, 'et_votes', ''),
(27, 12, 'et_votes_count', ''),
(28, 12, 'et_answer_authors', ''),
(29, 12, 'et_answers_count', ''),
(46, 18, 'qa_point', '5'),
(47, 18, 'qa_point', '5'),
(48, 19, 'qa_point', '5'),
(49, 19, 'qa_point', '5'),
(50, 20, 'qa_point', '5'),
(51, 20, 'qa_point', '5'),
(52, 21, 'qa_point', '-2'),
(53, 22, 'et_votes', ''),
(54, 22, 'et_votes_count', ''),
(55, 22, 'et_answer_authors', ''),
(56, 22, 'et_answers_count', ''),
(57, 23, 'qa_point', '10'),
(92, 30, 'qa_point', '10'),
(93, 30, 'qa_point', '5'),
(94, 31, 'qa_point', '10'),
(95, 31, 'qa_point', '5'),
(96, 32, 'qa_point', '10'),
(97, 32, 'qa_point', '5'),
(98, 33, 'qa_point', '10'),
(99, 33, 'qa_point', '5'),
(100, 34, 'et_votes', ''),
(101, 34, 'et_votes_count', ''),
(102, 34, 'et_answer_authors', ''),
(103, 34, 'et_answers_count', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Một người bình luận WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-09-25 12:38:17', '2020-09-25 12:38:17', 'Xin chào, đây là một bình luận\nĐể bắt đầu với quản trị bình luận, chỉnh sửa hoặc xóa bình luận, vui lòng truy cập vào khu vực Bình luận trong trang quản trị.\nAvatar của người bình luận sử dụng <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0),
(2, 106, '', '', '', '', '2014-06-05 03:33:04', '2014-06-05 03:33:04', 'vote_up', 0, '1', '', 'vote_up', 0, 9),
(3, 63, '', '', '', '', '2014-06-06 09:55:18', '2014-06-06 09:55:18', 'vote_up', 0, '1', '', 'vote_up', 0, 9),
(4, 71, '', '', '', '', '2014-06-05 04:18:48', '2014-06-05 04:18:48', '<span style=\"color: #333333;\">Because musicians need to eat.</span>', 0, '1', '', 'question', 0, 9),
(5, 71, '', '', '', '', '2014-06-05 06:35:26', '2014-06-05 06:35:26', 'vote_up', 0, '1', '', 'vote_up', 0, 9),
(6, 119, '', '', '', '', '2014-06-05 04:20:48', '2014-06-05 04:20:48', 'vote_up', 0, '1', '', 'vote_up', 0, 9),
(7, 119, '', '', '', '', '2014-06-06 12:39:06', '2014-06-06 12:39:06', 'vote_up', 0, '1', '', 'vote_up', 0, 11),
(8, 126, '', '', '', '', '2014-06-05 04:29:10', '2014-06-05 04:29:10', 'vote_up', 0, '1', '', 'vote_up', 0, 9),
(9, 126, '', '', '', '', '2014-06-05 04:36:39', '2014-06-05 04:36:39', 'vote_up', 0, '1', '', 'vote_up', 0, 10),
(10, 126, '', '', '', '', '2014-06-05 06:53:44', '2014-06-05 06:53:44', '<span style=\"color: #000000;\">Don\'t forget to tell us what your favorite Android apps are in the comments section below.</span>', 0, '1', '', 'question', 0, 9),
(11, 126, '', '', '', '', '2014-06-05 06:55:25', '2014-06-05 06:55:25', '', 0, '1', '', 'question', 0, 10),
(12, 126, '', '', '', '', '2014-06-05 06:58:04', '2014-06-05 06:58:04', '[img]http://demo.enginethemes.com/qaengine/wp-content/uploads/2014/06/1.jpg[/img]\n\nTripIt is the type of app that almost needs no introduction. When it comes to travel planning, it won\'t suggest destinations for you, or help you plan the best possible way to spend your time in town wherever you go, but what TripIt does offer is a complete, hassle free way to combine all of your travel confirmations, itineraries, tickets, hotel bookings, rental car reservations, and the rest in one simple view. That view then becomes the central hub for all of your travel needs—no more fishing for a confirmation email to get your reservation number, or wondering what flight number you\'re on before you check in; it\'s all right there, and it\'s all incredibly handy. It\'ll even let you know if there\'s a better seat on your flight so you can switch to it. As someone who uses TripIt when he travels, I wouldn\'t leave home without it.', 0, '1', '', 'question', 0, 9),
(18, 188, '', '', '', '', '2014-06-09 10:11:26', '2014-06-09 10:11:26', 'vote_up', 0, '1', '', 'vote_up', 0, 9),
(19, 1728, '', '', '', '', '2014-06-09 08:19:09', '2014-06-09 08:19:09', 'vote_up', 0, '1', '', 'vote_up', 0, 9),
(20, 1728, '', '', '', '', '2014-06-10 04:20:19', '2014-06-10 04:20:19', 'vote_up', 0, '1', '', 'vote_up', 0, 0),
(21, 1728, '', '', '', '', '2014-09-18 03:45:00', '2014-09-18 03:45:00', 'vote_down', 0, '1', '', 'vote_down', 0, 14),
(22, 55, '', '', '', '', '2014-06-05 03:23:43', '2014-06-05 03:23:43', '<span style=\"color: #333333;\">The next big thing will not come out of an incubator.</span><br style=\"color: #333333;\" /><span style=\"color: #333333;\">The next big thing will not involve people who attend or speak at tech conferences.</span>', 0, '1', '', 'answer', 0, 10),
(23, 1748, '', '', '', '', '2014-06-06 09:55:36', '2014-06-06 09:55:36', 'vote_up', 0, '1', '', 'vote_up', 0, 9),
(30, 1777, '', '', '', '', '2014-06-06 12:40:14', '2014-06-06 12:40:14', 'vote_up', 0, '1', '', 'vote_up', 0, 11),
(31, 1777, '', '', '', '', '2014-06-10 04:44:07', '2014-06-10 04:44:07', 'vote_up', 0, '1', '', 'vote_up', 0, 9),
(32, 1784, '', '', '', '', '2014-06-06 12:40:11', '2014-06-06 12:40:11', 'vote_up', 0, '1', '', 'vote_up', 0, 11),
(33, 1908, '', '', '', '', '2014-09-18 03:45:06', '2014-09-18 03:45:06', 'vote_up', 0, '1', '', 'vote_up', 0, 14),
(34, 1908, 'admindemo', 'demo@enginethemes.com', '', '', '2014-09-18 03:45:11', '2014-09-18 03:45:11', 'sqdqsd', 0, '1', '', 'answer', 0, 14);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_mailchimp_carts`
--

CREATE TABLE `wp_mailchimp_carts` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_mailchimp_jobs`
--

CREATE TABLE `wp_mailchimp_jobs` (
  `id` bigint(20) NOT NULL,
  `obj_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'Hỏi đáp kiến thức IT', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'luphuowng@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'm/d/Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:221:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:8:\"packs/?$\";s:24:\"index.php?post_type=pack\";s:38:\"packs/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=pack&feed=$matches[1]\";s:33:\"packs/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=pack&feed=$matches[1]\";s:25:\"packs/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=pack&paged=$matches[1]\";s:13:\"change-log/?$\";s:29:\"index.php?post_type=changelog\";s:43:\"change-log/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=changelog&feed=$matches[1]\";s:38:\"change-log/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=changelog&feed=$matches[1]\";s:30:\"change-log/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=changelog&paged=$matches[1]\";s:12:\"questions/?$\";s:28:\"index.php?post_type=question\";s:42:\"questions/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=question&feed=$matches[1]\";s:37:\"questions/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=question&feed=$matches[1]\";s:29:\"questions/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=question&paged=$matches[1]\";s:10:\"answers/?$\";s:26:\"index.php?post_type=answer\";s:40:\"answers/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=answer&feed=$matches[1]\";s:35:\"answers/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=answer&feed=$matches[1]\";s:27:\"answers/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=answer&paged=$matches[1]\";s:10:\"reports/?$\";s:26:\"index.php?post_type=report\";s:40:\"reports/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=report&feed=$matches[1]\";s:35:\"reports/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=report&feed=$matches[1]\";s:27:\"reports/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=report&paged=$matches[1]\";s:27:\"search-questions/([^/]+)/?$\";s:45:\"index.php?pagename=search&keyword=$matches[1]\";s:44:\"search-questions/([^/]+)/page/([0-9]{1,})/?$\";s:63:\"index.php?pagename=search&keyword=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:32:\"pack/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"pack/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"pack/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"pack/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"pack/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"pack/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"pack/([^/]+)/embed/?$\";s:37:\"index.php?pack=$matches[1]&embed=true\";s:25:\"pack/([^/]+)/trackback/?$\";s:31:\"index.php?pack=$matches[1]&tb=1\";s:45:\"pack/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?pack=$matches[1]&feed=$matches[2]\";s:40:\"pack/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?pack=$matches[1]&feed=$matches[2]\";s:33:\"pack/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?pack=$matches[1]&paged=$matches[2]\";s:40:\"pack/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?pack=$matches[1]&cpage=$matches[2]\";s:29:\"pack/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?pack=$matches[1]&page=$matches[2]\";s:21:\"pack/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"pack/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"pack/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"pack/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"pack/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"pack/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"changelog/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"changelog/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"changelog/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"changelog/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"changelog/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"changelog/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"changelog/([^/]+)/embed/?$\";s:42:\"index.php?changelog=$matches[1]&embed=true\";s:30:\"changelog/([^/]+)/trackback/?$\";s:36:\"index.php?changelog=$matches[1]&tb=1\";s:50:\"changelog/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?changelog=$matches[1]&feed=$matches[2]\";s:45:\"changelog/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?changelog=$matches[1]&feed=$matches[2]\";s:38:\"changelog/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?changelog=$matches[1]&paged=$matches[2]\";s:45:\"changelog/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?changelog=$matches[1]&cpage=$matches[2]\";s:34:\"changelog/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?changelog=$matches[1]&page=$matches[2]\";s:26:\"changelog/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"changelog/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"changelog/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"changelog/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"changelog/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"changelog/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"question/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"question/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"question/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"question/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"question/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"question/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"question/(.+?)/embed/?$\";s:41:\"index.php?question=$matches[1]&embed=true\";s:27:\"question/(.+?)/trackback/?$\";s:35:\"index.php?question=$matches[1]&tb=1\";s:47:\"question/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?question=$matches[1]&feed=$matches[2]\";s:42:\"question/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?question=$matches[1]&feed=$matches[2]\";s:35:\"question/(.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?question=$matches[1]&paged=$matches[2]\";s:42:\"question/(.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?question=$matches[1]&cpage=$matches[2]\";s:31:\"question/(.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?question=$matches[1]&page=$matches[2]\";s:58:\"question-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?question_category=$matches[1]&feed=$matches[2]\";s:53:\"question-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?question_category=$matches[1]&feed=$matches[2]\";s:34:\"question-category/([^/]+)/embed/?$\";s:50:\"index.php?question_category=$matches[1]&embed=true\";s:46:\"question-category/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?question_category=$matches[1]&paged=$matches[2]\";s:28:\"question-category/([^/]+)/?$\";s:39:\"index.php?question_category=$matches[1]\";s:47:\"qa-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?qa_tag=$matches[1]&feed=$matches[2]\";s:42:\"qa-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?qa_tag=$matches[1]&feed=$matches[2]\";s:23:\"qa-tag/([^/]+)/embed/?$\";s:39:\"index.php?qa_tag=$matches[1]&embed=true\";s:35:\"qa-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?qa_tag=$matches[1]&paged=$matches[2]\";s:17:\"qa-tag/([^/]+)/?$\";s:28:\"index.php?qa_tag=$matches[1]\";s:34:\"answer/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"answer/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"answer/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"answer/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"answer/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"answer/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"answer/([^/]+)/embed/?$\";s:39:\"index.php?answer=$matches[1]&embed=true\";s:27:\"answer/([^/]+)/trackback/?$\";s:33:\"index.php?answer=$matches[1]&tb=1\";s:47:\"answer/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?answer=$matches[1]&feed=$matches[2]\";s:42:\"answer/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?answer=$matches[1]&feed=$matches[2]\";s:35:\"answer/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?answer=$matches[1]&paged=$matches[2]\";s:42:\"answer/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?answer=$matches[1]&cpage=$matches[2]\";s:31:\"answer/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?answer=$matches[1]&page=$matches[2]\";s:23:\"answer/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"answer/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"answer/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"answer/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"answer/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"answer/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"report/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"report/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"report/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"report/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"report/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"report/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"report/([^/]+)/embed/?$\";s:39:\"index.php?report=$matches[1]&embed=true\";s:27:\"report/([^/]+)/trackback/?$\";s:33:\"index.php?report=$matches[1]&tb=1\";s:47:\"report/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?report=$matches[1]&feed=$matches[2]\";s:42:\"report/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?report=$matches[1]&feed=$matches[2]\";s:35:\"report/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?report=$matches[1]&paged=$matches[2]\";s:42:\"report/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?report=$matches[1]&cpage=$matches[2]\";s:31:\"report/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?report=$matches[1]&page=$matches[2]\";s:23:\"report/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"report/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"report/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"report/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"report/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"report/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:56:\"Report-taxonomy/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?report-taxonomy=$matches[1]&feed=$matches[2]\";s:51:\"Report-taxonomy/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?report-taxonomy=$matches[1]&feed=$matches[2]\";s:32:\"Report-taxonomy/([^/]+)/embed/?$\";s:48:\"index.php?report-taxonomy=$matches[1]&embed=true\";s:44:\"Report-taxonomy/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?report-taxonomy=$matches[1]&paged=$matches[2]\";s:26:\"Report-taxonomy/([^/]+)/?$\";s:37:\"index.php?report-taxonomy=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=81&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"member/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"member/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"member/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"member/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"member/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:41:\"wordpress-importer/wordpress-importer.php\";i:1;s:48:\"wp-live-chat-software-for-wordpress/livechat.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '7', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:116:\"E:\\xampp\\htdocs\\wordpress/wp-content/plugins/activity-reactions-for-buddypress/activity-reactions-for-buddypress.php\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'qaengine', 'yes'),
(41, 'stylesheet', 'qaengine', 'yes'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '48748', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:3:{i:2;a:4:{s:5:\"title\";s:27:\"Giới thiệu về website\";s:4:\"text\";s:155:\"Đây là một nơi tốt để giới thiệu bản thân và trang web của bạn hoặc đưa ra các thông tin để người xem tin tưởng hơn.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:16:\"Tìm Chúng Tôi\";s:4:\"text\";s:177:\"<strong>Địa chỉ</strong>\n23 Hàng Mã\nHà Nội\n\n<strong>Giờ</strong>\nThứ hai - Thứ sáu: 9:00 sáng&ndash;5:00 chiều\nThứ bảy và Chủ nhật: 11:00AM - 3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:48:\"wp-live-chat-software-for-wordpress/livechat.php\";s:22:\"uninstall_hook_handler\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '82', 'yes'),
(84, 'page_on_front', '81', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1616589487', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'vi', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:14:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";}s:26:\"sidebar-buddypress-members\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:25:\"sidebar-buddypress-groups\";a:0:{}s:15:\"qa-left-sidebar\";a:0:{}s:16:\"qa-right-sidebar\";a:0:{}s:17:\"qa-header-sidebar\";a:0:{}s:20:\"qa-blog-left-sidebar\";a:0:{}s:21:\"qa-blog-right-sidebar\";a:0:{}s:25:\"qa-question-right-sidebar\";a:0:{}s:31:\"qa-top-questions-banner-sidebar\";a:0:{}s:31:\"qa-btm-questions-banner-sidebar\";a:0:{}s:34:\"qa-content-question-banner-sidebar\";a:0:{}s:37:\"qa-btm-single-question-banner-sidebar\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:15:{i:1610607937;a:1:{s:19:\"et_cron_unban_users\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1610609390;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1610609402;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1610609901;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1610616594;a:3:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1610627384;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1610627899;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1610627901;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1610627917;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1610627920;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1610638184;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1610647535;a:1:{s:29:\"et_session_garbage_collection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1610668800;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1610800699;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"background_color\";s:3:\"fff\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1602927235;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(154, '_transient_health-check-site-status-result', '{\"good\":11,\"recommended\":9,\"critical\":0}', 'yes'),
(180, 'recently_activated', 'a:0:{}', 'yes'),
(187, 'action_scheduler_hybrid_store_demarkation', '12', 'yes'),
(188, 'schema-ActionScheduler_StoreSchema', '3.0.1602926958', 'yes'),
(189, 'schema-ActionScheduler_LoggerSchema', '2.0.1602926958', 'yes'),
(192, 'woocommerce_schema_version', '430', 'yes'),
(193, 'woocommerce_store_address', '22', 'yes'),
(194, 'woocommerce_store_address_2', '', 'yes'),
(195, 'woocommerce_store_city', '5', 'yes'),
(196, 'woocommerce_default_country', 'VN', 'yes'),
(197, 'woocommerce_store_postcode', '90000', 'yes'),
(198, 'woocommerce_allowed_countries', 'all', 'yes'),
(199, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(200, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(201, 'woocommerce_ship_to_countries', '', 'yes'),
(202, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(203, 'woocommerce_default_customer_address', 'base', 'yes'),
(204, 'woocommerce_calc_taxes', 'no', 'yes'),
(205, 'woocommerce_enable_coupons', 'yes', 'yes'),
(206, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(207, 'woocommerce_currency', 'VND', 'yes'),
(208, 'woocommerce_currency_pos', 'right', 'yes'),
(209, 'woocommerce_price_thousand_sep', '.', 'yes'),
(210, 'woocommerce_price_decimal_sep', ',', 'yes'),
(211, 'woocommerce_price_num_decimals', '1', 'yes'),
(212, 'woocommerce_shop_page_id', '14', 'yes'),
(213, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(214, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(215, 'woocommerce_placeholder_image', '13', 'yes'),
(216, 'woocommerce_weight_unit', 'kg', 'yes'),
(217, 'woocommerce_dimension_unit', 'cm', 'yes'),
(218, 'woocommerce_enable_reviews', 'yes', 'yes'),
(219, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(220, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(221, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(222, 'woocommerce_review_rating_required', 'yes', 'no'),
(223, 'woocommerce_manage_stock', 'yes', 'yes'),
(224, 'woocommerce_hold_stock_minutes', '60', 'no'),
(225, 'woocommerce_notify_low_stock', 'yes', 'no'),
(226, 'woocommerce_notify_no_stock', 'yes', 'no'),
(227, 'woocommerce_stock_email_recipient', 'luphuowng@gmail.com', 'no'),
(228, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(229, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(230, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(231, 'woocommerce_stock_format', '', 'yes'),
(232, 'woocommerce_file_download_method', 'force', 'no'),
(233, 'woocommerce_downloads_require_login', 'no', 'no'),
(234, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(235, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(236, 'woocommerce_prices_include_tax', 'no', 'yes'),
(237, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(238, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(239, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(240, 'woocommerce_tax_classes', '', 'yes'),
(241, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(242, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(243, 'woocommerce_price_display_suffix', '', 'yes'),
(244, 'woocommerce_tax_total_display', 'itemized', 'no'),
(245, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(246, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(247, 'woocommerce_ship_to_destination', 'billing', 'no'),
(248, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(249, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(250, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(251, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(252, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(253, 'woocommerce_registration_generate_username', 'yes', 'no'),
(254, 'woocommerce_registration_generate_password', 'yes', 'no'),
(255, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(256, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(257, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(258, 'woocommerce_registration_privacy_policy_text', 'Thông tin cá nhân của bạn sẽ được sử dụng để tăng trải nghiệm sử dụng website, quản lý truy cập vào tài khoản của bạn, và cho các mục đích cụ thể khác được mô tả trong [privacy_policy].', 'yes'),
(259, 'woocommerce_checkout_privacy_policy_text', 'Thông tin cá nhân của bạn sẽ được sử dụng để xử lý đơn hàng, tăng trải nghiệm sử dụng website, và cho các mục đích cụ thể khác đã được mô tả trong [privacy_policy].', 'yes'),
(260, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(261, 'woocommerce_trash_pending_orders', '', 'no'),
(262, 'woocommerce_trash_failed_orders', '', 'no'),
(263, 'woocommerce_trash_cancelled_orders', '', 'no'),
(264, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(265, 'woocommerce_email_from_name', 'IInsta', 'no'),
(266, 'woocommerce_email_from_address', 'luphuowng@gmail.com', 'no'),
(267, 'woocommerce_email_header_image', '', 'no'),
(268, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(269, 'woocommerce_email_base_color', '#96588a', 'no'),
(270, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(271, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(272, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(273, 'woocommerce_cart_page_id', '15', 'no'),
(274, 'woocommerce_checkout_page_id', '16', 'no'),
(275, 'woocommerce_myaccount_page_id', '17', 'no'),
(276, 'woocommerce_terms_page_id', '', 'no'),
(277, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(278, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(279, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(280, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(281, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(282, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(283, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(284, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(285, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(286, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(287, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(288, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(289, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(290, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(291, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(292, 'woocommerce_api_enabled', 'no', 'yes'),
(293, 'woocommerce_allow_tracking', 'yes', 'no'),
(294, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(295, 'woocommerce_single_image_width', '600', 'yes'),
(296, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(297, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(298, 'woocommerce_demo_store', 'no', 'no'),
(299, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:12:\"sản phẩm\";s:13:\"category_base\";s:17:\"danh-muc-san-pham\";s:8:\"tag_base\";s:16:\"tu-khoa-san-pham\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(300, 'current_theme_supports_woocommerce', 'no', 'yes'),
(301, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(302, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(303, 'product_cat_children', 'a:0:{}', 'yes'),
(304, 'default_product_cat', '15', 'yes'),
(307, 'woocommerce_version', '4.6.0', 'yes'),
(308, 'woocommerce_db_version', '4.6.0', 'yes'),
(311, 'action_scheduler_lock_async-request-runner', '1606559909', 'yes'),
(312, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:\"no_secure_connection\";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(313, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"ThO0gD60sFBrPH6QYawXf4lJzKps8uXm\";}', 'yes'),
(314, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(315, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(316, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(317, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(318, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(319, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(320, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(321, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(322, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(323, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(324, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(325, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(326, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(329, 'woocommerce_admin_version', '1.6.1', 'yes'),
(330, 'woocommerce_admin_install_timestamp', '1602926994', 'yes'),
(335, 'wc_admin_note_home_screen_feedback_homescreen_accessed', '1602926995', 'yes'),
(336, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(337, 'wc_blocks_db_schema_version', '260', 'yes'),
(339, 'wc_remote_inbox_notifications_stored_state', 'O:8:\"stdClass\":2:{s:22:\"there_were_no_products\";b:1;s:22:\"there_are_now_products\";b:0;}', 'yes'),
(340, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(344, 'wc_remote_inbox_notifications_specs', 'a:5:{s:37:\"ecomm-need-help-setting-up-your-store\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"ecomm-need-help-setting-up-your-store\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:32:\"Need help setting up your Store?\";s:7:\"content\";s:350:\"Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:16:\"set-up-concierge\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"Schedule free session\";}}s:3:\"url\";s:34:\"https://wordpress.com/me/concierge\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}}}s:20:\"woocommerce-services\";O:8:\"stdClass\":8:{s:4:\"slug\";s:20:\"woocommerce-services\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:26:\"WooCommerce Shipping & Tax\";s:7:\"content\";s:255:\"WooCommerce Shipping & Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:84:\"https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:32:\"ecomm-unique-shopping-experience\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"ecomm-unique-shopping-experience\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:53:\"For a shopping experience as unique as your customers\";s:7:\"content\";s:274:\"Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:43:\"learn-more-ecomm-unique-shopping-experience\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:71:\"https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:19:\"wcpay-promo-2020-11\";O:8:\"stdClass\":8:{s:4:\"slug\";s:19:\"wcpay-promo-2020-11\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:54:\"Manage subscriber payments from your store\'s dashboard\";s:7:\"content\";s:856:\"<a href=\"https://woocommerce.com/payments/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_exp20\" target=\"_blank\">WooCommerce Payments</a> now supports <a href=\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_exp20\" target=\"_blank\">WooCommerce Subscriptions</a>. <strong>Get 50% off transaction fees</strong> and make the most out of your holiday sales by adding WooCommerce Payments to your store. Limited-time offer. <br/><br/><em>By clicking \"Install now,\" you agree to our general <a href=\"https://wordpress.com/tos/\" target=\"_blank\">Terms of Service</a> and promotional <a href=\"https://woocommerce.com/terms-conditions/woocommerce-payments-promotion/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_exp20\" target=\"_blank\">Terms of Service</a>.</em>\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:11:\"install-now\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:11:\"Install now\";}}s:3:\"url\";s:57:\"admin.php?page=wc-admin&action=setup-woocommerce-payments\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:9:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:17:\"woocommerce-admin\";}}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:17:\"woocommerce-admin\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"1.7.0\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:2:{i:0;s:20:\"woocommerce-payments\";i:1;s:26:\"woocommerce-gateway-stripe\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:8:\"industry\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";}}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:2:\">=\";s:5:\"value\";i:10;}i:5;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2020-11-18 14:00:00\";}i:6;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2020-11-27 00:00:00\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:8;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:26:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CO\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"DE\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"FL\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"HI\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"ID\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IN\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"KS\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"KY\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"LA\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MA\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MN\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MT\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NE\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NV\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NH\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NM\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"ND\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"OH\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"OR\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"PA\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"SD\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"TN\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"TX\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"VA\";}i:24;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WA\";}i:25;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WI\";}}}}}s:27:\"wcpay-subscriptions-2020-11\";O:8:\"stdClass\":8:{s:4:\"slug\";s:27:\"wcpay-subscriptions-2020-11\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:54:\"Manage subscriber payments from your store\'s dashboard\";s:7:\"content\";s:643:\"Securely accept cards and manage transactions right from your dashboard with <a href=\"https://woocommerce.com/payments/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Payments</a>  – now supporting <a href=\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Subscriptions</a>! <br/><br/><em>By clicking \"Install now,\" you agree to our <a href=\"https://wordpress.com/tos/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">Terms of Service</a>.</em>\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:11:\"install-now\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:11:\"Install now\";}}s:3:\"url\";s:57:\"admin.php?page=wc-admin&action=setup-woocommerce-payments\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:9:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:17:\"woocommerce-admin\";}}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:17:\"woocommerce-admin\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"1.7.0\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:2:{i:0;s:20:\"woocommerce-payments\";i:1;s:26:\"woocommerce-gateway-stripe\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:8:\"industry\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";}}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:2:\">=\";s:5:\"value\";i:10;}i:5;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2020-11-18 14:00:00\";}i:6;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2020-11-27 00:00:00\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:8;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:24:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AL\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AK\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AZ\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AR\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CA\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CT\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"DC\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IL\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IA\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"ME\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MD\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MI\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MS\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MO\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NJ\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NY\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NC\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"OK\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"RI\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"SC\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"UT\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"VT\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WV\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WY\";}}}}}}', 'yes'),
(346, '_transient_woocommerce_reports-transient-version', '1602927081', 'yes'),
(364, 'woocommerce_onboarding_profile', 'a:9:{s:12:\"setup_client\";b:1;s:8:\"industry\";a:1:{i:0;a:1:{s:4:\"slug\";s:5:\"other\";}}s:13:\"product_types\";a:2:{i:0;s:8:\"physical\";i:1;s:9:\"downloads\";}s:13:\"product_count\";s:1:\"0\";s:14:\"selling_venues\";s:2:\"no\";s:19:\"business_extensions\";a:3:{i:0;s:24:\"facebook-for-woocommerce\";i:1;s:25:\"mailchimp-for-woocommerce\";i:2;s:27:\"kliken-marketing-for-google\";}s:5:\"theme\";s:10:\"storefront\";s:7:\"plugins\";s:7:\"skipped\";s:9:\"completed\";b:1;}', 'yes'),
(374, 'mailchimp-woocommerce', 'a:0:{}', 'yes'),
(376, 'mailchimp-woocommerce-store_id', '5f8aba4a1e28b', 'yes'),
(377, 'mailchimp-woocommerce-store-id-last-verified', '1602927178', 'yes'),
(378, 'woocommerce_kk_wcintegration_settings', 'a:3:{s:10:\"account_id\";i:0;s:9:\"app_token\";s:0:\"\";s:12:\"google_token\";s:0:\"\";}', 'yes'),
(381, 'facebook_config', 'a:4:{s:8:\"pixel_id\";s:1:\"0\";s:7:\"use_pii\";b:1;s:7:\"use_s2s\";b:0;s:12:\"access_token\";s:0:\"\";}', 'yes'),
(386, 'current_theme', 'QAEngine', 'yes'),
(387, 'theme_switched', '', 'yes'),
(388, 'theme_mods_storefront', 'a:3:{s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:31;s:9:\"secondary\";i:0;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1603545024;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(389, 'woocommerce_catalog_rows', '4', 'yes'),
(390, 'woocommerce_catalog_columns', '3', 'yes'),
(391, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(394, 'storefront_nux_fresh_site', '0', 'yes'),
(399, 'woocommerce_task_list_tracked_completed_tasks', 'a:1:{i:0;s:13:\"store_details\";}', 'yes'),
(406, 'woocommerce_task_list_welcome_modal_dismissed', 'yes', 'yes'),
(430, 'wc_facebook_for_woocommerce_lifecycle_events', '[{\"name\":\"install\",\"time\":1603438936,\"version\":\"2.0.5\"}]', 'no'),
(431, 'wc_facebook_for_woocommerce_version', '2.0.5', 'yes'),
(447, 'woocommerce_tracker_last_send', '1606543058', 'yes'),
(451, 'woocommerce_tracker_ua', 'a:4:{i:0;s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\";i:1;s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\";i:2;s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.183 Safari/537.36\";i:3;s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36\";}', 'yes'),
(497, 'bp-deactivated-components', 'a:0:{}', 'yes'),
(498, 'bp-xprofile-base-group-name', 'Base', 'yes'),
(499, 'bp-xprofile-fullname-field-name', 'Name', 'yes'),
(500, 'bp-blogs-first-install', '', 'yes'),
(501, 'bp-disable-profile-sync', '', 'yes'),
(502, 'hide-loggedout-adminbar', '', 'yes'),
(503, 'bp-disable-avatar-uploads', '', 'yes'),
(504, 'bp-disable-cover-image-uploads', '', 'yes'),
(505, 'bp-disable-group-avatar-uploads', '', 'yes'),
(506, 'bp-disable-group-cover-image-uploads', '', 'yes'),
(507, 'bp-disable-account-deletion', '', 'yes'),
(508, 'bp-disable-blogforum-comments', '1', 'yes'),
(509, '_bp_theme_package_id', 'nouveau', 'yes'),
(510, 'bp-emails-unsubscribe-salt', 'X35XYil9YVplQnkqe1EoVSktKywweSk3VXVsbXRMWHZFVT9+V1NTP3VtMThJUXpNMzxtOzBKNTYvTC9qN21zZw==', 'yes'),
(511, 'bp_restrict_group_creation', '', 'yes'),
(512, '_bp_enable_akismet', '1', 'yes'),
(513, '_bp_enable_heartbeat_refresh', '1', 'yes'),
(514, '_bp_force_buddybar', '', 'yes'),
(515, '_bp_retain_bp_default', '', 'yes'),
(516, '_bp_ignore_deprecated_code', '1', 'yes'),
(517, 'widget_bp_core_login_widget', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(518, 'widget_bp_core_members_widget', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(519, 'widget_bp_core_whos_online_widget', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(520, 'widget_bp_core_recently_active_widget', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(521, 'widget_bp_groups_widget', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(522, 'widget_bp_messages_sitewide_notices_widget', '', 'yes'),
(527, 'widget_bp_nouveau_sidebar_object_nav_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(533, 'bp-active-components', 'a:9:{s:8:\"xprofile\";s:1:\"1\";s:8:\"settings\";s:1:\"1\";s:7:\"friends\";s:1:\"1\";s:8:\"messages\";s:1:\"1\";s:8:\"activity\";s:1:\"1\";s:13:\"notifications\";s:1:\"1\";s:6:\"groups\";s:1:\"1\";s:5:\"blogs\";s:1:\"1\";s:7:\"members\";s:1:\"1\";}', 'yes'),
(534, 'bp-pages', 'a:5:{s:7:\"members\";i:20;s:8:\"activity\";i:19;s:6:\"groups\";i:36;s:8:\"register\";i:37;s:8:\"activate\";i:39;}', 'yes'),
(535, '_transient_product_query-transient-version', '1606543679', 'yes'),
(536, '_bp_db_version', '12385', 'yes'),
(537, 'widget_bp_latest_activities', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(559, 'storefront_nux_guided_tour', '1', 'yes'),
(624, 'widget_bp_core_friends_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(639, 'storefront_nux_dismissed', '1', 'yes'),
(641, 'kk_wc_welcome_message_dismissed', '1', 'yes'),
(646, 'new_admin_email', 'luphuowng@gmail.com', 'yes'),
(652, '_transient_shipping-transient-version', '1603542754', 'yes'),
(656, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(677, 'theme_mods_galaxis', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(686, 'theme_mods_elegant-portfolio', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(697, 'widget_socialmag_visit_us', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(698, 'theme_mods_socialmag', 'a:5:{s:18:\"custom_css_post_id\";i:-1;s:12:\"header_image\";s:108:\"http://localhost/wordpress/wp-content/uploads/2020/10/cropped-adam-solomon-WHUDOzd5IYU-unsplash-scaled-1.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:58;s:3:\"url\";s:108:\"http://localhost/wordpress/wp-content/uploads/2020/10/cropped-adam-solomon-WHUDOzd5IYU-unsplash-scaled-1.jpg\";s:13:\"thumbnail_url\";s:108:\"http://localhost/wordpress/wp-content/uploads/2020/10/cropped-adam-solomon-WHUDOzd5IYU-unsplash-scaled-1.jpg\";s:6:\"height\";i:1024;s:5:\"width\";i:2560;}s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:31;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1606543494;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(708, 'theme_switched_via_customizer', '', 'yes'),
(709, 'customize_stashed_theme_mods', 'a:1:{s:17:\"elegant-portfolio\";a:2:{s:12:\"social_links\";a:4:{s:5:\"value\";s:6:\"%5B%5D\";s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2020-10-24 13:06:11\";}s:27:\"nav_menu_locations[primary]\";a:4:{s:5:\"value\";i:31;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2020-10-24 13:06:11\";}}}', 'no'),
(756, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:19:\"luphuowng@gmail.com\";s:7:\"version\";s:5:\"5.4.4\";s:9:\"timestamp\";i:1605331214;}', 'no'),
(803, 'version', '1.0.22', 'yes'),
(813, 'RT_RTMEDIA_FOR_WORDPRESS_BUDDYPRESS_AND_BBPRESS_DB_VERSIONS', '4.6.4', 'no'),
(814, 'rtmedia_current_media_slug', 'media', 'no'),
(815, 'rtmedia-options', 'a:44:{s:20:\"general_enableAlbums\";i:1;s:22:\"general_enableComments\";i:0;s:22:\"general_downloadButton\";i:0;s:22:\"general_enableLightbox\";i:1;s:20:\"general_perPageMedia\";i:10;s:27:\"general_enableMediaEndPoint\";i:0;s:21:\"general_showAdminMenu\";i:0;s:19:\"general_videothumbs\";i:2;s:26:\"general_jpeg_image_quality\";i:90;s:21:\"general_AllowUserData\";i:0;s:26:\"allowedTypes_photo_enabled\";i:1;s:27:\"allowedTypes_photo_featured\";i:0;s:26:\"allowedTypes_video_enabled\";i:1;s:27:\"allowedTypes_video_featured\";i:0;s:26:\"allowedTypes_music_enabled\";i:1;s:27:\"allowedTypes_music_featured\";i:0;s:34:\"defaultSizes_photo_thumbnail_width\";i:150;s:35:\"defaultSizes_photo_thumbnail_height\";i:150;s:33:\"defaultSizes_photo_thumbnail_crop\";i:1;s:31:\"defaultSizes_photo_medium_width\";i:320;s:32:\"defaultSizes_photo_medium_height\";i:240;s:30:\"defaultSizes_photo_medium_crop\";i:1;s:30:\"defaultSizes_photo_large_width\";i:800;s:31:\"defaultSizes_photo_large_height\";i:0;s:29:\"defaultSizes_photo_large_crop\";i:1;s:39:\"defaultSizes_video_activityPlayer_width\";i:320;s:40:\"defaultSizes_video_activityPlayer_height\";i:240;s:37:\"defaultSizes_video_singlePlayer_width\";i:640;s:38:\"defaultSizes_video_singlePlayer_height\";i:480;s:39:\"defaultSizes_music_activityPlayer_width\";i:320;s:37:\"defaultSizes_music_singlePlayer_width\";i:640;s:35:\"defaultSizes_featured_default_width\";i:100;s:36:\"defaultSizes_featured_default_height\";i:100;s:34:\"defaultSizes_featured_default_crop\";i:1;s:15:\"privacy_enabled\";i:0;s:15:\"privacy_default\";i:0;s:20:\"privacy_userOverride\";i:0;s:13:\"styles_custom\";s:0:\"\";s:14:\"styles_enabled\";i:1;s:24:\"buddypress_enableOnGroup\";b:1;s:27:\"buddypress_enableOnActivity\";b:1;s:26:\"buddypress_enableOnProfile\";i:1;s:28:\"general_upload_terms_message\";s:18:\"terms of services.\";s:34:\"general_upload_terms_error_message\";s:30:\"Please check terms of service.\";}', 'no'),
(817, 'rtmedia_flush_rules_plugin_version', '4.6.4', 'no'),
(818, 'rtmedia-global-albums', 'a:1:{i:0;i:1;}', 'no'),
(819, 'rtmedia_media_size_import_pending_count', '0', 'no'),
(820, 'rtmedia_media_activity_upgrade_pending', '0', 'no'),
(821, 'rtmedia_activity_done_upgrade', '1', 'no'),
(822, 'rtMigration-pending-count', '0', 'no'),
(823, 'rtmedia-update-template-notice-v3_9_4', 'show', 'no'),
(824, 'rtmedia_inspirebook_release_notice', 'show', 'no'),
(825, 'rtmedia_premium_addon_notice', 'show', 'no'),
(860, 'bprwg_activate_message', 'Your membership account is awaiting approval by the site administrator. You will not be able to fully interact with the social aspects of this website until your account is approved. Once approved or denied you will receive an email notice.', 'yes'),
(861, 'bprwg_approved_message', 'Hi [username], your member account at http://localhost/wordpress has been approved! You can now login and start interacting with the rest of the community...', 'yes'),
(862, 'bprwg_denied_message', 'Hi [username], your account at http://localhost/wordpress is currently pending approval.', 'yes'),
(863, 'bprwg_admin_pending_message', '[username] ( [user_email] ) would like to become a member of your website. To accept or reject their request, please go to <a href=\"http://localhost/wordpress/wp-admin/admin.php?page=bp_registration_options_member_requests\">Member Requests</a>', 'yes'),
(1154, 'theme_mods_qaengine', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:9:\"et_header\";i:31;s:7:\"et_left\";i:76;}s:18:\"custom_css_post_id\";i:-1;s:18:\"header_menus_color\";s:7:\"#dbdbdb\";}', 'yes'),
(1157, 'et_options', 'a:19:{s:8:\"blogname\";s:6:\"IInsta\";s:15:\"blogdescription\";s:43:\"Một trang web mới sử dụng WordPress\";s:24:\"forgotpass_mail_template\";s:454:\"<p>Hello [display_name],</p>\r\n                                                <p>You have just sent a request to recover the password associated with your account in [blogname]. If you did not make this request, please ignore this email; otherwise, click the link below to create your new password:</p>\r\n                                                <p>[activate_url]</p>\r\n                                                <p>Regards,<br />[blogname]</p>\";s:22:\"register_mail_template\";s:407:\"<p>Hello [display_name],</p>\r\n                                                <p>You have successfully registered an account with &nbsp;&nbsp;[blogname].&nbsp;Here is your account information:</p>\r\n                                                <ol><li>Username: [user_login]</li><li>Email: [user_email]</li></ol>\r\n                                                <p>Thank you and welcome to [blogname].</p>\";s:21:\"confirm_mail_template\";s:543:\"<p>Hello [display_name],</p>\r\n                                                <p>You have successfully registered an account with &nbsp;&nbsp;[blogname].&nbsp;Here is your account information:</p>\r\n                                                <ol><li>Username: [user_login]</li><li>Email: [user_email]</li></ol>\r\n                                                <p>Please click the link below to confirm your email address.</p>\r\n                                                <p>[confirm_link]</p><p>Thank you and welcome to [blogname].</p>\";s:23:\"confirmed_mail_template\";s:226:\"<p>Hi [display_name],</p>\r\n                                                <p>Your email address has been successfully confirmed.</p>\r\n                                                <p>Thank you and welcome to [blogname].</p>\";s:27:\"accept_answer_mail_template\";s:182:\"<p>Hi [display_name],</p><p>Your answer has been [action] as the best answer.</p><p>You can view your answer by visit this link: [question_link],</p><p>Sincerely,<br />[blogname]</p>\";s:23:\"resetpass_mail_template\";s:284:\"<p>Hello [display_name],</p>\r\n                                                <p>You have successfully changed your password. Click this link &nbsp;[site_url] to login to your [blogname]\'s account.</p>\r\n                                                <p>Sincerely,<br />[blogname]</p>\";s:4:\"init\";i:1;s:24:\"new_answer_mail_template\";s:422:\"<p>Hello [display_name],</p>\r\n                                                <p>The question <strong>[question_title]</strong> you are following has a new answer. </p>\r\n                                                <p>Click the link below to view the question.</p>\r\n                                                <p>[question_link]</p>\r\n                                                <p>Sincerely,<br />[blogname]</p>\";s:20:\"report_mail_template\";s:645:\"<p>Hello [display_name],</p>\r\n                                                <p>You have a new  report from:  [blogname]</p>\r\n                                                <p>Question content :</p>\r\n                                                <p> [thread_content]</p>\r\n                                                <p>Report message:</p>\r\n                                                <p> [report_message]</p>\r\n                                                <p>Question link:</p>\r\n                                                <p> [thread_link]</p>\r\n                                                <p>Sincerely,<br />[blogname]</p>\";s:30:\"pending_question_mail_template\";s:507:\"<p>Hello Admin,</p>\r\n                                                <p>The new pending question <strong>[question_title]</strong> is waiting for your approval. </p>\r\n                                                <p>Without your acceptance, it won’t be displayed in the site. Please check out the following link to approve the question.</p>\r\n                                                <p>[pending_question_link]</p>\r\n                                                <p>Sincerely,<br />[blogname]</p>\";s:17:\"ban_mail_template\";s:231:\"<p>Hello [display_name],</p><p>You have been banned from [blogname] for reason:</p><p>[reason]</p><p>Your ban will be expired on [ban_expired]</p><p>Please contact our staff for more information</p><p>Sincerely,<br />[blogname]</p>\";s:19:\"inbox_mail_template\";s:279:\"<p>Hi [display_name],</p><p>You have just received the following message from user:[sender]</p><p>|==============================================================|</p>[message]<p>|==============================================================|</p><p>Sincerely,<br />[blogname]</p>\";s:24:\"new_badges_mail_template\";s:468:\"<p>Hello [display_name],</p>\r\n                                                <p>We would congratulate you on reaching new level: [new_badges]</p>\r\n                                                <p>Old level: [old_badges]</p>\r\n                                                <p>New level: [new_badges]</p>\r\n                                                <p>New point: [new_point]</p>\r\n                                                <p>Sincerely,<br />[blogname]</p>\";s:25:\"down_badges_mail_template\";s:502:\"<p>Hello [display_name],</p>\r\n                                                <p>We are sorry to inform you that your account has been moved down to a lower level: [new_badges]</p>\r\n                                                <p>Old level: [old_badges]</p>\r\n                                                <p>New level: [new_badges]</p>\r\n                                                <p>New point: [new_point]</p>\r\n                                                <p>Sincerely,<br />[blogname]</p>\";s:16:\"ae_upload_images\";s:1:\"1\";s:18:\"login_view_content\";s:1:\"0\";s:16:\"website_language\";s:10:\"Vietnamese\";}', 'yes'),
(1158, 'qa_badges', 'a:4:{s:10:\"pos_badges\";a:5:{s:15:\"create_question\";i:2;s:11:\"post_answer\";i:2;s:9:\"q_vote_up\";i:5;s:9:\"a_vote_up\";i:10;s:10:\"a_accepted\";i:15;}s:10:\"neg_badges\";a:3:{s:11:\"q_vote_down\";i:-2;s:11:\"a_vote_down\";i:-2;s:9:\"vote_down\";i:-2;}s:10:\"privileges\";a:9:{s:11:\"create_post\";i:1;s:7:\"vote_up\";i:20;s:11:\"add_comment\";i:200;s:9:\"vote_down\";i:500;s:7:\"edit_qa\";i:1200;s:10:\"create_tag\";i:1500;s:13:\"edit_question\";i:2000;s:11:\"edit_answer\";i:40000;s:14:\"approve_answer\";i:1000;}s:4:\"init\";i:1;}', 'yes'),
(1159, 'widget_question_hot_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1160, 'widget_qa_statistic_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1161, 'widget_qa_tags_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1162, 'widget_qa_recent_activity', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1163, 'widget_top_users_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1164, 'widget_question_related_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1165, 'qa_first_time_active', '1', 'yes'),
(1167, 'page-intro.php', 'http://localhost/wordpress/intro/', 'yes'),
(1169, 'page-term.php', 'http://localhost/wordpress/term/', 'yes'),
(1226, 'is_permalink_reset', 'no', 'yes'),
(1239, 'disallowed_keys', '', 'no'),
(1240, 'comment_previously_approved', '1', 'yes'),
(1241, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(1242, 'finished_updating_comment_type', '1', 'yes'),
(1243, 'db_upgraded', '', 'yes'),
(1246, 'can_compress_scripts', '1', 'no'),
(1257, 'category_children', 'a:0:{}', 'yes'),
(1258, 'question_category_children', 'a:0:{}', 'yes'),
(1259, 'report-taxonomy_children', 'a:0:{}', 'yes'),
(1265, 'qa_level', 'a:6:{i:0;O:8:\"stdClass\":17:{s:10:\"post_title\";s:25:\"Thành viên kỳ cựu\";s:9:\"post_name\";s:9:\"professor\";s:12:\"post_content\";s:20:\"<p>content here</p>\n\";s:2:\"ID\";i:1913;s:11:\"post_status\";s:7:\"publish\";s:11:\"status_text\";s:6:\"ACTIVE\";s:9:\"post_date\";s:10:\"06/05/2014\";s:14:\"qa_badge_point\";s:4:\"1500\";s:14:\"qa_badge_color\";s:7:\"#780978\";s:11:\"option_name\";s:8:\"qa_level\";s:2:\"id\";i:1913;s:9:\"permalink\";s:42:\"http://localhost/wordpress/pack/professor/\";s:18:\"unfiltered_content\";s:12:\"content here\";s:17:\"the_post_thumnail\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"the_post_thumbnail\";s:0:\"\";s:13:\"qa_point_text\";s:11:\"1500 points\";}i:1;O:8:\"stdClass\":17:{s:10:\"post_title\";s:14:\"Vice Professor\";s:9:\"post_name\";s:14:\"vice-professor\";s:12:\"post_content\";s:20:\"<p>content here</p>\n\";s:2:\"ID\";i:1914;s:11:\"post_status\";s:7:\"publish\";s:11:\"status_text\";s:6:\"ACTIVE\";s:9:\"post_date\";s:10:\"06/05/2014\";s:14:\"qa_badge_point\";s:3:\"500\";s:14:\"qa_badge_color\";s:7:\"#ffbf00\";s:11:\"option_name\";s:0:\"\";s:2:\"id\";i:1914;s:9:\"permalink\";s:47:\"http://localhost/wordpress/pack/vice-professor/\";s:18:\"unfiltered_content\";s:12:\"content here\";s:17:\"the_post_thumnail\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"the_post_thumbnail\";s:0:\"\";s:13:\"qa_point_text\";s:10:\"500 points\";}i:2;O:8:\"stdClass\":17:{s:10:\"post_title\";s:6:\"Doctor\";s:9:\"post_name\";s:6:\"doctor\";s:12:\"post_content\";s:20:\"<p>content here</p>\n\";s:2:\"ID\";i:1915;s:11:\"post_status\";s:7:\"publish\";s:11:\"status_text\";s:6:\"ACTIVE\";s:9:\"post_date\";s:10:\"06/05/2014\";s:14:\"qa_badge_point\";s:3:\"200\";s:14:\"qa_badge_color\";s:7:\"#138209\";s:11:\"option_name\";s:0:\"\";s:2:\"id\";i:1915;s:9:\"permalink\";s:39:\"http://localhost/wordpress/pack/doctor/\";s:18:\"unfiltered_content\";s:12:\"content here\";s:17:\"the_post_thumnail\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"the_post_thumbnail\";s:0:\"\";s:13:\"qa_point_text\";s:10:\"200 points\";}i:3;O:8:\"stdClass\":17:{s:10:\"post_title\";s:19:\"Người xem xét\";s:9:\"post_name\";s:8:\"reviewer\";s:12:\"post_content\";s:20:\"<p>content here</p>\n\";s:2:\"ID\";i:1917;s:11:\"post_status\";s:7:\"publish\";s:11:\"status_text\";s:6:\"ACTIVE\";s:9:\"post_date\";s:10:\"06/05/2014\";s:14:\"qa_badge_point\";s:3:\"150\";s:14:\"qa_badge_color\";s:7:\"#450ead\";s:11:\"option_name\";s:8:\"qa_level\";s:2:\"id\";i:1917;s:9:\"permalink\";s:41:\"http://localhost/wordpress/pack/reviewer/\";s:18:\"unfiltered_content\";s:12:\"content here\";s:17:\"the_post_thumnail\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"the_post_thumbnail\";s:0:\"\";s:13:\"qa_point_text\";s:10:\"150 points\";}i:4;O:8:\"stdClass\":17:{s:10:\"post_title\";s:22:\"Người hỗ trợ\";s:9:\"post_name\";s:9:\"supporter\";s:12:\"post_content\";s:20:\"<p>content here</p>\n\";s:2:\"ID\";i:1916;s:11:\"post_status\";s:7:\"publish\";s:11:\"status_text\";s:6:\"ACTIVE\";s:9:\"post_date\";s:10:\"06/05/2014\";s:14:\"qa_badge_point\";s:3:\"100\";s:14:\"qa_badge_color\";s:7:\"#a35429\";s:11:\"option_name\";s:8:\"qa_level\";s:2:\"id\";i:1916;s:9:\"permalink\";s:42:\"http://localhost/wordpress/pack/supporter/\";s:18:\"unfiltered_content\";s:12:\"content here\";s:17:\"the_post_thumnail\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"the_post_thumbnail\";s:0:\"\";s:13:\"qa_point_text\";s:10:\"100 points\";}i:5;O:8:\"stdClass\":17:{s:10:\"post_title\";s:20:\"Thành viên mới\";s:9:\"post_name\";s:5:\"train\";s:12:\"post_content\";s:20:\"<p>content here</p>\n\";s:2:\"ID\";i:1918;s:11:\"post_status\";s:7:\"publish\";s:11:\"status_text\";s:6:\"ACTIVE\";s:9:\"post_date\";s:10:\"06/05/2014\";s:14:\"qa_badge_point\";s:2:\"10\";s:14:\"qa_badge_color\";s:7:\"#04aad4\";s:11:\"option_name\";s:8:\"qa_level\";s:2:\"id\";i:1918;s:9:\"permalink\";s:38:\"http://localhost/wordpress/pack/train/\";s:18:\"unfiltered_content\";s:12:\"content here\";s:17:\"the_post_thumnail\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"the_post_thumbnail\";s:0:\"\";s:13:\"qa_point_text\";s:9:\"10 points\";}}', 'yes'),
(1305, 'page-tags.php', 'http://localhost/wordpress/tags/', 'yes'),
(1342, 'page-dashboard.php', 'http://localhost/wordpress/dashboard/', 'yes'),
(1371, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.6-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.6-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.6\";s:7:\"version\";s:3:\"5.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.6-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.6-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.6\";s:7:\"version\";s:3:\"5.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1610598727;s:15:\"version_checked\";s:5:\"5.5.3\";s:12:\"translations\";a:0:{}}', 'no'),
(1372, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1610598772;s:7:\"checked\";a:7:{s:17:\"elegant-portfolio\";s:5:\"1.0.3\";s:7:\"galaxis\";s:5:\"1.1.6\";s:17:\"perfect-portfolio\";s:5:\"1.1.1\";s:8:\"qaengine\";s:3:\"1.6\";s:9:\"socialmag\";s:5:\"2.0.4\";s:10:\"storefront\";s:5:\"2.8.0\";s:13:\"yosemite-lite\";s:5:\"1.2.1\";}s:8:\"response\";a:3:{s:7:\"galaxis\";a:6:{s:5:\"theme\";s:7:\"galaxis\";s:11:\"new_version\";s:5:\"1.2.1\";s:3:\"url\";s:37:\"https://wordpress.org/themes/galaxis/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/theme/galaxis.1.2.1.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"perfect-portfolio\";a:6:{s:5:\"theme\";s:17:\"perfect-portfolio\";s:11:\"new_version\";s:5:\"1.1.2\";s:3:\"url\";s:47:\"https://wordpress.org/themes/perfect-portfolio/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/theme/perfect-portfolio.1.1.2.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:3:\"5.6\";}s:10:\"storefront\";a:6:{s:5:\"theme\";s:10:\"storefront\";s:11:\"new_version\";s:5:\"3.2.0\";s:3:\"url\";s:40:\"https://wordpress.org/themes/storefront/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/storefront.3.2.0.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:5:\"5.6.0\";}}s:9:\"no_update\";a:3:{s:17:\"elegant-portfolio\";a:6:{s:5:\"theme\";s:17:\"elegant-portfolio\";s:11:\"new_version\";s:5:\"1.0.3\";s:3:\"url\";s:47:\"https://wordpress.org/themes/elegant-portfolio/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/theme/elegant-portfolio.1.0.3.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:9:\"socialmag\";a:6:{s:5:\"theme\";s:9:\"socialmag\";s:11:\"new_version\";s:5:\"2.0.4\";s:3:\"url\";s:39:\"https://wordpress.org/themes/socialmag/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/theme/socialmag.2.0.4.zip\";s:8:\"requires\";s:3:\"4.8\";s:12:\"requires_php\";b:0;}s:13:\"yosemite-lite\";a:6:{s:5:\"theme\";s:13:\"yosemite-lite\";s:11:\"new_version\";s:5:\"1.2.1\";s:3:\"url\";s:43:\"https://wordpress.org/themes/yosemite-lite/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/yosemite-lite.1.2.1.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}}', 'no'),
(1374, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1610607736', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1375, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4740;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:4623;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2702;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2576;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1987;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1838;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1823;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1501;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1499;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1498;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1469;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1465;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1464;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1308;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1237;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1214;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1198;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1145;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1115;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:1028;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:921;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:912;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:893;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:883;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:847;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:814;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:802;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:793;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:790;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:760;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:755;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:732;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:723;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:714;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:709;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:693;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:670;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:664;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:660;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:654;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:643;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:641;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:637;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:633;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:598;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:595;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:588;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:585;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:583;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:570;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:567;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:564;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:557;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:557;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:556;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:548;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:539;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:533;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:531;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:529;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:528;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:509;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:499;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:496;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:490;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:488;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:483;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:471;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:465;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:461;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:456;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:450;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:447;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:444;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:443;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:441;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:436;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:431;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:431;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:429;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:424;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:416;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:406;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:405;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:404;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:400;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:399;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:397;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:389;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:386;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:382;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:379;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:378;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:366;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:362;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:362;}s:6:\"import\";a:3:{s:4:\"name\";s:6:\"import\";s:4:\"slug\";s:6:\"import\";s:5:\"count\";i:354;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:354;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:349;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:343;}}', 'no'),
(1376, '_site_transient_timeout_php_check_141a8d7da406be785ba26084a46e1c00', '1611201802', 'no'),
(1377, '_site_transient_php_check_141a8d7da406be785ba26084a46e1c00', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(1381, '_site_transient_timeout_theme_roots', '1610600567', 'no'),
(1382, '_site_transient_theme_roots', 'a:7:{s:17:\"elegant-portfolio\";s:7:\"/themes\";s:7:\"galaxis\";s:7:\"/themes\";s:17:\"perfect-portfolio\";s:7:\"/themes\";s:8:\"qaengine\";s:7:\"/themes\";s:9:\"socialmag\";s:7:\"/themes\";s:10:\"storefront\";s:7:\"/themes\";s:13:\"yosemite-lite\";s:7:\"/themes\";}', 'no'),
(1384, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1610607787;s:8:\"response\";a:4:{s:24:\"buddypress/bp-loader.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:24:\"w.org/plugins/buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:6:\"plugin\";s:24:\"buddypress/bp-loader.php\";s:11:\"new_version\";s:5:\"7.1.0\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/buddypress/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/buddypress.7.1.0.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:63:\"https://ps.w.org/buddypress/assets/icon-256x256.png?rev=1309232\";s:2:\"1x\";s:54:\"https://ps.w.org/buddypress/assets/icon.svg?rev=977480\";s:3:\"svg\";s:54:\"https://ps.w.org/buddypress/assets/icon.svg?rev=977480\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/buddypress/assets/banner-1544x500.png?rev=1854372\";s:2:\"1x\";s:65:\"https://ps.w.org/buddypress/assets/banner-772x250.png?rev=1854372\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/buddypress/assets/banner-1544x500-rtl.png?rev=1854372\";s:2:\"1x\";s:69:\"https://ps.w.org/buddypress/assets/banner-772x250-rtl.png?rev=1854372\";}s:14:\"upgrade_notice\";s:64:\"<p>See: https://codex.buddypress.org/releases/version-7-1-0/</p>\";s:6:\"tested\";s:3:\"5.6\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:39:\"w.org/plugins/mailchimp-for-woocommerce\";s:4:\"slug\";s:25:\"mailchimp-for-woocommerce\";s:6:\"plugin\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:11:\"new_version\";s:5:\"2.5.0\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/mailchimp-for-woocommerce/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/mailchimp-for-woocommerce.2.5.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";s:2:\"1x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-1544x500.png?rev=1950415\";s:2:\"1x\";s:80:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-772x250.jpg?rev=1950415\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.6\";s:12:\"requires_php\";s:3:\"7.0\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:26:\"buddypress-media/index.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:30:\"w.org/plugins/buddypress-media\";s:4:\"slug\";s:16:\"buddypress-media\";s:6:\"plugin\";s:26:\"buddypress-media/index.php\";s:11:\"new_version\";s:5:\"4.6.6\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/buddypress-media/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/buddypress-media.4.6.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/buddypress-media/assets/icon-256x256.png?rev=980297\";s:2:\"1x\";s:69:\"https://ps.w.org/buddypress-media/assets/icon-128x128.png?rev=1119527\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/buddypress-media/assets/banner-772x250.jpg?rev=1204596\";}s:11:\"banners_rtl\";a:0:{}s:14:\"upgrade_notice\";s:97:\"<p>rtMedia 4.6.6 with enhancement added for media lightbox and some UI/UX fixes and JS fixes.</p>\";s:6:\"tested\";s:3:\"5.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"4.9.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.4.9.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2366418\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2366418\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.6\";s:12:\"requires_php\";s:3:\"7.0\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:9:{s:71:\"activity-reactions-for-buddypress/activity-reactions-for-buddypress.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:47:\"w.org/plugins/activity-reactions-for-buddypress\";s:4:\"slug\";s:33:\"activity-reactions-for-buddypress\";s:6:\"plugin\";s:71:\"activity-reactions-for-buddypress/activity-reactions-for-buddypress.php\";s:11:\"new_version\";s:6:\"1.0.22\";s:3:\"url\";s:64:\"https://wordpress.org/plugins/activity-reactions-for-buddypress/\";s:7:\"package\";s:83:\"https://downloads.wordpress.org/plugin/activity-reactions-for-buddypress.1.0.22.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:86:\"https://ps.w.org/activity-reactions-for-buddypress/assets/icon-128x128.jpg?rev=1453040\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:88:\"https://ps.w.org/activity-reactions-for-buddypress/assets/banner-772x250.jpg?rev=1454299\";}s:11:\"banners_rtl\";a:0:{}}s:59:\"automatorwp-buddyboss-integration/automatorwp-buddyboss.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:47:\"w.org/plugins/automatorwp-buddyboss-integration\";s:4:\"slug\";s:33:\"automatorwp-buddyboss-integration\";s:6:\"plugin\";s:59:\"automatorwp-buddyboss-integration/automatorwp-buddyboss.php\";s:11:\"new_version\";s:5:\"1.1.1\";s:3:\"url\";s:64:\"https://wordpress.org/plugins/automatorwp-buddyboss-integration/\";s:7:\"package\";s:82:\"https://downloads.wordpress.org/plugin/automatorwp-buddyboss-integration.1.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:86:\"https://ps.w.org/automatorwp-buddyboss-integration/assets/icon-256x256.png?rev=2332823\";s:2:\"1x\";s:86:\"https://ps.w.org/automatorwp-buddyboss-integration/assets/icon-256x256.png?rev=2332823\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:89:\"https://ps.w.org/automatorwp-buddyboss-integration/assets/banner-1544x500.png?rev=2332823\";s:2:\"1x\";s:88:\"https://ps.w.org/automatorwp-buddyboss-integration/assets/banner-772x250.png?rev=2332823\";}s:11:\"banners_rtl\";a:0:{}}s:34:\"bp-registration-options/loader.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/bp-registration-options\";s:4:\"slug\";s:23:\"bp-registration-options\";s:6:\"plugin\";s:34:\"bp-registration-options/loader.php\";s:11:\"new_version\";s:5:\"4.3.9\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/bp-registration-options/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/bp-registration-options.4.3.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/bp-registration-options/assets/icon-256x256.png?rev=1077682\";s:2:\"1x\";s:76:\"https://ps.w.org/bp-registration-options/assets/icon-128x128.png?rev=1077682\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/bp-registration-options/assets/banner-1544x500.png?rev=1077682\";s:2:\"1x\";s:78:\"https://ps.w.org/bp-registration-options/assets/banner-772x250.png?rev=1077682\";}s:11:\"banners_rtl\";a:0:{}}s:49:\"bp-activity-filter/buddypress-activity-filter.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/bp-activity-filter\";s:4:\"slug\";s:18:\"bp-activity-filter\";s:6:\"plugin\";s:49:\"bp-activity-filter/buddypress-activity-filter.php\";s:11:\"new_version\";s:5:\"2.2.1\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/bp-activity-filter/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/bp-activity-filter.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/bp-activity-filter/assets/icon-256x256.png?rev=1680026\";s:2:\"1x\";s:71:\"https://ps.w.org/bp-activity-filter/assets/icon-256x256.png?rev=1680026\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/bp-activity-filter/assets/banner-772x250.jpg?rev=1758126\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"bp-default-data/bp-default-data.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/bp-default-data\";s:4:\"slug\";s:15:\"bp-default-data\";s:6:\"plugin\";s:35:\"bp-default-data/bp-default-data.php\";s:11:\"new_version\";s:5:\"1.3.1\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/bp-default-data/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/bp-default-data.1.3.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/bp-default-data/assets/icon-256x256.png?rev=1643365\";s:2:\"1x\";s:68:\"https://ps.w.org/bp-default-data/assets/icon-128x128.png?rev=1643365\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/bp-default-data/assets/banner-1544x500.png?rev=1659493\";s:2:\"1x\";s:70:\"https://ps.w.org/bp-default-data/assets/banner-772x250.png?rev=1659493\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/facebook-for-woocommerce\";s:4:\"slug\";s:24:\"facebook-for-woocommerce\";s:6:\"plugin\";s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";s:11:\"new_version\";s:5:\"2.2.0\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/facebook-for-woocommerce/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/facebook-for-woocommerce.2.2.0.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:77:\"https://ps.w.org/facebook-for-woocommerce/assets/icon-256x256.png?rev=2040223\";s:2:\"1x\";s:69:\"https://ps.w.org/facebook-for-woocommerce/assets/icon.svg?rev=2040223\";s:3:\"svg\";s:69:\"https://ps.w.org/facebook-for-woocommerce/assets/icon.svg?rev=2040223\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:59:\"kliken-marketing-for-google/kliken-marketing-for-google.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:41:\"w.org/plugins/kliken-marketing-for-google\";s:4:\"slug\";s:27:\"kliken-marketing-for-google\";s:6:\"plugin\";s:59:\"kliken-marketing-for-google/kliken-marketing-for-google.php\";s:11:\"new_version\";s:5:\"1.0.6\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/kliken-marketing-for-google/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/kliken-marketing-for-google.1.0.6.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:72:\"https://ps.w.org/kliken-marketing-for-google/assets/icon.svg?rev=2246875\";s:3:\"svg\";s:72:\"https://ps.w.org/kliken-marketing-for-google/assets/icon.svg?rev=2246875\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:83:\"https://ps.w.org/kliken-marketing-for-google/assets/banner-1544x500.png?rev=2384650\";s:2:\"1x\";s:82:\"https://ps.w.org/kliken-marketing-for-google/assets/banner-772x250.png?rev=2384650\";}s:11:\"banners_rtl\";a:0:{}}s:48:\"wp-live-chat-software-for-wordpress/livechat.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:49:\"w.org/plugins/wp-live-chat-software-for-wordpress\";s:4:\"slug\";s:35:\"wp-live-chat-software-for-wordpress\";s:6:\"plugin\";s:48:\"wp-live-chat-software-for-wordpress/livechat.php\";s:11:\"new_version\";s:5:\"4.4.3\";s:3:\"url\";s:66:\"https://wordpress.org/plugins/wp-live-chat-software-for-wordpress/\";s:7:\"package\";s:84:\"https://downloads.wordpress.org/plugin/wp-live-chat-software-for-wordpress.4.4.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:88:\"https://ps.w.org/wp-live-chat-software-for-wordpress/assets/icon-256x256.png?rev=2303190\";s:2:\"1x\";s:88:\"https://ps.w.org/wp-live-chat-software-for-wordpress/assets/icon-128x128.png?rev=2303190\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:91:\"https://ps.w.org/wp-live-chat-software-for-wordpress/assets/banner-1544x500.png?rev=2303190\";s:2:\"1x\";s:90:\"https://ps.w.org/wp-live-chat-software-for-wordpress/assets/banner-772x250.png?rev=2303190\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/wordpress-importer\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:3:\"0.7\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/wordpress-importer.0.7.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:71:\"https://ps.w.org/wordpress-importer/assets/icon-256x256.png?rev=1908375\";s:2:\"1x\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";s:3:\"svg\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(1385, 'livechat_public_key', '-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEApUBv5P4jFQq95b5AmSNd\nbIMw1mIQ/OjxVTYdfr7UjrAL9NLpOjA8pz8N7Qi8rkGnGsoV6Gon8IRR+kZkc4+I\nGamdJ2xO1tgatwSKzIATabuXJnsDKQM6hAMgQjtHzTnae2PSVFe/N2l+4Bvjwrrs\nKcPOD1ZkkkQ/ewicWfmDlNgg69JraTgo13Tak3V62IWRceKUqskEwaer1jN3K/n1\nDlsuNq3ZvpH4by7STpEDjzVyUGDxOmweXoUNJQZhg9bX7iMTt3DUBcsPqx/voEbB\niSyA4TL4T25UKbhyWpY5ANoRCF2wn9Qaa0CFJoIo4IA6WxF7LlXPDCbqAzUL3IFG\n4wIDAQAB\n-----END PUBLIC KEY-----\n', 'yes'),
(1386, 'livechat_authorized_users', '1', 'yes'),
(1387, 'livechat_user_1_token', 'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdG9yZVVVSUQiOiI3ZTI1MGMxOC0zMDQzLTRhNjQtOGY3MC02MzZmNmQ5YzIyOTkiLCJ1c2VyVVVJRCI6ImE5NWI3MTE3LTBkZjYtNDk5MC04NzdkLTgyMTE3Yzg1ODk5MSIsImFwaVJlZ2lvbiI6InVzIiwiYXBpVmVyc2lvbiI6InYxIiwiZXhwIjoxNjQyMTU2OTkxfQ.RUkYdhjJiGsXMEq0pLobsN5FgvVZpgsM2zvOmdsYOt385Xuyr_Wdq-8fcPsOGcjf-KsDo8fo589gtugczlG02FG1Snc4gO5pFm6K6VNhpC78EA_Ti3_S6dfyGDq6wG2fcJD_YZl59MCXkEelh7Xfek2SNh-f1dyZV5VKcVHX-Qtd4vdniC-gMNTw6BJlbEkAtZeb4-DweB9YR-9HJp5DSSNS8UQklrO0c_0HUOCI4hFqpa4XH4deRkOC0sXXDKE9aUhOp3bmfLBw76da_PxmcMtGo_N6qheOmyDYHDMr4CAA6HB4dEhJrxlawrUFJupp2WnXHG7bZcGM38W2XUacjg', 'yes'),
(1388, 'livechat_store_token', 'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdG9yZVVVSUQiOiI3ZTI1MGMxOC0zMDQzLTRhNjQtOGY3MC02MzZmNmQ5YzIyOTkiLCJhcGlSZWdpb24iOiJ1cyIsImFwaVZlcnNpb24iOiJ2MSIsImV4cCI6MTY0MjE1Njk5MX0.KnyPsjjk2jeMvZRit5K7wgXTCSrdm1FTI2RW33E2_hFa87lTrrP8bQmqgZyYLxc_aND0r38X5ZyRyhCvKiBAk1W-UgWUXqvllEStG8NCQ9SJUU0-1ACxJDpFr5ngTFoEC0hm87gVNLxFS2drHO2gWp38QnX45KMTB5ZD1QlNlCComO6t4Qwzw-nP3RlCWxASWl3qyli37CttFDxtSo6byd_QhdSRwRssgIik77bDdCYzea7-YwC6Cvu1fqD46W9nbXZwwjp0wg8PUGGf2R5E7bOtCIpii09hB_EGdswFGRU2eeHvLqAVhjKHe2E06kgYwNvD-JiRjovZq84t6oCMnQ', 'yes'),
(1389, 'livechat_review_notice_start_timestamp', '1610599430', 'yes'),
(1390, 'livechat_review_notice_start_timestamp_offset', '16', 'yes');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(18, 13, '_wp_attached_file', 'woocommerce-placeholder.png'),
(19, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(23, 37, '_edit_lock', '1606570810:1'),
(24, 39, '_edit_lock', '1604047457:1'),
(36, 51, '_menu_item_type', 'post_type'),
(37, 51, '_menu_item_menu_item_parent', '0'),
(38, 51, '_menu_item_object_id', '37'),
(39, 51, '_menu_item_object', 'page'),
(40, 51, '_menu_item_target', ''),
(41, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(42, 51, '_menu_item_xfn', ''),
(43, 51, '_menu_item_url', ''),
(44, 52, '_menu_item_type', 'post_type'),
(45, 52, '_menu_item_menu_item_parent', '0'),
(46, 52, '_menu_item_object_id', '36'),
(47, 52, '_menu_item_object', 'page'),
(48, 52, '_menu_item_target', ''),
(49, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(50, 52, '_menu_item_xfn', ''),
(51, 52, '_menu_item_url', ''),
(52, 53, '_menu_item_type', 'post_type'),
(53, 53, '_menu_item_menu_item_parent', '0'),
(54, 53, '_menu_item_object_id', '19'),
(55, 53, '_menu_item_object', 'page'),
(56, 53, '_menu_item_target', ''),
(57, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(58, 53, '_menu_item_xfn', ''),
(59, 53, '_menu_item_url', ''),
(63, 36, '_edit_lock', '1604060703:1'),
(65, 57, '_wp_attached_file', '2020/10/adam-solomon-WHUDOzd5IYU-unsplash-scaled.jpg'),
(66, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:52:\"2020/10/adam-solomon-WHUDOzd5IYU-unsplash-scaled.jpg\";s:5:\"sizes\";a:12:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:52:\"adam-solomon-WHUDOzd5IYU-unsplash-scaled-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:52:\"adam-solomon-WHUDOzd5IYU-unsplash-scaled-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:52:\"adam-solomon-WHUDOzd5IYU-unsplash-scaled-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"adam-solomon-WHUDOzd5IYU-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:46:\"adam-solomon-WHUDOzd5IYU-unsplash-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"adam-solomon-WHUDOzd5IYU-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:45:\"adam-solomon-WHUDOzd5IYU-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:47:\"adam-solomon-WHUDOzd5IYU-unsplash-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:47:\"adam-solomon-WHUDOzd5IYU-unsplash-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:52:\"adam-solomon-WHUDOzd5IYU-unsplash-scaled-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:52:\"adam-solomon-WHUDOzd5IYU-unsplash-scaled-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:52:\"adam-solomon-WHUDOzd5IYU-unsplash-scaled-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(67, 57, '_edit_lock', '1603544998:1'),
(68, 58, '_wp_attached_file', '2020/10/cropped-adam-solomon-WHUDOzd5IYU-unsplash-scaled-1.jpg'),
(69, 58, '_wp_attachment_context', 'custom-header'),
(70, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2560;s:6:\"height\";i:1024;s:4:\"file\";s:62:\"2020/10/cropped-adam-solomon-WHUDOzd5IYU-unsplash-scaled-1.jpg\";s:5:\"sizes\";a:19:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:62:\"cropped-adam-solomon-WHUDOzd5IYU-unsplash-scaled-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:62:\"cropped-adam-solomon-WHUDOzd5IYU-unsplash-scaled-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:62:\"cropped-adam-solomon-WHUDOzd5IYU-unsplash-scaled-1-600x240.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:62:\"cropped-adam-solomon-WHUDOzd5IYU-unsplash-scaled-1-300x120.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:63:\"cropped-adam-solomon-WHUDOzd5IYU-unsplash-scaled-1-1024x410.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:62:\"cropped-adam-solomon-WHUDOzd5IYU-unsplash-scaled-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:62:\"cropped-adam-solomon-WHUDOzd5IYU-unsplash-scaled-1-768x307.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:307;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:63:\"cropped-adam-solomon-WHUDOzd5IYU-unsplash-scaled-1-1536x614.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:63:\"cropped-adam-solomon-WHUDOzd5IYU-unsplash-scaled-1-2048x819.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:819;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:62:\"cropped-adam-solomon-WHUDOzd5IYU-unsplash-scaled-1-500x300.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"socialmag-standard\";a:4:{s:4:\"file\";s:63:\"cropped-adam-solomon-WHUDOzd5IYU-unsplash-scaled-1-1000x500.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"socialmag-panels\";a:4:{s:4:\"file\";s:63:\"cropped-adam-solomon-WHUDOzd5IYU-unsplash-scaled-1-2000x800.jpg\";s:5:\"width\";i:2000;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"socialmag-category-thumb-small\";a:4:{s:4:\"file\";s:62:\"cropped-adam-solomon-WHUDOzd5IYU-unsplash-scaled-1-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"socialmag-slider\";a:4:{s:4:\"file\";s:62:\"cropped-adam-solomon-WHUDOzd5IYU-unsplash-scaled-1-750x280.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"socialmag-narrow-slider\";a:4:{s:4:\"file\";s:62:\"cropped-adam-solomon-WHUDOzd5IYU-unsplash-scaled-1-750x310.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"socialmag-single-column\";a:4:{s:4:\"file\";s:63:\"cropped-adam-solomon-WHUDOzd5IYU-unsplash-scaled-1-1150x600.jpg\";s:5:\"width\";i:1150;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:62:\"cropped-adam-solomon-WHUDOzd5IYU-unsplash-scaled-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:62:\"cropped-adam-solomon-WHUDOzd5IYU-unsplash-scaled-1-600x240.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:62:\"cropped-adam-solomon-WHUDOzd5IYU-unsplash-scaled-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(71, 58, '_wp_attachment_custom_header_last_used_socialmag', '1603545026'),
(72, 58, '_wp_attachment_is_custom_header', 'socialmag'),
(75, 1, '_edit_lock', '1604048000:1'),
(91, 74, '_wp_page_template', 'page-profile.php'),
(92, 75, '_wp_page_template', 'page-tags.php'),
(93, 76, '_wp_page_template', 'page-users.php'),
(94, 77, '_wp_page_template', 'page-search.php'),
(95, 78, '_wp_page_template', 'page-badges.php'),
(96, 79, '_wp_page_template', 'page-intro.php'),
(97, 80, '_wp_page_template', 'page-categories.php'),
(98, 81, '_wp_page_template', 'page-questions.php'),
(99, 83, '_wp_page_template', 'page-term.php'),
(102, 88, 'qa_point', '2'),
(103, 88, 'qa_voted_by', '1'),
(104, 88, 'qa_be_voted', '9'),
(105, 89, 'qa_point', '2'),
(106, 89, 'qa_voted_by', '1'),
(107, 89, 'qa_be_voted', '9'),
(108, 87, 'et_vote_count', '0'),
(109, 87, 'et_answers_count', '1'),
(110, 87, 'et_view_count', '13'),
(111, 87, 'et_updated_date', '2014-06-05 02:54:18'),
(112, 87, 'et_last_author', '2'),
(113, 87, 'et_answer_authors', 'a:1:{i:0;i:2;}'),
(114, 87, 'et_best_answer', '40'),
(115, 91, 'qa_point', '2'),
(116, 91, 'qa_voted_by', '1'),
(117, 91, 'qa_be_voted', '10'),
(118, 92, 'qa_point', '2'),
(119, 92, 'qa_voted_by', '1'),
(120, 92, 'qa_be_voted', '10'),
(121, 90, 'et_vote_count', '0'),
(122, 90, 'et_answers_count', '1'),
(123, 90, 'et_view_count', '8'),
(124, 90, 'et_updated_date', '2014-06-05 02:52:23'),
(125, 90, 'et_last_author', '1'),
(126, 90, 'et_answer_authors', 'a:1:{i:0;i:1;}'),
(127, 90, 'et_best_answer', '38'),
(128, 93, 'qa_point', '2'),
(129, 93, 'qa_voted_by', '1'),
(130, 93, 'qa_be_voted', '9'),
(131, 94, 'qa_point', '2'),
(132, 94, 'qa_voted_by', '1'),
(133, 94, 'qa_be_voted', '9'),
(134, 42, 'et_vote_count', '0'),
(135, 42, 'et_answers_count', '1'),
(136, 42, 'et_view_count', '10'),
(137, 42, 'et_updated_date', '2014-06-05 03:03:32'),
(138, 42, 'et_last_author', '1'),
(139, 42, 'et_answer_authors', 'a:1:{i:0;i:1;}'),
(140, 95, 'qa_point', '2'),
(141, 95, 'qa_voted_by', '1'),
(142, 95, 'qa_be_voted', '9'),
(143, 96, 'qa_point', '2'),
(144, 96, 'qa_voted_by', '1'),
(145, 96, 'qa_be_voted', '9'),
(146, 49, 'et_vote_count', '0'),
(147, 49, 'et_answers_count', '0'),
(148, 49, 'et_view_count', '7'),
(149, 98, 'qa_point', '2'),
(150, 98, 'qa_voted_by', '1'),
(151, 98, 'qa_be_voted', '10'),
(152, 99, 'qa_point', '2'),
(153, 99, 'qa_voted_by', '1'),
(154, 99, 'qa_be_voted', '10'),
(155, 97, 'et_vote_count', '0'),
(156, 97, 'et_answers_count', '0'),
(157, 97, 'et_view_count', '6'),
(158, 101, 'qa_point', '2'),
(159, 101, 'qa_voted_by', '1'),
(160, 101, 'qa_be_voted', '10'),
(161, 102, 'qa_point', '2'),
(162, 102, 'qa_voted_by', '1'),
(163, 102, 'qa_be_voted', '10'),
(164, 100, 'et_vote_count', '0'),
(165, 100, 'et_answers_count', '1'),
(166, 100, 'et_view_count', '8'),
(167, 100, 'et_updated_date', '2014-06-05 03:22:10'),
(168, 100, 'et_last_author', '3'),
(169, 100, 'et_answer_authors', 'a:1:{i:0;i:3;}'),
(170, 100, 'et_best_answer', '55'),
(171, 104, 'qa_point', '2'),
(172, 104, 'qa_voted_by', '1'),
(173, 104, 'qa_be_voted', '10'),
(174, 105, 'qa_point', '2'),
(175, 105, 'qa_voted_by', '1'),
(176, 105, 'qa_be_voted', '10'),
(177, 103, 'et_vote_count', '0'),
(178, 103, 'et_answers_count', '0'),
(179, 103, 'et_view_count', '6'),
(180, 107, 'qa_point', '2'),
(181, 107, 'qa_voted_by', '1'),
(182, 107, 'qa_be_voted', '11'),
(183, 108, 'qa_point', '2'),
(184, 108, 'qa_voted_by', '1'),
(185, 108, 'qa_be_voted', '11'),
(186, 109, 'qa_point', '5'),
(187, 109, 'qa_voted_by', '1'),
(188, 109, 'qa_be_voted', '11'),
(189, 110, 'qa_point', '5'),
(190, 110, 'qa_voted_by', '1'),
(191, 110, 'qa_be_voted', '11'),
(192, 106, 'et_vote_count', '1'),
(193, 106, 'et_answers_count', '1'),
(194, 106, 'et_view_count', '10'),
(195, 106, 'et_vote_up_authors', 'a:1:{i:1;i:1;}'),
(196, 106, 'et_vote_down_authors', 'a:0:{}'),
(197, 106, 'et_last_author', '11'),
(198, 106, 'et_users_follow', '11'),
(199, 106, 'et_updated_date', '2014-09-18 02:31:39'),
(200, 106, 'et_answer_authors', 'a:1:{i:0;i:11;}'),
(201, 111, 'qa_point', '2'),
(202, 111, 'qa_voted_by', '1'),
(203, 111, 'qa_be_voted', '12'),
(204, 112, 'qa_point', '2'),
(205, 112, 'qa_voted_by', '1'),
(206, 112, 'qa_be_voted', '12'),
(207, 113, 'qa_point', '5'),
(208, 113, 'qa_voted_by', '1'),
(209, 113, 'qa_be_voted', '12'),
(210, 114, 'qa_point', '5'),
(211, 114, 'qa_voted_by', '1'),
(212, 114, 'qa_be_voted', '12'),
(213, 63, 'et_vote_count', '1'),
(214, 63, 'et_answers_count', '0'),
(215, 63, 'et_view_count', '9'),
(216, 63, 'et_vote_up_authors', 'a:1:{i:0;i:1;}'),
(217, 63, 'et_vote_down_authors', 'a:0:{}'),
(218, 115, 'qa_point', '2'),
(219, 115, 'qa_voted_by', '1'),
(220, 115, 'qa_be_voted', '12'),
(221, 116, 'qa_point', '2'),
(222, 116, 'qa_voted_by', '1'),
(223, 116, 'qa_be_voted', '12'),
(224, 117, 'qa_point', '5'),
(225, 117, 'qa_voted_by', '1'),
(226, 117, 'qa_be_voted', '12'),
(227, 118, 'qa_point', '5'),
(228, 118, 'qa_voted_by', '1'),
(229, 118, 'qa_be_voted', '12'),
(230, 71, 'et_vote_count', '1'),
(231, 71, 'et_answers_count', '2'),
(232, 71, 'et_view_count', '10'),
(233, 71, 'et_vote_up_authors', 'a:1:{i:0;i:1;}'),
(234, 71, 'et_vote_down_authors', 'a:0:{}'),
(235, 71, 'et_updated_date', '2014-06-05 04:16:18'),
(236, 71, 'et_last_author', '4'),
(237, 71, 'et_answer_authors', 'a:2:{i:0;i:1;i:1;i:4;}'),
(238, 120, 'qa_point', '2'),
(239, 120, 'qa_voted_by', '1'),
(240, 120, 'qa_be_voted', '9'),
(241, 121, 'qa_point', '2'),
(242, 121, 'qa_voted_by', '1'),
(243, 121, 'qa_be_voted', '9'),
(244, 122, 'qa_point', '5'),
(245, 122, 'qa_voted_by', '1'),
(246, 122, 'qa_be_voted', '9'),
(247, 123, 'qa_point', '5'),
(248, 123, 'qa_voted_by', '1'),
(249, 123, 'qa_be_voted', '9'),
(250, 124, 'qa_point', '5'),
(251, 124, 'qa_voted_by', '1'),
(252, 124, 'qa_be_voted', '9'),
(253, 125, 'qa_point', '5'),
(254, 125, 'qa_voted_by', '1'),
(255, 125, 'qa_be_voted', '9'),
(256, 119, 'et_vote_count', '2'),
(257, 119, 'et_answers_count', '4'),
(258, 119, 'et_view_count', '17'),
(259, 119, 'et_vote_up_authors', 'a:2:{i:1;i:1;i:2;i:3;}'),
(260, 119, 'et_vote_down_authors', 'a:0:{}'),
(261, 119, 'et_updated_date', '2014-06-09 08:22:03'),
(262, 119, 'et_last_author', '11'),
(263, 119, 'et_answer_authors', 'a:4:{i:0;i:2;i:1;i:3;i:2;i:4;i:3;i:11;}'),
(264, 119, 'et_best_answer', '1738'),
(265, 127, 'qa_point', '2'),
(266, 127, 'qa_voted_by', '1'),
(267, 127, 'qa_be_voted', '13'),
(268, 128, 'qa_point', '2'),
(269, 128, 'qa_voted_by', '1'),
(270, 128, 'qa_be_voted', '13'),
(271, 129, 'qa_point', '5'),
(272, 129, 'qa_voted_by', '1'),
(273, 129, 'qa_be_voted', '13'),
(274, 130, 'qa_point', '5'),
(275, 130, 'qa_voted_by', '1'),
(276, 130, 'qa_be_voted', '13'),
(277, 131, 'qa_point', '5'),
(278, 131, 'qa_voted_by', '1'),
(279, 131, 'qa_be_voted', '13'),
(280, 132, 'qa_point', '5'),
(281, 132, 'qa_voted_by', '1'),
(282, 132, 'qa_be_voted', '13'),
(283, 126, 'et_vote_count', '2'),
(284, 126, 'et_answers_count', '9'),
(285, 126, 'et_view_count', '29'),
(286, 126, 'et_vote_up_authors', 'a:2:{i:1;i:1;i:2;i:2;}'),
(287, 126, 'et_vote_down_authors', 'a:0:{}'),
(288, 126, 'et_updated_date', '2014-06-09 08:20:22'),
(289, 126, 'et_last_author', '11'),
(290, 126, 'et_answer_authors', 'a:5:{i:0;i:2;i:1;i:3;i:2;i:5;i:3;i:4;i:4;i:11;}'),
(291, 134, 'qa_point', '5'),
(292, 134, 'qa_voted_by', '1'),
(293, 134, 'qa_be_voted', '10'),
(294, 135, 'qa_point', '5'),
(295, 135, 'qa_voted_by', '1'),
(296, 135, 'qa_be_voted', '10'),
(297, 136, 'qa_point', '5'),
(298, 136, 'qa_voted_by', '1'),
(299, 136, 'qa_be_voted', '10'),
(300, 137, 'qa_point', '5'),
(301, 137, 'qa_voted_by', '1'),
(302, 137, 'qa_be_voted', '10'),
(314, 189, 'qa_point', '2'),
(315, 189, 'qa_voted_by', '1'),
(316, 189, 'qa_be_voted', '9'),
(317, 190, 'qa_point', '2'),
(318, 190, 'qa_voted_by', '1'),
(319, 190, 'qa_be_voted', '9'),
(320, 191, 'qa_point', '5'),
(321, 191, 'qa_voted_by', '1'),
(322, 191, 'qa_be_voted', '9'),
(323, 192, 'qa_point', '5'),
(324, 192, 'qa_voted_by', '1'),
(325, 192, 'qa_be_voted', '9'),
(326, 188, 'et_last_author', '7'),
(327, 188, 'et_answer_authors', 'a:2:{i:0;i:11;i:1;i:7;}'),
(328, 188, 'et_updated_date', '2014-06-09 10:16:02'),
(329, 188, 'et_vote_count', '1'),
(330, 188, 'et_answers_count', '2'),
(331, 188, 'et_view_count', '14'),
(332, 188, 'et_vote_up_authors', 'a:1:{i:0;i:1;}'),
(333, 188, 'et_vote_down_authors', 'a:0:{}'),
(334, 188, 'et_best_answer', '1732'),
(335, 1729, 'qa_point', '2'),
(336, 1729, 'qa_voted_by', '1'),
(337, 1729, 'qa_be_voted', '14'),
(338, 1730, 'qa_point', '2'),
(339, 1730, 'qa_voted_by', '1'),
(340, 1730, 'qa_be_voted', '14'),
(341, 1731, 'qa_point', '5'),
(342, 1731, 'qa_voted_by', '1'),
(343, 1731, 'qa_be_voted', '14'),
(344, 1732, 'qa_point', '5'),
(345, 1732, 'qa_voted_by', '1'),
(346, 1732, 'qa_be_voted', '14'),
(347, 1733, 'qa_point', '5'),
(348, 1733, 'qa_voted_by', '1'),
(349, 1733, 'qa_be_voted', '14'),
(350, 1734, 'qa_point', '5'),
(351, 1734, 'qa_voted_by', '1'),
(352, 1734, 'qa_be_voted', '14'),
(353, 1735, 'qa_point', '-2'),
(354, 1735, 'qa_voted_by', '1'),
(355, 1735, 'qa_be_voted', '14'),
(356, 1736, 'qa_point', '-2'),
(357, 1736, 'qa_voted_by', '1'),
(358, 1736, 'qa_be_voted', '14'),
(359, 1728, 'et_vote_count', '1'),
(360, 1728, 'et_answers_count', '2'),
(361, 1728, 'et_view_count', '26'),
(362, 1728, 'et_vote_up_authors', 'a:2:{i:1;i:1;i:2;i:7;}'),
(363, 1728, 'et_vote_down_authors', 'a:1:{i:0;i:11;}'),
(364, 1728, 'et_users_follow', '3,1'),
(365, 1728, 'et_updated_date', '2020-12-29 01:04:33'),
(366, 1728, 'et_last_author', '1'),
(367, 1728, 'et_answer_authors', 'a:3:{i:0;i:7;i:1;i:3;i:2;i:1;}'),
(368, 1728, 'et_best_answer', '1801'),
(369, 1738, 'qa_point', '2'),
(370, 1738, 'qa_voted_by', '1'),
(371, 1738, 'qa_be_voted', '9'),
(372, 1739, 'qa_point', '2'),
(373, 1739, 'qa_voted_by', '1'),
(374, 1739, 'qa_be_voted', '9'),
(375, 1737, 'et_vote_count', '0'),
(376, 1737, 'et_is_best_answer', '2014-06-05 02:52:48'),
(377, 1737, 'et_best_answer_point', '1500'),
(378, 1741, 'qa_point', '2'),
(379, 1741, 'qa_voted_by', '1'),
(380, 1741, 'qa_be_voted', '10'),
(381, 1742, 'qa_point', '2'),
(382, 1742, 'qa_voted_by', '1'),
(383, 1742, 'qa_be_voted', '10'),
(384, 1740, 'et_vote_count', '0'),
(385, 1740, 'et_is_best_answer', '2014-06-05 02:55:13'),
(386, 1740, 'et_best_answer_point', '500'),
(387, 1744, 'qa_point', '2'),
(388, 1744, 'qa_voted_by', '1'),
(389, 1744, 'qa_be_voted', '9'),
(390, 1745, 'qa_point', '2'),
(391, 1745, 'qa_voted_by', '1'),
(392, 1745, 'qa_be_voted', '9'),
(393, 1743, 'et_vote_count', '0'),
(394, 1746, 'qa_point', '2'),
(395, 1746, 'qa_voted_by', '1'),
(396, 1746, 'qa_be_voted', '11'),
(397, 1747, 'qa_point', '2'),
(398, 1747, 'qa_voted_by', '1'),
(399, 1747, 'qa_be_voted', '11'),
(400, 55, 'et_vote_count', '0'),
(401, 55, 'et_is_best_answer', '2014-06-05 03:23:50'),
(402, 55, 'et_best_answer_point', '15'),
(403, 1749, 'qa_point', '2'),
(404, 1749, 'qa_voted_by', '1'),
(405, 1749, 'qa_be_voted', '9'),
(406, 1750, 'qa_point', '2'),
(407, 1750, 'qa_voted_by', '1'),
(408, 1750, 'qa_be_voted', '9'),
(409, 1751, 'qa_point', '10'),
(410, 1751, 'qa_voted_by', '1'),
(411, 1751, 'qa_be_voted', '9'),
(412, 1752, 'qa_point', '10'),
(413, 1752, 'qa_voted_by', '1'),
(414, 1752, 'qa_be_voted', '9'),
(415, 1748, 'et_vote_count', '1'),
(416, 1748, 'et_vote_up_authors', 'a:1:{i:1;i:1;}'),
(417, 1748, 'et_vote_down_authors', 'a:0:{}'),
(418, 1754, 'qa_point', '2'),
(419, 1754, 'qa_voted_by', '1'),
(420, 1754, 'qa_be_voted', '12'),
(421, 1755, 'qa_point', '2'),
(422, 1755, 'qa_voted_by', '1'),
(423, 1755, 'qa_be_voted', '12'),
(424, 1753, 'et_vote_count', '0'),
(425, 1757, 'qa_point', '2'),
(426, 1757, 'qa_voted_by', '1'),
(427, 1757, 'qa_be_voted', '10'),
(428, 1758, 'qa_point', '2'),
(429, 1758, 'qa_voted_by', '1'),
(430, 1758, 'qa_be_voted', '10'),
(431, 1756, 'et_vote_count', '0'),
(432, 1760, 'qa_point', '2'),
(433, 1760, 'qa_voted_by', '1'),
(434, 1760, 'qa_be_voted', '11'),
(435, 1761, 'qa_point', '2'),
(436, 1761, 'qa_voted_by', '1'),
(437, 1761, 'qa_be_voted', '11'),
(438, 1759, 'et_vote_count', '0'),
(439, 1763, 'qa_point', '2'),
(440, 1763, 'qa_voted_by', '1'),
(441, 1763, 'qa_be_voted', '12'),
(442, 1764, 'qa_point', '2'),
(443, 1764, 'qa_voted_by', '1'),
(444, 1764, 'qa_be_voted', '12'),
(445, 1762, 'et_vote_count', '0'),
(446, 1766, 'qa_point', '2'),
(447, 1766, 'qa_voted_by', '1'),
(448, 1766, 'qa_be_voted', '10'),
(449, 1767, 'qa_point', '2'),
(450, 1767, 'qa_voted_by', '1'),
(451, 1767, 'qa_be_voted', '10'),
(452, 1765, 'et_vote_count', '0'),
(453, 1769, 'qa_point', '10'),
(454, 1769, 'qa_voted_by', '1'),
(455, 1769, 'qa_be_voted', '9'),
(456, 1770, 'qa_point', '10'),
(457, 1770, 'qa_voted_by', '1'),
(458, 1770, 'qa_be_voted', '9'),
(467, 1772, 'qa_point', '2'),
(468, 1772, 'qa_voted_by', '1'),
(469, 1772, 'qa_be_voted', '11'),
(470, 1773, 'qa_point', '2'),
(471, 1773, 'qa_voted_by', '1'),
(472, 1773, 'qa_be_voted', '11'),
(473, 1771, 'et_vote_count', '0'),
(474, 1775, 'qa_point', '2'),
(475, 1775, 'qa_voted_by', '1'),
(476, 1775, 'qa_be_voted', '11'),
(477, 1776, 'qa_point', '2'),
(478, 1776, 'qa_voted_by', '1'),
(479, 1776, 'qa_be_voted', '11'),
(480, 1774, 'et_vote_count', '0'),
(481, 1778, 'qa_point', '2'),
(482, 1778, 'qa_voted_by', '1'),
(483, 1778, 'qa_be_voted', '13'),
(484, 1779, 'qa_point', '2'),
(485, 1779, 'qa_voted_by', '1'),
(486, 1779, 'qa_be_voted', '13'),
(487, 1780, 'qa_point', '10'),
(488, 1780, 'qa_voted_by', '1'),
(489, 1780, 'qa_be_voted', '13'),
(490, 1781, 'qa_point', '10'),
(491, 1781, 'qa_voted_by', '1'),
(492, 1781, 'qa_be_voted', '13'),
(493, 1782, 'qa_point', '10'),
(494, 1782, 'qa_voted_by', '1'),
(495, 1782, 'qa_be_voted', '13'),
(496, 1783, 'qa_point', '10'),
(497, 1783, 'qa_voted_by', '1'),
(498, 1783, 'qa_be_voted', '13'),
(499, 1777, 'et_vote_count', '2'),
(500, 1777, 'et_vote_up_authors', 'a:2:{i:1;i:3;i:2;i:1;}'),
(501, 1777, 'et_vote_down_authors', 'a:0:{}'),
(502, 1785, 'qa_point', '2'),
(503, 1785, 'qa_voted_by', '1'),
(504, 1785, 'qa_be_voted', '13'),
(505, 1786, 'qa_point', '2'),
(506, 1786, 'qa_voted_by', '1'),
(507, 1786, 'qa_be_voted', '13'),
(508, 1787, 'qa_point', '10'),
(509, 1787, 'qa_voted_by', '1'),
(510, 1787, 'qa_be_voted', '13'),
(511, 1788, 'qa_point', '10'),
(512, 1788, 'qa_voted_by', '1'),
(513, 1788, 'qa_be_voted', '13'),
(514, 1784, 'et_vote_count', '1'),
(515, 1784, 'et_vote_up_authors', 'a:1:{i:1;i:3;}'),
(516, 1784, 'et_vote_down_authors', 'a:0:{}'),
(517, 1790, 'qa_point', '2'),
(518, 1790, 'qa_voted_by', '1'),
(519, 1790, 'qa_be_voted', '13'),
(520, 1791, 'qa_point', '2'),
(521, 1791, 'qa_voted_by', '1'),
(522, 1791, 'qa_be_voted', '13'),
(523, 1789, 'et_vote_count', '0'),
(524, 1793, 'qa_point', '2'),
(525, 1793, 'qa_voted_by', '1'),
(526, 1793, 'qa_be_voted', '13'),
(527, 1794, 'qa_point', '2'),
(528, 1794, 'qa_voted_by', '1'),
(529, 1794, 'qa_be_voted', '13'),
(530, 1792, 'et_vote_count', '0'),
(531, 1796, 'qa_point', '2'),
(532, 1796, 'qa_voted_by', '1'),
(533, 1796, 'qa_be_voted', '12'),
(534, 1797, 'qa_point', '2'),
(535, 1797, 'qa_voted_by', '1'),
(536, 1797, 'qa_be_voted', '12'),
(537, 1795, 'et_vote_count', '0'),
(538, 1893, 'qa_point', '2'),
(539, 1893, 'qa_voted_by', '1'),
(540, 1893, 'qa_be_voted', '14'),
(541, 1894, 'qa_point', '2'),
(542, 1894, 'qa_voted_by', '1'),
(543, 1894, 'qa_be_voted', '14'),
(544, 1892, 'et_vote_count', '0'),
(545, 1909, 'qa_point', '2'),
(546, 1909, 'qa_voted_by', '1'),
(547, 1909, 'qa_be_voted', '11'),
(548, 1910, 'qa_point', '2'),
(549, 1910, 'qa_voted_by', '1'),
(550, 1910, 'qa_be_voted', '11'),
(551, 1911, 'qa_point', '10'),
(552, 1911, 'qa_voted_by', '1'),
(553, 1911, 'qa_be_voted', '11'),
(554, 1912, 'qa_point', '10'),
(555, 1912, 'qa_voted_by', '1'),
(556, 1912, 'qa_be_voted', '11'),
(557, 1908, 'et_vote_count', '1'),
(558, 1908, 'et_vote_up_authors', 'a:1:{i:1;i:11;}'),
(559, 1908, 'et_vote_down_authors', 'a:0:{}'),
(560, 1913, 'qa_badge_point', '1500'),
(561, 1913, 'qa_badge_color', '#780978'),
(562, 1914, 'qa_badge_point', '500'),
(563, 1914, 'qa_badge_color', '#ffbf00'),
(564, 1915, 'qa_badge_point', '200'),
(565, 1915, 'qa_badge_color', '#138209'),
(566, 1916, 'qa_badge_point', '100'),
(567, 1916, 'qa_badge_color', '#a35429'),
(568, 1917, 'qa_badge_point', '150'),
(569, 1917, 'qa_badge_color', '#450ead'),
(570, 1918, 'qa_badge_point', '10'),
(571, 1918, 'qa_badge_color', '#04aad4'),
(575, 81, '_edit_last', '1'),
(576, 81, '_edit_lock', '1606561123:1'),
(577, 1921, '_menu_item_type', 'post_type'),
(578, 1921, '_menu_item_menu_item_parent', '0'),
(579, 1921, '_menu_item_object_id', '81'),
(580, 1921, '_menu_item_object', 'page'),
(581, 1921, '_menu_item_target', ''),
(582, 1921, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(583, 1921, '_menu_item_xfn', ''),
(584, 1921, '_menu_item_url', ''),
(586, 1922, '_menu_item_type', 'post_type'),
(587, 1922, '_menu_item_menu_item_parent', '0'),
(588, 1922, '_menu_item_object_id', '78'),
(589, 1922, '_menu_item_object', 'page'),
(590, 1922, '_menu_item_target', ''),
(591, 1922, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(592, 1922, '_menu_item_xfn', ''),
(593, 1922, '_menu_item_url', ''),
(595, 1923, '_menu_item_type', 'post_type'),
(596, 1923, '_menu_item_menu_item_parent', '0'),
(597, 1923, '_menu_item_object_id', '75'),
(598, 1923, '_menu_item_object', 'page'),
(599, 1923, '_menu_item_target', ''),
(600, 1923, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(601, 1923, '_menu_item_xfn', ''),
(602, 1923, '_menu_item_url', ''),
(604, 1924, '_menu_item_type', 'post_type'),
(605, 1924, '_menu_item_menu_item_parent', '0'),
(606, 1924, '_menu_item_object_id', '20'),
(607, 1924, '_menu_item_object', 'page'),
(608, 1924, '_menu_item_target', ''),
(609, 1924, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(610, 1924, '_menu_item_xfn', ''),
(611, 1924, '_menu_item_url', ''),
(613, 1925, '_menu_item_type', 'post_type'),
(614, 1925, '_menu_item_menu_item_parent', '0'),
(615, 1925, '_menu_item_object_id', '82'),
(616, 1925, '_menu_item_object', 'page'),
(617, 1925, '_menu_item_target', ''),
(618, 1925, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(619, 1925, '_menu_item_xfn', ''),
(620, 1925, '_menu_item_url', ''),
(622, 1913, 'option_name', 'qa_level'),
(623, 1918, 'option_name', 'qa_level'),
(624, 1916, 'option_name', 'qa_level'),
(625, 1917, 'option_name', 'qa_level'),
(626, 1926, 'qa_point', '0'),
(627, 1926, 'qa_voted_by', '0'),
(628, 1926, 'qa_be_voted', '10'),
(629, 1927, 'qa_point', '0'),
(630, 1927, 'qa_voted_by', '0'),
(631, 1927, 'qa_be_voted', '10'),
(632, 1928, 'qa_point', '0'),
(633, 1928, 'qa_voted_by', '0'),
(634, 1928, 'qa_be_voted', '10'),
(635, 1929, 'qa_point', '-5'),
(636, 1929, 'qa_voted_by', '0'),
(637, 1929, 'qa_be_voted', '10'),
(638, 1930, 'qa_point', '-5'),
(639, 1930, 'qa_voted_by', '0'),
(640, 1930, 'qa_be_voted', '10'),
(641, 1931, 'qa_point', '0'),
(642, 1931, 'qa_voted_by', '0'),
(643, 1931, 'qa_be_voted', '9'),
(644, 1932, 'qa_point', '0'),
(645, 1932, 'qa_voted_by', '0'),
(646, 1932, 'qa_be_voted', '9'),
(647, 1933, 'qa_point', '0'),
(648, 1933, 'qa_voted_by', '0'),
(649, 1933, 'qa_be_voted', '9'),
(650, 1934, 'qa_point', '0'),
(651, 1934, 'qa_voted_by', '0'),
(652, 1934, 'qa_be_voted', '9'),
(653, 1935, 'qa_point', '0'),
(654, 1935, 'qa_voted_by', '0'),
(655, 1935, 'qa_be_voted', '9'),
(656, 1936, 'qa_point', '-10'),
(657, 1936, 'qa_voted_by', '0'),
(658, 1936, 'qa_be_voted', '9'),
(659, 1938, 'qa_point', '2'),
(660, 1938, 'qa_voted_by', '1'),
(661, 1938, 'qa_be_voted', '1'),
(662, 1937, 'et_vote_count', '0'),
(663, 1939, '_wp_page_template', 'page-dashboard.php');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-09-25 12:38:17', '2020-09-25 12:38:17', '<!-- wp:paragraph -->\n<p>Cảm ơn vì đã sử dụng WordPress. Đây là bài viết đầu tiên của bạn. Sửa hoặc xóa nó, và bắt đầu bài viết của bạn nhé!</p>\n<!-- /wp:paragraph -->', 'Chào tất cả mọi người!', '', 'publish', 'open', 'open', '', 'chao-moi-nguoi', '', '', '2020-09-25 12:38:17', '2020-09-25 12:38:17', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2020-09-25 12:38:17', '2020-09-25 12:38:17', '<!-- wp:paragraph -->\n<p>Đây là trang mẫu. Nó khác với bài viết bởi vì nó thường cố định và hiển thị trong menu của bạn. Nhiều người bắt đầu với trang Giới thiệu nơi bạn chia sẻ thông tin cho những ai ghé thăm. Nó có thể bắt đầu như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Chào bạn! Tôi là một người bán hàng, và đây là website của tôi. Tôi sống ở Hà Nội, có một gia đình nhỏ, và tôi thấy cách sử dụng WordPress rất thú vị.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... hoặc cái gì đó như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Công ty chúng tôi được thành lập năm 2010, và cung cấp dịch vụ chất lượng cho rất nhiều sự kiện tại khắp Việt Nam. Với văn phòng đặt tại Hà Nội, TP. Hồ Chí Minh cùng hơn 40 nhân sự, chúng tôi là nơi nhiều đối tác tin tưởng giao cho tổ chức các sự kiện lớn.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Là một người dùng WordPress mới, bạn nên ghé thăm <a href=\"http://localhost/wordpress/wp-admin/\">bảng tin</a> để xóa trang này và tạo trang mới cho nội dung của chính bạn. Chúc bạn vui vẻ!</p>\n<!-- /wp:paragraph -->', 'Trang Mẫu', '', 'publish', 'closed', 'open', '', 'Trang mẫu', '', '', '2020-09-25 12:38:17', '2020-09-25 12:38:17', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-09-25 12:38:17', '2020-09-25 12:38:17', '<!-- wp:heading --><h2>Chúng tôi là ai</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Địa chỉ website là: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Bình luận</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Thư viện</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Thông tin liên hệ</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn vào trang đăng nhập, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Nội dung nhúng từ website khác</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Phân tích</h3><!-- /wp:heading --><!-- wp:heading --><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><!-- /wp:heading --><!-- wp:heading --><h2>Dữ liệu của bạn tồn tại bao lâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các quyền nào của bạn với dữ liệu của mình</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các dữ liệu của bạn được gửi tới đâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin liên hệ của bạn</h2><!-- /wp:heading --><!-- wp:heading --><h2>Thông tin bổ sung</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Các yêu cầu công bố thông tin được quản lý</h3><!-- /wp:heading -->', 'Chính sách bảo mật', '', 'draft', 'closed', 'open', '', 'chinh-sach-bao-mat', '', '', '2020-09-25 12:38:17', '2020-09-25 12:38:17', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(13, 1, '2020-10-17 09:29:45', '2020-10-17 09:29:45', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2020-10-17 09:29:45', '2020-10-17 09:29:45', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/10/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(14, 1, '2020-10-17 09:29:46', '2020-10-17 09:29:46', '', 'Cửa hàng', '', 'publish', 'closed', 'closed', '', 'mua', '', '', '2020-10-17 09:29:46', '2020-10-17 09:29:46', '', 0, 'http://localhost/wordpress/mua/', 0, 'page', '', 0),
(15, 1, '2020-10-17 09:29:46', '2020-10-17 09:29:46', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Giỏ hàng', '', 'publish', 'closed', 'closed', '', 'gio-hang', '', '', '2020-10-17 09:29:46', '2020-10-17 09:29:46', '', 0, 'http://localhost/wordpress/gio-hang/', 0, 'page', '', 0),
(16, 1, '2020-10-17 09:29:47', '2020-10-17 09:29:47', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Thanh toán', '', 'publish', 'closed', 'closed', '', 'thanh-toan', '', '', '2020-10-17 09:29:47', '2020-10-17 09:29:47', '', 0, 'http://localhost/wordpress/thanh-toan/', 0, 'page', '', 0),
(17, 1, '2020-10-17 09:29:47', '2020-10-17 09:29:47', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'Tài khoản', '', 'publish', 'closed', 'closed', '', 'tai-khoan', '', '', '2020-10-17 09:29:47', '2020-10-17 09:29:47', '', 0, 'http://localhost/wordpress/tai-khoan/', 0, 'page', '', 0),
(19, 1, '2020-10-23 08:22:48', '2020-10-23 08:22:48', '', 'Activity', '', 'publish', 'closed', 'closed', '', 'activity', '', '', '2020-10-23 08:22:48', '2020-10-23 08:22:48', '', 0, 'http://localhost/wordpress/activity/', 0, 'page', '', 0),
(20, 1, '2020-10-23 08:22:48', '2020-10-23 08:22:48', '', 'Members', '', 'publish', 'closed', 'closed', '', 'members', '', '', '2020-10-23 08:22:48', '2020-10-23 08:22:48', '', 0, 'http://localhost/wordpress/members/', 0, 'page', '', 0),
(21, 1, '2020-10-23 08:22:48', '2020-10-23 08:22:48', '{{poster.name}} replied to one of your updates:\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href=\"{{{thread.url}}}\">Go to the discussion</a> to reply or catch up on the conversation.', '[{{{site.name}}}] {{poster.name}} replied to one of your updates', '{{poster.name}} replied to one of your updates:\n\n\"{{usermessage}}\"\n\nGo to the discussion to reply or catch up on the conversation: {{{thread.url}}}', 'publish', 'closed', 'closed', '', 'site-name-poster-name-replied-to-one-of-your-updates', '', '', '2020-10-23 08:22:48', '2020-10-23 08:22:48', '', 0, 'http://localhost/wordpress/?post_type=bp-email&p=21', 0, 'bp-email', '', 0),
(22, 1, '2020-10-23 08:22:52', '2020-10-23 08:22:52', '{{poster.name}} replied to one of your comments:\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href=\"{{{thread.url}}}\">Go to the discussion</a> to reply or catch up on the conversation.', '[{{{site.name}}}] {{poster.name}} replied to one of your comments', '{{poster.name}} replied to one of your comments:\n\n\"{{usermessage}}\"\n\nGo to the discussion to reply or catch up on the conversation: {{{thread.url}}}', 'publish', 'closed', 'closed', '', 'site-name-poster-name-replied-to-one-of-your-comments', '', '', '2020-10-23 08:22:52', '2020-10-23 08:22:52', '', 0, 'http://localhost/wordpress/?post_type=bp-email&p=22', 0, 'bp-email', '', 0),
(23, 1, '2020-10-23 08:22:53', '2020-10-23 08:22:53', '{{poster.name}} mentioned you in a status update:\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href=\"{{{mentioned.url}}}\">Go to the discussion</a> to reply or catch up on the conversation.', '[{{{site.name}}}] {{poster.name}} mentioned you in a status update', '{{poster.name}} mentioned you in a status update:\n\n\"{{usermessage}}\"\n\nGo to the discussion to reply or catch up on the conversation: {{{mentioned.url}}}', 'publish', 'closed', 'closed', '', 'site-name-poster-name-mentioned-you-in-a-status-update', '', '', '2020-10-23 08:22:53', '2020-10-23 08:22:53', '', 0, 'http://localhost/wordpress/?post_type=bp-email&p=23', 0, 'bp-email', '', 0),
(24, 1, '2020-10-23 08:22:53', '2020-10-23 08:22:53', '{{poster.name}} mentioned you in the group \"{{group.name}}\":\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href=\"{{{mentioned.url}}}\">Go to the discussion</a> to reply or catch up on the conversation.', '[{{{site.name}}}] {{poster.name}} mentioned you in an update', '{{poster.name}} mentioned you in the group \"{{group.name}}\":\n\n\"{{usermessage}}\"\n\nGo to the discussion to reply or catch up on the conversation: {{{mentioned.url}}}', 'publish', 'closed', 'closed', '', 'site-name-poster-name-mentioned-you-in-an-update', '', '', '2020-10-23 08:22:53', '2020-10-23 08:22:53', '', 0, 'http://localhost/wordpress/?post_type=bp-email&p=24', 0, 'bp-email', '', 0),
(25, 1, '2020-10-23 08:22:53', '2020-10-23 08:22:53', 'Thanks for registering!\n\nTo complete the activation of your account, go to the following link and click on the <strong>Activate</strong> button:\n<a href=\"{{{activate.url}}}\">{{{activate.url}}}</a>\n\nIf the \'Activation Key\' field is empty, copy and paste the following into the field - {{key}}', '[{{{site.name}}}] Activate your account', 'Thanks for registering!\n\nTo complete the activation of your account, go to the following link and click on the \'Activate\' button: {{{activate.url}}}\n\nIf the \'Activation Key\' field is empty, copy and paste the following into the field - {{key}}', 'publish', 'closed', 'closed', '', 'site-name-activate-your-account', '', '', '2020-10-23 08:22:53', '2020-10-23 08:22:53', '', 0, 'http://localhost/wordpress/?post_type=bp-email&p=25', 0, 'bp-email', '', 0),
(26, 1, '2020-10-23 08:22:54', '2020-10-23 08:22:54', '<a href=\"{{{initiator.url}}}\">{{initiator.name}}</a> wants to add you as a friend.\n\nTo accept this request and manage all of your pending requests, visit: <a href=\"{{{friend-requests.url}}}\">{{{friend-requests.url}}}</a>', '[{{{site.name}}}] New friendship request from {{initiator.name}}', '{{initiator.name}} wants to add you as a friend.\n\nTo accept this request and manage all of your pending requests, visit: {{{friend-requests.url}}}\n\nTo view {{initiator.name}}\'s profile, visit: {{{initiator.url}}}', 'publish', 'closed', 'closed', '', 'site-name-new-friendship-request-from-initiator-name', '', '', '2020-10-23 08:22:54', '2020-10-23 08:22:54', '', 0, 'http://localhost/wordpress/?post_type=bp-email&p=26', 0, 'bp-email', '', 0),
(27, 1, '2020-10-23 08:22:55', '2020-10-23 08:22:55', '<a href=\"{{{friendship.url}}}\">{{friend.name}}</a> accepted your friend request.', '[{{{site.name}}}] {{friend.name}} accepted your friendship request', '{{friend.name}} accepted your friend request.\n\nTo learn more about them, visit their profile: {{{friendship.url}}}', 'publish', 'closed', 'closed', '', 'site-name-friend-name-accepted-your-friendship-request', '', '', '2020-10-23 08:22:55', '2020-10-23 08:22:55', '', 0, 'http://localhost/wordpress/?post_type=bp-email&p=27', 0, 'bp-email', '', 0),
(28, 1, '2020-10-23 08:22:55', '2020-10-23 08:22:55', 'Group details for the group &quot;<a href=\"{{{group.url}}}\">{{group.name}}</a>&quot; were updated:\n<blockquote>{{changed_text}}</blockquote>', '[{{{site.name}}}] Group details updated', 'Group details for the group \"{{group.name}}\" were updated:\n\n{{changed_text}}\n\nTo view the group, visit: {{{group.url}}}', 'publish', 'closed', 'closed', '', 'site-name-group-details-updated', '', '', '2020-10-23 08:22:55', '2020-10-23 08:22:55', '', 0, 'http://localhost/wordpress/?post_type=bp-email&p=28', 0, 'bp-email', '', 0),
(29, 1, '2020-10-23 08:22:55', '2020-10-23 08:22:55', '<a href=\"{{{inviter.url}}}\">{{inviter.name}}</a> has invited you to join the group: &quot;{{group.name}}&quot;.\n{{invite.message}}\n<a href=\"{{{invites.url}}}\">Go here to accept your invitation</a> or <a href=\"{{{group.url}}}\">visit the group</a> to learn more.', '[{{{site.name}}}] You have an invitation to the group: \"{{group.name}}\"', '{{inviter.name}} has invited you to join the group: \"{{group.name}}\".\n\nTo accept your invitation, visit: {{{invites.url}}}\n\nTo learn more about the group, visit: {{{group.url}}}.\nTo view {{inviter.name}}\'s profile, visit: {{{inviter.url}}}', 'publish', 'closed', 'closed', '', 'site-name-you-have-an-invitation-to-the-group-group-name', '', '', '2020-10-23 08:22:55', '2020-10-23 08:22:55', '', 0, 'http://localhost/wordpress/?post_type=bp-email&p=29', 0, 'bp-email', '', 0),
(30, 1, '2020-10-23 08:22:55', '2020-10-23 08:22:55', 'You have been promoted to <b>{{promoted_to}}</b> in the group &quot;<a href=\"{{{group.url}}}\">{{group.name}}</a>&quot;.', '[{{{site.name}}}] You have been promoted in the group: \"{{group.name}}\"', 'You have been promoted to {{promoted_to}} in the group: \"{{group.name}}\".\n\nTo visit the group, go to: {{{group.url}}}', 'publish', 'closed', 'closed', '', 'site-name-you-have-been-promoted-in-the-group-group-name', '', '', '2020-10-23 08:22:55', '2020-10-23 08:22:55', '', 0, 'http://localhost/wordpress/?post_type=bp-email&p=30', 0, 'bp-email', '', 0),
(31, 1, '2020-10-23 08:22:58', '2020-10-23 08:22:58', '<a href=\"{{{profile.url}}}\">{{requesting-user.name}}</a> wants to join the group &quot;{{group.name}}&quot;.\n {{request.message}}\n As you are an administrator of this group, you must either accept or reject the membership request.\n\n<a href=\"{{{group-requests.url}}}\">Go here to manage this</a> and all other pending requests.', '[{{{site.name}}}] Membership request for group: {{group.name}}', '{{requesting-user.name}} wants to join the group \"{{group.name}}\". As you are the administrator of this group, you must either accept or reject the membership request.\n\nTo manage this and all other pending requests, visit: {{{group-requests.url}}}\n\nTo view {{requesting-user.name}}\'s profile, visit: {{{profile.url}}}', 'publish', 'closed', 'closed', '', 'site-name-membership-request-for-group-group-name', '', '', '2020-10-23 08:22:58', '2020-10-23 08:22:58', '', 0, 'http://localhost/wordpress/?post_type=bp-email&p=31', 0, 'bp-email', '', 0),
(32, 1, '2020-10-23 08:22:59', '2020-10-23 08:22:59', '{{sender.name}} sent you a new message: &quot;{{usersubject}}&quot;\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href=\"{{{message.url}}}\">Go to the discussion</a> to reply or catch up on the conversation.', '[{{{site.name}}}] New message from {{sender.name}}', '{{sender.name}} sent you a new message: \"{{usersubject}}\"\n\n\"{{usermessage}}\"\n\nGo to the discussion to reply or catch up on the conversation: {{{message.url}}}', 'publish', 'closed', 'closed', '', 'site-name-new-message-from-sender-name', '', '', '2020-10-23 08:22:59', '2020-10-23 08:22:59', '', 0, 'http://localhost/wordpress/?post_type=bp-email&p=32', 0, 'bp-email', '', 0),
(33, 1, '2020-10-23 08:23:00', '2020-10-23 08:23:00', 'You recently changed the email address associated with your account on {{site.name}} to {{user.email}}. If this is correct, <a href=\"{{{verify.url}}}\">go here to confirm the change</a>.\n\nOtherwise, you can safely ignore and delete this email if you have changed your mind, or if you think you have received this email in error.', '[{{{site.name}}}] Verify your new email address', 'You recently changed the email address associated with your account on {{site.name}} to {{user.email}}. If this is correct, go to the following link to confirm the change: {{{verify.url}}}\n\nOtherwise, you can safely ignore and delete this email if you have changed your mind, or if you think you have received this email in error.', 'publish', 'closed', 'closed', '', 'site-name-verify-your-new-email-address', '', '', '2020-10-23 08:23:00', '2020-10-23 08:23:00', '', 0, 'http://localhost/wordpress/?post_type=bp-email&p=33', 0, 'bp-email', '', 0),
(34, 1, '2020-10-23 08:23:03', '2020-10-23 08:23:03', 'Your membership request for the group &quot;<a href=\"{{{group.url}}}\">{{group.name}}</a>&quot; has been accepted.', '[{{{site.name}}}] Membership request for group \"{{group.name}}\" accepted', 'Your membership request for the group \"{{group.name}}\" has been accepted.\n\nTo view the group, visit: {{{group.url}}}', 'publish', 'closed', 'closed', '', 'site-name-membership-request-for-group-group-name-accepted', '', '', '2020-10-23 08:23:03', '2020-10-23 08:23:03', '', 0, 'http://localhost/wordpress/?post_type=bp-email&p=34', 0, 'bp-email', '', 0),
(35, 1, '2020-10-23 08:23:03', '2020-10-23 08:23:03', 'Your membership request for the group &quot;<a href=\"{{{group.url}}}\">{{group.name}}</a>&quot; has been rejected.', '[{{{site.name}}}] Membership request for group \"{{group.name}}\" rejected', 'Your membership request for the group \"{{group.name}}\" has been rejected.\n\nTo request membership again, visit: {{{group.url}}}', 'publish', 'closed', 'closed', '', 'site-name-membership-request-for-group-group-name-rejected', '', '', '2020-10-23 08:23:03', '2020-10-23 08:23:03', '', 0, 'http://localhost/wordpress/?post_type=bp-email&p=35', 0, 'bp-email', '', 0),
(36, 1, '2020-10-24 12:24:19', '2020-10-24 12:24:19', '', 'Nhóm', '', 'publish', 'closed', 'closed', '', 'nhom', '', '', '2020-10-24 12:24:19', '2020-10-24 12:24:19', '', 0, 'http://localhost/wordpress/nhom/', 0, 'page', '', 0),
(37, 1, '2020-10-24 12:26:06', '2020-10-24 12:26:06', '', 'Registration', '', 'publish', 'closed', 'closed', '', 'a', '', '', '2020-10-24 12:29:10', '2020-10-24 12:29:10', '', 0, 'http://localhost/wordpress/?page_id=37', 0, 'page', '', 0),
(38, 1, '2020-10-24 12:26:06', '2020-10-24 12:26:06', '<!-- wp:paragraph -->\n<p>a</p>\n<!-- /wp:paragraph -->', 'a', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2020-10-24 12:26:06', '2020-10-24 12:26:06', '', 37, 'http://localhost/wordpress/2020/10/24/37-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2020-10-24 12:26:28', '2020-10-24 12:26:28', '', 'Account Activate', '', 'publish', 'closed', 'closed', '', 'b', '', '', '2020-10-24 12:28:48', '2020-10-24 12:28:48', '', 0, 'http://localhost/wordpress/?page_id=39', 0, 'page', '', 0),
(40, 1, '2020-10-24 12:26:28', '2020-10-24 12:26:28', '<!-- wp:paragraph -->\n<p>b</p>\n<!-- /wp:paragraph -->', 'b', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2020-10-24 12:26:28', '2020-10-24 12:26:28', '', 39, 'http://localhost/wordpress/2020/10/24/39-revision-v1/', 0, 'revision', '', 0),
(42, 9, '2014-06-05 03:00:21', '2014-06-05 03:00:21', '<span style=\"color: #333333;\">The biggest mistake is jumping into Photoshop too fast. Learning Photoshop does not make you a designer, just like buying paintbrushes doesn’t make you an artist. Start with the foundation.</span><br style=\"color: #333333;\" /><br style=\"color: #333333;\" /><i style=\"color: #333333;\">First, learn how to draw.</i>\n<ul style=\"color: #333333;\">\n	<li>You don’t have to sit in a room with a bunch of other artists trying to draw a naked woman.</li>\n	<li>You don’t even have to get that good at drawing. Just learn some basics so you can be comfortable sketching with a pen.</li>\n	<li>You only have to do one thing to learn how to draw: get the book <span class=\"qlink_container\"><a class=\"external_link\" style=\"color: #155fad;\" href=\"http://www.amazon.com/You-Can-Draw-30-Days/dp/0738212415/ref=sr_1_1?ie=UTF8&amp;qid=1371607474&amp;sr=8-1&amp;keywords=you+can+draw+in+30+days\" target=\"_blank\" rel=\"noopener noreferrer\">You Can Draw in 30 days</a></span> and practice for half an hour every day for a month. I’ve looked at a lot of drawing books and this is one of the best.</li>\n</ul>\n<br style=\"color: #333333;\" /><i style=\"color: #333333;\">Learn graphic design theory</i>\n<ul style=\"color: #333333;\">\n	<li>Start with the book <span class=\"qlink_container\"><a class=\"external_link\" style=\"color: #155fad;\" href=\"http://www.amazon.com/Picture-This-How-Pictures-Work/dp/1587170302/ref=sr_1_1?s=books&amp;ie=UTF8&amp;qid=1371607522&amp;sr=1-1&amp;keywords=picture+this\" target=\"_blank\" rel=\"noopener noreferrer\">Picture This</a></span>. It’s a story book of Little Red Riding hood, but will teach you the foundations of graphic design at the same time.</li>\n	<li>Learn about color, <span class=\"qlink_container\"><a class=\"external_link\" style=\"color: #155fad;\" href=\"http://practicaltypography.com/\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">typography</a></span>, and designing with a grid. If you can find a local class to teach the basics of graphic design, take it.</li>\n	<li>Go through a few of <span class=\"qlink_container\"><a class=\"external_link\" style=\"color: #155fad;\" href=\"http://psd.tutsplus.com/articles/web/50-totally-free-lessons-in-graphic-design-theory/\" target=\"_blank\" rel=\"noopener noreferrer\">these tutorials</a></span> every day.</li>\n</ul>\n<br style=\"color: #333333;\" /><i style=\"color: #333333;\">Learn some basics in user experience</i><br style=\"color: #333333;\" /><span style=\"color: #333333;\">There are a lot of books about user experience. Start with these two quick reads that will get you in the right mindset:</span>\n<ul style=\"color: #333333;\">\n	<li><span class=\"qlink_container\"><a class=\"external_link\" style=\"color: #155fad;\" href=\"http://www.amazon.com/Design-Everyday-Things-Donald-Norman/dp/0465067107/ref=sr_1_1?s=books&amp;ie=UTF8&amp;qid=1371607869&amp;sr=1-1&amp;keywords=the+design+of+everyday+things\" target=\"_blank\" rel=\"noopener noreferrer\">The Design of Everyday Things</a></span></li>\n	<li><span class=\"qlink_container\"><a class=\"external_link\" style=\"color: #155fad;\" href=\"http://www.amazon.com/Dont-Make-Me-Think-Usability/dp/0321344758/ref=sr_1_1?s=books&amp;ie=UTF8&amp;qid=1371607999&amp;sr=1-1&amp;keywords=don%27t+make+me+think\" target=\"_blank\" rel=\"noopener noreferrer\">Don’t Make Me Think!</a></span></li>\n</ul>\n<br style=\"color: #333333;\" /><i style=\"color: #333333;\">Learn how to write</i>\n<ul style=\"color: #333333;\">\n	<li>Don’t fill your mockups with placeholder text like Lorem Ipsum. Your job as a designer is not just to make pretty pictures — you must be a good communicator. Think through the entire experience, choosing every word carefully. Write for humans. Don’t write in the academic tone you used to make yourself sound smart in school papers.</li>\n	<li>Read <span class=\"qlink_container\"><a class=\"external_link\" style=\"color: #155fad;\" href=\"http://www.amazon.com/Made-Stick-Ideas-Survive-Others/dp/1400064287/ref=sr_1_1?s=books&amp;ie=UTF8&amp;qid=1371608230&amp;sr=1-1&amp;keywords=made+to+stick\" target=\"_blank\" rel=\"noopener noreferrer\">Made to Stick</a></span>, one of my favorite books of all time. It will teach you how to suck in your readers.</li>\n	<li><span class=\"qlink_container\"><a class=\"external_link\" style=\"color: #155fad;\" href=\"http://voiceandtone.com/\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">Voice and Tone</a></span> is a website full of great examples of how to talk to users.</li>\n</ul>\n<br style=\"color: #333333;\" /><i style=\"color: #333333;\">Learn to kill your work</i>\n<ul style=\"color: #333333;\">\n	<li>This is the hardest step in this whole guide.</li>\n	<li>Be prepared to kill everything you make. Be prepared to violently slaughter your precious design babies. The sooner you can embrace this, the better your work will become. When you realize your work isn’t good enough, kill it. Start again.</li>\n	<li>Get another pair of eyes. Ask for feedback on your work from people who care about design. Don’t know anyone? Make some designer friends — go to designer <span class=\"qlink_container\"><a class=\"external_link\" style=\"color: #155fad;\" href=\"http://meetup.com/\" target=\"_blank\" rel=\"noopener noreferrer\">meetups</a></span> and events.</li>\n	<li>Get the opinion of people who don’t care about design, too. Show your work to people who would be your users and ask them to try your website or app. Don’t be afraid to ask strangers — I once took advantage of a delayed flight by asking all the people in the airport terminal to try out an app I was designing. Most of them were bored and happy to help, and I got some great usability feedback.</li>\n	<li>Listen. Really listen. Don’t argue. If you ask someone for feedback, they’re doing you a favor by giving you their time and attention. Don’t repay the favor by arguing with them. Instead of arguing, thank them and ask questions. Decide later whether you want to incorporate their feedback.</li>\n</ul>\n&nbsp;', 'How do you get a job as a designer without going to design school?', '', 'publish', 'open', 'open', '', 'how-do-you-get-a-job-as-a-designer-without-going-to-design-school', '', '', '2014-06-05 03:00:21', '2014-06-05 03:00:21', '', 0, 'http://demo.enginethemes.com/qaengine/question/how-do-you-get-a-job-as-a-designer-without-going-to-design-school/', 0, 'question', '', 0),
(43, 1, '2020-10-24 12:27:31', '2020-10-24 12:27:31', '<!-- wp:paragraph -->\n<p>a</p>\n<!-- /wp:paragraph -->', 'Registration', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2020-10-24 12:27:31', '2020-10-24 12:27:31', '', 37, 'http://localhost/wordpress/2020/10/24/37-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2020-10-24 12:28:34', '2020-10-24 12:28:34', '<!-- wp:paragraph -->\n<p>b</p>\n<!-- /wp:paragraph -->', 'Account Activate', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2020-10-24 12:28:34', '2020-10-24 12:28:34', '', 39, 'http://localhost/wordpress/2020/10/24/39-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2020-10-24 12:28:48', '2020-10-24 12:28:48', '', 'Account Activate', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2020-10-24 12:28:48', '2020-10-24 12:28:48', '', 39, 'http://localhost/wordpress/2020/10/24/39-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2020-10-24 12:29:10', '2020-10-24 12:29:10', '', 'Registration', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2020-10-24 12:29:10', '2020-10-24 12:29:10', '', 37, 'http://localhost/wordpress/2020/10/24/37-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2020-10-24 12:31:19', '2020-10-24 12:31:19', '', 'Ghi danh', '', 'publish', 'closed', 'closed', '', 'ghi-danh', '', '', '2020-10-24 12:31:19', '2020-10-24 12:31:19', '', 0, 'http://localhost/wordpress/ghi-danh/', 0, 'page', '', 0),
(48, 1, '2020-10-24 12:31:19', '2020-10-24 12:31:19', '', 'Kích hoạt', '', 'publish', 'closed', 'closed', '', 'kich-hoat', '', '', '2020-10-24 12:31:19', '2020-10-24 12:31:19', '', 0, 'http://localhost/wordpress/kich-hoat/', 0, 'page', '', 0),
(49, 9, '2014-06-05 03:05:31', '2014-06-05 03:05:31', '<b style=\"color: #333333;\">It is a pain in the neck</b><span style=\"color: #333333;\">. </span><br style=\"color: #333333;\" /><span style=\"color: #333333;\">Thousands of people depend on me.</span><br style=\"color: #333333;\" /><b style=\"color: #333333;\">I can not take a day off</b><span style=\"color: #333333;\"> and just forget completely about money.</span><br style=\"color: #333333;\" /><b style=\"color: #333333;\">I am paranoid</b><span style=\"color: #333333;\"> that one day all my money might disappear or be stolen.</span><br style=\"color: #333333;\" /><span style=\"color: #333333;\">I have hundreds of legal battles I am fighting and they take up too much of my time and energy.</span><br style=\"color: #333333;\" /><span style=\"color: #333333;\">It is never really possible for me to</span><b style=\"color: #333333;\"> trust anyone</b><span style=\"color: #333333;\"> as they all want the biggest piece of my pie and and some are</span><b style=\"color: #333333;\"> </b><span style=\"color: #333333;\">willing to</span><b style=\"color: #333333;\"> steal it</b><span style=\"color: #333333;\"> if they have to.</span><br style=\"color: #333333;\" /><span style=\"color: #333333;\">It is </span><b style=\"color: #333333;\">very lonely</b><span style=\"color: #333333;\"> when you are the only one who understands yourself and why you do the things you do.</span><br style=\"color: #333333;\" /><span style=\"color: #333333;\">Find another bilionaire who needs help looking after their money.</span>', 'What is it like to be a billionaire?', '', 'publish', 'open', 'open', '', 'what-is-it-like-to-be-a-billionaire', '', '', '2014-06-05 03:05:31', '2014-06-05 03:05:31', '', 0, 'http://demo.enginethemes.com/qaengine/question/what-is-it-like-to-be-a-billionaire/', 0, 'question', '', 0),
(51, 1, '2020-10-24 12:34:54', '2020-10-24 12:34:54', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2020-11-28 10:59:05', '2020-11-28 10:59:05', '', 0, 'http://localhost/wordpress/2020/10/24/51/', 2, 'nav_menu_item', '', 0),
(52, 1, '2020-10-24 12:34:55', '2020-10-24 12:34:55', ' ', '', '', 'publish', 'closed', 'closed', '', '52', '', '', '2020-11-28 10:59:05', '2020-11-28 10:59:05', '', 0, 'http://localhost/wordpress/2020/10/24/52/', 3, 'nav_menu_item', '', 0),
(53, 1, '2020-10-24 12:34:55', '2020-10-24 12:34:55', ' ', '', '', 'publish', 'closed', 'closed', '', '53', '', '', '2020-11-28 10:59:05', '2020-11-28 10:59:05', '', 0, 'http://localhost/wordpress/2020/10/24/53/', 4, 'nav_menu_item', '', 0),
(55, 11, '2014-06-05 03:22:10', '2014-06-05 03:22:10', '<span style=\"color: #333333;font-family: Georgia, Times, \'Times New Roman\', serif;font-size: 15px;font-style: normal;font-variant: normal;font-weight: normal;letter-spacing: normal;line-height: 21px;text-align: start;text-indent: 0px;float: none\">The people who are offering the Zen-like answer (\"the big thing that can be predicted is not the real big thing, it does not have true buddha-nature\") are being a little too skeptic</span><span style=\"color: #333333;font-family: Georgia, Times, \'Times New Roman\', serif;font-size: 15px;font-style: normal;font-variant: normal;font-weight: normal;letter-spacing: normal;line-height: 21px;text-align: start;text-indent: 0px;float: none\">al. Historically, there\'s been a fairly good record of people seeing \"the next big thing\" (NBT) a respectable fraction of the time, so it CAN be done, without 20/20 hindsight. Here are some successful big-thing anticipations that I am cherry-picking to illustrate when, why and how you can predict NBTs.</span><br style=\"font-size: 15px;line-height: 21px;color: #333333;font-family: Georgia, Times, \'Times New Roman\', serif;font-style: normal;font-variant: normal;font-weight: normal;letter-spacing: normal;text-align: start;text-indent: 0px\" /><br style=\"font-size: 15px;line-height: 21px;color: #333333;font-family: Georgia, Times, \'Times New Roman\', serif;font-style: normal;font-variant: normal;font-weight: normal;letter-spacing: normal;text-align: start;text-indent: 0px\" />\n<ol style=\"margin: 8px 0px 0px 28px;padding: 0px;color: #333333;font-family: Georgia, Times, \'Times New Roman\', serif;font-size: 15px;font-style: normal;font-variant: normal;font-weight: normal;letter-spacing: normal;line-height: 21px;text-align: start;text-indent: 0px\">\n	<li style=\"margin: 0px 0px 8px;padding: 0px\"><b style=\"font-weight: bold\">The moon race/Apollo</b><span class=\"Apple-converted-space\"> </span>was the NBT of its time and everybody knew it. It trained a generation of technologists and spawned a huge ecosystem of offshoots we use to this day.</li>\n	<li style=\"margin: 0px 0px 8px;padding: 0px\"><b style=\"font-weight: bold\">Distributed computing</b><span class=\"Apple-converted-space\"> </span>was the NBT of the 70s, and Xerox invested in it for a decade to make it happen.</li>\n	<li style=\"margin: 0px 0px 8px;padding: 0px\">As the man told Dustin Hoffmann in<span class=\"Apple-converted-space\"> </span><i>The Graduate:</i><span class=\"Apple-converted-space\"> </span><b style=\"font-weight: bold\">\"Plastics.\"<span class=\"Apple-converted-space\"> </span></b>Another NBT that plenty of people saw coming.</li>\n	<li style=\"margin: 0px 0px 8px;padding: 0px\"><b style=\"font-weight: bold\">Container shipping.</b><span class=\"Apple-converted-space\"> </span>The entire shipping industry saw it as a grand vision that could change everything, and they just had to wait for the people with the right talents. See my review of the history of the revolution:<span class=\"Apple-converted-space\"> </span><span class=\"qlink_container\"><a class=\"external_link\" href=\"http://www.ribbonfarm.com/2009/07/07/the-epic-story-of-container-shipping/\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">http://www.ribbonfarm.com/2009/0...</a></span></li>\n</ol>\n<br style=\"font-size: 15px;line-height: 21px;color: #333333;font-family: Georgia, Times, \'Times New Roman\', serif;font-style: normal;font-variant: normal;font-weight: normal;letter-spacing: normal;text-align: start;text-indent: 0px\" /><span style=\"color: #333333;font-family: Georgia, Times, \'Times New Roman\', serif;font-size: 15px;font-style: normal;font-variant: normal;font-weight: normal;letter-spacing: normal;line-height: 21px;text-align: start;text-indent: 0px;float: none\">What caused the early warning visibility in each case?</span>', 'RE: What will be the next big thing after Facebook and Twitter?', '', 'publish', 'open', 'open', '', 're-what-will-be-the-next-big-thing-after-facebook-and-twitter', '', '', '2014-06-05 03:22:10', '2014-06-05 03:22:10', '', 100, 'http://demo.enginethemes.com/qaengine/answer/re-what-will-be-the-next-big-thing-after-facebook-and-twitter/', 0, 'answer', '', 1),
(57, 1, '2020-10-24 13:09:28', '2020-10-24 13:09:28', '', 'adam-solomon-WHUDOzd5IYU-unsplash', '', 'inherit', 'open', 'closed', '', 'adam-solomon-whudozd5iyu-unsplash', '', '', '2020-10-24 13:09:28', '2020-10-24 13:09:28', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/10/adam-solomon-WHUDOzd5IYU-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2020-10-24 13:10:11', '2020-10-24 13:10:11', '', 'cropped-adam-solomon-WHUDOzd5IYU-unsplash-scaled-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-adam-solomon-whudozd5iyu-unsplash-scaled-1-jpg', '', '', '2020-10-24 13:10:11', '2020-10-24 13:10:11', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/10/cropped-adam-solomon-WHUDOzd5IYU-unsplash-scaled-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2020-10-24 13:16:31', '2020-10-24 13:16:31', '', 'Registration', '', 'inherit', 'closed', 'closed', '', '37-autosave-v1', '', '', '2020-10-24 13:16:31', '2020-10-24 13:16:31', '', 37, 'http://localhost/wordpress/2020/10/24/37-autosave-v1/', 0, 'revision', '', 0),
(63, 12, '2014-06-05 04:01:52', '2014-06-05 04:01:52', '<span style=\"color: #333333; font-family: Georgia, Times, \'Times New Roman\', serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 21px; text-align: start; text-indent: 0px; float: none;\">It\'s important to learn from the influencers of your industry. There are a few that come to mind immediately are: Mari Smith, Jon Loomer, Jeff Bullas, and more.<span class=\"Apple-converted-space\">\n</span></span>', 'What are good ways to learn to become the best digital marketer?', '', 'publish', 'open', 'open', '', 'what-are-good-ways-to-learn-to-become-the-best-digital-marketer', '', '', '2014-06-05 04:01:52', '2014-06-05 04:01:52', '', 0, 'http://demo.enginethemes.com/qaengine/question/what-are-good-ways-to-learn-to-become-the-best-digital-marketer/', 0, 'question', '', 1),
(66, 1, '2020-10-30 08:03:29', '2020-10-30 08:03:29', '', 'Wall Posts', '', 'hidden', 'closed', 'closed', '', 'wall-posts', '', '', '2020-10-30 08:03:29', '2020-10-30 08:03:29', '', 0, 'http://localhost/wordpress/2020/10/30/wall-posts/', 0, 'rtmedia_album', '', 0),
(67, 1, '2020-10-30 08:11:59', '2020-10-30 08:11:59', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:woocommerce/product-search {\"formId\":\"wc-block-product-search-2\"} -->\n<div class=\"wp-block-woocommerce-product-search\"><div class=\"wc-block-product-search\"><form role=\"search\" method=\"get\" action=\"http://localhost/wordpress/\"><label for=\"wc-block-product-search-2\" class=\"wc-block-product-search__label\">Tìm kiếm</label><div class=\"wc-block-product-search__fields\"><input type=\"search\" id=\"wc-block-product-search-2\" class=\"wc-block-product-search__field\" placeholder=\"Search products…\" name=\"s\"/><input type=\"hidden\" name=\"post_type\" value=\"product\"/><button type=\"submit\" class=\"wc-block-product-search__button\" label=\"Tìm kiếm\"><svg aria-hidden=\"true\" role=\"img\" focusable=\"false\" class=\"dashicon dashicons-arrow-right-alt2\" xmlns=\"http://www.w3.org/2000/svg\" width=\"20\" height=\"20\" viewbox=\"0 0 20 20\"><path d=\"M6 15l5-5-5-5 1-2 7 7-7 7z\"></path></svg></button></div></form></div></div>\n<!-- /wp:woocommerce/product-search -->\n\n<!-- wp:gallery {\"align\":\"center\"} -->\n<figure class=\"wp-block-gallery aligncenter columns-0 is-cropped\"><ul class=\"blocks-gallery-grid\"></ul></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:bp/member /-->\n\n<!-- wp:bp/member /-->\n\n<!-- wp:bp/group /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Account Activate', '', 'inherit', 'closed', 'closed', '', '39-autosave-v1', '', '', '2020-10-30 08:11:59', '2020-10-30 08:11:59', '', 39, 'http://localhost/wordpress/2020/10/30/39-autosave-v1/', 0, 'revision', '', 0),
(70, 1, '2020-10-30 08:55:43', '2020-10-30 08:55:43', '', 'Nhóm', '', 'inherit', 'closed', 'closed', '', '36-autosave-v1', '', '', '2020-10-30 08:55:43', '2020-10-30 08:55:43', '', 36, 'http://localhost/wordpress/2020/10/30/36-autosave-v1/', 0, 'revision', '', 0),
(71, 12, '2014-06-05 04:13:26', '2014-06-05 04:13:26', '<span style=\"color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 21px; text-align: start; text-indent: 0px; float: none;\">Why is the music industry so set on the business model of selling music when there are a plethora of other ways to monetize music?</span>', 'Why isn\'t music free?', '', 'publish', 'open', 'open', '', 'why-isnt-music-free', '', '', '2014-06-05 04:13:26', '2014-06-05 04:13:26', '', 0, 'http://demo.enginethemes.com/qaengine/question/why-isnt-music-free/', 0, 'question', '', 2),
(74, 1, '2020-11-28 06:05:00', '2020-11-28 06:05:00', '', 'Profile', '', 'publish', 'closed', 'closed', '', 'profile', '', '', '2020-11-28 06:05:00', '2020-11-28 06:05:00', '', 0, 'http://localhost/wordpress/profile/', 0, 'page', '', 0),
(75, 1, '2020-11-28 06:05:00', '2020-11-28 06:05:00', '', 'Tags', '', 'publish', 'closed', 'closed', '', 'tags', '', '', '2020-11-28 06:05:00', '2020-11-28 06:05:00', '', 0, 'http://localhost/wordpress/tags/', 0, 'page', '', 0),
(76, 1, '2020-11-28 06:05:01', '2020-11-28 06:05:01', '', 'Users', '', 'publish', 'closed', 'closed', '', 'users', '', '', '2020-11-28 06:05:01', '2020-11-28 06:05:01', '', 0, 'http://localhost/wordpress/users/', 0, 'page', '', 0),
(77, 1, '2020-11-28 06:05:01', '2020-11-28 06:05:01', '', 'Search', '', 'publish', 'closed', 'closed', '', 'search', '', '', '2020-11-28 06:05:01', '2020-11-28 06:05:01', '', 0, 'http://localhost/wordpress/search/', 0, 'page', '', 0),
(78, 1, '2020-11-28 06:05:01', '2020-11-28 06:05:01', '', 'Badges', '', 'publish', 'closed', 'closed', '', 'badges', '', '', '2020-11-28 06:05:01', '2020-11-28 06:05:01', '', 0, 'http://localhost/wordpress/badges/', 0, 'page', '', 0),
(79, 1, '2020-11-28 06:05:01', '2020-11-28 06:05:01', '', 'Intro', '', 'publish', 'closed', 'closed', '', 'intro', '', '', '2020-11-28 06:05:01', '2020-11-28 06:05:01', '', 0, 'http://localhost/wordpress/intro/', 0, 'page', '', 0),
(80, 1, '2020-11-28 06:05:01', '2020-11-28 06:05:01', '', 'Categories', '', 'publish', 'closed', 'closed', '', 'categories', '', '', '2020-11-28 06:05:01', '2020-11-28 06:05:01', '', 0, 'http://localhost/wordpress/categories/', 0, 'page', '', 0),
(81, 1, '2020-11-28 06:05:01', '2020-11-28 06:05:01', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu%cc%89', '', '', '2020-11-28 10:58:43', '2020-11-28 10:58:43', '', 0, 'http://localhost/wordpress/questions-listing/', 0, 'page', '', 0),
(82, 1, '2020-11-28 06:05:01', '2020-11-28 06:05:01', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2020-11-28 06:05:01', '2020-11-28 06:05:01', '', 0, 'http://localhost/wordpress/blog/', 0, 'page', '', 0),
(83, 1, '2020-11-28 06:05:31', '2020-11-28 06:05:31', 'Please fill out the form below ', 'term', '', 'publish', 'closed', 'closed', '', 'term', '', '', '2020-11-28 06:05:31', '2020-11-28 06:05:31', '', 0, 'http://localhost/wordpress/term/', 0, 'page', '', 0),
(87, 9, '2014-06-05 02:46:21', '2014-06-05 02:46:21', '<span style=\"color: #333333;\">If you follow the entire movie, the end leaves you even more baffled, and reconsidering what you had thought in the entire movie, with the movie in itself being quite difficult to follow.</span>', 'Which movie has the most unpredictable ending?', '', 'publish', 'open', 'open', '', 'which-movie-has-the-most-unpredictable-ending', '', '', '2014-06-05 02:46:21', '2014-06-05 02:46:21', '', 0, 'http://demo.enginethemes.com/qaengine/question/which-movie-has-the-most-unpredictable-ending/', 0, 'question', '', 0),
(88, 9, '2020-11-28 10:53:33', '2020-11-28 10:53:33', 'Your posted a question \"\" ', 'post_question', '', 'publish', 'open', 'closed', '', 'post_question', '', '', '2020-11-28 10:53:33', '2020-11-28 10:53:33', '', 87, 'http://localhost/wordpress/changelog/post_question/', 0, 'changelog', '', 0),
(89, 1, '2020-11-28 10:53:34', '2020-11-28 10:53:34', 'Your posted a question \"\" ', 'post_question', '', 'publish', 'open', 'closed', '', 'post_question-2', '', '', '2020-11-28 10:53:34', '2020-11-28 10:53:34', '', 87, 'http://localhost/wordpress/changelog/post_question-2/', 0, 'changelog', '', 0),
(90, 10, '2014-06-05 02:50:16', '2014-06-05 02:50:16', '<span style=\"color: #333333; font-family: Georgia, Times, \'Times New Roman\', serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 21px; text-align: start; text-indent: 0px; float: none;\">Why haven\'t you ever seen a Lamborghini commercial before? Because the people who can afford a Lamborghini aren\'t sitting around watching TV.</span>', 'What\'s the most powerful/inspirational quote you\'ve ever heard?', '', 'publish', 'open', 'open', '', 'whats-the-most-powerfulinspirational-quote-youve-ever-heard', '', '', '2014-06-05 02:50:16', '2014-06-05 02:50:16', '', 0, 'http://demo.enginethemes.com/qaengine/question/whats-the-most-powerfulinspirational-quote-youve-ever-heard/', 0, 'question', '', 0),
(91, 10, '2020-11-28 10:53:36', '2020-11-28 10:53:36', 'Your posted a question \"\" ', 'post_question', '', 'publish', 'open', 'closed', '', 'post_question-3', '', '', '2020-11-28 10:53:36', '2020-11-28 10:53:36', '', 90, 'http://localhost/wordpress/changelog/post_question-3/', 0, 'changelog', '', 0),
(92, 1, '2020-11-28 10:53:36', '2020-11-28 10:53:36', 'Your posted a question \"\" ', 'post_question', '', 'publish', 'open', 'closed', '', 'post_question-4', '', '', '2020-11-28 10:53:36', '2020-11-28 10:53:36', '', 90, 'http://localhost/wordpress/changelog/post_question-4/', 0, 'changelog', '', 0),
(93, 9, '2020-11-28 10:53:37', '2020-11-28 10:53:37', 'Your posted a question \"\" ', 'post_question', '', 'publish', 'open', 'closed', '', 'post_question-5', '', '', '2020-11-28 10:53:37', '2020-11-28 10:53:37', '', 42, 'http://localhost/wordpress/changelog/post_question-5/', 0, 'changelog', '', 0),
(94, 1, '2020-11-28 10:53:37', '2020-11-28 10:53:37', 'Your posted a question \"\" ', 'post_question', '', 'publish', 'open', 'closed', '', 'post_question-6', '', '', '2020-11-28 10:53:37', '2020-11-28 10:53:37', '', 42, 'http://localhost/wordpress/changelog/post_question-6/', 0, 'changelog', '', 0),
(95, 9, '2020-11-28 10:53:39', '2020-11-28 10:53:39', 'Your posted a question \"\" ', 'post_question', '', 'publish', 'open', 'closed', '', 'post_question-7', '', '', '2020-11-28 10:53:39', '2020-11-28 10:53:39', '', 49, 'http://localhost/wordpress/changelog/post_question-7/', 0, 'changelog', '', 0),
(96, 1, '2020-11-28 10:53:39', '2020-11-28 10:53:39', 'Your posted a question \"\" ', 'post_question', '', 'publish', 'open', 'closed', '', 'post_question-8', '', '', '2020-11-28 10:53:39', '2020-11-28 10:53:39', '', 49, 'http://localhost/wordpress/changelog/post_question-8/', 0, 'changelog', '', 0),
(97, 10, '2014-06-05 03:13:11', '2014-06-05 03:13:11', '<span style=\"color: #000000; font-family: Arial, \'Liberation Sans\', \'DejaVu Sans\', sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 17.804800033569336px; text-align: left; text-indent: 0px; float: none; background-color: #ffffff;\">In my Glass application, I have created a preference fragment for users to enter some important information such as name, password, etc. When run, the preference item does come up as expected. However, I couldn\'t find a way to key in the characters. Is there a soft keyboard or some other way to enter text in an edit control in Glass? Or, is there a replacement for preferences UI in Glass that will let me key in characters? Regards.</span>', 'How to type characters in Google Glass?', '', 'publish', 'open', 'open', '', 'how-to-type-characters-in-google-glass', '', '', '2014-06-05 03:13:11', '2014-06-05 03:13:11', '', 0, 'http://demo.enginethemes.com/qaengine/question/how-to-type-characters-in-google-glass/', 0, 'question', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(98, 10, '2020-11-28 10:53:40', '2020-11-28 10:53:40', 'Your posted a question \"\" ', 'post_question', '', 'publish', 'open', 'closed', '', 'post_question-9', '', '', '2020-11-28 10:53:40', '2020-11-28 10:53:40', '', 97, 'http://localhost/wordpress/changelog/post_question-9/', 0, 'changelog', '', 0),
(99, 1, '2020-11-28 10:53:40', '2020-11-28 10:53:40', 'Your posted a question \"\" ', 'post_question', '', 'publish', 'open', 'closed', '', 'post_question-10', '', '', '2020-11-28 10:53:40', '2020-11-28 10:53:40', '', 97, 'http://localhost/wordpress/changelog/post_question-10/', 0, 'changelog', '', 0),
(100, 10, '2014-06-05 03:19:29', '2014-06-05 03:19:29', '<span style=\"color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 21px; text-align: start; text-indent: 0px; float: none;\">Why?..And How Soon Do You Think It Will Be? In other words, what will be the next big thing in B2C web startups?</span>', 'What will be the next big thing after Facebook and Twitter?', '', 'publish', 'open', 'open', '', 'what-will-be-the-next-big-thing-after-facebook-and-twitter', '', '', '2014-06-05 03:19:29', '2014-06-05 03:19:29', '', 0, 'http://demo.enginethemes.com/qaengine/question/what-will-be-the-next-big-thing-after-facebook-and-twitter/', 0, 'question', '', 0),
(101, 10, '2020-11-28 10:53:41', '2020-11-28 10:53:41', 'Your posted a question \"\" ', 'post_question', '', 'publish', 'open', 'closed', '', 'post_question-11', '', '', '2020-11-28 10:53:41', '2020-11-28 10:53:41', '', 100, 'http://localhost/wordpress/changelog/post_question-11/', 0, 'changelog', '', 0),
(102, 1, '2020-11-28 10:53:41', '2020-11-28 10:53:41', 'Your posted a question \"\" ', 'post_question', '', 'publish', 'open', 'closed', '', 'post_question-12', '', '', '2020-11-28 10:53:41', '2020-11-28 10:53:41', '', 100, 'http://localhost/wordpress/changelog/post_question-12/', 0, 'changelog', '', 0),
(103, 10, '2014-06-05 03:30:22', '2014-06-05 03:30:22', '<span style=\"color: #333333;\">What strategies should marketers be focussing in the year of new age media ?\n\n</span>\n<p style=\"color: #000000;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum salvum esse flentes sui respondissent, rogavit essentne fusi hostes. Qui ita affectus, beatum esse numquam probabis; Deinde disputat, quod cuiusque generis animantium statui deceat extremum. Quod quidem nobis non saepe contingit. Si longus, levis dictata sunt. Tuo vero id quidem, inquam, arbitratu.</p>\n&nbsp;\n<p style=\"color: #000000;\">Vestri haec verecundius, illi fortasse constantius. Duo Reges: constructio interrete. Scaevola tribunus plebis ferret ad plebem vellentne de ea re quaeri. Quae cum magnifice primo dici viderentur, considerata minus probabantur. Nummus in Croesi divitiis obscuratur, pars est tamen divitiarum. Habes, inquam, Cato, formam eorum, de quibus loquor, philosophorum. Negabat igitur ullam esse artem, quae ipsa a se proficisceretur; Et quod est munus, quod opus sapientiae? Dicet pro me ipsa virtus nec dubitabit isti vestro beato M. Quorum sine causa fieri nihil putandum est.</p>\n&nbsp;\n<p style=\"color: #000000;\">Conferam tecum, quam cuique verso rem subicias; Apud imperitos tum illa dicta sunt, aliquid etiam coronae datum; Beatus autem esse in maximarum rerum timore nemo potest. Legimus tamen Diogenem, Antipatrum, Mnesarchum, Panaetium, multos alios in primisque familiarem nostrum Posidonium. Equidem etiam Epicurum, in physicis quidem, Democriteum puto. Qui-vere falsone, quaerere mittimus-dicitur oculis se privasse; Graecum enim hunc versum nostis omnes-: Suavis laborum est praeteritorum memoria. Duarum enim vitarum nobis erunt instituta capienda.</p>\n<span style=\"color: #333333;\"> </span>', 'What were the latest trends in marketing for 2013?', '', 'publish', 'open', 'open', '', 'what-were-the-latest-trends-in-marketing-for-2013', '', '', '2014-06-05 03:30:22', '2014-06-05 03:30:22', '', 0, 'http://demo.enginethemes.com/qaengine/question/what-were-the-latest-trends-in-marketing-for-2013/', 0, 'question', '', 0),
(104, 10, '2020-11-28 10:53:42', '2020-11-28 10:53:42', 'Your posted a question \"\" ', 'post_question', '', 'publish', 'open', 'closed', '', 'post_question-13', '', '', '2020-11-28 10:53:42', '2020-11-28 10:53:42', '', 103, 'http://localhost/wordpress/changelog/post_question-13/', 0, 'changelog', '', 0),
(105, 1, '2020-11-28 10:53:42', '2020-11-28 10:53:42', 'Your posted a question \"\" ', 'post_question', '', 'publish', 'open', 'closed', '', 'post_question-14', '', '', '2020-11-28 10:53:42', '2020-11-28 10:53:42', '', 103, 'http://localhost/wordpress/changelog/post_question-14/', 0, 'changelog', '', 0),
(106, 11, '2014-06-05 03:31:28', '2014-06-05 03:31:28', '<span style=\"color: #333333; font-family: Georgia, Times, \'Times New Roman\', serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 21px; text-align: start; text-indent: 0px; float: none;\">Make a great product but y’all know that so I’ll just dive into the tactics..</span>\n<p style=\"color: #000000;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum salvum esse flentes sui respondissent, rogavit essentne fusi hostes. Qui ita affectus, beatum esse numquam probabis; Deinde disputat, quod cuiusque generis animantium statui deceat extremum. Quod quidem nobis non saepe contingit. Si longus, levis dictata sunt. Tuo vero id quidem, inquam, arbitratu.</p>\n<p style=\"color: #000000;\">Vestri haec verecundius, illi fortasse constantius. Duo Reges: constructio interrete. Scaevola tribunus plebis ferret ad plebem vellentne de ea re quaeri. Quae cum magnifice primo dici viderentur, considerata minus probabantur. Nummus in Croesi divitiis obscuratur, pars est tamen divitiarum. Habes, inquam, Cato, formam eorum, de quibus loquor, philosophorum. Negabat igitur ullam esse artem, quae ipsa a se proficisceretur; Et quod est munus, quod opus sapientiae? Dicet pro me ipsa virtus nec dubitabit isti vestro beato M. Quorum sine causa fieri nihil putandum est.</p>\n<p style=\"color: #000000;\">Conferam tecum, quam cuique verso rem subicias; Apud imperitos tum illa dicta sunt, aliquid etiam coronae datum; Beatus autem esse in maximarum rerum timore nemo potest. Legimus tamen Diogenem, Antipatrum, Mnesarchum, Panaetium, multos alios in primisque familiarem nostrum Posidonium. Equidem etiam Epicurum, in physicis quidem, Democriteum puto. Qui-vere falsone, quaerere mittimus-dicitur oculis se privasse; Graecum enim hunc versum nostis omnes-: Suavis laborum est praeteritorum memoria. Duarum enim vitarum nobis erunt instituta capienda.</p>', 'What are key strategies to acquire first 100K users with zero marketing budget?', '', 'publish', 'open', 'open', '', 'what-are-key-strategies-to-acquire-first-100k-users-with-zero-marketing-budget', '', '', '2014-06-05 03:31:28', '2014-06-05 03:31:28', '', 0, 'http://demo.enginethemes.com/qaengine/question/what-are-key-strategies-to-acquire-first-100k-users-with-zero-marketing-budget/', 0, 'question', '', 1),
(107, 11, '2020-11-28 10:53:44', '2020-11-28 10:53:44', 'Your posted a question \"\" ', 'post_question', '', 'publish', 'open', 'closed', '', 'post_question-15', '', '', '2020-11-28 10:53:44', '2020-11-28 10:53:44', '', 106, 'http://localhost/wordpress/changelog/post_question-15/', 0, 'changelog', '', 0),
(108, 1, '2020-11-28 10:53:44', '2020-11-28 10:53:44', 'Your posted a question \"\" ', 'post_question', '', 'publish', 'open', 'closed', '', 'post_question-16', '', '', '2020-11-28 10:53:44', '2020-11-28 10:53:44', '', 106, 'http://localhost/wordpress/changelog/post_question-16/', 0, 'changelog', '', 0),
(109, 11, '2020-11-28 10:53:45', '2020-11-28 10:53:45', 'Your question \"What are key strategies to acquire first 100K users with zero marketing budget?\" was voted up, earned 5 points', 'q_vote_up', '', 'publish', 'open', 'closed', '', 'q_vote_up', '', '', '2020-11-28 10:53:45', '2020-11-28 10:53:45', '', 106, 'http://localhost/wordpress/changelog/q_vote_up/', 0, 'changelog', '', 0),
(110, 1, '2020-11-28 10:53:45', '2020-11-28 10:53:45', 'Your question \"What are key strategies to acquire first 100K users with zero marketing budget?\" was voted up, earned 5 points', 'q_vote_up', '', 'publish', 'open', 'closed', '', 'q_vote_up-2', '', '', '2020-11-28 10:53:45', '2020-11-28 10:53:45', '', 106, 'http://localhost/wordpress/changelog/q_vote_up-2/', 0, 'changelog', '', 0),
(111, 12, '2020-11-28 10:53:46', '2020-11-28 10:53:46', 'Your posted a question \"\" ', 'post_question', '', 'publish', 'open', 'closed', '', 'post_question-17', '', '', '2020-11-28 10:53:46', '2020-11-28 10:53:46', '', 63, 'http://localhost/wordpress/changelog/post_question-17/', 0, 'changelog', '', 0),
(112, 1, '2020-11-28 10:53:46', '2020-11-28 10:53:46', 'Your posted a question \"\" ', 'post_question', '', 'publish', 'open', 'closed', '', 'post_question-18', '', '', '2020-11-28 10:53:46', '2020-11-28 10:53:46', '', 63, 'http://localhost/wordpress/changelog/post_question-18/', 0, 'changelog', '', 0),
(113, 12, '2020-11-28 10:53:46', '2020-11-28 10:53:46', 'Your question \"What are good ways to learn to become the best digital marketer?\" was voted up, earned 5 points', 'q_vote_up', '', 'publish', 'open', 'closed', '', 'q_vote_up-3', '', '', '2020-11-28 10:53:46', '2020-11-28 10:53:46', '', 63, 'http://localhost/wordpress/changelog/q_vote_up-3/', 0, 'changelog', '', 0),
(114, 1, '2020-11-28 10:53:47', '2020-11-28 10:53:47', 'Your question \"What are good ways to learn to become the best digital marketer?\" was voted up, earned 5 points', 'q_vote_up', '', 'publish', 'open', 'closed', '', 'q_vote_up-4', '', '', '2020-11-28 10:53:47', '2020-11-28 10:53:47', '', 63, 'http://localhost/wordpress/changelog/q_vote_up-4/', 0, 'changelog', '', 0),
(115, 12, '2020-11-28 10:53:48', '2020-11-28 10:53:48', 'Your posted a question \"\" ', 'post_question', '', 'publish', 'open', 'closed', '', 'post_question-19', '', '', '2020-11-28 10:53:48', '2020-11-28 10:53:48', '', 71, 'http://localhost/wordpress/changelog/post_question-19/', 0, 'changelog', '', 0),
(116, 1, '2020-11-28 10:53:49', '2020-11-28 10:53:49', 'Your posted a question \"\" ', 'post_question', '', 'publish', 'open', 'closed', '', 'post_question-20', '', '', '2020-11-28 10:53:49', '2020-11-28 10:53:49', '', 71, 'http://localhost/wordpress/changelog/post_question-20/', 0, 'changelog', '', 0),
(117, 12, '2020-11-28 10:53:49', '2020-11-28 10:53:49', 'Your question \"Why isn\'t music free?\" was voted up, earned 5 points', 'q_vote_up', '', 'publish', 'open', 'closed', '', 'q_vote_up-5', '', '', '2020-11-28 10:53:49', '2020-11-28 10:53:49', '', 71, 'http://localhost/wordpress/changelog/q_vote_up-5/', 0, 'changelog', '', 0),
(118, 1, '2020-11-28 10:53:50', '2020-11-28 10:53:50', 'Your question \"Why isn\'t music free?\" was voted up, earned 5 points', 'q_vote_up', '', 'publish', 'open', 'closed', '', 'q_vote_up-6', '', '', '2020-11-28 10:53:50', '2020-11-28 10:53:50', '', 71, 'http://localhost/wordpress/changelog/q_vote_up-6/', 0, 'changelog', '', 0),
(119, 9, '2014-06-05 04:20:43', '2014-06-05 04:20:43', '<span style=\"color: #545454;\">People do not become billionaires by accident. Demystify as many of the variables as you can before you assemble a plan, such as interest rates, tax brackets, dividends and so on. Take a class online or at a university on finance, read books about investing and know the rules.</span>', 'How to become a billionaire in the next 5 years?', '', 'publish', 'open', 'open', '', 'how-to-become-a-billionaire-in-the-next-5-years', '', '', '2014-06-05 04:20:43', '2014-06-05 04:20:43', '', 0, 'http://demo.enginethemes.com/qaengine/question/how-to-become-a-billionaire-in-the-next-5-years/', 0, 'question', '', 2),
(120, 9, '2020-11-28 10:53:50', '2020-11-28 10:53:50', 'Your posted a question \"\" ', 'post_question', '', 'publish', 'open', 'closed', '', 'post_question-21', '', '', '2020-11-28 10:53:50', '2020-11-28 10:53:50', '', 119, 'http://localhost/wordpress/changelog/post_question-21/', 0, 'changelog', '', 0),
(121, 1, '2020-11-28 10:53:50', '2020-11-28 10:53:50', 'Your posted a question \"\" ', 'post_question', '', 'publish', 'open', 'closed', '', 'post_question-22', '', '', '2020-11-28 10:53:50', '2020-11-28 10:53:50', '', 119, 'http://localhost/wordpress/changelog/post_question-22/', 0, 'changelog', '', 0),
(122, 9, '2020-11-28 10:53:51', '2020-11-28 10:53:51', 'Your question \"How to become a billionaire in the next 5 years?\" was voted up, earned 5 points', 'q_vote_up', '', 'publish', 'open', 'closed', '', 'q_vote_up-7', '', '', '2020-11-28 10:53:51', '2020-11-28 10:53:51', '', 119, 'http://localhost/wordpress/changelog/q_vote_up-7/', 0, 'changelog', '', 0),
(123, 1, '2020-11-28 10:53:51', '2020-11-28 10:53:51', 'Your question \"How to become a billionaire in the next 5 years?\" was voted up, earned 5 points', 'q_vote_up', '', 'publish', 'open', 'closed', '', 'q_vote_up-8', '', '', '2020-11-28 10:53:51', '2020-11-28 10:53:51', '', 119, 'http://localhost/wordpress/changelog/q_vote_up-8/', 0, 'changelog', '', 0),
(124, 9, '2020-11-28 10:53:52', '2020-11-28 10:53:52', 'Your question \"How to become a billionaire in the next 5 years?\" was voted up, earned 5 points', 'q_vote_up', '', 'publish', 'open', 'closed', '', 'q_vote_up-9', '', '', '2020-11-28 10:53:52', '2020-11-28 10:53:52', '', 119, 'http://localhost/wordpress/changelog/q_vote_up-9/', 0, 'changelog', '', 0),
(125, 1, '2020-11-28 10:53:52', '2020-11-28 10:53:52', 'Your question \"How to become a billionaire in the next 5 years?\" was voted up, earned 5 points', 'q_vote_up', '', 'publish', 'open', 'closed', '', 'q_vote_up-10', '', '', '2020-11-28 10:53:52', '2020-11-28 10:53:52', '', 119, 'http://localhost/wordpress/changelog/q_vote_up-10/', 0, 'changelog', '', 0),
(126, 13, '2014-06-05 04:28:34', '2014-06-05 04:28:34', '<span style=\"color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 21px; text-align: start; text-indent: 0px; float: none;\">Which mobile apps would you recommend for frequent travelers? On any phone (Android, iPhone, Blackberry, Palm Pre, iPad ect).</span>', 'What are the best mobile apps for traveling?', '', 'publish', 'open', 'open', '', 'what-are-the-best-mobile-apps-for-traveling', '', '', '2014-06-05 04:28:34', '2014-06-05 04:28:34', '', 0, 'http://demo.enginethemes.com/qaengine/question/what-are-the-best-mobile-apps-for-traveling/', 0, 'question', '', 5),
(127, 13, '2020-11-28 10:53:53', '2020-11-28 10:53:53', 'Your posted a question \"\" ', 'post_question', '', 'publish', 'open', 'closed', '', 'post_question-23', '', '', '2020-11-28 10:53:53', '2020-11-28 10:53:53', '', 126, 'http://localhost/wordpress/changelog/post_question-23/', 0, 'changelog', '', 0),
(128, 1, '2020-11-28 10:53:53', '2020-11-28 10:53:53', 'Your posted a question \"\" ', 'post_question', '', 'publish', 'open', 'closed', '', 'post_question-24', '', '', '2020-11-28 10:53:53', '2020-11-28 10:53:53', '', 126, 'http://localhost/wordpress/changelog/post_question-24/', 0, 'changelog', '', 0),
(129, 13, '2020-11-28 10:53:54', '2020-11-28 10:53:54', 'Your question \"What are the best mobile apps for traveling?\" was voted up, earned 5 points', 'q_vote_up', '', 'publish', 'open', 'closed', '', 'q_vote_up-11', '', '', '2020-11-28 10:53:54', '2020-11-28 10:53:54', '', 126, 'http://localhost/wordpress/changelog/q_vote_up-11/', 0, 'changelog', '', 0),
(130, 1, '2020-11-28 10:53:54', '2020-11-28 10:53:54', 'Your question \"What are the best mobile apps for traveling?\" was voted up, earned 5 points', 'q_vote_up', '', 'publish', 'open', 'closed', '', 'q_vote_up-12', '', '', '2020-11-28 10:53:54', '2020-11-28 10:53:54', '', 126, 'http://localhost/wordpress/changelog/q_vote_up-12/', 0, 'changelog', '', 0),
(131, 13, '2020-11-28 10:53:54', '2020-11-28 10:53:54', 'Your question \"What are the best mobile apps for traveling?\" was voted up, earned 5 points', 'q_vote_up', '', 'publish', 'open', 'closed', '', 'q_vote_up-13', '', '', '2020-11-28 10:53:54', '2020-11-28 10:53:54', '', 126, 'http://localhost/wordpress/changelog/q_vote_up-13/', 0, 'changelog', '', 0),
(132, 1, '2020-11-28 10:53:55', '2020-11-28 10:53:55', 'Your question \"What are the best mobile apps for traveling?\" was voted up, earned 5 points', 'q_vote_up', '', 'publish', 'open', 'closed', '', 'q_vote_up-14', '', '', '2020-11-28 10:53:55', '2020-11-28 10:53:55', '', 126, 'http://localhost/wordpress/changelog/q_vote_up-14/', 0, 'changelog', '', 0),
(134, 10, '2020-11-28 10:53:58', '2020-11-28 10:53:58', 'Your question \"I have bought a Samsung Galaxy 3 (parallel imported, aka GT-I5801). Can I remove the unusable bundled proprietary applications without breaking the thing? (How?)\" was voted up, earned 5 points', 'q_vote_up', '', 'publish', 'open', 'closed', '', 'q_vote_up-15', '', '', '2020-11-28 10:53:58', '2020-11-28 10:53:58', '', 133, 'http://localhost/wordpress/changelog/q_vote_up-15/', 0, 'changelog', '', 0),
(135, 1, '2020-11-28 10:53:58', '2020-11-28 10:53:58', 'Your question \"I have bought a Samsung Galaxy 3 (parallel imported, aka GT-I5801). Can I remove the unusable bundled proprietary applications without breaking the thing? (How?)\" was voted up, earned 5 points', 'q_vote_up', '', 'publish', 'open', 'closed', '', 'q_vote_up-16', '', '', '2020-11-28 10:53:58', '2020-11-28 10:53:58', '', 133, 'http://localhost/wordpress/changelog/q_vote_up-16/', 0, 'changelog', '', 0),
(136, 10, '2020-11-28 10:53:58', '2020-11-28 10:53:58', 'Your question \"I have bought a Samsung Galaxy 3 (parallel imported, aka GT-I5801). Can I remove the unusable bundled proprietary applications without breaking the thing? (How?)\" was voted up, earned 5 points', 'q_vote_up', '', 'publish', 'open', 'closed', '', 'q_vote_up-17', '', '', '2020-11-28 10:53:58', '2020-11-28 10:53:58', '', 133, 'http://localhost/wordpress/changelog/q_vote_up-17/', 0, 'changelog', '', 0),
(137, 1, '2020-11-28 10:53:58', '2020-11-28 10:53:58', 'Your question \"I have bought a Samsung Galaxy 3 (parallel imported, aka GT-I5801). Can I remove the unusable bundled proprietary applications without breaking the thing? (How?)\" was voted up, earned 5 points', 'q_vote_up', '', 'publish', 'open', 'closed', '', 'q_vote_up-18', '', '', '2020-11-28 10:53:58', '2020-11-28 10:53:58', '', 133, 'http://localhost/wordpress/changelog/q_vote_up-18/', 0, 'changelog', '', 0),
(188, 9, '2014-06-09 03:40:50', '2014-06-09 03:40:50', 'I have a database of coordinates in the schema:\n\nID:Latitude:Longitude:name:desc\n\nI\'ve set up my google maps application to show the markers effectively on the screen. However I need to add another feature whereby the user can view all pointers that fall within the radius from a central point.\n\nHow would I write up a sql statement of the kind:\n\nSelect all pointers that fall within a 10 mile radius of X &amp; Y', 'Select coordinates which fall within a radius of a central point?', '', 'publish', 'open', 'open', '', 'select-coordinates-which-fall-within-a-radius-of-a-central-point', '', '', '2014-06-09 03:40:50', '2014-06-09 03:40:50', '', 0, 'http://demo.enginethemes.com/qaengine/question/select-coordinates-which-fall-within-a-radius-of-a-central-point/', 0, 'question', '', 1),
(189, 9, '2020-11-28 10:53:59', '2020-11-28 10:53:59', 'Your posted a question \"\" ', 'post_question', '', 'publish', 'open', 'closed', '', 'post_question-25', '', '', '2020-11-28 10:53:59', '2020-11-28 10:53:59', '', 188, 'http://localhost/wordpress/changelog/post_question-25/', 0, 'changelog', '', 0),
(190, 1, '2020-11-28 10:53:59', '2020-11-28 10:53:59', 'Your posted a question \"\" ', 'post_question', '', 'publish', 'open', 'closed', '', 'post_question-26', '', '', '2020-11-28 10:53:59', '2020-11-28 10:53:59', '', 188, 'http://localhost/wordpress/changelog/post_question-26/', 0, 'changelog', '', 0),
(191, 9, '2020-11-28 10:54:01', '2020-11-28 10:54:01', 'Your question \"Select coordinates which fall within a radius of a central point?\" was voted up, earned 5 points', 'q_vote_up', '', 'publish', 'open', 'closed', '', 'q_vote_up-19', '', '', '2020-11-28 10:54:01', '2020-11-28 10:54:01', '', 188, 'http://localhost/wordpress/changelog/q_vote_up-19/', 0, 'changelog', '', 0),
(192, 1, '2020-11-28 10:54:01', '2020-11-28 10:54:01', 'Your question \"Select coordinates which fall within a radius of a central point?\" was voted up, earned 5 points', 'q_vote_up', '', 'publish', 'open', 'closed', '', 'q_vote_up-20', '', '', '2020-11-28 10:54:01', '2020-11-28 10:54:01', '', 188, 'http://localhost/wordpress/changelog/q_vote_up-20/', 0, 'changelog', '', 0),
(1728, 14, '2014-06-09 08:18:47', '2014-06-09 08:18:47', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.\n\nDuis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.\n\n&nbsp;', 'What are some of your favorite deep, awe-inspiring, and/or thought-provoking movies?', '', 'publish', 'open', 'open', '', 'what-are-some-of-your-favorite-deep-awe-inspiring-andor-thought-provoking-movies', '', '', '2014-06-09 08:18:47', '2014-06-09 08:18:47', '', 0, 'http://demo.enginethemes.com/qaengine/question/what-are-some-of-your-favorite-deep-awe-inspiring-andor-thought-provoking-movies/', 0, 'question', '', 3),
(1729, 14, '2020-11-28 10:54:01', '2020-11-28 10:54:01', 'Your posted a question \"\" ', 'post_question', '', 'publish', 'open', 'closed', '', 'post_question-27', '', '', '2020-11-28 10:54:01', '2020-11-28 10:54:01', '', 1728, 'http://localhost/wordpress/changelog/post_question-27/', 0, 'changelog', '', 0),
(1730, 1, '2020-11-28 10:54:02', '2020-11-28 10:54:02', 'Your posted a question \"\" ', 'post_question', '', 'publish', 'open', 'closed', '', 'post_question-28', '', '', '2020-11-28 10:54:02', '2020-11-28 10:54:02', '', 1728, 'http://localhost/wordpress/changelog/post_question-28/', 0, 'changelog', '', 0),
(1731, 14, '2020-11-28 10:54:03', '2020-11-28 10:54:03', 'Your question \"What are some of your favorite deep, awe-inspiring, and/or thought-provoking movies?\" was voted up, earned 5 points', 'q_vote_up', '', 'publish', 'open', 'closed', '', 'q_vote_up-21', '', '', '2020-11-28 10:54:03', '2020-11-28 10:54:03', '', 1728, 'http://localhost/wordpress/changelog/q_vote_up-21/', 0, 'changelog', '', 0),
(1732, 1, '2020-11-28 10:54:03', '2020-11-28 10:54:03', 'Your question \"What are some of your favorite deep, awe-inspiring, and/or thought-provoking movies?\" was voted up, earned 5 points', 'q_vote_up', '', 'publish', 'open', 'closed', '', 'q_vote_up-22', '', '', '2020-11-28 10:54:03', '2020-11-28 10:54:03', '', 1728, 'http://localhost/wordpress/changelog/q_vote_up-22/', 0, 'changelog', '', 0),
(1733, 14, '2020-11-28 10:54:03', '2020-11-28 10:54:03', 'Your question \"What are some of your favorite deep, awe-inspiring, and/or thought-provoking movies?\" was voted up, earned 5 points', 'q_vote_up', '', 'publish', 'open', 'closed', '', 'q_vote_up-23', '', '', '2020-11-28 10:54:03', '2020-11-28 10:54:03', '', 1728, 'http://localhost/wordpress/changelog/q_vote_up-23/', 0, 'changelog', '', 0),
(1734, 1, '2020-11-28 10:54:04', '2020-11-28 10:54:04', 'Your question \"What are some of your favorite deep, awe-inspiring, and/or thought-provoking movies?\" was voted up, earned 5 points', 'q_vote_up', '', 'publish', 'open', 'closed', '', 'q_vote_up-24', '', '', '2020-11-28 10:54:04', '2020-11-28 10:54:04', '', 1728, 'http://localhost/wordpress/changelog/q_vote_up-24/', 0, 'changelog', '', 0),
(1735, 14, '2020-11-28 10:54:04', '2020-11-28 10:54:04', 'Your question \"What are some of your favorite deep, awe-inspiring, and/or thought-provoking movies?\" was voted down, earned -2 points', 'q_vote_down', '', 'publish', 'open', 'closed', '', 'q_vote_down', '', '', '2020-11-28 10:54:04', '2020-11-28 10:54:04', '', 1728, 'http://localhost/wordpress/changelog/q_vote_down/', 0, 'changelog', '', 0),
(1736, 1, '2020-11-28 10:54:05', '2020-11-28 10:54:05', 'Your question \"What are some of your favorite deep, awe-inspiring, and/or thought-provoking movies?\" was voted down, earned -2 points', 'q_vote_down', '', 'publish', 'open', 'closed', '', 'q_vote_down-2', '', '', '2020-11-28 10:54:05', '2020-11-28 10:54:05', '', 1728, 'http://localhost/wordpress/changelog/q_vote_down-2/', 0, 'changelog', '', 0),
(1737, 9, '2014-06-05 02:52:23', '2014-06-05 02:52:23', '<span style=\"color: #333333;\">\"If you want to build a ship, don\'t drum up people to collect wood and don\'t assign them tasks and work, but rather teach them to long for the endless immensity of the sea.\" </span>', 'RE: What\'s the most powerful/inspirational quote you\'ve ever heard?', '', 'publish', 'open', 'open', '', 're-whats-the-most-powerfulinspirational-quote-youve-ever-heard', '', '', '2014-06-05 02:52:23', '2014-06-05 02:52:23', '', 90, 'http://demo.enginethemes.com/qaengine/answer/re-whats-the-most-powerfulinspirational-quote-youve-ever-heard/', 0, 'answer', '', 0),
(1738, 9, '2020-11-28 10:54:05', '2020-11-28 10:54:05', 'You answered on question \"What&#8217;s the most powerful/inspirational quote you&#8217;ve ever heard?\"', 'post_answer', '', 'publish', 'open', 'closed', '', 'post_answer', '', '', '2020-11-28 10:54:05', '2020-11-28 10:54:05', '', 1737, 'http://localhost/wordpress/changelog/post_answer/', 0, 'changelog', '', 0),
(1739, 1, '2020-11-28 10:54:06', '2020-11-28 10:54:06', 'You answered on question \"What&#8217;s the most powerful/inspirational quote you&#8217;ve ever heard?\"', 'post_answer', '', 'publish', 'open', 'closed', '', 'post_answer-2', '', '', '2020-11-28 10:54:06', '2020-11-28 10:54:06', '', 1737, 'http://localhost/wordpress/changelog/post_answer-2/', 0, 'changelog', '', 0),
(1740, 10, '2014-06-05 02:54:18', '2014-06-05 02:54:18', '<span style=\"color: #333333; font-family: Georgia, Times, \'Times New Roman\', serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 21px; text-align: start; text-indent: 0px; float: none;\">Shutter Island</span><br style=\"font-size: 15px; line-height: 21px; color: #333333; font-family: Georgia, Times, \'Times New Roman\', serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; text-align: start; text-indent: 0px;\" /><br style=\"font-size: 15px; line-height: 21px; color: #333333; font-family: Georgia, Times, \'Times New Roman\', serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; text-align: start; text-indent: 0px;\" /><div style=\"color: #333333; font-family: Georgia, Times, \'Times New Roman\', serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 21px; text-align: start; text-indent: 0px;\">[img]http://demo.enginethemes.com/qaengine/wp-content/uploads/2014/06/main-qimg-ee8ca6ff152963f07e70f97cf7d50274.jpg[/img]</div><br style=\"font-size: 15px; line-height: 21px; color: #333333; font-family: Georgia, Times, \'Times New Roman\', serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; text-align: start; text-indent: 0px;\" /><span style=\"color: #333333; font-family: Georgia, Times, \'Times New Roman\', serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 21px; text-align: start; text-indent: 0px; float: none;\">The ending was totally unpredictable. It made my day !</span><br style=\"font-size: 15px; line-height: 21px; color: #333333; font-family: Georgia, Times, \'Times New Roman\', serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; text-align: start; text-indent: 0px;\" /><br style=\"font-size: 15px; line-height: 21px; color: #333333; font-family: Georgia, Times, \'Times New Roman\', serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; text-align: start; text-indent: 0px;\" /><span style=\"color: #333333; font-family: Georgia, Times, \'Times New Roman\', serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 21px; text-align: start; text-indent: 0px; float: none;\">If I tell you why then It would be a spoiler.  You better watch this one.<span class=\"Apple-converted-space\"> </span></span><br style=\"font-size: 15px; line-height: 21px; color: #333333; font-family: Georgia, Times, \'Times New Roman\', serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; text-align: start; text-indent: 0px;\" /><span style=\"color: #333333; font-family: Georgia, Times, \'Times New Roman\', serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 21px; text-align: start; text-indent: 0px; float: none;\">and<span class=\"Apple-converted-space\"> </span></span><span class=\"qlink_container\" style=\"color: #333333; font-family: Georgia, Times, \'Times New Roman\', serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 21px; text-align: start; text-indent: 0px;\"><a class=\"external_link\" href=\"http://www.imdb.com/name/nm0000138/?ref_=tt_cl_t1\" target=\"_blank\" rel=\"noopener noreferrer\">Leonardo DiCaprio</a></span><span style=\"color: #333333; font-family: Georgia, Times, \'Times New Roman\', serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 21px; text-align: start; text-indent: 0px; float: none;\">,<span class=\"Apple-converted-space\"> </span></span><span class=\"qlink_container\" style=\"color: #333333; font-family: Georgia, Times, \'Times New Roman\', serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 21px; text-align: start; text-indent: 0px;\"><a class=\"external_link\" href=\"http://www.imdb.com/name/nm0749263/?ref_=tt_cl_t2\" target=\"_blank\" rel=\"noopener noreferrer\">Mark Ruffalo</a></span><span style=\"color: #333333; font-family: Georgia, Times, \'Times New Roman\', serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 21px; text-align: start; text-indent: 0px; float: none;\">,<span class=\"Apple-converted-space\"> </span></span><span class=\"qlink_container\" style=\"color: #333333; font-family: Georgia, Times, \'Times New Roman\', serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 21px; text-align: start; text-indent: 0px;\"><a class=\"external_link\" href=\"http://www.imdb.com/name/nm0001426/?ref_=tt_cl_t3\" target=\"_blank\" rel=\"noopener noreferrer\">Ben Kingsley</a></span><span style=\"color: #333333; font-family: Georgia, Times, \'Times New Roman\', serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 21px; text-align: start; text-indent: 0px; float: none;\">... So worth a shot!<span class=\"Apple-converted-space\"> </span></span><br style=\"font-size: 15px; line-height: 21px; color: #333333; font-family: Georgia, Times, \'Times New Roman\', serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; text-align: start; text-indent: 0px;\" /><br style=\"font-size: 15px; line-height: 21px; color: #333333; font-family: Georgia, Times, \'Times New Roman\', serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; text-align: start; text-indent: 0px;\" /><span class=\"qlink_container\" style=\"color: #333333; font-family: Georgia, Times, \'Times New Roman\', serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 21px; text-align: start; text-indent: 0px;\"><a class=\"external_link\" href=\"http://www.imdb.com/title/tt1130884/\" target=\"_blank\" rel=\"noopener noreferrer\">Shutter Island (2010)</a></span>', 'RE: Which movie has the most unpredictable ending?', '', 'publish', 'open', 'open', '', 're-which-movie-has-the-most-unpredictable-ending', '', '', '2014-06-05 02:54:18', '2014-06-05 02:54:18', '', 87, 'http://demo.enginethemes.com/qaengine/answer/re-which-movie-has-the-most-unpredictable-ending/', 0, 'answer', '', 0),
(1741, 10, '2020-11-28 10:54:06', '2020-11-28 10:54:06', 'You answered on question \"Which movie has the most unpredictable ending?\"', 'post_answer', '', 'publish', 'open', 'closed', '', 'post_answer-3', '', '', '2020-11-28 10:54:06', '2020-11-28 10:54:06', '', 1740, 'http://localhost/wordpress/changelog/post_answer-3/', 0, 'changelog', '', 0),
(1742, 1, '2020-11-28 10:54:07', '2020-11-28 10:54:07', 'You answered on question \"Which movie has the most unpredictable ending?\"', 'post_answer', '', 'publish', 'open', 'closed', '', 'post_answer-4', '', '', '2020-11-28 10:54:07', '2020-11-28 10:54:07', '', 1740, 'http://localhost/wordpress/changelog/post_answer-4/', 0, 'changelog', '', 0),
(1743, 9, '2014-06-05 03:03:32', '2014-06-05 03:03:32', '<p style=\"color: #5f6f81;\"><i style=\"color: #333333;\">Learn Logo Design</i></p>\n\n<ul style=\"color: #333333;\">\n	<li>Learn how to make a logo that doesn’t suck: <span class=\"qlink_container\"><a class=\"external_link\" style=\"color: #155fad;\" href=\"http://www.amazon.com/Logo-Design-Love-Creating-Identities/dp/0321660765/ref=sr_1_1?ie=UTF8&amp;qid=1371614766&amp;sr=8-1&amp;keywords=logo+design+love\" target=\"_blank\" data-tooltip=\"attached\" rel=\"noopener noreferrer\">Logo Design Love</a></span></li>\n	<li>You’ll want to take it a step further than a logo though. Learn to create a consistent brand – from the website to the business cards. Check out this book, <span class=\"qlink_container\"><a class=\"external_link\" style=\"color: #155fad;\" href=\"http://www.amazon.com/Designing-Brand-Identity-Essential-Branding/dp/1118099206/ref=sr_1_1?s=books&amp;ie=UTF8&amp;qid=1371615083&amp;sr=1-1&amp;keywords=designing+brand+identity\" target=\"_blank\" rel=\"noopener noreferrer\">Designing Brand Identity</a></span>.</li>\n</ul>\n<p style=\"color: #5f6f81;\"><i style=\"color: #333333;\">Learn Mobile App Design</i></p>\n\n<ul style=\"color: #333333;\">\n	<li>Start with <span class=\"qlink_container\"><a class=\"external_link\" style=\"color: #155fad;\" href=\"http://psd.tutsplus.com/tutorials/interface-tutorials/mobile-ui-how-to-redesign-the-spendometer-iphone-app-part-1/\" target=\"_blank\" rel=\"noopener noreferrer\">this tutorial</a></span> to get your feet wet on visual design for mobile apps.</li>\n	<li>Read this short but very comprehensive and well-thought out book on iPhone design: <span class=\"qlink_container\"><a class=\"external_link\" style=\"color: #155fad;\" href=\"http://www.amazon.com/Tapworthy-Designing-Great-iPhone-Apps/dp/1449381650/ref=sr_1_1?ie=UTF8&amp;qid=1371619592&amp;sr=8-1&amp;keywords=tapworthy\" target=\"_blank\" rel=\"noopener noreferrer\">Tapworthy</a></span>. It will teach you how to make an app that not only looks good but is easy to use.</li>\n	<li>Geek out on the apps on your phone. Critique them. What works and what doesn’t?</li>\n</ul>\n<p style=\"color: #5f6f81;\"><i style=\"color: #333333;\">Learn Web Design</i></p>\n\n<ul style=\"color: #333333;\">\n	<li>Read <span class=\"qlink_container\"><a class=\"external_link\" style=\"color: #155fad;\" href=\"http://www.amazon.com/Dont-Make-Me-Think-Usability/dp/0321344758/ref=sr_1_1?ie=UTF8&amp;qid=1371615719&amp;sr=8-1&amp;keywords=don%27t+make+me+think\" target=\"_blank\" rel=\"noopener noreferrer\">Don’t Make Me Think</a></span> to learn how to make a website that people find easy to use and navigate.</li>\n	<li>Read <span class=\"qlink_container\"><a class=\"external_link\" style=\"color: #155fad;\" href=\"http://www.amazon.com/Principles-Beautiful-Web-Design/dp/098057689X/ref=sr_1_1?s=books&amp;ie=UTF8&amp;qid=1371615763&amp;sr=1-1&amp;keywords=principles+of+beautiful+web+design\" target=\"_blank\" rel=\"noopener noreferrer\">The Principles of Beautiful Web Design</a></span> if you want help making a website look good.</li>\n	<li>Make a list of the websites you think are beautifully designed. Note what they have in common. Some great examples are on <span class=\"qlink_container\"><a class=\"external_link\" style=\"color: #155fad;\" href=\"http://siteinspire.com/\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">SiteInspire</a></span>.</li>\n</ul>\n<p style=\"color: #5f6f81;\"><br style=\"color: #333333;\" /><span style=\"color: #333333;\">Now for the hairy question of whether you need to know HTML/CSS as a designer: It depends on the job. Knowing it will definitely give you an edge in the job market. Even if you don’t want to be a web developer, it helps to know some basics. That way you know what is possible and what isn’t.</span><br style=\"color: #333333;\" /><span style=\"color: #333333;\">There are so many great resources to learn HTML and CSS:</span></p>\n\n<ul style=\"color: #333333;\">\n	<li>My favorite free one is <span class=\"qlink_container\"><a class=\"external_link\" style=\"color: #155fad;\" href=\"http://webdesign.tutsplus.com/\" target=\"_blank\" rel=\"noopener noreferrer\">Web Design Tuts</a></span>.</li>\n	<li>My favorite paid one (pretty affordable at $25/month) is <span class=\"qlink_container\"><a class=\"external_link\" style=\"color: #155fad;\" href=\"http://teamtreehouse.com/\" target=\"_blank\" rel=\"nofollow noopener noreferrer\">Treehouse</a></span>. If you’re starting from the beginning and want someone to explain things clearly and comprehensively, splurge for Treehouse tutorials.</li>\n</ul>\n<p style=\"color: #5f6f81;\"></p>', 'RE: How do you get a job as a designer without going to design school?', '', 'publish', 'open', 'open', '', 're-how-do-you-get-a-job-as-a-designer-without-going-to-design-school', '', '', '2014-06-05 03:03:32', '2014-06-05 03:03:32', '', 42, 'http://demo.enginethemes.com/qaengine/answer/re-how-do-you-get-a-job-as-a-designer-without-going-to-design-school/', 0, 'answer', '', 0),
(1744, 9, '2020-11-28 10:54:08', '2020-11-28 10:54:08', 'You answered on question \"How do you get a job as a designer without going to design school?\"', 'post_answer', '', 'publish', 'open', 'closed', '', 'post_answer-5', '', '', '2020-11-28 10:54:08', '2020-11-28 10:54:08', '', 1743, 'http://localhost/wordpress/changelog/post_answer-5/', 0, 'changelog', '', 0),
(1745, 1, '2020-11-28 10:54:08', '2020-11-28 10:54:08', 'You answered on question \"How do you get a job as a designer without going to design school?\"', 'post_answer', '', 'publish', 'open', 'closed', '', 'post_answer-6', '', '', '2020-11-28 10:54:08', '2020-11-28 10:54:08', '', 1743, 'http://localhost/wordpress/changelog/post_answer-6/', 0, 'changelog', '', 0),
(1746, 11, '2020-11-28 10:54:08', '2020-11-28 10:54:08', 'You answered on question \"What will be the next big thing after Facebook and Twitter?\"', 'post_answer', '', 'publish', 'open', 'closed', '', 'post_answer-7', '', '', '2020-11-28 10:54:08', '2020-11-28 10:54:08', '', 55, 'http://localhost/wordpress/changelog/post_answer-7/', 0, 'changelog', '', 0),
(1747, 1, '2020-11-28 10:54:09', '2020-11-28 10:54:09', 'You answered on question \"What will be the next big thing after Facebook and Twitter?\"', 'post_answer', '', 'publish', 'open', 'closed', '', 'post_answer-8', '', '', '2020-11-28 10:54:09', '2020-11-28 10:54:09', '', 55, 'http://localhost/wordpress/changelog/post_answer-8/', 0, 'changelog', '', 0),
(1748, 9, '2014-06-05 04:15:40', '2014-06-05 04:15:40', '<span style=\"color: #333333;\">A fun thing happened to me when I became a professional musician: </span><b style=\"color: #333333;\">I started hearing really high-level music for free all the time</b><span style=\"color: #333333;\">. This is the secret that professional musicians don\'t want to tell you. Sure, we want you to pay us, but we don\'t really pay to see stuff anymore. I spend all day in rehearsals, listening to great artists make great music, and if, in the evenings, my ears aren\'t bleeding yet, I can usually get comp tickets to whatever my friends are performing in.</span>', 'RE: Why isn\'t music free?', '', 'publish', 'open', 'open', '', 're-why-isnt-music-free', '', '', '2014-06-05 04:15:40', '2014-06-05 04:15:40', '', 71, 'http://demo.enginethemes.com/qaengine/answer/re-why-isnt-music-free/', 0, 'answer', '', 1),
(1749, 9, '2020-11-28 10:54:09', '2020-11-28 10:54:09', 'You answered on question \"Why isn&#8217;t music free?\"', 'post_answer', '', 'publish', 'open', 'closed', '', 'post_answer-9', '', '', '2020-11-28 10:54:09', '2020-11-28 10:54:09', '', 1748, 'http://localhost/wordpress/changelog/post_answer-9/', 0, 'changelog', '', 0),
(1750, 1, '2020-11-28 10:54:09', '2020-11-28 10:54:09', 'You answered on question \"Why isn&#8217;t music free?\"', 'post_answer', '', 'publish', 'open', 'closed', '', 'post_answer-10', '', '', '2020-11-28 10:54:09', '2020-11-28 10:54:09', '', 1748, 'http://localhost/wordpress/changelog/post_answer-10/', 0, 'changelog', '', 0),
(1751, 9, '2020-11-28 10:54:10', '2020-11-28 10:54:10', 'Your answer on question \"Why isn&#8217;t music free?\" was voted up, earned 10 points', 'a_vote_up', '', 'publish', 'open', 'closed', '', 'a_vote_up', '', '', '2020-11-28 10:54:10', '2020-11-28 10:54:10', '', 1748, 'http://localhost/wordpress/changelog/a_vote_up/', 0, 'changelog', '', 0),
(1752, 1, '2020-11-28 10:54:10', '2020-11-28 10:54:10', 'Your answer on question \"Why isn&#8217;t music free?\" was voted up, earned 10 points', 'a_vote_up', '', 'publish', 'open', 'closed', '', 'a_vote_up-2', '', '', '2020-11-28 10:54:10', '2020-11-28 10:54:10', '', 1748, 'http://localhost/wordpress/changelog/a_vote_up-2/', 0, 'changelog', '', 0),
(1753, 12, '2014-06-05 04:16:18', '2014-06-05 04:16:18', '<b style=\"font-weight: bold;color: #333333;font-family: Georgia, Times, \'Times New Roman\', serif;font-size: 15px;font-style: normal;font-variant: normal;letter-spacing: normal;line-height: 21px;text-align: start;text-indent: 0px\">In short, music costs money for you because there are people who are better than you at it.<span class=\"Apple-converted-space\"> </span></b><span style=\"color: #333333;font-family: Georgia, Times, \'Times New Roman\', serif;font-size: 15px;font-style: normal;font-variant: normal;font-weight: normal;letter-spacing: normal;line-height: 21px;text-align: start;text-indent: 0px;float: none\">This is basically the same reason why your car (probably) wasn\'t free: you wanted a car that actually functioned at a high level, and the one you could have built with your bare hands out of materials you\'d gathered yourself just wasn\'t good enough. So you bought the higher-level work of a professional. Nobody charges you for whistling melodies you\'ve made up to yourself--but if you want something that\'s been vetted as the highest-level work, by millions of people, you need to pay for it or learn how to do it yourself.</span>', 'RE: Why isn\'t music free?', '', 'publish', 'open', 'open', '', 're-why-isnt-music-free-2', '', '', '2014-06-05 04:16:18', '2014-06-05 04:16:18', '', 71, 'http://demo.enginethemes.com/qaengine/answer/re-why-isnt-music-free-2/', 0, 'answer', '', 0),
(1754, 12, '2020-11-28 10:54:10', '2020-11-28 10:54:10', 'You answered on question \"Why isn&#8217;t music free?\"', 'post_answer', '', 'publish', 'open', 'closed', '', 'post_answer-11', '', '', '2020-11-28 10:54:10', '2020-11-28 10:54:10', '', 1753, 'http://localhost/wordpress/changelog/post_answer-11/', 0, 'changelog', '', 0),
(1755, 1, '2020-11-28 10:54:10', '2020-11-28 10:54:10', 'You answered on question \"Why isn&#8217;t music free?\"', 'post_answer', '', 'publish', 'open', 'closed', '', 'post_answer-12', '', '', '2020-11-28 10:54:10', '2020-11-28 10:54:10', '', 1753, 'http://localhost/wordpress/changelog/post_answer-12/', 0, 'changelog', '', 0),
(1756, 10, '2014-06-05 04:21:55', '2014-06-05 04:21:55', '<span style=\"color: #545454;font-family: Helvetica, arial, sans-serif;font-size: 16px;font-style: normal;font-variant: normal;font-weight: normal;letter-spacing: normal;line-height: 25px;text-align: left;text-indent: 0px;float: none;background-color: #ffffff\">It takes money to make money. Take a certain amount of money out of your paycheck as soon as you get paid and put it in a savings account, to be used for future investments or to simply collect interest.</span>', 'RE: How to become a billionaire in the next 5 years?', '', 'publish', 'open', 'open', '', 're-how-to-become-a-billionaire-in-the-next-5-years', '', '', '2014-06-05 04:21:55', '2014-06-05 04:21:55', '', 119, 'http://demo.enginethemes.com/qaengine/answer/re-how-to-become-a-billionaire-in-the-next-5-years/', 0, 'answer', '', 0),
(1757, 10, '2020-11-28 10:54:10', '2020-11-28 10:54:10', 'You answered on question \"How to become a billionaire in the next 5 years?\"', 'post_answer', '', 'publish', 'open', 'closed', '', 'post_answer-13', '', '', '2020-11-28 10:54:10', '2020-11-28 10:54:10', '', 1756, 'http://localhost/wordpress/changelog/post_answer-13/', 0, 'changelog', '', 0),
(1758, 1, '2020-11-28 10:54:11', '2020-11-28 10:54:11', 'You answered on question \"How to become a billionaire in the next 5 years?\"', 'post_answer', '', 'publish', 'open', 'closed', '', 'post_answer-14', '', '', '2020-11-28 10:54:11', '2020-11-28 10:54:11', '', 1756, 'http://localhost/wordpress/changelog/post_answer-14/', 0, 'changelog', '', 0),
(1759, 11, '2014-06-05 04:22:44', '2014-06-05 04:22:44', '<span style=\"color: #545454;font-family: Helvetica, arial, sans-serif;font-size: 16px;font-style: normal;font-variant: normal;font-weight: normal;letter-spacing: normal;line-height: 25px;text-align: left;text-indent: 0px;float: none;background-color: #ffffff\">Available from most financial institutions, IRAs are customizable financial plans that you can set up to start saving for the future. If you want to end up saving an amount of money that ends with nine zeroes, you need to do this as soon as possible. You\'ll accrue interest on your savings and elect to take an amount of risk in investments to make money off the money you have.</span>', 'RE: How to become a billionaire in the next 5 years?', '', 'publish', 'open', 'open', '', 're-how-to-become-a-billionaire-in-the-next-5-years-2', '', '', '2014-06-05 04:22:44', '2014-06-05 04:22:44', '', 119, 'http://demo.enginethemes.com/qaengine/answer/re-how-to-become-a-billionaire-in-the-next-5-years-2/', 0, 'answer', '', 0),
(1760, 11, '2020-11-28 10:54:12', '2020-11-28 10:54:12', 'You answered on question \"How to become a billionaire in the next 5 years?\"', 'post_answer', '', 'publish', 'open', 'closed', '', 'post_answer-15', '', '', '2020-11-28 10:54:12', '2020-11-28 10:54:12', '', 1759, 'http://localhost/wordpress/changelog/post_answer-15/', 0, 'changelog', '', 0),
(1761, 1, '2020-11-28 10:54:12', '2020-11-28 10:54:12', 'You answered on question \"How to become a billionaire in the next 5 years?\"', 'post_answer', '', 'publish', 'open', 'closed', '', 'post_answer-16', '', '', '2020-11-28 10:54:12', '2020-11-28 10:54:12', '', 1759, 'http://localhost/wordpress/changelog/post_answer-16/', 0, 'changelog', '', 0),
(1762, 12, '2014-06-05 04:23:22', '2014-06-05 04:23:22', '<span style=\"color: #545454;font-family: Helvetica, arial, sans-serif;font-size: 16px;font-style: normal;font-variant: normal;font-weight: normal;letter-spacing: normal;line-height: 25px;text-align: left;text-indent: 0px;float: none;background-color: #ffffff\">It\'s hard to get ahead if you have debts of any kind hanging over your head. Student loans and credit card debt needs to be paid off as soon as possible. The average annual percentage rates vary anywhere between 20% and 30% which means the balance will end up keep growing if you don\'t get on top of it sooner rather than later.</span>', 'RE: How to become a billionaire in the next 5 years?', '', 'publish', 'open', 'open', '', 're-how-to-become-a-billionaire-in-the-next-5-years-3', '', '', '2014-06-05 04:23:22', '2014-06-05 04:23:22', '', 119, 'http://demo.enginethemes.com/qaengine/answer/re-how-to-become-a-billionaire-in-the-next-5-years-3/', 0, 'answer', '', 0),
(1763, 12, '2020-11-28 10:54:13', '2020-11-28 10:54:13', 'You answered on question \"How to become a billionaire in the next 5 years?\"', 'post_answer', '', 'publish', 'open', 'closed', '', 'post_answer-17', '', '', '2020-11-28 10:54:13', '2020-11-28 10:54:13', '', 1762, 'http://localhost/wordpress/changelog/post_answer-17/', 0, 'changelog', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1764, 1, '2020-11-28 10:54:13', '2020-11-28 10:54:13', 'You answered on question \"How to become a billionaire in the next 5 years?\"', 'post_answer', '', 'publish', 'open', 'closed', '', 'post_answer-18', '', '', '2020-11-28 10:54:13', '2020-11-28 10:54:13', '', 1762, 'http://localhost/wordpress/changelog/post_answer-18/', 0, 'changelog', '', 0),
(1765, 10, '2014-06-05 07:00:25', '2014-06-05 07:00:25', '[img]http://demo.enginethemes.com/qaengine/wp-content/uploads/2014/06/1976jmbj3zkiujpg.jpg[/img]\n\nTouristEye is a little different; instead of helping you organize your trip or helping you find the best prices and options for your trip, it helps you build a \"wishlist\" of destinations where you\'d like to travel and experiences you\'d like to have. It doesn\'t have to be as fancy as a once-in-a-lifetime trip, either: the app is great for planning your annual family vacation (if you get to take one, that is), or if you want to just take a few day trips here or there. Of course, you can build your bucket-list of places you want to see before you die, and you can share that list with friends or family and collaborate with them on them. They can add waypoints and things to check out in the area, specific things to do when you\'re there, and together you can plan a trip together. Then, when you\'re on the road, you can look back over those plans with detailed information, links, maps, and more.', 'RE: What are the best mobile apps for traveling?', '', 'publish', 'open', 'open', '', 're-what-are-the-best-mobile-apps-for-traveling', '', '', '2014-06-05 07:00:25', '2014-06-05 07:00:25', '', 126, 'http://demo.enginethemes.com/qaengine/answer/re-what-are-the-best-mobile-apps-for-traveling/', 0, 'answer', '', 0),
(1766, 10, '2020-11-28 10:54:13', '2020-11-28 10:54:13', 'You answered on question \"What are the best mobile apps for traveling?\"', 'post_answer', '', 'publish', 'open', 'closed', '', 'post_answer-19', '', '', '2020-11-28 10:54:13', '2020-11-28 10:54:13', '', 1765, 'http://localhost/wordpress/changelog/post_answer-19/', 0, 'changelog', '', 0),
(1767, 1, '2020-11-28 10:54:14', '2020-11-28 10:54:14', 'You answered on question \"What are the best mobile apps for traveling?\"', 'post_answer', '', 'publish', 'open', 'closed', '', 'post_answer-20', '', '', '2020-11-28 10:54:14', '2020-11-28 10:54:14', '', 1765, 'http://localhost/wordpress/changelog/post_answer-20/', 0, 'changelog', '', 0),
(1769, 9, '2020-11-28 10:54:17', '2020-11-28 10:54:17', 'Your answer on question \"I have bought a Samsung Galaxy 3 (parallel imported, aka GT-I5801). Can I remove the unusable bundled proprietary applications without breaking the thing? (How?)\" was voted up, earned 10 points', 'a_vote_up', '', 'publish', 'open', 'closed', '', 'a_vote_up-3', '', '', '2020-11-28 10:54:17', '2020-11-28 10:54:17', '', 1768, 'http://localhost/wordpress/changelog/a_vote_up-3/', 0, 'changelog', '', 0),
(1770, 1, '2020-11-28 10:54:17', '2020-11-28 10:54:17', 'Your answer on question \"I have bought a Samsung Galaxy 3 (parallel imported, aka GT-I5801). Can I remove the unusable bundled proprietary applications without breaking the thing? (How?)\" was voted up, earned 10 points', 'a_vote_up', '', 'publish', 'open', 'closed', '', 'a_vote_up-4', '', '', '2020-11-28 10:54:17', '2020-11-28 10:54:17', '', 1768, 'http://localhost/wordpress/changelog/a_vote_up-4/', 0, 'changelog', '', 0),
(1771, 11, '2014-06-05 08:16:27', '2014-06-05 08:16:27', '<strong>FlightTrack</strong>\n\n<span style=\"color: #333333;font-family: Arial, sans-serif;font-size: 14px;font-style: normal;font-variant: normal;font-weight: normal;letter-spacing: normal;line-height: 18px;text-align: start;text-indent: 0px;float: none;background-color: #ffffff\">Follow the path of thousands of international flights on slick, zoomable maps, with detailed information on departure gates, delays and (heaven forbid) cancellations. Great for those anticipating the arrival of loved ones, or particularly nerdy train-spotters looking to up their game.</span><br style=\"color: #333333;font-family: Arial, sans-serif;font-size: 14px;font-style: normal;font-variant: normal;font-weight: normal;letter-spacing: normal;line-height: 18px;text-align: start;text-indent: 0px;background-color: #ffffff\" /><em style=\"color: #333333;font-family: Arial, sans-serif;font-size: 14px;font-variant: normal;font-weight: normal;letter-spacing: normal;line-height: 18px;text-align: start;text-indent: 0px;background-color: #ffffff\">Available on iPhone (£2.99), iPad (£2.99), Android (£2.99) and Windows Phone (£3.99)</em>\n\n<strong>\n</strong>', 'RE: What are the best mobile apps for traveling?', '', 'publish', 'open', 'open', '', 're-what-are-the-best-mobile-apps-for-traveling-2', '', '', '2014-06-05 08:16:27', '2014-06-05 08:16:27', '', 126, 'http://demo.enginethemes.com/qaengine/answer/re-what-are-the-best-mobile-apps-for-traveling-2/', 0, 'answer', '', 0),
(1772, 11, '2020-11-28 10:54:18', '2020-11-28 10:54:18', 'You answered on question \"What are the best mobile apps for traveling?\"', 'post_answer', '', 'publish', 'open', 'closed', '', 'post_answer-21', '', '', '2020-11-28 10:54:18', '2020-11-28 10:54:18', '', 1771, 'http://localhost/wordpress/changelog/post_answer-21/', 0, 'changelog', '', 0),
(1773, 1, '2020-11-28 10:54:19', '2020-11-28 10:54:19', 'You answered on question \"What are the best mobile apps for traveling?\"', 'post_answer', '', 'publish', 'open', 'closed', '', 'post_answer-22', '', '', '2020-11-28 10:54:19', '2020-11-28 10:54:19', '', 1771, 'http://localhost/wordpress/changelog/post_answer-22/', 0, 'changelog', '', 0),
(1774, 11, '2014-06-05 08:17:29', '2014-06-05 08:17:29', '<strong>WeatherPro\n\n<span style=\"color: #333333;font-family: Arial, sans-serif;font-size: 14px;font-style: normal;font-variant: normal;font-weight: normal;letter-spacing: normal;line-height: 18px;text-align: start;text-indent: 0px;float: none;background-color: #ffffff\">An intuitive app offering weather reports for well over two million geographical locations, feeding in everything from cloud formations and atmospheric pressure to wind speed and humidity, all in enough detail to leave Michael Fish clammy-palmed with excitement. It’s also accurate to the point of clairvoyance, so if you’re travelling to Berlin and it predicts rain, pack your best umbrella.</span><br style=\"color: #333333;font-family: Arial, sans-serif;font-size: 14px;font-style: normal;font-variant: normal;font-weight: normal;letter-spacing: normal;line-height: 18px;text-align: start;text-indent: 0px;background-color: #ffffff\" /><em style=\"color: #333333;font-family: Arial, sans-serif;font-size: 14px;font-variant: normal;font-weight: normal;letter-spacing: normal;line-height: 18px;text-align: start;text-indent: 0px;background-color: #ffffff\">Available on iPhone (£2.49), Android (£1.99) and Windows Phone (£2.29)</em>\n</strong>', 'RE: What are the best mobile apps for traveling?', '', 'publish', 'open', 'open', '', 're-what-are-the-best-mobile-apps-for-traveling-3', '', '', '2014-06-05 08:17:29', '2014-06-05 08:17:29', '', 126, 'http://demo.enginethemes.com/qaengine/answer/re-what-are-the-best-mobile-apps-for-traveling-3/', 0, 'answer', '', 0),
(1775, 11, '2020-11-28 10:54:19', '2020-11-28 10:54:19', 'You answered on question \"What are the best mobile apps for traveling?\"', 'post_answer', '', 'publish', 'open', 'closed', '', 'post_answer-23', '', '', '2020-11-28 10:54:19', '2020-11-28 10:54:19', '', 1774, 'http://localhost/wordpress/changelog/post_answer-23/', 0, 'changelog', '', 0),
(1776, 1, '2020-11-28 10:54:20', '2020-11-28 10:54:20', 'You answered on question \"What are the best mobile apps for traveling?\"', 'post_answer', '', 'publish', 'open', 'closed', '', 'post_answer-24', '', '', '2020-11-28 10:54:20', '2020-11-28 10:54:20', '', 1774, 'http://localhost/wordpress/changelog/post_answer-24/', 0, 'changelog', '', 0),
(1777, 13, '2014-06-05 08:19:57', '2014-06-05 08:19:57', '<strong>JetLag Genie</strong>\n\n<span style=\"color: #333333;font-family: Arial, sans-serif;font-size: 14px;font-style: normal;font-variant: normal;font-weight: normal;letter-spacing: normal;line-height: 18px;text-align: start;text-indent: 0px;float: none;background-color: #ffffff\">\nThere are plenty of theories floating about concerning the best methods for beating jetlag, very few of which come backed up with any serious scientific clout. Still, it’s generally agreed that gradually altering your sleeping habits before a trip is beneficial, and this clever app will help you do just that. Input your travel dates, destination and usual sleeping times and it’ll come back with personalised alarm clocks to soften the blow when you wake up on Tuesday afternoon convinced it’s still Monday morning.</span><br style=\"color: #333333;font-family: Arial, sans-serif;font-size: 14px;font-style: normal;font-variant: normal;font-weight: normal;letter-spacing: normal;line-height: 18px;text-align: start;text-indent: 0px;background-color: #ffffff\" /><em style=\"color: #333333;font-family: Arial, sans-serif;font-size: 14px;font-variant: normal;font-weight: normal;letter-spacing: normal;line-height: 18px;text-align: start;text-indent: 0px;background-color: #ffffff\">Available on iPhone (£1.99)</em>', 'RE: What are the best mobile apps for traveling?', '', 'publish', 'open', 'open', '', 're-what-are-the-best-mobile-apps-for-traveling-4', '', '', '2014-06-05 08:19:57', '2014-06-05 08:19:57', '', 126, 'http://demo.enginethemes.com/qaengine/answer/re-what-are-the-best-mobile-apps-for-traveling-4/', 0, 'answer', '', 2),
(1778, 13, '2020-11-28 10:54:20', '2020-11-28 10:54:20', 'You answered on question \"What are the best mobile apps for traveling?\"', 'post_answer', '', 'publish', 'open', 'closed', '', 'post_answer-25', '', '', '2020-11-28 10:54:20', '2020-11-28 10:54:20', '', 1777, 'http://localhost/wordpress/changelog/post_answer-25/', 0, 'changelog', '', 0),
(1779, 1, '2020-11-28 10:54:21', '2020-11-28 10:54:21', 'You answered on question \"What are the best mobile apps for traveling?\"', 'post_answer', '', 'publish', 'open', 'closed', '', 'post_answer-26', '', '', '2020-11-28 10:54:21', '2020-11-28 10:54:21', '', 1777, 'http://localhost/wordpress/changelog/post_answer-26/', 0, 'changelog', '', 0),
(1780, 13, '2020-11-28 10:54:21', '2020-11-28 10:54:21', 'Your answer on question \"What are the best mobile apps for traveling?\" was voted up, earned 10 points', 'a_vote_up', '', 'publish', 'open', 'closed', '', 'a_vote_up-5', '', '', '2020-11-28 10:54:21', '2020-11-28 10:54:21', '', 1777, 'http://localhost/wordpress/changelog/a_vote_up-5/', 0, 'changelog', '', 0),
(1781, 1, '2020-11-28 10:54:21', '2020-11-28 10:54:21', 'Your answer on question \"What are the best mobile apps for traveling?\" was voted up, earned 10 points', 'a_vote_up', '', 'publish', 'open', 'closed', '', 'a_vote_up-6', '', '', '2020-11-28 10:54:21', '2020-11-28 10:54:21', '', 1777, 'http://localhost/wordpress/changelog/a_vote_up-6/', 0, 'changelog', '', 0),
(1782, 13, '2020-11-28 10:54:22', '2020-11-28 10:54:22', 'Your answer on question \"What are the best mobile apps for traveling?\" was voted up, earned 10 points', 'a_vote_up', '', 'publish', 'open', 'closed', '', 'a_vote_up-7', '', '', '2020-11-28 10:54:22', '2020-11-28 10:54:22', '', 1777, 'http://localhost/wordpress/changelog/a_vote_up-7/', 0, 'changelog', '', 0),
(1783, 1, '2020-11-28 10:54:22', '2020-11-28 10:54:22', 'Your answer on question \"What are the best mobile apps for traveling?\" was voted up, earned 10 points', 'a_vote_up', '', 'publish', 'open', 'closed', '', 'a_vote_up-8', '', '', '2020-11-28 10:54:22', '2020-11-28 10:54:22', '', 1777, 'http://localhost/wordpress/changelog/a_vote_up-8/', 0, 'changelog', '', 0),
(1784, 13, '2014-06-05 08:20:31', '2014-06-05 08:20:31', '<strong>XE Currency\n\n<span style=\"color: #333333;font-family: Arial, sans-serif;font-size: 14px;font-style: normal;font-variant: normal;font-weight: normal;letter-spacing: normal;line-height: 18px;text-align: start;text-indent: 0px;float: none;background-color: #ffffff\">Don’t bother paying up for one of the many currency conversion apps out there in the digital hinterland – this freebie is slick, easy to use, and – best of all, since it uses live currency rates – completely accurate. It’s been downloaded more than five million times to date, so don’t even think about hopping on a plane without it.</span><br style=\"color: #333333;font-family: Arial, sans-serif;font-size: 14px;font-style: normal;font-variant: normal;font-weight: normal;letter-spacing: normal;line-height: 18px;text-align: start;text-indent: 0px;background-color: #ffffff\" /><em style=\"color: #333333;font-family: Arial, sans-serif;font-size: 14px;font-variant: normal;font-weight: normal;letter-spacing: normal;line-height: 18px;text-align: start;text-indent: 0px;background-color: #ffffff\">Available on iPhone (free), iPad (free), Android (free) and Windows Phone (free)</em>\n</strong>', 'RE: What are the best mobile apps for traveling?', '', 'publish', 'open', 'open', '', 're-what-are-the-best-mobile-apps-for-traveling-5', '', '', '2014-06-05 08:20:31', '2014-06-05 08:20:31', '', 126, 'http://demo.enginethemes.com/qaengine/answer/re-what-are-the-best-mobile-apps-for-traveling-5/', 0, 'answer', '', 1),
(1785, 13, '2020-11-28 10:54:23', '2020-11-28 10:54:23', 'You answered on question \"What are the best mobile apps for traveling?\"', 'post_answer', '', 'publish', 'open', 'closed', '', 'post_answer-27', '', '', '2020-11-28 10:54:23', '2020-11-28 10:54:23', '', 1784, 'http://localhost/wordpress/changelog/post_answer-27/', 0, 'changelog', '', 0),
(1786, 1, '2020-11-28 10:54:23', '2020-11-28 10:54:23', 'You answered on question \"What are the best mobile apps for traveling?\"', 'post_answer', '', 'publish', 'open', 'closed', '', 'post_answer-28', '', '', '2020-11-28 10:54:23', '2020-11-28 10:54:23', '', 1784, 'http://localhost/wordpress/changelog/post_answer-28/', 0, 'changelog', '', 0),
(1787, 13, '2020-11-28 10:54:24', '2020-11-28 10:54:24', 'Your answer on question \"What are the best mobile apps for traveling?\" was voted up, earned 10 points', 'a_vote_up', '', 'publish', 'open', 'closed', '', 'a_vote_up-9', '', '', '2020-11-28 10:54:24', '2020-11-28 10:54:24', '', 1784, 'http://localhost/wordpress/changelog/a_vote_up-9/', 0, 'changelog', '', 0),
(1788, 1, '2020-11-28 10:54:24', '2020-11-28 10:54:24', 'Your answer on question \"What are the best mobile apps for traveling?\" was voted up, earned 10 points', 'a_vote_up', '', 'publish', 'open', 'closed', '', 'a_vote_up-10', '', '', '2020-11-28 10:54:24', '2020-11-28 10:54:24', '', 1784, 'http://localhost/wordpress/changelog/a_vote_up-10/', 0, 'changelog', '', 0),
(1789, 13, '2014-06-05 08:21:06', '2014-06-05 08:21:06', '<strong>Sunscreen\n\n<span style=\"color: #333333;font-family: Arial, sans-serif;font-size: 14px;font-style: normal;font-variant: normal;font-weight: normal;letter-spacing: normal;line-height: 18px;text-align: start;text-indent: 0px;float: none;background-color: #ffffff\">Until the bashful lobster look finds its way into the style zeitgeist, this is a crucial piece of kit for those venturing to sunny climes. Having detected the UVI rating of your current location, this nifty little app sets a countdown timer to alert you when you’re due your next slathering of sunblock. All you have to do is input your skin type and the SPF of your lotion, then kick back and soak up some worry-free rays.</span><br style=\"color: #333333;font-family: Arial, sans-serif;font-size: 14px;font-style: normal;font-variant: normal;font-weight: normal;letter-spacing: normal;line-height: 18px;text-align: start;text-indent: 0px;background-color: #ffffff\" /><em style=\"color: #333333;font-family: Arial, sans-serif;font-size: 14px;font-variant: normal;font-weight: normal;letter-spacing: normal;line-height: 18px;text-align: start;text-indent: 0px;background-color: #ffffff\">Available on iPhone (free)</em>\n</strong>', 'RE: What are the best mobile apps for traveling?', '', 'publish', 'open', 'open', '', 're-what-are-the-best-mobile-apps-for-traveling-6', '', '', '2014-06-05 08:21:06', '2014-06-05 08:21:06', '', 126, 'http://demo.enginethemes.com/qaengine/answer/re-what-are-the-best-mobile-apps-for-traveling-6/', 0, 'answer', '', 0),
(1790, 13, '2020-11-28 10:54:25', '2020-11-28 10:54:25', 'You answered on question \"What are the best mobile apps for traveling?\"', 'post_answer', '', 'publish', 'open', 'closed', '', 'post_answer-29', '', '', '2020-11-28 10:54:25', '2020-11-28 10:54:25', '', 1789, 'http://localhost/wordpress/changelog/post_answer-29/', 0, 'changelog', '', 0),
(1791, 1, '2020-11-28 10:54:25', '2020-11-28 10:54:25', 'You answered on question \"What are the best mobile apps for traveling?\"', 'post_answer', '', 'publish', 'open', 'closed', '', 'post_answer-30', '', '', '2020-11-28 10:54:25', '2020-11-28 10:54:25', '', 1789, 'http://localhost/wordpress/changelog/post_answer-30/', 0, 'changelog', '', 0),
(1792, 13, '2014-06-05 08:23:19', '2014-06-05 08:23:19', '<strong>Onavo\n\n<span style=\"color: #333333;font-family: Arial, sans-serif;font-size: 14px;font-style: normal;font-variant: normal;font-weight: normal;letter-spacing: normal;line-height: 18px;text-align: start;text-indent: 0px;float: none;background-color: #ffffff\">Anyone who’s ever accidentally downloaded a large email while on holiday will attest to the ridiculousness of data roaming charges, and though there’s no indication from the networks that they’re working on putting things right, there are measures you can take to avoid an end-of-month sting. Once installed, this app drastically reduces the amount of data required to perform everyday tasks, such as retrieving email and posting to Facebook. We’re not entirely sure how it manages such a feat – we just know that it works and we’re not about to complain.</span><br style=\"color: #333333;font-family: Arial, sans-serif;font-size: 14px;font-style: normal;font-variant: normal;font-weight: normal;letter-spacing: normal;line-height: 18px;text-align: start;text-indent: 0px;background-color: #ffffff\" /><em style=\"color: #333333;font-family: Arial, sans-serif;font-size: 14px;font-variant: normal;font-weight: normal;letter-spacing: normal;line-height: 18px;text-align: start;text-indent: 0px;background-color: #ffffff\">Available on iPhone (free) and Android (free)</em>\n</strong>', 'RE: What are the best mobile apps for traveling?', '', 'publish', 'open', 'open', '', 're-what-are-the-best-mobile-apps-for-traveling-7', '', '', '2014-06-05 08:23:19', '2014-06-05 08:23:19', '', 126, 'http://demo.enginethemes.com/qaengine/answer/re-what-are-the-best-mobile-apps-for-traveling-7/', 0, 'answer', '', 0),
(1793, 13, '2020-11-28 10:54:26', '2020-11-28 10:54:26', 'You answered on question \"What are the best mobile apps for traveling?\"', 'post_answer', '', 'publish', 'open', 'closed', '', 'post_answer-31', '', '', '2020-11-28 10:54:26', '2020-11-28 10:54:26', '', 1792, 'http://localhost/wordpress/changelog/post_answer-31/', 0, 'changelog', '', 0),
(1794, 1, '2020-11-28 10:54:27', '2020-11-28 10:54:27', 'You answered on question \"What are the best mobile apps for traveling?\"', 'post_answer', '', 'publish', 'open', 'closed', '', 'post_answer-32', '', '', '2020-11-28 10:54:27', '2020-11-28 10:54:27', '', 1792, 'http://localhost/wordpress/changelog/post_answer-32/', 0, 'changelog', '', 0),
(1795, 12, '2014-06-05 08:24:40', '2014-06-05 08:24:40', '<span style=\"color: #333333;font-family: Arial, sans-serif;font-size: 14px;font-style: normal;font-variant: normal;font-weight: normal;letter-spacing: normal;line-height: 18px;text-align: start;text-indent: 0px;float: none;background-color: #ffffff\">Anyone who’s ever accidentally downloaded a large email while on holiday will attest to the ridiculousness of data roaming charges, and though there’s no indication from the networks that they’re working on putting things right, there are measures you can take to avoid an end-of-month sting. Once installed, this app drastically reduces the amount of data required to perform everyday tasks, such as retrieving email and posting to Facebook. We’re not entirely sure how it manages such a feat – we just know that it works and we’re not about to complain.</span><br style=\"color: #333333;font-family: Arial, sans-serif;font-size: 14px;font-style: normal;font-variant: normal;font-weight: normal;letter-spacing: normal;line-height: 18px;text-align: start;text-indent: 0px;background-color: #ffffff\" /><em style=\"color: #333333;font-family: Arial, sans-serif;font-size: 14px;font-variant: normal;font-weight: normal;letter-spacing: normal;line-height: 18px;text-align: start;text-indent: 0px;background-color: #ffffff\">Available on iPhone (free) and Android (free)</em>', 'RE: What are the best mobile apps for traveling?', '', 'publish', 'open', 'open', '', 're-what-are-the-best-mobile-apps-for-traveling-8', '', '', '2014-06-05 08:24:40', '2014-06-05 08:24:40', '', 126, 'http://demo.enginethemes.com/qaengine/answer/re-what-are-the-best-mobile-apps-for-traveling-8/', 0, 'answer', '', 0),
(1796, 12, '2020-11-28 10:54:27', '2020-11-28 10:54:27', 'You answered on question \"What are the best mobile apps for traveling?\"', 'post_answer', '', 'publish', 'open', 'closed', '', 'post_answer-33', '', '', '2020-11-28 10:54:27', '2020-11-28 10:54:27', '', 1795, 'http://localhost/wordpress/changelog/post_answer-33/', 0, 'changelog', '', 0),
(1797, 1, '2020-11-28 10:54:28', '2020-11-28 10:54:28', 'You answered on question \"What are the best mobile apps for traveling?\"', 'post_answer', '', 'publish', 'open', 'closed', '', 'post_answer-34', '', '', '2020-11-28 10:54:28', '2020-11-28 10:54:28', '', 1795, 'http://localhost/wordpress/changelog/post_answer-34/', 0, 'changelog', '', 0),
(1892, 14, '2014-09-18 02:31:39', '2014-09-18 02:31:39', 'test', 'RE: What are key strategies to acquire first 100K users with zero marketing budget?', '', 'publish', 'open', 'open', '', 're-what-are-key-strategies-to-acquire-first-100k-users-with-zero-marketing-budget', '', '', '2014-09-18 02:31:39', '2014-09-18 02:31:39', '', 106, 'http://demo.enginethemes.com/qaengine/answer/re-what-are-key-strategies-to-acquire-first-100k-users-with-zero-marketing-budget/', 0, 'answer', '', 0),
(1893, 14, '2020-11-28 10:54:29', '2020-11-28 10:54:29', 'You answered on question \"What are key strategies to acquire first 100K users with zero marketing budget?\"', 'post_answer', '', 'publish', 'open', 'closed', '', 'post_answer-35', '', '', '2020-11-28 10:54:29', '2020-11-28 10:54:29', '', 1892, 'http://localhost/wordpress/changelog/post_answer-35/', 0, 'changelog', '', 0),
(1894, 1, '2020-11-28 10:54:29', '2020-11-28 10:54:29', 'You answered on question \"What are key strategies to acquire first 100K users with zero marketing budget?\"', 'post_answer', '', 'publish', 'open', 'closed', '', 'post_answer-36', '', '', '2020-11-28 10:54:29', '2020-11-28 10:54:29', '', 1892, 'http://localhost/wordpress/changelog/post_answer-36/', 0, 'changelog', '', 0),
(1908, 11, '2014-09-18 03:02:45', '2014-09-18 03:02:45', 'Yeah!', 'RE: What are some of your favorite deep, awe-inspiring, and/or thought-provoking movies?', '', 'publish', 'open', 'open', '', 're-what-are-some-of-your-favorite-deep-awe-inspiring-andor-thought-provoking-movies', '', '', '2014-09-18 03:02:45', '2014-09-18 03:02:45', '', 1728, 'http://demo.enginethemes.com/qaengine/answer/re-what-are-some-of-your-favorite-deep-awe-inspiring-andor-thought-provoking-movies/', 0, 'answer', '', 2),
(1909, 11, '2020-11-28 10:54:30', '2020-11-28 10:54:30', 'You answered on question \"What are some of your favorite deep, awe-inspiring, and/or thought-provoking movies?\"', 'post_answer', '', 'publish', 'open', 'closed', '', 'post_answer-37', '', '', '2020-11-28 10:54:30', '2020-11-28 10:54:30', '', 1908, 'http://localhost/wordpress/changelog/post_answer-37/', 0, 'changelog', '', 0),
(1910, 1, '2020-11-28 10:54:30', '2020-11-28 10:54:30', 'You answered on question \"What are some of your favorite deep, awe-inspiring, and/or thought-provoking movies?\"', 'post_answer', '', 'publish', 'open', 'closed', '', 'post_answer-38', '', '', '2020-11-28 10:54:30', '2020-11-28 10:54:30', '', 1908, 'http://localhost/wordpress/changelog/post_answer-38/', 0, 'changelog', '', 0),
(1911, 11, '2020-11-28 10:54:31', '2020-11-28 10:54:31', 'Your answer on question \"What are some of your favorite deep, awe-inspiring, and/or thought-provoking movies?\" was voted up, earned 10 points', 'a_vote_up', '', 'publish', 'open', 'closed', '', 'a_vote_up-11', '', '', '2020-11-28 10:54:31', '2020-11-28 10:54:31', '', 1908, 'http://localhost/wordpress/changelog/a_vote_up-11/', 0, 'changelog', '', 0),
(1912, 1, '2020-11-28 10:54:32', '2020-11-28 10:54:32', 'Your answer on question \"What are some of your favorite deep, awe-inspiring, and/or thought-provoking movies?\" was voted up, earned 10 points', 'a_vote_up', '', 'publish', 'open', 'closed', '', 'a_vote_up-12', '', '', '2020-11-28 10:54:32', '2020-11-28 10:54:32', '', 1908, 'http://localhost/wordpress/changelog/a_vote_up-12/', 0, 'changelog', '', 0),
(1913, 9, '2014-06-05 02:16:55', '2014-06-05 02:16:55', 'content here', 'Thành viên kỳ cựu', '', 'publish', 'open', 'open', '', 'professor', '', '', '2020-11-28 18:03:02', '2020-11-28 11:03:02', '', 0, 'http://demo.enginethemes.com/qaengine/pack/professor/', 0, 'pack', '', 0),
(1914, 9, '2014-06-05 02:21:44', '2014-06-05 02:21:44', 'content here', 'Vice Professor', '', 'publish', 'open', 'open', '', 'vice-professor', '', '', '2014-06-05 02:21:44', '2014-06-05 02:21:44', '', 0, 'http://demo.enginethemes.com/qaengine/pack/vice-professor/', 0, 'pack', '', 0),
(1915, 9, '2014-06-05 02:22:11', '2014-06-05 02:22:11', 'content here', 'Doctor', '', 'publish', 'open', 'open', '', 'doctor', '', '', '2014-06-05 02:22:11', '2014-06-05 02:22:11', '', 0, 'http://demo.enginethemes.com/qaengine/pack/doctor/', 0, 'pack', '', 0),
(1916, 9, '2014-06-05 02:23:56', '2014-06-05 02:23:56', 'content here', 'Người hỗ trợ', '', 'publish', 'open', 'open', '', 'supporter', '', '', '2020-11-28 18:03:22', '2020-11-28 11:03:22', '', 0, 'http://demo.enginethemes.com/qaengine/pack/supporter/', 0, 'pack', '', 0),
(1917, 9, '2014-06-05 02:27:31', '2014-06-05 02:27:31', 'content here', 'Người xem xét', '', 'publish', 'open', 'open', '', 'reviewer', '', '', '2020-11-28 18:03:38', '2020-11-28 11:03:38', '', 0, 'http://demo.enginethemes.com/qaengine/pack/reviewer/', 0, 'pack', '', 0),
(1918, 9, '2014-06-05 02:28:48', '2014-06-05 02:28:48', 'content here', 'Thành viên mới', '', 'publish', 'open', 'open', '', 'train', '', '', '2020-11-28 18:03:13', '2020-11-28 11:03:13', '', 0, 'http://demo.enginethemes.com/qaengine/pack/train/', 0, 'pack', '', 0),
(1920, 1, '2020-11-28 10:58:43', '2020-11-28 10:58:43', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2020-11-28 10:58:43', '2020-11-28 10:58:43', '', 81, 'http://localhost/wordpress/2020/11/28/81-revision-v1/', 0, 'revision', '', 0),
(1921, 1, '2020-11-28 10:59:05', '2020-11-28 10:59:05', ' ', '', '', 'publish', 'closed', 'closed', '', '1921', '', '', '2020-11-28 10:59:05', '2020-11-28 10:59:05', '', 0, 'http://localhost/wordpress/?p=1921', 1, 'nav_menu_item', '', 0),
(1922, 1, '2020-11-28 11:00:43', '2020-11-28 11:00:43', ' ', '', '', 'publish', 'closed', 'closed', '', '1922', '', '', '2020-11-28 11:00:43', '2020-11-28 11:00:43', '', 0, 'http://localhost/wordpress/?p=1922', 1, 'nav_menu_item', '', 0),
(1923, 1, '2020-11-28 11:00:43', '2020-11-28 11:00:43', ' ', '', '', 'publish', 'closed', 'closed', '', '1923', '', '', '2020-11-28 11:00:43', '2020-11-28 11:00:43', '', 0, 'http://localhost/wordpress/?p=1923', 2, 'nav_menu_item', '', 0),
(1924, 1, '2020-11-28 11:00:43', '2020-11-28 11:00:43', ' ', '', '', 'publish', 'closed', 'closed', '', '1924', '', '', '2020-11-28 11:00:43', '2020-11-28 11:00:43', '', 0, 'http://localhost/wordpress/?p=1924', 3, 'nav_menu_item', '', 0),
(1925, 1, '2020-11-28 11:00:44', '2020-11-28 11:00:44', ' ', '', '', 'publish', 'closed', 'closed', '', '1925', '', '', '2020-11-28 11:00:44', '2020-11-28 11:00:44', '', 0, 'http://localhost/wordpress/?p=1925', 4, 'nav_menu_item', '', 0),
(1926, 10, '2020-11-28 19:39:51', '2020-11-28 12:39:51', 'Your question \"I have bought a Samsung Galaxy 3 (parallel imported, aka GT-I5801). Can I remove the unusable bundled proprietary applications without breaking the thing? (How?)\" was unvoted, return 0 points', 'q_unvote', '', 'publish', 'open', 'closed', '', 'q_unvote', '', '', '2020-11-28 19:39:51', '2020-11-28 12:39:51', '', 133, 'http://localhost/wordpress/changelog/q_unvote/', 0, 'changelog', '', 0),
(1927, 10, '2020-11-28 19:39:52', '2020-11-28 12:39:52', 'Your question \"I have bought a Samsung Galaxy 3 (parallel imported, aka GT-I5801). Can I remove the unusable bundled proprietary applications without breaking the thing? (How?)\" was unvoted, return 0 points', 'q_unvote', '', 'publish', 'open', 'closed', '', 'q_unvote-2', '', '', '2020-11-28 19:39:52', '2020-11-28 12:39:52', '', 133, 'http://localhost/wordpress/changelog/q_unvote-2/', 0, 'changelog', '', 0),
(1928, 10, '2020-11-28 19:39:53', '2020-11-28 12:39:53', 'Your question \"I have bought a Samsung Galaxy 3 (parallel imported, aka GT-I5801). Can I remove the unusable bundled proprietary applications without breaking the thing? (How?)\" was unvoted, return 0 points', 'q_unvote', '', 'publish', 'open', 'closed', '', 'q_unvote-3', '', '', '2020-11-28 19:39:53', '2020-11-28 12:39:53', '', 133, 'http://localhost/wordpress/changelog/q_unvote-3/', 0, 'changelog', '', 0),
(1929, 10, '2020-11-28 19:39:54', '2020-11-28 12:39:54', 'Your question \"I have bought a Samsung Galaxy 3 (parallel imported, aka GT-I5801). Can I remove the unusable bundled proprietary applications without breaking the thing? (How?)\" was unvoted, return -5 points', 'q_unvote', '', 'publish', 'open', 'closed', '', 'q_unvote-4', '', '', '2020-11-28 19:39:54', '2020-11-28 12:39:54', '', 133, 'http://localhost/wordpress/changelog/q_unvote-4/', 0, 'changelog', '', 0),
(1930, 10, '2020-11-28 19:39:55', '2020-11-28 12:39:55', 'Your question \"I have bought a Samsung Galaxy 3 (parallel imported, aka GT-I5801). Can I remove the unusable bundled proprietary applications without breaking the thing? (How?)\" was unvoted, return -5 points', 'q_unvote', '', 'publish', 'open', 'closed', '', 'q_unvote-5', '', '', '2020-11-28 19:39:55', '2020-11-28 12:39:55', '', 133, 'http://localhost/wordpress/changelog/q_unvote-5/', 0, 'changelog', '', 0),
(1931, 9, '2020-11-28 19:39:56', '2020-11-28 12:39:56', 'Your answer on question \"\" was unvoted, return 0 points', 'a_unvote', '', 'publish', 'open', 'closed', '', 'a_unvote', '', '', '2020-11-28 19:39:56', '2020-11-28 12:39:56', '', 1768, 'http://localhost/wordpress/changelog/a_unvote/', 0, 'changelog', '', 0),
(1932, 9, '2020-11-28 19:39:56', '2020-11-28 12:39:56', 'Your answer on question \"\" was unvoted, return 0 points', 'a_unvote', '', 'publish', 'open', 'closed', '', 'a_unvote-2', '', '', '2020-11-28 19:39:56', '2020-11-28 12:39:56', '', 1768, 'http://localhost/wordpress/changelog/a_unvote-2/', 0, 'changelog', '', 0),
(1933, 9, '2020-11-28 19:39:57', '2020-11-28 12:39:57', 'Your answer on question \"\" was unvoted, return 0 points', 'a_unvote', '', 'publish', 'open', 'closed', '', 'a_unvote-3', '', '', '2020-11-28 19:39:57', '2020-11-28 12:39:57', '', 1768, 'http://localhost/wordpress/changelog/a_unvote-3/', 0, 'changelog', '', 0),
(1934, 9, '2020-11-28 19:39:58', '2020-11-28 12:39:58', 'Your answer on question \"\" was unvoted, return 0 points', 'a_unvote', '', 'publish', 'open', 'closed', '', 'a_unvote-4', '', '', '2020-11-28 19:39:58', '2020-11-28 12:39:58', '', 1768, 'http://localhost/wordpress/changelog/a_unvote-4/', 0, 'changelog', '', 0),
(1935, 9, '2020-11-28 19:39:58', '2020-11-28 12:39:58', 'Your answer on question \"\" was unvoted, return 0 points', 'a_unvote', '', 'publish', 'open', 'closed', '', 'a_unvote-5', '', '', '2020-11-28 19:39:58', '2020-11-28 12:39:58', '', 1768, 'http://localhost/wordpress/changelog/a_unvote-5/', 0, 'changelog', '', 0),
(1936, 9, '2020-11-28 19:39:59', '2020-11-28 12:39:59', 'Your answer on question \"\" was unvoted, return -10 points', 'a_unvote', '', 'publish', 'open', 'closed', '', 'a_unvote-6', '', '', '2020-11-28 19:39:59', '2020-11-28 12:39:59', '', 1768, 'http://localhost/wordpress/changelog/a_unvote-6/', 0, 'changelog', '', 0),
(1937, 1, '2020-12-29 01:04:32', '2020-12-28 18:04:32', 'a', 'RE: What are some of your favorite deep, awe-inspiring, and/or thought-provoking movies?', '', 'publish', 'open', 'closed', '', 're-what-are-some-of-your-favorite-deep-awe-inspiring-and-or-thought-provoking-movies', '', '', '2020-12-29 01:04:32', '2020-12-28 18:04:32', '', 1728, 'http://localhost/wordpress/answer/re-what-are-some-of-your-favorite-deep-awe-inspiring-and-or-thought-provoking-movies/', 0, 'answer', '', 0),
(1938, 1, '2020-12-29 01:04:32', '2020-12-28 18:04:32', 'You answered on question \"What are some of your favorite deep, awe-inspiring, and/or thought-provoking movies?\"', 'post_answer', '', 'publish', 'open', 'closed', '', 'post_answer-39', '', '', '2020-12-29 01:04:32', '2020-12-28 18:04:32', '', 1937, 'http://localhost/wordpress/changelog/post_answer-39/', 0, 'changelog', '', 0),
(1939, 1, '2020-12-30 14:37:00', '2020-12-30 07:37:00', 'Please fill out the form below ', 'dashboard', '', 'publish', 'closed', 'closed', '', 'dashboard', '', '', '2020-12-30 14:37:00', '2020-12-30 07:37:00', '', 0, 'http://localhost/wordpress/dashboard/', 0, 'page', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_rt_rtm_activity`
--

CREATE TABLE `wp_rt_rtm_activity` (
  `activity_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `privacy` int(3) DEFAULT NULL,
  `blog_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_rt_rtm_api`
--

CREATE TABLE `wp_rt_rtm_api` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `ip` varchar(255) NOT NULL DEFAULT '0',
  `token_time` varchar(1000) DEFAULT NULL,
  `token` varchar(1000) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `last_access` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_rt_rtm_media`
--

CREATE TABLE `wp_rt_rtm_media` (
  `id` bigint(20) NOT NULL,
  `blog_id` bigint(20) DEFAULT NULL,
  `media_id` bigint(20) NOT NULL,
  `media_author` bigint(20) NOT NULL,
  `media_title` text DEFAULT NULL,
  `album_id` bigint(20) DEFAULT NULL,
  `media_type` varchar(100) DEFAULT NULL,
  `context` varchar(100) DEFAULT NULL,
  `context_id` bigint(20) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `source_id` bigint(20) DEFAULT NULL,
  `activity_id` bigint(20) DEFAULT NULL,
  `cover_art` varchar(250) DEFAULT NULL,
  `privacy` int(3) DEFAULT NULL,
  `views` bigint(20) DEFAULT 0,
  `downloads` bigint(20) DEFAULT 0,
  `ratings_total` bigint(20) DEFAULT 0,
  `ratings_count` bigint(20) DEFAULT 0,
  `ratings_average` decimal(4,2) DEFAULT 0.00,
  `likes` bigint(20) DEFAULT 0,
  `dislikes` bigint(20) DEFAULT 0,
  `upload_date` datetime DEFAULT '0000-00-00 00:00:00',
  `file_size` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `wp_rt_rtm_media`
--

INSERT INTO `wp_rt_rtm_media` (`id`, `blog_id`, `media_id`, `media_author`, `media_title`, `album_id`, `media_type`, `context`, `context_id`, `source`, `source_id`, `activity_id`, `cover_art`, `privacy`, `views`, `downloads`, `ratings_total`, `ratings_count`, `ratings_average`, `likes`, `dislikes`, `upload_date`, `file_size`) VALUES
(1, 1, 66, 1, 'Wall Posts', NULL, 'album', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '0.00', 0, 0, '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_rt_rtm_media_interaction`
--

CREATE TABLE `wp_rt_rtm_media_interaction` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `media_id` bigint(20) NOT NULL DEFAULT 0,
  `action` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `action_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_rt_rtm_media_meta`
--

CREATE TABLE `wp_rt_rtm_media_meta` (
  `id` bigint(20) NOT NULL,
  `media_id` bigint(20) NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_signups`
--

CREATE TABLE `wp_signups` (
  `signup_id` bigint(20) NOT NULL,
  `domain` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `activation_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `meta` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Chưa được phân loại', 'khong-phan-loai', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Chưa phân loại', 'chua-phan-loai', 0),
(16, 'activity-comment', 'activity-comment', 0),
(17, 'activity-comment-author', 'activity-comment-author', 0),
(18, 'activity-at-message', 'activity-at-message', 0),
(19, 'groups-at-message', 'groups-at-message', 0),
(20, 'core-user-registration', 'core-user-registration', 0),
(21, 'friends-request', 'friends-request', 0),
(22, 'friends-request-accepted', 'friends-request-accepted', 0),
(23, 'groups-details-updated', 'groups-details-updated', 0),
(24, 'groups-invitation', 'groups-invitation', 0),
(25, 'groups-member-promoted', 'groups-member-promoted', 0),
(26, 'groups-membership-request', 'groups-membership-request', 0),
(27, 'messages-unread', 'messages-unread', 0),
(28, 'settings-verify-email-change', 'settings-verify-email-change', 0),
(29, 'groups-membership-request-accepted', 'groups-membership-request-accepted', 0),
(30, 'groups-membership-request-rejected', 'groups-membership-request-rejected', 0),
(31, 'Menu chính', 'menu-chinh', 0),
(32, 'baffled', 'baffled', 0),
(33, 'follow', 'follow', 0),
(34, 'Movie', 'movie', 0),
(35, 'movie', 'movie-2', 0),
(36, 'relax', 'relax', 0),
(37, 'car', 'car-2', 0),
(38, 'commercial', 'commercial', 0),
(39, 'lamborghini', 'lamborghini', 0),
(40, 'tv', 'tv', 0),
(41, 'Design', 'design', 0),
(42, 'designer', 'designer', 0),
(43, 'Illustrator', 'illustrator', 0),
(44, 'photoshop', 'photoshop', 0),
(45, 'school', 'school', 0),
(46, 'work', 'work', 0),
(47, 'billionaire', 'billionaire', 0),
(48, 'Business', 'business', 0),
(49, 'business', 'business-2', 0),
(50, 'marketing', 'marketing-2', 0),
(51, 'paranoid', 'paranoid', 0),
(52, 'steal', 'steal', 0),
(53, 'applications', 'applications', 0),
(54, 'glass', 'glass', 0),
(55, 'google', 'google', 0),
(56, 'google glass', 'google-glass', 0),
(57, 'Technology', 'technology', 0),
(58, 'technology', 'technology-2', 0),
(59, 'facebook', 'facebook', 0),
(60, 'social', 'social', 0),
(61, 'twiter', 'twiter', 0),
(62, 'web', 'web', 0),
(63, 'demo', 'demo', 0),
(64, 'marketers', 'marketers', 0),
(65, 'Marketing', 'marketing', 0),
(66, 'media', 'media', 0),
(67, 'buget', 'buget', 0),
(68, 'users', 'users', 0),
(69, 'apple', 'apple', 0),
(70, 'apps', 'apps', 0),
(71, 'important', 'important', 0),
(72, 'Music', 'music', 0),
(73, 'android', 'android', 0),
(74, 'Mobile', 'mobile', 0),
(75, 'music', 'music-2', 0),
(76, 'Left menu', 'left-menu', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(21, 16, 0),
(22, 17, 0),
(23, 18, 0),
(24, 19, 0),
(25, 20, 0),
(26, 21, 0),
(27, 22, 0),
(28, 23, 0),
(29, 24, 0),
(30, 25, 0),
(31, 26, 0),
(32, 27, 0),
(33, 28, 0),
(34, 29, 0),
(35, 30, 0),
(42, 41, 0),
(42, 42, 0),
(42, 43, 0),
(42, 44, 0),
(42, 45, 0),
(42, 46, 0),
(49, 47, 0),
(49, 48, 0),
(49, 49, 0),
(49, 50, 0),
(49, 51, 0),
(49, 52, 0),
(51, 31, 0),
(52, 31, 0),
(53, 31, 0),
(63, 49, 0),
(63, 50, 0),
(63, 65, 0),
(63, 69, 0),
(63, 70, 0),
(63, 71, 0),
(71, 50, 0),
(71, 55, 0),
(71, 59, 0),
(71, 60, 0),
(71, 70, 0),
(71, 72, 0),
(87, 32, 0),
(87, 33, 0),
(87, 34, 0),
(87, 35, 0),
(87, 36, 0),
(90, 34, 0),
(90, 35, 0),
(90, 37, 0),
(90, 38, 0),
(90, 39, 0),
(90, 40, 0),
(97, 53, 0),
(97, 54, 0),
(97, 55, 0),
(97, 56, 0),
(97, 57, 0),
(97, 58, 0),
(100, 57, 0),
(100, 58, 0),
(100, 59, 0),
(100, 60, 0),
(100, 61, 0),
(100, 62, 0),
(103, 50, 0),
(103, 63, 0),
(103, 64, 0),
(103, 65, 0),
(103, 66, 0),
(106, 47, 0),
(106, 49, 0),
(106, 50, 0),
(106, 65, 0),
(106, 67, 0),
(106, 68, 0),
(119, 47, 0),
(119, 48, 0),
(119, 49, 0),
(126, 55, 0),
(126, 58, 0),
(126, 69, 0),
(126, 70, 0),
(126, 73, 0),
(126, 74, 0),
(188, 49, 0),
(188, 54, 0),
(188, 55, 0),
(188, 57, 0),
(188, 58, 0),
(188, 70, 0),
(1728, 34, 0),
(1728, 35, 0),
(1728, 55, 0),
(1728, 59, 0),
(1728, 60, 0),
(1728, 75, 0),
(1921, 31, 0),
(1922, 76, 0),
(1923, 76, 0),
(1924, 76, 0),
(1925, 76, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 0),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'bp-email-type', 'A member has replied to an activity update that the recipient posted.', 0, 1),
(17, 17, 'bp-email-type', 'A member has replied to a comment on an activity update that the recipient posted.', 0, 1),
(18, 18, 'bp-email-type', 'Recipient was mentioned in an activity update.', 0, 1),
(19, 19, 'bp-email-type', 'Recipient was mentioned in a group activity update.', 0, 1),
(20, 20, 'bp-email-type', 'Recipient has registered for an account.', 0, 1),
(21, 21, 'bp-email-type', 'A member has sent a friend request to the recipient.', 0, 1),
(22, 22, 'bp-email-type', 'Recipient has had a friend request accepted by a member.', 0, 1),
(23, 23, 'bp-email-type', 'A group\'s details were updated.', 0, 1),
(24, 24, 'bp-email-type', 'A member has sent a group invitation to the recipient.', 0, 1),
(25, 25, 'bp-email-type', 'Recipient\'s status within a group has changed.', 0, 1),
(26, 26, 'bp-email-type', 'A member has requested permission to join a group.', 0, 1),
(27, 27, 'bp-email-type', 'Recipient has received a private message.', 0, 1),
(28, 28, 'bp-email-type', 'Recipient has changed their email address.', 0, 1),
(29, 29, 'bp-email-type', 'Recipient had requested to join a group, which was accepted.', 0, 1),
(30, 30, 'bp-email-type', 'Recipient had requested to join a group, which was rejected.', 0, 1),
(31, 31, 'nav_menu', '', 0, 4),
(32, 32, 'qa_tag', '', 0, 1),
(33, 33, 'qa_tag', '', 0, 1),
(34, 34, 'question_category', '', 0, 3),
(35, 35, 'qa_tag', '', 0, 3),
(36, 36, 'qa_tag', '', 0, 1),
(37, 37, 'qa_tag', '', 0, 1),
(38, 38, 'qa_tag', '', 0, 1),
(39, 39, 'qa_tag', '', 0, 1),
(40, 40, 'qa_tag', '', 0, 1),
(41, 41, 'question_category', '', 0, 1),
(42, 42, 'qa_tag', '', 0, 1),
(43, 43, 'qa_tag', '', 0, 1),
(44, 44, 'qa_tag', '', 0, 1),
(45, 45, 'qa_tag', '', 0, 1),
(46, 46, 'qa_tag', '', 0, 1),
(47, 47, 'qa_tag', '', 0, 3),
(48, 48, 'question_category', '', 0, 2),
(49, 49, 'qa_tag', '', 0, 5),
(50, 50, 'qa_tag', '', 0, 5),
(51, 51, 'qa_tag', '', 0, 1),
(52, 52, 'qa_tag', '', 0, 1),
(53, 53, 'qa_tag', '', 0, 1),
(54, 54, 'qa_tag', '', 0, 2),
(55, 55, 'qa_tag', '', 0, 5),
(56, 56, 'qa_tag', '', 0, 1),
(57, 57, 'question_category', '', 0, 3),
(58, 58, 'qa_tag', '', 0, 4),
(59, 59, 'qa_tag', '', 0, 3),
(60, 60, 'qa_tag', '', 0, 3),
(61, 61, 'qa_tag', '', 0, 1),
(62, 62, 'qa_tag', '', 0, 1),
(63, 63, 'qa_tag', '', 0, 1),
(64, 64, 'qa_tag', '', 0, 1),
(65, 65, 'question_category', '', 0, 3),
(66, 66, 'qa_tag', '', 0, 1),
(67, 67, 'qa_tag', '', 0, 1),
(68, 68, 'qa_tag', '', 0, 1),
(69, 69, 'qa_tag', '', 0, 2),
(70, 70, 'qa_tag', '', 0, 4),
(71, 71, 'qa_tag', '', 0, 1),
(72, 72, 'question_category', '', 0, 1),
(73, 73, 'qa_tag', '', 0, 1),
(74, 74, 'question_category', '', 0, 1),
(75, 75, 'qa_tag', '', 0, 1),
(76, 76, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'luphuowng'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '85'),
(18, 1, '_woocommerce_tracks_anon_id', 'woo:BbsCRJN4RmkTT08p89ZoajvT'),
(19, 1, 'last_update', '1602927011'),
(20, 1, 'woocommerce_admin_activity_panel_inbox_last_read', '1602927009076'),
(21, 1, 'wc_last_active', '1606521600'),
(23, 1, 'last_activity', '2020-11-28 10:37:22'),
(24, 1, '_order_count', '0'),
(26, 1, '_wc_plugin_framework_facebook_for_woocommerce_dismissed_messages', 'a:1:{s:36:\"facebook_for_woocommerce_get_started\";b:1;}'),
(27, 1, 'total_group_count', '1'),
(28, 1, 'wp_user-settings', 'libraryContent=browse'),
(29, 1, 'wp_user-settings-time', '1603544993'),
(31, 1, 'nav_menu_recently_edited', '76'),
(32, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(33, 1, 'metaboxhidden_nav-menus', 'a:6:{i:0;s:23:\"add-buddypress-nav-menu\";i:1;s:21:\"add-post-type-product\";i:2;s:12:\"add-post_tag\";i:3;s:15:\"add-post_format\";i:4;s:15:\"add-product_cat\";i:5;s:15:\"add-product_tag\";}'),
(34, 2, 'nickname', 'Trâm Anh'),
(35, 2, 'first_name', 'Trâm'),
(36, 2, 'last_name', 'Anh'),
(37, 2, 'description', ''),
(38, 2, 'rich_editing', 'true'),
(39, 2, 'syntax_highlighting', 'true'),
(40, 2, 'comment_shortcuts', 'false'),
(41, 2, 'admin_color', 'fresh'),
(42, 2, 'use_ssl', '0'),
(43, 2, 'show_admin_bar_front', 'true'),
(44, 2, 'locale', ''),
(45, 2, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(46, 2, 'wp_user_level', '0'),
(47, 2, 'last_update', '1604046539'),
(48, 2, 'dismissed_wp_pointers', ''),
(49, 3, 'nickname', 'Hải Hào Hồ'),
(50, 3, 'first_name', 'Hải'),
(51, 3, 'last_name', 'Hào Hồ'),
(52, 3, 'description', ''),
(53, 3, 'rich_editing', 'true'),
(54, 3, 'syntax_highlighting', 'true'),
(55, 3, 'comment_shortcuts', 'false'),
(56, 3, 'admin_color', 'fresh'),
(57, 3, 'use_ssl', '0'),
(58, 3, 'show_admin_bar_front', 'true'),
(59, 3, 'locale', ''),
(60, 3, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(61, 3, 'wp_user_level', '0'),
(62, 3, 'last_update', '1604046725'),
(63, 3, 'dismissed_wp_pointers', ''),
(64, 4, 'nickname', 'Huy Đăng'),
(65, 4, 'first_name', 'Huy'),
(66, 4, 'last_name', 'Đăng'),
(67, 4, 'description', ''),
(68, 4, 'rich_editing', 'true'),
(69, 4, 'syntax_highlighting', 'true'),
(70, 4, 'comment_shortcuts', 'false'),
(71, 4, 'admin_color', 'fresh'),
(72, 4, 'use_ssl', '0'),
(73, 4, 'show_admin_bar_front', 'true'),
(74, 4, 'locale', ''),
(75, 4, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(76, 4, 'wp_user_level', '0'),
(77, 4, 'last_update', '1604046952'),
(78, 4, 'dismissed_wp_pointers', ''),
(79, 5, 'nickname', 'Vẹn Hoàng'),
(80, 5, 'first_name', 'Vẹn'),
(81, 5, 'last_name', 'Hoàng'),
(82, 5, 'description', ''),
(83, 5, 'rich_editing', 'true'),
(84, 5, 'syntax_highlighting', 'true'),
(85, 5, 'comment_shortcuts', 'false'),
(86, 5, 'admin_color', 'fresh'),
(87, 5, 'use_ssl', '0'),
(88, 5, 'show_admin_bar_front', 'true'),
(89, 5, 'locale', ''),
(90, 5, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(91, 5, 'wp_user_level', '0'),
(92, 5, 'last_update', '1604046993'),
(93, 5, 'dismissed_wp_pointers', ''),
(94, 6, 'nickname', 'Minh Phúc Phí'),
(95, 6, 'first_name', 'Minh'),
(96, 6, 'last_name', 'Phúc Phí'),
(97, 6, 'description', ''),
(98, 6, 'rich_editing', 'true'),
(99, 6, 'syntax_highlighting', 'true'),
(100, 6, 'comment_shortcuts', 'false'),
(101, 6, 'admin_color', 'fresh'),
(102, 6, 'use_ssl', '0'),
(103, 6, 'show_admin_bar_front', 'true'),
(104, 6, 'locale', ''),
(105, 6, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(106, 6, 'wp_user_level', '0'),
(107, 6, 'last_update', '1604047035'),
(108, 6, 'dismissed_wp_pointers', ''),
(109, 7, 'nickname', 'Minh Phúc Đào'),
(110, 7, 'first_name', 'Minh'),
(111, 7, 'last_name', 'Phúc Đào'),
(112, 7, 'description', ''),
(113, 7, 'rich_editing', 'true'),
(114, 7, 'syntax_highlighting', 'true'),
(115, 7, 'comment_shortcuts', 'false'),
(116, 7, 'admin_color', 'fresh'),
(117, 7, 'use_ssl', '0'),
(118, 7, 'show_admin_bar_front', 'true'),
(119, 7, 'locale', ''),
(120, 7, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(121, 7, 'wp_user_level', '0'),
(122, 7, 'last_update', '1604047086'),
(123, 7, 'dismissed_wp_pointers', ''),
(124, 8, 'nickname', 'Lương Sang'),
(125, 8, 'first_name', 'Lương'),
(126, 8, 'last_name', 'Sang'),
(127, 8, 'description', ''),
(128, 8, 'rich_editing', 'true'),
(129, 8, 'syntax_highlighting', 'true'),
(130, 8, 'comment_shortcuts', 'false'),
(131, 8, 'admin_color', 'fresh'),
(132, 8, 'use_ssl', '0'),
(133, 8, 'show_admin_bar_front', 'true'),
(134, 8, 'locale', ''),
(135, 8, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(136, 8, 'wp_user_level', '0'),
(137, 8, 'last_update', '1604047145'),
(138, 8, 'dismissed_wp_pointers', ''),
(139, 3, 'total_group_count', '1'),
(140, 2, 'total_group_count', '1'),
(141, 4, 'total_group_count', '1'),
(142, 5, 'total_group_count', '1'),
(145, 1, 'rtmedia_counts_1', 'a:0:{}'),
(147, 9, 'nickname', 'admin'),
(148, 9, 'first_name', ''),
(149, 9, 'last_name', ''),
(150, 9, 'description', ''),
(151, 9, 'rich_editing', 'true'),
(152, 9, 'syntax_highlighting', 'true'),
(153, 9, 'comment_shortcuts', 'false'),
(154, 9, 'admin_color', 'fresh'),
(155, 9, 'use_ssl', '0'),
(156, 9, 'show_admin_bar_front', 'true'),
(157, 9, 'locale', ''),
(158, 9, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(159, 9, 'wp_user_level', '0'),
(160, 9, 'qa_point', '36'),
(161, 9, 'et_question_count', '5'),
(162, 9, 'et_answer_count', '3'),
(163, 9, 'key_confirm', '77649c39c8782d5982bbf20b6ff26a2a'),
(164, 9, 'dismissed_wp_pointers', ''),
(165, 10, 'nickname', 'Alex'),
(166, 10, 'first_name', ''),
(167, 10, 'last_name', ''),
(168, 10, 'description', ''),
(169, 10, 'rich_editing', 'true'),
(170, 10, 'syntax_highlighting', 'true'),
(171, 10, 'comment_shortcuts', 'false'),
(172, 10, 'admin_color', 'fresh'),
(173, 10, 'use_ssl', '0'),
(174, 10, 'show_admin_bar_front', 'true'),
(175, 10, 'locale', ''),
(176, 10, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(177, 10, 'wp_user_level', '0'),
(178, 10, 'qa_point', '9'),
(179, 10, 'et_question_count', '4'),
(180, 10, 'et_answer_count', '3'),
(181, 10, 'key_confirm', '0312d0d39585741666c19c217ed769f7'),
(182, 10, 'dismissed_wp_pointers', ''),
(183, 11, 'nickname', 'John'),
(184, 11, 'first_name', ''),
(185, 11, 'last_name', ''),
(186, 11, 'description', ''),
(187, 11, 'rich_editing', 'true'),
(188, 11, 'syntax_highlighting', 'true'),
(189, 11, 'comment_shortcuts', 'false'),
(190, 11, 'admin_color', 'fresh'),
(191, 11, 'use_ssl', '0'),
(192, 11, 'show_admin_bar_front', 'true'),
(193, 11, 'locale', ''),
(194, 11, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(195, 11, 'wp_user_level', '0'),
(196, 11, 'qa_point', '18'),
(197, 11, 'et_question_count', '1'),
(198, 11, 'et_answer_count', '5'),
(199, 11, 'key_confirm', '1c9e974c08914cda5ca2e7620c4fd3b6'),
(200, 11, 'dismissed_wp_pointers', ''),
(201, 12, 'nickname', 'Smith'),
(202, 12, 'first_name', ''),
(203, 12, 'last_name', ''),
(204, 12, 'description', ''),
(205, 12, 'rich_editing', 'true'),
(206, 12, 'syntax_highlighting', 'true'),
(207, 12, 'comment_shortcuts', 'false'),
(208, 12, 'admin_color', 'fresh'),
(209, 12, 'use_ssl', '0'),
(210, 12, 'show_admin_bar_front', 'true'),
(211, 12, 'locale', ''),
(212, 12, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(213, 12, 'wp_user_level', '0'),
(214, 12, 'qa_point', '15'),
(215, 12, 'et_question_count', '2'),
(216, 12, 'et_answer_count', '3'),
(217, 12, 'key_confirm', 'fc1479ee8bd01c4c812568e0d03c113d'),
(218, 12, 'dismissed_wp_pointers', ''),
(219, 13, 'nickname', 'Marry'),
(220, 13, 'first_name', ''),
(221, 13, 'last_name', ''),
(222, 13, 'description', ''),
(223, 13, 'rich_editing', 'true'),
(224, 13, 'syntax_highlighting', 'true'),
(225, 13, 'comment_shortcuts', 'false'),
(226, 13, 'admin_color', 'fresh'),
(227, 13, 'use_ssl', '0'),
(228, 13, 'show_admin_bar_front', 'true'),
(229, 13, 'locale', ''),
(230, 13, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(231, 13, 'wp_user_level', '0'),
(232, 13, 'qa_point', '43'),
(233, 13, 'et_question_count', '1'),
(234, 13, 'et_answer_count', '4'),
(235, 13, 'key_confirm', '5ab65e4529e2ad995551980c252be450'),
(236, 13, 'dismissed_wp_pointers', ''),
(237, 14, 'nickname', 'admindemo'),
(238, 14, 'first_name', 'Engine'),
(239, 14, 'last_name', 'Admin Demo'),
(240, 14, 'description', ''),
(241, 14, 'rich_editing', 'true'),
(242, 14, 'syntax_highlighting', 'true'),
(243, 14, 'comment_shortcuts', 'false'),
(244, 14, 'admin_color', 'fresh'),
(245, 14, 'use_ssl', '0'),
(246, 14, 'show_admin_bar_front', 'true'),
(247, 14, 'locale', ''),
(248, 14, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(249, 14, 'wp_user_level', '0'),
(250, 14, 'qa_point', '11'),
(251, 14, 'et_question_count', '1'),
(252, 14, 'et_answer_count', '1'),
(253, 14, 'key_confirm', '3743112a070d24fe4dbd5cb39d6a5e9e'),
(254, 14, 'dismissed_wp_pointers', ''),
(255, 1, 'qa_point', '41'),
(258, 1, 'et_answer_count', '1'),
(259, 1, 'qa_following_questions', 'a:1:{i:1;s:4:\"1728\";}'),
(260, 1, 'session_tokens', 'a:1:{s:64:\"c08d40bbe835bc57cd0023f010d12756c0c1c2a6cdc3dbfe667677828edaacf9\";a:4:{s:10:\"expiration\";i:1610769464;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36\";s:5:\"login\";i:1610596664;}}'),
(261, 15, 'nickname', 'admin1'),
(262, 15, 'first_name', ''),
(263, 15, 'last_name', ''),
(264, 15, 'description', ''),
(265, 15, 'rich_editing', 'true'),
(266, 15, 'syntax_highlighting', 'true'),
(267, 15, 'comment_shortcuts', 'false'),
(268, 15, 'admin_color', 'fresh'),
(269, 15, 'use_ssl', '0'),
(270, 15, 'show_admin_bar_front', 'true'),
(271, 15, 'locale', ''),
(272, 15, 'wp_capabilities', 'a:1:{s:6:\"author\";b:1;}'),
(273, 15, 'wp_user_level', '2'),
(274, 15, 'qa_point', '1'),
(275, 15, 'et_question_count', '0'),
(276, 15, 'et_answer_count', '0'),
(277, 15, 'key_confirm', '75d23af433e0cea4c0e45a56dba18b30'),
(278, 15, 'dismissed_wp_pointers', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'luphuowng', '$P$BcITLze18t4shpRR1h.L9SRSiCk9GE/', 'luphuowng', 'luphuowng@gmail.com', 'http://localhost/wordpress', '2020-09-25 12:38:16', '', 0, 'luphuowng'),
(2, 'tramanhn', '$P$Bir.WwijxadFfDg84iYvxQZx4Efqqd.', 'tramanhn', 'tramanh@gmail.com', '', '2020-10-30 08:28:56', '1604046539:$P$BSVC1JIQfCanaVOgRjfXw9Tu5W8js40', 0, 'Trâm Anh'),
(3, 'triplehao', '$P$BaLYPWAUEA4SvBmBMo6ZUjjRHWu8uk.', 'triplehao', 'triplehao@gmail.com', '', '2020-10-30 08:32:01', '1604046725:$P$BFnAQLl4seND8VbL.nrjRpRVLAsvRR.', 0, 'Hải Hào Hồ'),
(4, 'danghuy', '$P$BgvvC0Hrb7.6JFdGP0ZTN5gCE9YSc90', 'danghuy', 'danghuy@gmail.com', '', '2020-10-30 08:35:49', '1604046952:$P$BpeCOcVXHVqEmzR2IFQFVbcSigu7IN1', 0, 'Huy Đăng'),
(5, 'hven', '$P$BhPhPnzIH/sg4D3m1IhLjhVnIN0cBi1', 'hven', 'hven@gmail.com', '', '2020-10-30 08:36:29', '1604046993:$P$BQMI1l.4pT4LQti41Gm4w0JUivq6001', 0, 'Vẹn Hoàng'),
(6, 'phucphiminh', '$P$BAWRNdOKSabrRi5wXCU7s6NCPuXNAp.', 'phucphiminh', 'phiminhphuc@gmail.com', '', '2020-10-30 08:37:12', '1604047035:$P$B4QADvWAk4ea5WmxE3Mcb6/RFFVfny1', 0, 'Minh Phúc Phí'),
(7, 'dmphuc', '$P$B3ckQfOb5QcU7CvWe9uOAbFFfbMEkl0', 'dmphuc', 'dmphuc@gmail.com', '', '2020-10-30 08:38:02', '1604047085:$P$BQT49cy5VD.uZsIIQz68JIHotS40UT0', 0, 'Minh Phúc Đào'),
(8, 'qsang', '$P$BrMWjoSa8a2x53uPYExczhUxiEh.D71', 'qsang', 'lqsang@gmail.com', '', '2020-10-30 08:39:01', '1604047144:$P$BQ/jUSVKOrd2/A.8hnjcopOTojsps11', 0, 'Lương Sang'),
(9, 'admin', '$P$BvPREOKAWvEqOvWtYFPooKECedJgu2.', 'admin', 'tdien105@gmail.com', '', '2020-11-28 10:53:24', '', 0, 'admin'),
(10, 'Alex', '$P$BflaBd2ZCG4Tgk9cKo9aJbOy9YyAco/', 'alex', 'alex@gmail.com', '', '2020-11-28 10:53:25', '', 0, 'Alex'),
(11, 'John', '$P$B7jBz3.WY7zuOoNRWdj5EXaK0V/aW7/', 'john', 'john@hotmail.com', '', '2020-11-28 10:53:28', '', 0, 'John'),
(12, 'Smith', '$P$BjRABIH.W//.HM2bk20i7Vb4XwZ4ng.', 'smith', 'smith@yahoo.com', '', '2020-11-28 10:53:29', '', 0, 'Smith'),
(13, 'Marry', '$P$B3VjNIDl.Qgrky01vgNE92m0ffAgsQ0', 'marry', 'marry@hotmail.com', '', '2020-11-28 10:53:30', '', 0, 'Marry'),
(14, 'admindemo', '$P$BzTJ7eVG2ytVRI/JU1rYLLRWBBMiHh1', 'admindemo', 'demo@enginethemes.com', '', '2020-11-28 10:53:32', '', 0, 'Engine Admin Demo'),
(15, 'admin1', '$P$BvI59/yj7cdKPAinla1w0Ct2qSovgd1', 'admin1', 'admin@gmail.com', '', '2020-12-30 07:36:59', '', 0, 'admin1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_admin_notes`
--

CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT 0,
  `layout` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'info'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_wc_admin_notes`
--

INSERT INTO `wp_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`, `layout`, `image`, `is_deleted`, `icon`) VALUES
(1, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', '{}', 'unactioned', 'woocommerce-admin', '2020-10-17 09:29:57', NULL, 0, 'plain', '', 0, 'info'),
(2, 'wc-admin-onboarding-profiler-reminder', 'update', 'en_US', 'Welcome to WooCommerce! Set up your store and start selling', 'We\'re here to help you going through the most important steps to get your store up and running.', '{}', 'actioned', 'woocommerce-admin', '2020-10-17 09:29:58', NULL, 0, 'plain', '', 0, 'info'),
(3, 'wc-admin-onboarding-email-marketing', 'info', 'en_US', 'Tips, product updates, and inspiration', 'We\'re here for you - get tips, product updates and inspiration straight to your email box', '{}', 'unactioned', 'woocommerce-admin', '2020-10-17 09:30:01', NULL, 0, 'plain', '', 0, 'info'),
(4, 'wc-admin-marketing-intro', 'info', 'en_US', 'Connect with your audience', 'Grow your customer base and increase your sales with marketing tools built for WooCommerce.', '{}', 'unactioned', 'woocommerce-admin', '2020-10-17 09:30:01', NULL, 0, 'plain', '', 0, 'info'),
(5, 'ecomm-need-help-setting-up-your-store', 'info', 'en_US', 'Need help setting up your Store?', 'Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.', '{}', 'pending', 'woocommerce.com', '2020-10-17 09:30:02', NULL, 0, 'plain', '', 0, 'info'),
(6, 'woocommerce-services', 'info', 'en_US', 'WooCommerce Shipping & Tax', 'WooCommerce Shipping &amp; Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.', '{}', 'pending', 'woocommerce.com', '2020-10-17 09:30:02', NULL, 0, 'plain', '', 0, 'info'),
(7, 'ecomm-unique-shopping-experience', 'info', 'en_US', 'For a shopping experience as unique as your customers', 'Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.', '{}', 'pending', 'woocommerce.com', '2020-10-17 09:30:02', NULL, 0, 'plain', '', 0, 'info'),
(8, 'wc-admin-mobile-app', 'info', 'en_US', 'Install Woo mobile app', 'Install the WooCommerce mobile app to manage orders, receive sales notifications, and view key metrics — wherever you are.', '{}', 'unactioned', 'woocommerce-admin', '2020-10-23 07:42:58', NULL, 0, 'plain', '', 0, 'info'),
(9, 'wc-admin-onboarding-payments-reminder', 'info', 'en_US', 'Start accepting payments on your store!', 'Take payments with the provider that’s right for you - choose from 100+ payment gateways for WooCommerce.', '{}', 'unactioned', 'woocommerce-admin', '2020-10-23 07:42:59', NULL, 0, 'plain', '', 0, 'info'),
(10, 'mailchimp-for-woocommerce-incomplete-install', 'warning', 'en_US', 'Mailchimp For WooCommerce', 'Plugin is not yet connected to a Mailchimp account. To complete the connection, open the settings page.', '{\"getting_started\":true,\"activated\":1603439027,\"activated_formatted\":\"October 23rd\"}', 'unactioned', 'mailchimp-for-woocommerce', '2020-10-23 07:43:47', NULL, 0, 'plain', '', 0, 'info'),
(11, 'wc-admin-store-notice-giving-feedback-2', 'info', 'en_US', 'Give feedback', 'Now that you’ve chosen us as a partner, our goal is to make sure we\'re providing the right tools to meet your needs. We\'re looking forward to having your feedback on the store setup experience so we can improve it in the future.', '{}', 'unactioned', 'woocommerce-admin', '2020-10-30 07:22:07', NULL, 0, 'plain', '', 0, 'info'),
(12, 'wc-admin-insight-first-sale', 'survey', 'en_US', 'Did you know?', 'A WooCommerce powered store needs on average 31 days to get the first sale. You\'re on the right track! Do you find this type of insight useful?', '{}', 'unactioned', 'woocommerce-admin', '2020-10-30 07:22:08', NULL, 0, 'plain', '', 0, 'info'),
(13, 'wc-admin-home-screen-feedback', 'info', 'en_US', 'Help us improve the WooCommerce Home screen', 'We\'d love your input to shape the future of the WooCommerce Home screen together. Feel free to share any feedback, ideas or suggestions that you have.', '{}', 'unactioned', 'woocommerce-admin', '2020-10-30 07:22:09', NULL, 0, 'plain', '', 0, 'info'),
(14, 'wcpay-promo-2020-11', 'marketing', 'en_US', 'Manage subscriber payments from your store\'s dashboard', '<a href=\"https://woocommerce.com/payments/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_exp20\" target=\"_blank\">WooCommerce Payments</a> now supports <a href=\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_exp20\" target=\"_blank\">WooCommerce Subscriptions</a>. <strong>Get 50% off transaction fees</strong> and make the most out of your holiday sales by adding WooCommerce Payments to your store. Limited-time offer. <br /><br /><em>By clicking \"Install now,\" you agree to our general <a href=\"https://wordpress.com/tos/\" target=\"_blank\">Terms of Service</a> and promotional <a href=\"https://woocommerce.com/terms-conditions/woocommerce-payments-promotion/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_exp20\" target=\"_blank\">Terms of Service</a>.</em>', '{}', 'pending', 'woocommerce.com', '2020-11-28 05:57:47', NULL, 0, 'plain', '', 0, 'info'),
(15, 'wcpay-subscriptions-2020-11', 'marketing', 'en_US', 'Manage subscriber payments from your store\'s dashboard', 'Securely accept cards and manage transactions right from your dashboard with <a href=\"https://woocommerce.com/payments/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Payments</a>  – now supporting <a href=\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Subscriptions</a>! <br /><br /><em>By clicking \"Install now,\" you agree to our <a href=\"https://wordpress.com/tos/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">Terms of Service</a>.</em>', '{}', 'pending', 'woocommerce.com', '2020-11-28 05:57:47', NULL, 0, 'plain', '', 0, 'info');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_admin_note_actions`
--

CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `actioned_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_wc_admin_note_actions`
--

INSERT INTO `wp_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`, `actioned_text`) VALUES
(1, 1, 'connect', 'Kết nối', '?page=wc-addons&section=helper', 'unactioned', 0, ''),
(2, 2, 'continue-profiler', 'Continue Store Setup', 'http://localhost/wordpress/wp-admin/admin.php?page=wc-admin&path=/setup-wizard', 'unactioned', 1, ''),
(3, 2, 'skip-profiler', 'Skip Setup', 'http://localhost/wordpress/wp-admin/admin.php?page=wc-admin&reset_profiler=0', 'actioned', 0, ''),
(4, 3, 'yes-please', 'Đồng ý!', 'https://woocommerce.us8.list-manage.com/subscribe/post?u=2c1434dc56f9506bf3c3ecd21&amp;id=13860df971&amp;SIGNUPPAGE=plugin', 'actioned', 0, ''),
(5, 4, 'open-marketing-hub', 'Open marketing hub', 'http://localhost/wordpress/wp-admin/admin.php?page=wc-admin&path=/marketing', 'actioned', 0, ''),
(12, 8, 'learn-more', 'Tìm hiểu thêm', 'https://woocommerce.com/mobile/', 'actioned', 0, ''),
(13, 9, 'view-payment-gateways', 'Tìm hiểu thêm', 'https://woocommerce.com/product-category/woocommerce-extensions/payment-gateways/', 'actioned', 1, ''),
(17, 10, 'settings', 'Open Settings', 'http://localhost/wordpress/wp-admin/admin.php?page=mailchimp-woocommerce', 'actioned', 0, ''),
(30, 11, 'share-feedback', 'Share feedback', 'https://automattic.survey.fm/new-onboarding-survey', 'actioned', 0, ''),
(31, 12, 'affirm-insight-first-sale', 'Có', '', 'actioned', 0, 'Thanks for your feedback'),
(32, 12, 'deny-insight-first-sale', 'Không', '', 'actioned', 0, 'Thanks for your feedback'),
(33, 13, 'home-screen-feedback-share-feedback', 'Share feedback', 'https://automattic.survey.fm/home-screen-survey', 'actioned', 0, ''),
(113, 5, 'set-up-concierge', 'Schedule free session', 'https://wordpress.com/me/concierge', 'actioned', 1, ''),
(114, 6, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox', 'unactioned', 1, ''),
(115, 7, 'learn-more-ecomm-unique-shopping-experience', 'Learn more', 'https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox', 'actioned', 1, ''),
(116, 14, 'install-now', 'Install now', 'admin.php?page=wc-admin&action=setup-woocommerce-payments', 'actioned', 1, ''),
(117, 15, 'install-now', 'Install now', 'admin.php?page=wc-admin&action=setup-woocommerce-payments', 'actioned', 1, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_category_lookup`
--

CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_wc_category_lookup`
--

INSERT INTO `wp_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(15, 15);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_customer_lookup`
--

CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_order_coupon_lookup`
--

CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_order_product_lookup`
--

CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT 0,
  `product_gross_revenue` double NOT NULL DEFAULT 0,
  `coupon_amount` double NOT NULL DEFAULT 0,
  `tax_amount` double NOT NULL DEFAULT 0,
  `shipping_amount` double NOT NULL DEFAULT 0,
  `shipping_tax_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_order_stats`
--

CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT 0,
  `total_sales` double NOT NULL DEFAULT 0,
  `tax_total` double NOT NULL DEFAULT 0,
  `shipping_total` double NOT NULL DEFAULT 0,
  `net_total` double NOT NULL DEFAULT 0,
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_order_tax_lookup`
--

CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT 0,
  `order_tax` double NOT NULL DEFAULT 0,
  `total_tax` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0,
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_reserved_stock`
--

CREATE TABLE `wp_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT 0,
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_tax_rate_classes`
--

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(10, '1', 'a:8:{s:22:\"mailchimp_landing_site\";s:37:\"http://localhost/wordpress/wordpress/\";s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:733:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2020-10-17T09:30:11+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"VN\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"VN\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:19:\"luphuowng@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1606715996);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`);

--
-- Chỉ mục cho bảng `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Chỉ mục cho bảng `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Chỉ mục cho bảng `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Chỉ mục cho bảng `wp_arete_buddypress_smileys_manage`
--
ALTER TABLE `wp_arete_buddypress_smileys_manage`
  ADD UNIQUE KEY `id` (`id`);

--
-- Chỉ mục cho bảng `wp_bp_activity`
--
ALTER TABLE `wp_bp_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_recorded` (`date_recorded`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `secondary_item_id` (`secondary_item_id`),
  ADD KEY `component` (`component`),
  ADD KEY `type` (`type`),
  ADD KEY `mptt_left` (`mptt_left`),
  ADD KEY `mptt_right` (`mptt_right`),
  ADD KEY `hide_sitewide` (`hide_sitewide`),
  ADD KEY `is_spam` (`is_spam`);

--
-- Chỉ mục cho bảng `wp_bp_activity_meta`
--
ALTER TABLE `wp_bp_activity_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_id` (`activity_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_bp_friends`
--
ALTER TABLE `wp_bp_friends`
  ADD PRIMARY KEY (`id`),
  ADD KEY `initiator_user_id` (`initiator_user_id`),
  ADD KEY `friend_user_id` (`friend_user_id`);

--
-- Chỉ mục cho bảng `wp_bp_groups`
--
ALTER TABLE `wp_bp_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `creator_id` (`creator_id`),
  ADD KEY `status` (`status`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `wp_bp_groups_groupmeta`
--
ALTER TABLE `wp_bp_groups_groupmeta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_bp_groups_members`
--
ALTER TABLE `wp_bp_groups_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `is_admin` (`is_admin`),
  ADD KEY `is_mod` (`is_mod`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `inviter_id` (`inviter_id`),
  ADD KEY `is_confirmed` (`is_confirmed`);

--
-- Chỉ mục cho bảng `wp_bp_invitations`
--
ALTER TABLE `wp_bp_invitations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `inviter_id` (`inviter_id`),
  ADD KEY `invitee_email` (`invitee_email`),
  ADD KEY `class` (`class`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `secondary_item_id` (`secondary_item_id`),
  ADD KEY `type` (`type`),
  ADD KEY `invite_sent` (`invite_sent`),
  ADD KEY `accepted` (`accepted`);

--
-- Chỉ mục cho bảng `wp_bp_messages_messages`
--
ALTER TABLE `wp_bp_messages_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `thread_id` (`thread_id`);

--
-- Chỉ mục cho bảng `wp_bp_messages_meta`
--
ALTER TABLE `wp_bp_messages_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_id` (`message_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_bp_messages_notices`
--
ALTER TABLE `wp_bp_messages_notices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `is_active` (`is_active`);

--
-- Chỉ mục cho bảng `wp_bp_messages_recipients`
--
ALTER TABLE `wp_bp_messages_recipients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `thread_id` (`thread_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `sender_only` (`sender_only`),
  ADD KEY `unread_count` (`unread_count`);

--
-- Chỉ mục cho bảng `wp_bp_notifications`
--
ALTER TABLE `wp_bp_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `secondary_item_id` (`secondary_item_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `is_new` (`is_new`),
  ADD KEY `component_name` (`component_name`),
  ADD KEY `component_action` (`component_action`),
  ADD KEY `useritem` (`user_id`,`is_new`);

--
-- Chỉ mục cho bảng `wp_bp_notifications_meta`
--
ALTER TABLE `wp_bp_notifications_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_id` (`notification_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_bp_user_blogs`
--
ALTER TABLE `wp_bp_user_blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- Chỉ mục cho bảng `wp_bp_user_blogs_blogmeta`
--
ALTER TABLE `wp_bp_user_blogs_blogmeta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_id` (`blog_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_bp_xprofile_data`
--
ALTER TABLE `wp_bp_xprofile_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `field_id` (`field_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `wp_bp_xprofile_fields`
--
ALTER TABLE `wp_bp_xprofile_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `field_order` (`field_order`),
  ADD KEY `can_delete` (`can_delete`),
  ADD KEY `is_required` (`is_required`);

--
-- Chỉ mục cho bảng `wp_bp_xprofile_groups`
--
ALTER TABLE `wp_bp_xprofile_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `can_delete` (`can_delete`);

--
-- Chỉ mục cho bảng `wp_bp_xprofile_meta`
--
ALTER TABLE `wp_bp_xprofile_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Chỉ mục cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Chỉ mục cho bảng `wp_mailchimp_carts`
--
ALTER TABLE `wp_mailchimp_carts`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `wp_mailchimp_jobs`
--
ALTER TABLE `wp_mailchimp_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Chỉ mục cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Chỉ mục cho bảng `wp_rt_rtm_activity`
--
ALTER TABLE `wp_rt_rtm_activity`
  ADD KEY `activity_id` (`activity_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `privacy` (`privacy`);

--
-- Chỉ mục cho bảng `wp_rt_rtm_api`
--
ALTER TABLE `wp_rt_rtm_api`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wp_rt_rtm_media`
--
ALTER TABLE `wp_rt_rtm_media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_id` (`media_id`),
  ADD KEY `media_author` (`media_author`),
  ADD KEY `album_id` (`album_id`),
  ADD KEY `media_author_id` (`album_id`,`media_author`),
  ADD KEY `context_author_album_id` (`context_id`,`album_id`,`media_author`),
  ADD KEY `context_data` (`context`),
  ADD KEY `activity_id` (`activity_id`);

--
-- Chỉ mục cho bảng `wp_rt_rtm_media_interaction`
--
ALTER TABLE `wp_rt_rtm_media_interaction`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wp_rt_rtm_media_meta`
--
ALTER TABLE `wp_rt_rtm_media_meta`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wp_signups`
--
ALTER TABLE `wp_signups`
  ADD PRIMARY KEY (`signup_id`),
  ADD KEY `activation_key` (`activation_key`),
  ADD KEY `user_email` (`user_email`),
  ADD KEY `user_login_email` (`user_login`,`user_email`),
  ADD KEY `domain_path` (`domain`(140),`path`(51));

--
-- Chỉ mục cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Chỉ mục cho bảng `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Chỉ mục cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Chỉ mục cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Chỉ mục cho bảng `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Chỉ mục cho bảng `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Chỉ mục cho bảng `wp_wc_category_lookup`
--
ALTER TABLE `wp_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Chỉ mục cho bảng `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Chỉ mục cho bảng `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Chỉ mục cho bảng `wp_wc_order_coupon_lookup`
--
ALTER TABLE `wp_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Chỉ mục cho bảng `wp_wc_order_product_lookup`
--
ALTER TABLE `wp_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Chỉ mục cho bảng `wp_wc_order_stats`
--
ALTER TABLE `wp_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Chỉ mục cho bảng `wp_wc_order_tax_lookup`
--
ALTER TABLE `wp_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Chỉ mục cho bảng `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Chỉ mục cho bảng `wp_wc_reserved_stock`
--
ALTER TABLE `wp_wc_reserved_stock`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Chỉ mục cho bảng `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Chỉ mục cho bảng `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Chỉ mục cho bảng `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Chỉ mục cho bảng `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Chỉ mục cho bảng `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Chỉ mục cho bảng `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Chỉ mục cho bảng `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Chỉ mục cho bảng `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Chỉ mục cho bảng `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Chỉ mục cho bảng `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Chỉ mục cho bảng `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Chỉ mục cho bảng `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Chỉ mục cho bảng `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=384;

--
-- AUTO_INCREMENT cho bảng `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `wp_arete_buddypress_smileys_manage`
--
ALTER TABLE `wp_arete_buddypress_smileys_manage`
  MODIFY `id` mediumint(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_bp_activity`
--
ALTER TABLE `wp_bp_activity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `wp_bp_activity_meta`
--
ALTER TABLE `wp_bp_activity_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_bp_friends`
--
ALTER TABLE `wp_bp_friends`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_bp_groups`
--
ALTER TABLE `wp_bp_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_bp_groups_groupmeta`
--
ALTER TABLE `wp_bp_groups_groupmeta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `wp_bp_groups_members`
--
ALTER TABLE `wp_bp_groups_members`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `wp_bp_invitations`
--
ALTER TABLE `wp_bp_invitations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_bp_messages_messages`
--
ALTER TABLE `wp_bp_messages_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_bp_messages_meta`
--
ALTER TABLE `wp_bp_messages_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_bp_messages_notices`
--
ALTER TABLE `wp_bp_messages_notices`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_bp_messages_recipients`
--
ALTER TABLE `wp_bp_messages_recipients`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_bp_notifications`
--
ALTER TABLE `wp_bp_notifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_bp_notifications_meta`
--
ALTER TABLE `wp_bp_notifications_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_bp_user_blogs`
--
ALTER TABLE `wp_bp_user_blogs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_bp_user_blogs_blogmeta`
--
ALTER TABLE `wp_bp_user_blogs_blogmeta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `wp_bp_xprofile_data`
--
ALTER TABLE `wp_bp_xprofile_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `wp_bp_xprofile_fields`
--
ALTER TABLE `wp_bp_xprofile_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_bp_xprofile_groups`
--
ALTER TABLE `wp_bp_xprofile_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_bp_xprofile_meta`
--
ALTER TABLE `wp_bp_xprofile_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_mailchimp_jobs`
--
ALTER TABLE `wp_mailchimp_jobs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1396;

--
-- AUTO_INCREMENT cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=664;

--
-- AUTO_INCREMENT cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1940;

--
-- AUTO_INCREMENT cho bảng `wp_rt_rtm_api`
--
ALTER TABLE `wp_rt_rtm_api`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_rt_rtm_media`
--
ALTER TABLE `wp_rt_rtm_media`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_rt_rtm_media_interaction`
--
ALTER TABLE `wp_rt_rtm_media_interaction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_rt_rtm_media_meta`
--
ALTER TABLE `wp_rt_rtm_media_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_signups`
--
ALTER TABLE `wp_signups`
  MODIFY `signup_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=280;

--
-- AUTO_INCREMENT cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT cho bảng `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
