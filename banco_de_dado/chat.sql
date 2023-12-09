-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 09/12/2023 às 00:17
-- Versão do servidor: 8.0.30
-- Versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `chat`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_abstract_auto_responder`
--

CREATE TABLE `lh_abstract_auto_responder` (
  `id` int NOT NULL,
  `siteaccess` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wait_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `wait_timeout` int NOT NULL,
  `position` int NOT NULL,
  `timeout_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bot_configuration` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operator` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dep_id` int NOT NULL,
  `user_id` int NOT NULL,
  `only_proactive` int NOT NULL,
  `repeat_number` int NOT NULL DEFAULT '1',
  `survey_timeout` int NOT NULL DEFAULT '0',
  `survey_id` int NOT NULL DEFAULT '0',
  `wait_timeout_hold_1` int NOT NULL,
  `wait_timeout_hold_2` int NOT NULL,
  `wait_timeout_hold_3` int NOT NULL,
  `wait_timeout_hold_4` int NOT NULL,
  `wait_timeout_hold_5` int NOT NULL,
  `timeout_hold_message_1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `timeout_hold_message_2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `timeout_hold_message_3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `timeout_hold_message_4` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `timeout_hold_message_5` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `wait_timeout_hold` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `wait_timeout_2` int NOT NULL,
  `timeout_message_2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `wait_timeout_3` int NOT NULL,
  `timeout_message_3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `wait_timeout_4` int NOT NULL,
  `timeout_message_4` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `wait_timeout_5` int NOT NULL,
  `timeout_message_5` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `wait_timeout_reply_1` int NOT NULL,
  `timeout_reply_message_1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `wait_timeout_reply_2` int NOT NULL,
  `timeout_reply_message_2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `wait_timeout_reply_3` int NOT NULL,
  `timeout_reply_message_3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `wait_timeout_reply_4` int NOT NULL,
  `timeout_reply_message_4` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `wait_timeout_reply_5` int NOT NULL,
  `timeout_reply_message_5` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `languages` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ignore_pa_chat` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_abstract_auto_responder_chat`
--

CREATE TABLE `lh_abstract_auto_responder_chat` (
  `id` int NOT NULL,
  `chat_id` int NOT NULL,
  `auto_responder_id` int NOT NULL,
  `wait_timeout_send` int NOT NULL,
  `pending_send_status` int NOT NULL,
  `active_send_status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_abstract_auto_responder_dep`
--

CREATE TABLE `lh_abstract_auto_responder_dep` (
  `id` bigint NOT NULL,
  `autoresponder_id` int NOT NULL,
  `dep_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_abstract_browse_offer_invitation`
--

CREATE TABLE `lh_abstract_browse_offer_invitation` (
  `id` int NOT NULL,
  `siteaccess` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_on_site` int NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `callback_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `lhc_iframe_content` tinyint NOT NULL,
  `custom_iframe_url` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_times` int NOT NULL,
  `url` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int NOT NULL,
  `has_url` int NOT NULL,
  `is_wildcard` int NOT NULL,
  `referrer` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hash` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` int NOT NULL,
  `height` int NOT NULL,
  `unit` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_abstract_chat_alert_icon`
--

CREATE TABLE `lh_abstract_chat_alert_icon` (
  `id` bigint NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_abstract_chat_column`
--

CREATE TABLE `lh_abstract_chat_column` (
  `id` int NOT NULL,
  `column_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `variable` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `conditions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_identifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chat_enabled` tinyint(1) NOT NULL,
  `online_enabled` tinyint(1) NOT NULL,
  `icon_mode` tinyint(1) NOT NULL DEFAULT '0',
  `has_popup` tinyint(1) NOT NULL DEFAULT '0',
  `popup_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_column` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `chat_list_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `mail_list_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `mail_enabled` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_abstract_chat_priority`
--

CREATE TABLE `lh_abstract_chat_priority` (
  `id` int NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_destination` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `present_role_is` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dep_id` int NOT NULL,
  `dest_dep_id` int NOT NULL DEFAULT '0',
  `sort_priority` int NOT NULL DEFAULT '0',
  `priority` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_abstract_chat_variable`
--

CREATE TABLE `lh_abstract_chat_variable` (
  `id` int NOT NULL,
  `var_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `var_identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inv` tinyint(1) NOT NULL,
  `old_js_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `change_message` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(1) NOT NULL,
  `persistent` tinyint(1) NOT NULL,
  `js_variable` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dep_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_abstract_email_template`
--

CREATE TABLE `lh_abstract_email_template` (
  `id` int NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_name_ac` tinyint NOT NULL,
  `from_email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_email_ac` tinyint NOT NULL,
  `user_mail_as_sender` tinyint NOT NULL,
  `use_chat_locale` tinyint(1) NOT NULL DEFAULT '0',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `translations` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bcc_recipients` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_ac` tinyint NOT NULL,
  `reply_to` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reply_to_ac` tinyint NOT NULL,
  `recipient` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `lh_abstract_email_template`
--

INSERT INTO `lh_abstract_email_template` (`id`, `name`, `from_name`, `from_name_ac`, `from_email`, `from_email_ac`, `user_mail_as_sender`, `use_chat_locale`, `content`, `translations`, `subject`, `bcc_recipients`, `subject_ac`, `reply_to`, `reply_to_ac`, `recipient`) VALUES
(1, 'Send mail to user', 'Live Helper Chat', 0, '', 0, 0, 0, 'Dear {user_chat_nick},\r\n\r\n{additional_message}\r\n\r\nLive Support response:\r\n{messages_content}\r\n\r\nSincerely,\r\nLive Support Team\r\n', '', '{name_surname} has responded to your request', '', 1, '', 1, ''),
(2, 'Support request from user', '', 0, '', 0, 0, 0, 'Hello,\r\n\r\nUser request data:\r\nName: {name}\r\nEmail: {email}\r\nPhone: {phone}\r\nDepartment: {department}\r\nCountry: {country}\r\nCity: {city}\r\nIP: {ip}\r\n\r\nMessage:\r\n{message}\r\n\r\nAdditional data, if any:\r\n{additional_data}\r\n\r\nURL of page from which user has send request:\r\n{url_request}\r\n\r\nLink to chat if any:\r\n{prefillchat}\r\n\r\nSincerely,\r\nLive Support Team', '', '{name}, {country}, {department}, Support request from user', '', 0, '', 0, 'barata321@gmail.com'),
(3, 'User mail for himself', 'Live Helper Chat', 0, '', 0, 0, 0, 'Dear {user_chat_nick},\r\n\r\nTranscript:\r\n{messages_content}\r\nChat ID: {chat_id}\n\r\nSincerely,\r\nLive Support Team\r\n', '', 'Chat transcript', '', 0, '', 0, ''),
(4, 'New chat request', 'Live Helper Chat', 0, '', 0, 0, 0, 'Hello,\r\n\r\nUser request data:\r\nName: {name}\r\nEmail: {email}\r\nPhone: {phone}\r\nDepartment: {department}\r\nCountry: {country}\r\nCity: {city}\r\nIP: {ip}\r\nCreated:	{created}\r\nUser left:	{user_left}\r\nWaited:	{waited}\r\nChat duration:	{chat_duration}\r\n\r\nMessage:\r\n{message}\r\n\r\nURL of page from which user has send request:\r\n{url_request}\r\n\r\nClick to accept chat automatically\r\n{url_accept}\r\n\r\nSurvey\r\n{survey}\r\n\r\nSincerely,\r\nLive Support Team', '', 'New chat request', '', 0, '', 0, 'barata321@gmail.com'),
(5, 'Chat was closed', 'Live Helper Chat', 0, '', 0, 0, 0, 'Hello,\r\n\r\n{operator} has closed a chat\r\nName: {name}\r\nEmail: {email}\r\nPhone: {phone}\r\nDepartment: {department}\r\nCountry: {country}\r\nCity: {city}\r\nIP: {ip}\r\nCreated:	{created}\r\nUser left:	{user_left}\r\nWaited:	{waited}\r\nChat duration:	{chat_duration}\r\n\r\nMessage:\r\n{message}\r\n\r\nAdditional data, if any:\r\n{additional_data}\r\n\r\nURL of page from which user has send request:\r\n{url_request}\r\n\r\nSurvey:\r\n{survey}\r\n\r\nSincerely,\r\nLive Support Team', '', 'Chat was closed', '', 0, '', 0, 'barata321@gmail.com'),
(6, 'New FAQ question', 'Live Helper Chat', 0, '', 0, 0, 0, 'Hello,\r\n\r\nNew FAQ question\r\nEmail: {email}\r\n\r\nQuestion:\r\n{question}\r\n\r\nQuestion URL:\r\n{url_question}\r\n\r\nURL to answer a question:\r\n{url_request}\r\n\r\nSincerely,\r\nLive Support Team', '', 'New FAQ question', '', 0, '', 0, 'barata321@gmail.com'),
(7, 'New unread message', 'Live Helper Chat', 0, '', 0, 0, 0, 'Hello,\r\n\r\nUser request data:\r\nName: {name}\r\nEmail: {email}\r\nPhone: {phone}\r\nDepartment: {department}\r\nCountry: {country}\r\nCity: {city}\r\nIP: {ip}\r\nCreated:	{created}\r\nUser left:	{user_left}\r\nWaited:	{waited}\r\nChat duration:	{chat_duration}\r\n\r\nMessage:\r\n{message}\r\n\r\nURL of page from which user has send request:\r\n{url_request}\r\n\r\nClick to accept chat automatically\r\n{url_accept}\r\n\r\nSurvey:\r\n{survey}\r\n\r\nSincerely,\r\nLive Support Team', '', 'New unread message', '', 0, '', 0, 'barata321@gmail.com'),
(8, 'Filled form', 'MCFC', 0, '', 0, 0, 0, 'Hello,\r\n\r\nUser has filled a form\r\nForm name - {form_name}\r\nUser IP - {ip}\r\nDownload filled data - {url_download}\r\nView filled data - {url_view}\r\n\r\n{content}\r\n\r\nSincerely,\r\nLive Support Team', '', 'Filled form - {form_name}', '', 0, '', 0, 'barata321@gmail.com'),
(9, 'Chat was accepted', 'Live Helper Chat', 0, '', 0, 0, 0, 'Hello,\r\n\r\nOperator {user_name} has accepted a chat [{chat_id}]\r\n\r\nUser request data:\r\nName: {name}\r\nEmail: {email}\r\nPhone: {phone}\r\nDepartment: {department}\r\nCountry: {country}\r\nCity: {city}\r\nIP: {ip}\r\nCreated:	{created}\r\nUser left:	{user_left}\r\nWaited:	{waited}\r\nChat duration:	{chat_duration}\r\n\r\nMessage:\r\n{message}\r\n\r\nURL of page from which user has send request:\r\n{url_request}\r\n\r\nClick to accept chat automatically\r\n{url_accept}\r\n\r\nSurvey:\r\n{survey}\r\n\r\nSincerely,\r\nLive Support Team', '', 'Chat was accepted [{chat_id}]', '', 0, '', 0, 'barata321@gmail.com'),
(10, 'Permission request', 'Live Helper Chat', 0, '', 0, 0, 0, 'Hello,\r\n\r\nOperator {user} has requested these permissions\n\r\n{permissions}\r\n\r\nSincerely,\r\nLive Support Team', '', 'Permission request from {user}', '', 0, '', 0, ''),
(11, 'You have unread messages', 'Live Helper Chat', 0, '', 0, 0, 0, 'Hello,\r\n\r\nOperator {operator} has answered to you\r\n\r\n{messages}\r\n\r\nSincerely,\r\nLive Support Team', '', 'Operator has answered to your request', '', 0, '', 0, ''),
(12, 'Visitor returned', 'Live Helper Chat', 0, '', 0, 0, 0, 'Hello,\r\n\r\nVisitor information\r\nName: {name}\r\nEmail: {email}\r\nPhone: {phone}\r\nDepartment: {department}\r\nCountry: {country}\r\nCity: {city}\r\nIP: {ip}\r\nCreated:	{created}\r\nUser left:	{user_left}\r\nWaited:	{waited}\r\nChat duration:	{chat_duration}\r\n\r\nSee more information at\r\n{url_accept}\r\n\r\nLast chat:\r\n{message}\r\n\r\nAdditional data, if any:\r\n{additional_data}\r\n\r\nSincerely,\r\nLive Support Team', '', 'Visitor returned - {username}', '', 0, '', 0, ''),
(13, 'Report prepared', 'Live Helper Chat', 0, '', 0, 0, 0, 'Hello,\r\n\r\nReport prepared - {report_name}, {date_range}\r\n\r\n{report_description}\r\n\r\nView report at:\r\n{url_report}\r\nView directly: {url_report_direct}', '', 'Report prepared - {report_name}', '', 0, '', 0, '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_abstract_form`
--

CREATE TABLE `lh_abstract_form` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipient` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int NOT NULL,
  `name_attr` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro_attr` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `xls_columns` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pagelayout` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_content` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_abstract_form_collected`
--

CREATE TABLE `lh_abstract_form_collected` (
  `id` int NOT NULL,
  `form_id` int NOT NULL,
  `ctime` int NOT NULL,
  `ip` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chat_id` bigint NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_abstract_msg_protection`
--

CREATE TABLE `lh_abstract_msg_protection` (
  `id` int UNSIGNED NOT NULL,
  `pattern` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int NOT NULL DEFAULT '1',
  `remove` int NOT NULL DEFAULT '0',
  `v_warning` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_abstract_proactive_chat_campaign`
--

CREATE TABLE `lh_abstract_proactive_chat_campaign` (
  `id` bigint NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_abstract_proactive_chat_campaign_conv`
--

CREATE TABLE `lh_abstract_proactive_chat_campaign_conv` (
  `id` bigint NOT NULL,
  `device_type` tinyint NOT NULL,
  `invitation_type` tinyint(1) NOT NULL,
  `invitation_status` tinyint(1) NOT NULL,
  `chat_id` bigint NOT NULL,
  `campaign_id` int NOT NULL,
  `invitation_id` int NOT NULL,
  `department_id` int NOT NULL,
  `ctime` int NOT NULL,
  `con_time` int NOT NULL,
  `vid_id` bigint DEFAULT NULL,
  `variation_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `conv_int_expires` bigint UNSIGNED NOT NULL DEFAULT '0',
  `conv_int_time` bigint UNSIGNED NOT NULL DEFAULT '0',
  `conv_event` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `unique_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_abstract_proactive_chat_event`
--

CREATE TABLE `lh_abstract_proactive_chat_event` (
  `id` int NOT NULL,
  `vid_id` int NOT NULL,
  `ev_id` int NOT NULL,
  `ts` int NOT NULL,
  `val` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_abstract_proactive_chat_invitation`
--

CREATE TABLE `lh_abstract_proactive_chat_invitation` (
  `id` int NOT NULL,
  `siteaccess` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_on_site` int NOT NULL,
  `pageviews` int NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_returning` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_times` int NOT NULL,
  `dep_id` int NOT NULL,
  `hide_after_ntimes` int NOT NULL,
  `show_on_mobile` int NOT NULL,
  `delay` int NOT NULL,
  `delay_init` int NOT NULL,
  `show_instant` int NOT NULL,
  `autoresponder_id` int NOT NULL,
  `disabled` int NOT NULL,
  `inject_only_html` tinyint(1) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operator_ids` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_returning_nick` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referrer` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_random_operator` int NOT NULL,
  `operator_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `campaign_id` int NOT NULL,
  `position` int NOT NULL,
  `event_invitation` int NOT NULL,
  `dynamic_invitation` int NOT NULL,
  `bot_id` int NOT NULL,
  `trigger_id` int NOT NULL,
  `bot_offline` tinyint(1) NOT NULL,
  `identifier` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requires_email` int NOT NULL,
  `iddle_for` int NOT NULL,
  `event_type` int NOT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `requires_username` int NOT NULL,
  `requires_phone` int NOT NULL,
  `design_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_abstract_proactive_chat_invitation_dep`
--

CREATE TABLE `lh_abstract_proactive_chat_invitation_dep` (
  `id` bigint NOT NULL,
  `invitation_id` int NOT NULL,
  `dep_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_abstract_proactive_chat_invitation_event`
--

CREATE TABLE `lh_abstract_proactive_chat_invitation_event` (
  `id` int NOT NULL,
  `invitation_id` int NOT NULL,
  `event_id` int NOT NULL,
  `min_number` int NOT NULL,
  `during_seconds` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_abstract_proactive_chat_variables`
--

CREATE TABLE `lh_abstract_proactive_chat_variables` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_timeout` int NOT NULL,
  `filter_val` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_abstract_product`
--

CREATE TABLE `lh_abstract_product` (
  `id` int NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disabled` int NOT NULL,
  `priority` int NOT NULL,
  `departament_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_abstract_product_departament`
--

CREATE TABLE `lh_abstract_product_departament` (
  `id` int NOT NULL,
  `product_id` int NOT NULL,
  `departament_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_abstract_rest_api_key`
--

CREATE TABLE `lh_abstract_rest_api_key` (
  `id` int NOT NULL,
  `api_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `active` int NOT NULL DEFAULT '0',
  `ip_restrictions` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_abstract_rest_api_key_remote`
--

CREATE TABLE `lh_abstract_rest_api_key_remote` (
  `id` int NOT NULL,
  `api_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `host` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `position` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_abstract_saved_report`
--

CREATE TABLE `lh_abstract_saved_report` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `recurring_options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_log` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `position` int UNSIGNED NOT NULL,
  `days` int UNSIGNED NOT NULL,
  `date_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `days_end` int UNSIGNED NOT NULL,
  `updated_at` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_abstract_saved_search`
--

CREATE TABLE `lh_abstract_saved_search` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `position` int UNSIGNED NOT NULL,
  `scope` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `days` int UNSIGNED NOT NULL,
  `updated_at` bigint UNSIGNED NOT NULL,
  `requested_at` bigint UNSIGNED NOT NULL,
  `total_records` bigint UNSIGNED NOT NULL,
  `passive` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `sharer_user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_abstract_stats`
--

CREATE TABLE `lh_abstract_stats` (
  `id` bigint NOT NULL,
  `type` int NOT NULL,
  `lupdate` bigint NOT NULL,
  `object_id` bigint NOT NULL,
  `stats` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_abstract_subject`
--

CREATE TABLE `lh_abstract_subject` (
  `id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `internal` tinyint(1) NOT NULL DEFAULT '0',
  `internal_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_abstract_subject_chat`
--

CREATE TABLE `lh_abstract_subject_chat` (
  `id` bigint NOT NULL,
  `subject_id` int NOT NULL,
  `chat_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_abstract_subject_dep`
--

CREATE TABLE `lh_abstract_subject_dep` (
  `id` int NOT NULL,
  `dep_id` int NOT NULL,
  `subject_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_abstract_survey`
--

CREATE TABLE `lh_abstract_survey` (
  `id` int NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feedback_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_stars_1_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_stars_1_pos` int NOT NULL,
  `max_stars_2_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_stars_2_pos` int NOT NULL,
  `max_stars_2` int NOT NULL,
  `max_stars_3_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_stars_3_pos` int NOT NULL,
  `max_stars_3` int NOT NULL,
  `max_stars_4_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_stars_4_pos` int NOT NULL,
  `max_stars_4` int NOT NULL,
  `max_stars_5_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_stars_5_pos` int NOT NULL,
  `max_stars_5` int NOT NULL,
  `question_options_1` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_options_1_items` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_options_1_pos` int NOT NULL,
  `question_options_2` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_options_2_items` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_options_2_pos` int NOT NULL,
  `question_options_3` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_options_3_items` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_options_3_pos` int NOT NULL,
  `question_options_4` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_options_4_items` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_options_4_pos` int NOT NULL,
  `question_options_5` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_options_5_items` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_options_5_pos` int NOT NULL,
  `question_plain_1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_plain_1_pos` int NOT NULL,
  `question_plain_2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_plain_2_pos` int NOT NULL,
  `question_plain_3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_plain_3_pos` int NOT NULL,
  `question_plain_4` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_plain_4_pos` int NOT NULL,
  `question_plain_5` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_plain_5_pos` int NOT NULL,
  `max_stars_1_enabled` int NOT NULL,
  `max_stars_2_enabled` int NOT NULL,
  `max_stars_3_enabled` int NOT NULL,
  `max_stars_4_enabled` int NOT NULL,
  `max_stars_5_enabled` int NOT NULL,
  `question_options_1_enabled` int NOT NULL,
  `question_options_2_enabled` int NOT NULL,
  `question_options_3_enabled` int NOT NULL,
  `question_options_4_enabled` int NOT NULL,
  `question_options_5_enabled` int NOT NULL,
  `question_plain_1_enabled` int NOT NULL,
  `question_plain_2_enabled` int NOT NULL,
  `question_plain_3_enabled` int NOT NULL,
  `question_plain_4_enabled` int NOT NULL,
  `question_plain_5_enabled` int NOT NULL,
  `max_stars_1` int NOT NULL,
  `max_stars_1_req` int NOT NULL,
  `max_stars_2_req` int NOT NULL,
  `max_stars_3_req` int NOT NULL,
  `max_stars_4_req` int NOT NULL,
  `max_stars_5_req` int NOT NULL,
  `question_options_1_req` int NOT NULL,
  `question_options_2_req` int NOT NULL,
  `question_options_3_req` int NOT NULL,
  `question_options_4_req` int NOT NULL,
  `question_options_5_req` int NOT NULL,
  `question_plain_1_req` int NOT NULL,
  `question_plain_2_req` int NOT NULL,
  `question_plain_3_req` int NOT NULL,
  `question_plain_4_req` int NOT NULL,
  `question_plain_5_req` int NOT NULL,
  `configuration` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_abstract_survey_item`
--

CREATE TABLE `lh_abstract_survey_item` (
  `id` bigint NOT NULL,
  `survey_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `chat_id` int NOT NULL,
  `user_id` int NOT NULL,
  `ftime` int NOT NULL,
  `dep_id` int NOT NULL,
  `max_stars_1` int NOT NULL,
  `max_stars_2` int NOT NULL,
  `max_stars_3` int NOT NULL,
  `max_stars_4` int NOT NULL,
  `max_stars_5` int NOT NULL,
  `question_options_1` int NOT NULL,
  `question_options_2` int NOT NULL,
  `question_options_3` int NOT NULL,
  `question_options_4` int NOT NULL,
  `question_options_5` int NOT NULL,
  `question_plain_1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_plain_2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_plain_3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_plain_4` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_plain_5` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `online_user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_abstract_widget_theme`
--

CREATE TABLE `lh_abstract_widget_theme` (
  `id` int NOT NULL,
  `name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_company` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `onl_bcolor` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bor_bcolor` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'e3e3e3',
  `text_color` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `online_image` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `online_image_path` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `offline_image` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `offline_image_path` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo_image` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo_image_path` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `need_help_image` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_background` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `need_help_tcolor` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `need_help_bcolor` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `need_help_border` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `need_help_close_bg` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `need_help_hover_bg` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `need_help_close_hover_bg` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `need_help_image_path` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_status_css` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_container_css` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_widget_css` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `need_help_header` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `need_help_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `online_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `offline_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `widget_border_color` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright_image` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright_image_path` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `widget_copyright_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_copyright` int NOT NULL DEFAULT '1',
  `explain_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro_operator_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `operator_image` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `operator_image_path` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `minimize_image` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `minimize_image_path` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `restore_image` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `restore_image_path` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `close_image` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `close_image_path` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `popup_image` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `popup_image_path` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hide_close` int NOT NULL,
  `hide_popup` int NOT NULL,
  `header_height` int NOT NULL,
  `header_padding` int NOT NULL,
  `widget_border_width` int NOT NULL,
  `support_joined` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `support_closed` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pending_join` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `noonline_operators` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `noonline_operators_offline` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_need_help` int NOT NULL DEFAULT '1',
  `show_need_help_timeout` int NOT NULL DEFAULT '24',
  `show_voting` tinyint(1) NOT NULL DEFAULT '1',
  `department_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_select` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `buble_visitor_background` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `buble_visitor_title_color` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `buble_visitor_text_color` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `buble_operator_background` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `buble_operator_title_color` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `buble_operator_text_color` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_popup_css` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hide_ts` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `hide_op_ts` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `widget_response_width` int NOT NULL,
  `show_need_help_delay` int NOT NULL,
  `show_status_delay` int NOT NULL,
  `modern_look` tinyint(1) NOT NULL DEFAULT '0',
  `bot_status_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bot_configuration` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notification_configuration` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pending_join_queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified` int NOT NULL,
  `widget_show_leave_form` tinyint(1) NOT NULL,
  `enable_widget_embed_override` tinyint(1) NOT NULL,
  `widget_popheight` int NOT NULL,
  `widget_popwidth` int NOT NULL,
  `widget_survey` int NOT NULL,
  `widget_position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `widget_pright` int NOT NULL,
  `widget_pbottom` int NOT NULL,
  `alias` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_admin_theme`
--

CREATE TABLE `lh_admin_theme` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `static_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `static_js_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `static_css_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `css_attributes` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `header_css` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_audits`
--

CREATE TABLE `lh_audits` (
  `id` bigint NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_id` bigint DEFAULT '0',
  `line` bigint DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `severity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `lh_audits`
--

INSERT INTO `lh_audits` (`id`, `category`, `file`, `object_id`, `line`, `message`, `severity`, `source`, `time`) VALUES
(1, 'web_exception', 'C:\\laragon\\www\\society\\chat\\lhc_web\\lib\\core\\lhcore\\lhmodule.php', 0, 260, '{\n    \"message\": \"Attempt to assign property \\\"updateIgnoreColumns\\\" on bool\",\n    \"file\": \"C:\\\\laragon\\\\www\\\\society\\\\chat\\\\lhc_web\\\\cache\\\\compiledtemplates\\\\06cffd4702e07c94cd03fff2ebc2afa5.php\",\n    \"line\": 2,\n    \"server\": {\n        \"HTTP_HOST\": \"localhost\",\n        \"HTTP_CONNECTION\": \"keep-alive\",\n        \"CONTENT_LENGTH\": \"18\",\n        \"HTTP_SEC_CH_UA\": \"\\\"Google Chrome\\\";v=\\\"119\\\", \\\"Chromium\\\";v=\\\"119\\\", \\\"Not?A_Brand\\\";v=\\\"24\\\"\",\n        \"HTTP_ACCEPT\": \"application\\/json, text\\/plain, *\\/*\",\n        \"CONTENT_TYPE\": \"application\\/json\",\n        \"HTTP_SEC_CH_UA_MOBILE\": \"?0\",\n        \"HTTP_X_CSRFTOKEN\": \"1aa8c383e8e58f14df561a1b52d50bd7\",\n        \"HTTP_USER_AGENT\": \"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/119.0.0.0 Safari\\/537.36\",\n        \"HTTP_SEC_CH_UA_PLATFORM\": \"\\\"Windows\\\"\",\n        \"HTTP_ORIGIN\": \"http:\\/\\/localhost\",\n        \"HTTP_SEC_FETCH_SITE\": \"same-origin\",\n        \"HTTP_SEC_FETCH_MODE\": \"cors\",\n        \"HTTP_SEC_FETCH_DEST\": \"empty\",\n        \"HTTP_REFERER\": \"http:\\/\\/localhost\\/society\\/chat\\/lhc_web\\/index.php\\/site_admin\\/chat\\/list\",\n        \"HTTP_ACCEPT_ENCODING\": \"gzip, deflate, br, zstd\",\n        \"HTTP_ACCEPT_LANGUAGE\": \"pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7,es;q=0.6,pt-PT;q=0.5\",\n        \"HTTP_COOKIE\": \"PHPSESSID=7p7b2gb0c3ua384si5vbo91nv2; lhc_per={%22vid%22:%22f7d663bab5e941f637d8%22%2C%22lhc_hnh%22:%221700062821%22%2C%22ex%22:17010}; lhc_ses={%22hash_resume%22:%222_hD5cK3wokJcBJSRAmLkTd7OcMGfsN7Fdyqn2FkKq%22%2C%22hash%22:%222_hD5cK3wokJcBJSRAmLkTd7OcMGfsN7Fdyqn2FkKq%22}\",\n        \"PATH\": \"C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Windows\\\\System32\\\\OpenSSH\\\\;C:\\\\laragon\\\\bin\\\\php\\\\php-8.1.10-Win32-vs16-x64;C:\\\\composer;C:\\\\Program Files\\\\dotnet\\\\;C:\\\\laragon\\\\bin;C:\\\\laragon\\\\bin\\\\apache\\\\httpd-2.4.54-win64-VS16\\\\bin;C:\\\\laragon\\\\bin\\\\composer;C:\\\\laragon\\\\bin\\\\git\\\\bin;C:\\\\laragon\\\\bin\\\\git\\\\cmd;C:\\\\laragon\\\\bin\\\\git\\\\mingw64\\\\bin;C:\\\\laragon\\\\bin\\\\git\\\\usr\\\\bin;C:\\\\laragon\\\\bin\\\\laragon\\\\utils;C:\\\\laragon\\\\bin\\\\mysql\\\\mysql-8.0.30-winx64\\\\bin;C:\\\\laragon\\\\bin\\\\nginx\\\\nginx-1.22.0;C:\\\\laragon\\\\bin\\\\ngrok;C:\\\\laragon\\\\bin\\\\nodejs\\\\node-v18;C:\\\\laragon\\\\bin\\\\notepad++;C:\\\\laragon\\\\bin\\\\php\\\\php-8.2.12-Win32-vs16-x64;C:\\\\laragon\\\\bin\\\\python\\\\python-3.10;C:\\\\laragon\\\\bin\\\\python\\\\python-3.10\\\\Scripts;C:\\\\laragon\\\\bin\\\\redis\\\\redis-x64-5.0.14.1;C:\\\\laragon\\\\bin\\\\telnet;C:\\\\laragon\\\\usr\\\\bin;C:\\\\Users\\\\andre\\\\AppData\\\\Local\\\\Yarn\\\\config\\\\global\\\\node_modules\\\\.bin;C:\\\\Users\\\\andre\\\\AppData\\\\Roaming\\\\Composer\\\\vendor\\\\bin;C:\\\\Users\\\\andre\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\andre\\\\AppData\\\\Local\\\\Microsoft\\\\WindowsApps;C:\\\\Users\\\\andre\\\\AppData\\\\Local\\\\JetBrains\\\\Toolbox\\\\scripts;\",\n        \"SystemRoot\": \"C:\\\\Windows\",\n        \"COMSPEC\": \"C:\\\\Windows\\\\system32\\\\cmd.exe\",\n        \"PATHEXT\": \".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC\",\n        \"WINDIR\": \"C:\\\\Windows\",\n        \"SERVER_SIGNATURE\": \"\",\n        \"SERVER_SOFTWARE\": \"Apache\\/2.4.54 (Win64) OpenSSL\\/1.1.1q PHP\\/8.1.10\",\n        \"SERVER_NAME\": \"localhost\",\n        \"SERVER_ADDR\": \"::1\",\n        \"SERVER_PORT\": \"80\",\n        \"REMOTE_ADDR\": \"::1\",\n        \"DOCUMENT_ROOT\": \"C:\\/laragon\\/www\",\n        \"REQUEST_SCHEME\": \"http\",\n        \"CONTEXT_PREFIX\": \"\",\n        \"CONTEXT_DOCUMENT_ROOT\": \"C:\\/laragon\\/www\",\n        \"SERVER_ADMIN\": \"admin@example.com\",\n        \"SCRIPT_FILENAME\": \"C:\\/laragon\\/www\\/society\\/chat\\/lhc_web\\/index.php\",\n        \"REMOTE_PORT\": \"60249\",\n        \"GATEWAY_INTERFACE\": \"CGI\\/1.1\",\n        \"SERVER_PROTOCOL\": \"HTTP\\/1.1\",\n        \"REQUEST_METHOD\": \"POST\",\n        \"QUERY_STRING\": \"\",\n        \"REQUEST_URI\": \"\\/society\\/chat\\/lhc_web\\/index.php\\/site_admin\\/groupchat\\/sync\",\n        \"SCRIPT_NAME\": \"\\/society\\/chat\\/lhc_web\\/index.php\",\n        \"PATH_INFO\": \"\\/site_admin\\/groupchat\\/sync\",\n        \"PATH_TRANSLATED\": \"C:\\\\laragon\\\\www\\\\site_admin\\\\groupchat\\\\sync\",\n        \"PHP_SELF\": \"\\/society\\/chat\\/lhc_web\\/index.php\\/site_admin\\/groupchat\\/sync\",\n        \"REQUEST_TIME_FLOAT\": 1699977448.018051,\n        \"REQUEST_TIME\": 1699977448\n    },\n    \"trace\": [\n        {\n            \"file\": \"C:\\\\laragon\\\\www\\\\society\\\\chat\\\\lhc_web\\\\lib\\\\core\\\\lhcore\\\\lhmodule.php\",\n            \"line\": 108,\n            \"function\": \"include\"\n        },\n        {\n            \"file\": \"C:\\\\laragon\\\\www\\\\society\\\\chat\\\\lhc_web\\\\lib\\\\core\\\\lhcore\\\\lhmodule.php\",\n            \"line\": 658,\n            \"function\": \"runModule\",\n            \"class\": \"erLhcoreClassModule\",\n            \"type\": \"::\",\n            \"args\": []\n        },\n        {\n            \"file\": \"C:\\\\laragon\\\\www\\\\society\\\\chat\\\\lhc_web\\\\index.php\",\n            \"line\": 53,\n            \"function\": \"moduleInit\",\n            \"class\": \"erLhcoreClassModule\",\n            \"type\": \"::\",\n            \"args\": []\n        }\n    ]\n}', '2', 'lhc', '2023-11-14 18:57:28'),
(2, 'web_exception', 'C:\\laragon\\www\\society\\chat\\lhc_web\\lib\\core\\lhcore\\lhmodule.php', 0, 260, '{\n    \"message\": \"Attempt to assign property \\\"updateIgnoreColumns\\\" on bool\",\n    \"file\": \"C:\\\\laragon\\\\www\\\\society\\\\chat\\\\lhc_web\\\\cache\\\\compiledtemplates\\\\06cffd4702e07c94cd03fff2ebc2afa5.php\",\n    \"line\": 2,\n    \"server\": {\n        \"HTTP_HOST\": \"localhost\",\n        \"HTTP_CONNECTION\": \"keep-alive\",\n        \"CONTENT_LENGTH\": \"18\",\n        \"HTTP_SEC_CH_UA\": \"\\\"Google Chrome\\\";v=\\\"119\\\", \\\"Chromium\\\";v=\\\"119\\\", \\\"Not?A_Brand\\\";v=\\\"24\\\"\",\n        \"HTTP_ACCEPT\": \"application\\/json, text\\/plain, *\\/*\",\n        \"CONTENT_TYPE\": \"application\\/json\",\n        \"HTTP_SEC_CH_UA_MOBILE\": \"?0\",\n        \"HTTP_X_CSRFTOKEN\": \"1aa8c383e8e58f14df561a1b52d50bd7\",\n        \"HTTP_USER_AGENT\": \"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/119.0.0.0 Safari\\/537.36\",\n        \"HTTP_SEC_CH_UA_PLATFORM\": \"\\\"Windows\\\"\",\n        \"HTTP_ORIGIN\": \"http:\\/\\/localhost\",\n        \"HTTP_SEC_FETCH_SITE\": \"same-origin\",\n        \"HTTP_SEC_FETCH_MODE\": \"cors\",\n        \"HTTP_SEC_FETCH_DEST\": \"empty\",\n        \"HTTP_REFERER\": \"http:\\/\\/localhost\\/society\\/chat\\/lhc_web\\/index.php\\/site_admin\\/chat\\/chattabs\\/\",\n        \"HTTP_ACCEPT_ENCODING\": \"gzip, deflate, br, zstd\",\n        \"HTTP_ACCEPT_LANGUAGE\": \"pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7,es;q=0.6,pt-PT;q=0.5\",\n        \"HTTP_COOKIE\": \"PHPSESSID=7p7b2gb0c3ua384si5vbo91nv2; lhc_per={%22vid%22:%22f7d663bab5e941f637d8%22%2C%22lhc_hnh%22:%221700062821%22%2C%22ex%22:17010}; lhc_ses={%22hash_resume%22:%222_hD5cK3wokJcBJSRAmLkTd7OcMGfsN7Fdyqn2FkKq%22%2C%22hash%22:%222_hD5cK3wokJcBJSRAmLkTd7OcMGfsN7Fdyqn2FkKq%22}\",\n        \"PATH\": \"C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Windows\\\\System32\\\\OpenSSH\\\\;C:\\\\laragon\\\\bin\\\\php\\\\php-8.1.10-Win32-vs16-x64;C:\\\\composer;C:\\\\Program Files\\\\dotnet\\\\;C:\\\\laragon\\\\bin;C:\\\\laragon\\\\bin\\\\apache\\\\httpd-2.4.54-win64-VS16\\\\bin;C:\\\\laragon\\\\bin\\\\composer;C:\\\\laragon\\\\bin\\\\git\\\\bin;C:\\\\laragon\\\\bin\\\\git\\\\cmd;C:\\\\laragon\\\\bin\\\\git\\\\mingw64\\\\bin;C:\\\\laragon\\\\bin\\\\git\\\\usr\\\\bin;C:\\\\laragon\\\\bin\\\\laragon\\\\utils;C:\\\\laragon\\\\bin\\\\mysql\\\\mysql-8.0.30-winx64\\\\bin;C:\\\\laragon\\\\bin\\\\nginx\\\\nginx-1.22.0;C:\\\\laragon\\\\bin\\\\ngrok;C:\\\\laragon\\\\bin\\\\nodejs\\\\node-v18;C:\\\\laragon\\\\bin\\\\notepad++;C:\\\\laragon\\\\bin\\\\php\\\\php-8.2.12-Win32-vs16-x64;C:\\\\laragon\\\\bin\\\\python\\\\python-3.10;C:\\\\laragon\\\\bin\\\\python\\\\python-3.10\\\\Scripts;C:\\\\laragon\\\\bin\\\\redis\\\\redis-x64-5.0.14.1;C:\\\\laragon\\\\bin\\\\telnet;C:\\\\laragon\\\\usr\\\\bin;C:\\\\Users\\\\andre\\\\AppData\\\\Local\\\\Yarn\\\\config\\\\global\\\\node_modules\\\\.bin;C:\\\\Users\\\\andre\\\\AppData\\\\Roaming\\\\Composer\\\\vendor\\\\bin;C:\\\\Users\\\\andre\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\andre\\\\AppData\\\\Local\\\\Microsoft\\\\WindowsApps;C:\\\\Users\\\\andre\\\\AppData\\\\Local\\\\JetBrains\\\\Toolbox\\\\scripts;\",\n        \"SystemRoot\": \"C:\\\\Windows\",\n        \"COMSPEC\": \"C:\\\\Windows\\\\system32\\\\cmd.exe\",\n        \"PATHEXT\": \".COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC\",\n        \"WINDIR\": \"C:\\\\Windows\",\n        \"SERVER_SIGNATURE\": \"\",\n        \"SERVER_SOFTWARE\": \"Apache\\/2.4.54 (Win64) OpenSSL\\/1.1.1q PHP\\/8.1.10\",\n        \"SERVER_NAME\": \"localhost\",\n        \"SERVER_ADDR\": \"::1\",\n        \"SERVER_PORT\": \"80\",\n        \"REMOTE_ADDR\": \"::1\",\n        \"DOCUMENT_ROOT\": \"C:\\/laragon\\/www\",\n        \"REQUEST_SCHEME\": \"http\",\n        \"CONTEXT_PREFIX\": \"\",\n        \"CONTEXT_DOCUMENT_ROOT\": \"C:\\/laragon\\/www\",\n        \"SERVER_ADMIN\": \"admin@example.com\",\n        \"SCRIPT_FILENAME\": \"C:\\/laragon\\/www\\/society\\/chat\\/lhc_web\\/index.php\",\n        \"REMOTE_PORT\": \"60255\",\n        \"GATEWAY_INTERFACE\": \"CGI\\/1.1\",\n        \"SERVER_PROTOCOL\": \"HTTP\\/1.1\",\n        \"REQUEST_METHOD\": \"POST\",\n        \"QUERY_STRING\": \"\",\n        \"REQUEST_URI\": \"\\/society\\/chat\\/lhc_web\\/index.php\\/site_admin\\/groupchat\\/sync\",\n        \"SCRIPT_NAME\": \"\\/society\\/chat\\/lhc_web\\/index.php\",\n        \"PATH_INFO\": \"\\/site_admin\\/groupchat\\/sync\",\n        \"PATH_TRANSLATED\": \"C:\\\\laragon\\\\www\\\\site_admin\\\\groupchat\\\\sync\",\n        \"PHP_SELF\": \"\\/society\\/chat\\/lhc_web\\/index.php\\/site_admin\\/groupchat\\/sync\",\n        \"REQUEST_TIME_FLOAT\": 1699977448.692978,\n        \"REQUEST_TIME\": 1699977448\n    },\n    \"trace\": [\n        {\n            \"file\": \"C:\\\\laragon\\\\www\\\\society\\\\chat\\\\lhc_web\\\\lib\\\\core\\\\lhcore\\\\lhmodule.php\",\n            \"line\": 108,\n            \"function\": \"include\"\n        },\n        {\n            \"file\": \"C:\\\\laragon\\\\www\\\\society\\\\chat\\\\lhc_web\\\\lib\\\\core\\\\lhcore\\\\lhmodule.php\",\n            \"line\": 658,\n            \"function\": \"runModule\",\n            \"class\": \"erLhcoreClassModule\",\n            \"type\": \"::\",\n            \"args\": []\n        },\n        {\n            \"file\": \"C:\\\\laragon\\\\www\\\\society\\\\chat\\\\lhc_web\\\\index.php\",\n            \"line\": 53,\n            \"function\": \"moduleInit\",\n            \"class\": \"erLhcoreClassModule\",\n            \"type\": \"::\",\n            \"args\": []\n        }\n    ]\n}', '2', 'lhc', '2023-11-14 18:57:28');

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_bot_condition`
--

CREATE TABLE `lh_bot_condition` (
  `id` int UNSIGNED NOT NULL,
  `configuration` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_brand`
--

CREATE TABLE `lh_brand` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_brand_member`
--

CREATE TABLE `lh_brand_member` (
  `id` bigint UNSIGNED NOT NULL,
  `dep_id` bigint UNSIGNED NOT NULL,
  `brand_id` bigint UNSIGNED NOT NULL,
  `role` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_canned_msg`
--

CREATE TABLE `lh_canned_msg` (
  `id` int NOT NULL,
  `msg` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fallback_msg` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `explain` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `languages` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int NOT NULL,
  `department_id` int NOT NULL,
  `user_id` int NOT NULL,
  `delay` int NOT NULL,
  `auto_send` tinyint(1) NOT NULL,
  `html_snippet` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attr_int_1` int NOT NULL,
  `attr_int_2` int NOT NULL,
  `attr_int_3` int NOT NULL,
  `disabled` tinyint UNSIGNED DEFAULT '0',
  `unique_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` int UNSIGNED NOT NULL DEFAULT '0',
  `active_from` int UNSIGNED NOT NULL DEFAULT '0',
  `active_to` int UNSIGNED NOT NULL DEFAULT '0',
  `repetitiveness` int UNSIGNED NOT NULL DEFAULT '0',
  `days_activity` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `delete_on_exp` tinyint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_canned_msg_dep`
--

CREATE TABLE `lh_canned_msg_dep` (
  `id` bigint NOT NULL,
  `canned_id` int NOT NULL,
  `dep_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_canned_msg_replace`
--

CREATE TABLE `lh_canned_msg_replace` (
  `id` int UNSIGNED NOT NULL,
  `identifier` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `conditions` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_from` int UNSIGNED NOT NULL DEFAULT '0',
  `active_to` int UNSIGNED NOT NULL DEFAULT '0',
  `repetitiveness` int UNSIGNED NOT NULL DEFAULT '0',
  `days_activity` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_zone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_canned_msg_subject`
--

CREATE TABLE `lh_canned_msg_subject` (
  `id` int NOT NULL,
  `canned_id` int NOT NULL,
  `subject_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_canned_msg_tag`
--

CREATE TABLE `lh_canned_msg_tag` (
  `id` int NOT NULL,
  `tag` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_canned_msg_tag_link`
--

CREATE TABLE `lh_canned_msg_tag_link` (
  `id` int NOT NULL,
  `tag_id` int NOT NULL,
  `canned_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_canned_msg_use`
--

CREATE TABLE `lh_canned_msg_use` (
  `id` bigint UNSIGNED NOT NULL,
  `canned_id` int UNSIGNED NOT NULL,
  `chat_id` bigint UNSIGNED NOT NULL,
  `ctime` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_chat`
--

CREATE TABLE `lh_chat` (
  `id` bigint NOT NULL,
  `nick` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `status_sub` int NOT NULL DEFAULT '0',
  `status_sub_sub` int NOT NULL DEFAULT '0',
  `time` int NOT NULL,
  `user_id` int NOT NULL,
  `hash` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referrer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_referrer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `chat_variables` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dep_id` int NOT NULL,
  `invitation_id` int NOT NULL,
  `sender_user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `pnd_time` int NOT NULL DEFAULT '0',
  `cls_time` int NOT NULL DEFAULT '0',
  `usaccept` int NOT NULL DEFAULT '0',
  `user_status` int NOT NULL DEFAULT '0',
  `user_closed_ts` int NOT NULL DEFAULT '0',
  `support_informed` int NOT NULL DEFAULT '0',
  `unread_messages_informed` int NOT NULL DEFAULT '0',
  `reinform_timeout` int NOT NULL DEFAULT '0',
  `last_op_msg_time` int NOT NULL DEFAULT '0',
  `has_unread_op_messages` int NOT NULL DEFAULT '0',
  `unread_op_messages_informed` int NOT NULL DEFAULT '0',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unanswered_chat` int NOT NULL,
  `cls_us` tinyint(1) NOT NULL DEFAULT '0',
  `anonymized` tinyint(1) NOT NULL,
  `user_typing` int NOT NULL,
  `gbot_id` int NOT NULL DEFAULT '0',
  `user_typing_txt` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operator_typing` int NOT NULL,
  `operator_typing_id` int NOT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_unread_messages` int NOT NULL,
  `last_user_msg_time` int NOT NULL,
  `fbst` tinyint(1) NOT NULL,
  `online_user_id` int NOT NULL,
  `auto_responder_id` int NOT NULL,
  `last_msg_id` int NOT NULL,
  `lsync` int NOT NULL,
  `transfer_uid` int NOT NULL,
  `additional_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_tz_identifier` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lon` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `operation_admin` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_sub_arg` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uagent` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chat_locale` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chat_locale_to` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_send` int NOT NULL,
  `screenshot_id` int NOT NULL,
  `wait_time` int NOT NULL,
  `chat_duration` int NOT NULL,
  `tslasign` int NOT NULL,
  `priority` int NOT NULL,
  `chat_initiator` int NOT NULL,
  `transfer_timeout_ts` int NOT NULL,
  `transfer_timeout_ac` int NOT NULL,
  `transfer_if_na` int NOT NULL,
  `na_cb_executed` int NOT NULL,
  `device_type` int NOT NULL,
  `nc_cb_executed` tinyint(1) NOT NULL,
  `iwh_id` int NOT NULL DEFAULT '0',
  `theme_id` int UNSIGNED NOT NULL DEFAULT '0',
  `frt` int UNSIGNED NOT NULL DEFAULT '0',
  `aart` int UNSIGNED NOT NULL DEFAULT '0',
  `mart` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `lh_chat`
--

INSERT INTO `lh_chat` (`id`, `nick`, `status`, `status_sub`, `status_sub_sub`, `time`, `user_id`, `hash`, `referrer`, `session_referrer`, `chat_variables`, `remarks`, `ip`, `dep_id`, `invitation_id`, `sender_user_id`, `product_id`, `pnd_time`, `cls_time`, `usaccept`, `user_status`, `user_closed_ts`, `support_informed`, `unread_messages_informed`, `reinform_timeout`, `last_op_msg_time`, `has_unread_op_messages`, `unread_op_messages_informed`, `email`, `country_code`, `country_name`, `unanswered_chat`, `cls_us`, `anonymized`, `user_typing`, `gbot_id`, `user_typing_txt`, `operator_typing`, `operator_typing_id`, `phone`, `has_unread_messages`, `last_user_msg_time`, `fbst`, `online_user_id`, `auto_responder_id`, `last_msg_id`, `lsync`, `transfer_uid`, `additional_data`, `user_tz_identifier`, `lat`, `lon`, `city`, `operation`, `operation_admin`, `status_sub_arg`, `uagent`, `chat_locale`, `chat_locale_to`, `mail_send`, `screenshot_id`, `wait_time`, `chat_duration`, `tslasign`, `priority`, `chat_initiator`, `transfer_timeout_ts`, `transfer_timeout_ac`, `transfer_if_na`, `na_cb_executed`, `device_type`, `nc_cb_executed`, `iwh_id`, `theme_id`, `frt`, `aart`, `mart`) VALUES
(5, 'Visitor', 1, 0, 0, 1699977648, 1, 'kZ5iUfWP3YLeR6RunL36btruWAKWBCU9yJzk2aTC', '//localhost/society/suporte.php', '', '', '', '::1', 1, 0, 0, 0, 1699977648, 0, 0, 0, 0, 1, 0, 0, 1699977676, 0, 0, '', '', '', 0, 0, 0, 0, 0, '', 0, 0, '', 0, 1699977693, 0, 0, 0, 16, 1699979039, 0, '', 'America/Sao_Paulo', '0', '0', '', '', '', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'pt', '', 0, 0, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(6, 'Visitor', 1, 0, 0, 1702072459, 1, 'YECElsJdcJlk7AzfB30EktsUdTeuCitwvWvT1ZVK', '//localhost/society/suporte.php', '//localhost/society/usuario/', '', '', '::1', 1, 0, 0, 0, 1702072459, 0, 0, 1, 1702080570, 1, 0, 0, 1702072492, 0, 0, '', '', '', 0, 0, 0, 1702080565, 0, 'Visitor has left the chat!', 0, 0, '', 0, 0, 0, 0, 0, 19, 1702080551, 0, '', 'America/Sao_Paulo', '0', '0', '', '', '', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'pt', '', 0, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_chatbox`
--

CREATE TABLE `lh_chatbox` (
  `id` int NOT NULL,
  `identifier` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chat_id` int NOT NULL,
  `active` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `lh_chatbox`
--

INSERT INTO `lh_chatbox` (`id`, `identifier`, `name`, `chat_id`, `active`) VALUES
(1, 'default', 'Agendamento Society', 3, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_chat_accept`
--

CREATE TABLE `lh_chat_accept` (
  `id` int NOT NULL,
  `chat_id` bigint NOT NULL,
  `hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ctime` int NOT NULL,
  `wused` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_chat_action`
--

CREATE TABLE `lh_chat_action` (
  `id` bigint UNSIGNED NOT NULL,
  `chat_id` bigint NOT NULL,
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_chat_archive_range`
--

CREATE TABLE `lh_chat_archive_range` (
  `id` int NOT NULL,
  `range_from` int NOT NULL,
  `range_to` int NOT NULL,
  `year_month` int NOT NULL,
  `older_than` int NOT NULL,
  `last_id` int NOT NULL,
  `first_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_chat_blocked_user`
--

CREATE TABLE `lh_chat_blocked_user` (
  `id` bigint UNSIGNED NOT NULL,
  `ip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `datets` bigint UNSIGNED NOT NULL,
  `chat_id` bigint UNSIGNED NOT NULL,
  `dep_id` bigint UNSIGNED NOT NULL,
  `nick` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `btype` tinyint(1) NOT NULL DEFAULT '0',
  `expires` bigint UNSIGNED NOT NULL DEFAULT '0',
  `online_user_id` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_chat_config`
--

CREATE TABLE `lh_chat_config` (
  `identifier` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `explain` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hidden` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `lh_chat_config`
--

INSERT INTO `lh_chat_config` (`identifier`, `value`, `type`, `explain`, `hidden`) VALUES
('accept_chat_link_timeout', '300', 0, 'How many seconds chat accept link is valid. Set 0 to force login all the time manually.', 0),
('accept_tos_link', '#', 0, 'Change to your site Terms of Service', 0),
('activity_timeout', '5', 0, 'How long operator should go offline automatically because of inactivity. Value in minutes', 0),
('activity_track_all', '0', 0, 'Track all logged operators activity and ignore their individual settings.', 0),
('allow_reopen_closed', '0', 0, 'Allow user to reopen closed chats?', 0),
('application_name', 'a:6:{s:3:\"eng\";s:31:\"Live Helper Chat - live support\";s:3:\"lit\";s:26:\"Live Helper Chat - pagalba\";s:3:\"hrv\";s:0:\"\";s:3:\"esp\";s:0:\"\";s:3:\"por\";s:0:\"\";s:10:\"site_admin\";s:31:\"Live Helper Chat - live support\";}', 1, 'Support application name, visible in browser title.', 0),
('assign_workflow_timeout', '0', 0, 'Chats waiting in pending line more than n seconds should be auto assigned first. Time in seconds', 0),
('autoclose_abandon_pending', '0,0', 0, 'Automatically close pending chats where visitor has left a chat. Timeout in minutes, last activity by visitor <desktop timeout>,<mobile timeout>,<status chat>', 0),
('autoclose_activity_timeout', '0', 0, 'Automatically close active chat if from last visitor/operator message passed. 0 - disabled, n > 0 time in minutes', 0),
('autoclose_timeout', '0', 0, 'Automatic chats closing. 0 - disabled, n > 0 time in minutes before chat is automatically closed', 0),
('autoclose_timeout_active', '0', 0, 'Automatic active chats closing. 0 - disabled, n > 0 time in minutes before chat is automatically closed', 0),
('autoclose_timeout_bot', '0', 0, 'Automatic bot chats closing. 0 - disabled, n > 0 time in minutes before chat is automatically closed', 0),
('autoclose_timeout_pending', '0', 0, 'Automatic pending chats closing. 0 - disabled, n > 0 time in minutes before chat is automatically closed', 0),
('autologin_data', 'a:3:{i:0;b:0;s:11:\"secret_hash\";s:16:\"please_change_me\";s:7:\"enabled\";i:0;}', 0, 'Autologin configuration data', 1),
('automatically_reopen_chat', '1', 0, 'Automatically reopen chat on widget open', 0),
('autopurge_timeout', '0', 0, 'Automatic chats purging. 0 - disabled, n > 0 time in minutes before chat is automatically deleted', 0),
('banned_ip_range', '', 0, 'Which ip should not be allowed to chat', 0),
('bbc_button_visible', '1', 0, 'Show BB Code button', 0),
('cduration_timeout_operator', '10', 0, 'How long visitor can wait for message from operator before time between messages are ignored. Values in minutes.', 0),
('cduration_timeout_user', '4', 0, 'How long operator can wait for message from visitor before time between messages are ignored. Values in minutes.', 0),
('chatbox_data', 'a:6:{i:0;b:0;s:20:\"chatbox_auto_enabled\";i:0;s:19:\"chatbox_secret_hash\";s:80:\"KfcZ742EAz9UhMcVAsoibuKLkg7rDvpmtJPEysOrzp7Wls7LiYAOJ6lsLtySSFMz6AAydV1lqwFJmxmg\";s:20:\"chatbox_default_name\";s:19:\"Agendamento Society\";s:17:\"chatbox_msg_limit\";i:50;s:22:\"chatbox_default_opname\";s:6:\"Camila\";}', 0, 'Chatbox configuration', 1),
('checkstatus_timeout', '0', 0, 'Interval between chat status checks in seconds, 0 disabled.', 0),
('cleanup_cronjob', '0', 0, 'Cleanup should be done only using cronjob.', 0),
('customer_company_name', 'Live Helper Chat', 0, 'Your company name - visible in bottom left corner', 0),
('customer_site_url', 'http://livehelperchat.com', 0, 'Your site URL address', 0),
('dashboard_order', '[[\"online_operators\",\"departments_stats\",\"online_visitors\"],[\"group_chats\",\"my_chats\",\"pending_chats\",\"transfered_chats\"],[\"active_chats\",\"bot_chats\"]]', 0, 'Home page dashboard widgets order', 0),
('default_admin_theme_id', '0', 0, 'Default admin theme ID', 1),
('default_theme_id', '0', 0, 'Default theme ID.', 1),
('departament_availability', '364', 0, 'How long department availability statistic should be kept? (days)', 0),
('disable_html5_storage', '1', 0, 'Disable HMTL5 storage, check it if your site is switching between http and https', 0),
('disable_iframe_sharing', '1', 0, 'Disable iframes in sharing mode', 0),
('disable_js_execution', '1', 0, 'Disable JS execution in Co-Browsing operator window', 0),
('disable_live_autoassign', '0', 0, 'Disable live auto assign', 0),
('disable_popup_restore', '0', 0, 'Disable option in widget to open new window. Restore icon will be hidden', 0),
('disable_print', '0', 0, 'Disable chat print', 0),
('disable_send', '0', 0, 'Disable chat transcript send', 0),
('disable_txt_dwnld', '0', 0, 'Disable chat download', 0),
('do_no_track_ip', '0', 0, 'Do not track visitors IP', 0),
('encrypt_msg_after', '0', 0, 'After how many days anonymize messages', 0),
('encrypt_msg_op', '0', 0, 'Anonymize also operators messages', 0),
('explicit_http_mode', '', 0, 'Please enter explicit http mode. Either http: or https:, do not forget : at the end.', 0),
('export_hash', 'e5yydU5awgR8L2nYknA9fT8hwMKXlAX033LqE0kt5ydTvlbSV77A5SDp90AmuNKb3UujMYsDTBgMqm9H', 0, 'Chats export secret hash', 0),
('faq_email_required', '0', 0, 'Is visitor e-mail required for FAQ', 0),
('file_configuration', 'a:7:{i:0;b:0;s:5:\"ft_op\";s:47:\"gif|jpe?g|png|zip|svg|rar|xls|doc|docx|xlsx|pdf\";s:5:\"ft_us\";s:30:\"gif|jpe?g|png|svg|doc|docx|pdf\";s:6:\"fs_max\";i:2048;s:18:\"active_user_upload\";b:0;s:16:\"active_op_upload\";b:1;s:19:\"active_admin_upload\";b:1;}', 0, 'Files configuration item', 1),
('footprint_background', '0', 0, 'Footprint updates should be processed in the background. Make sure you are running workflow background cronjob.', 0),
('front_tabs', 'dashboard,online_users,online_map', 0, 'Home page tabs order', 0),
('geo_data', 'a:5:{i:0;b:0;s:21:\"geo_detection_enabled\";i:1;s:22:\"geo_service_identifier\";s:8:\"max_mind\";s:23:\"max_mind_detection_type\";s:7:\"country\";s:22:\"max_mind_city_location\";s:37:\"var/external/geoip/GeoLite2-City.mmdb\";}', 0, '', 1),
('geo_location_data', 'a:3:{s:4:\"zoom\";i:4;s:3:\"lat\";s:7:\"49.8211\";s:3:\"lng\";s:7:\"11.7835\";}', 0, '', 1),
('geoadjustment_data', 'a:8:{i:0;b:0;s:18:\"use_geo_adjustment\";b:0;s:13:\"available_for\";s:0:\"\";s:15:\"other_countries\";s:6:\"custom\";s:8:\"hide_for\";s:0:\"\";s:12:\"other_status\";s:7:\"offline\";s:11:\"rest_status\";s:6:\"hidden\";s:12:\"apply_widget\";i:0;}', 0, 'Geo adjustment settings', 1),
('hide_button_dropdown', '0', 0, 'Hide close button in dropdown', 0),
('hide_disabled_department', '1', 0, 'Hide disabled department widget', 0),
('hide_right_column_frontpage', '1', 0, 'Hide right column in frontpage', 0),
('ignorable_ip', '', 0, 'Which ip should be ignored in online users list, separate by comma', 0),
('ignore_typing', '0', 0, 'Do not store what visitor is typing', 0),
('ignore_user_status', '0', 0, 'Ignore users online statuses and use departments online hours', 0),
('inform_unread_message', '0', 0, 'Inform visitor about unread messages from operator, value in minutes. 0 - disabled', 0),
('list_closed', '0', 0, 'List closed chats', 0),
('list_online_operators', '1', 0, 'List online operators.', 0),
('list_unread', '0', 0, 'List unread chats', 0),
('listd_op', '10', 0, 'Default number of online operators to show', 0),
('max_message_length', '500', 0, 'Maximum message length in characters', 0),
('message_seen_timeout', '24', 0, 'Proactive message timeout in hours. After how many hours proactive chat mesasge should be shown again.', 0),
('mheight', '', 0, 'Messages box height', 0),
('mheight_op', '200', 0, 'Messages box height for operator', 0),
('min_phone_length', '8', 0, 'Minimum phone number length', 0),
('mobile_options', 'a:2:{s:13:\"notifications\";i:0;s:7:\"fcm_key\";s:152:\"AAAAiF8DeNk:APA91bFVHu2ybhBUTtlEtQrUEPpM2fb-5ovgo0FVNm4XxK3cYJtSwRcd-pqcBot_422yDOzHyw2p9ZFplkHrmNXjm8f5f-OIzfalGmpsypeXvnPxhU6Db1B2Z1Acc-TamHUn2F4xBJkP\";}', 0, '', 1),
('need_help_tip', '1', 0, 'Show need help tooltip?', 0),
('need_help_tip_timeout', '24', 0, 'Need help tooltip timeout, after how many hours show again tooltip?', 0),
('no_wildcard_cookie', '0', 0, 'Cookie should be valid only for domain where Javascript is embedded (excludes subdomains)', 0),
('on_close_exit_chat', '0', 0, 'On chat close exit chat', 0),
('online_if', '0', 0, '', 0),
('open_closed_chat_timeout', '1800', 0, 'How many seconds customer has to open already closed chat.', 0),
('paidchat_data', '', 0, 'Paid chat configuration', 1),
('password_data', '', 0, 'Password requirements', 1),
('preload_iframes', '0', 0, 'Preload widget. It will avoid loading delay after clicking widget', 0),
('pro_active_invite', '1', 0, 'Is pro active chat invitation active. Online users tracking also has to be enabled', 0),
('pro_active_limitation', '-1', 0, 'Pro active chats invitations limitation based on pending chats, (-1) do not limit, (0,1,n+1) number of pending chats can be for invitation to be shown.', 0),
('pro_active_show_if_offline', '0', 0, 'Should invitation logic be executed if there is no online operators', 0),
('product_enabled_module', '0', 0, 'Product module is enabled', 1),
('product_show_departament', '0', 0, 'Enable products show by departments', 1),
('recaptcha_data', 'a:4:{i:0;b:0;s:8:\"site_key\";s:0:\"\";s:10:\"secret_key\";s:0:\"\";s:7:\"enabled\";i:0;}', 0, 'Re-captcha configuration', 1),
('remember_username', '1', 0, 'Should we remember username for the next time visitor starts a chat?', 0),
('reopen_as_new', '1', 0, 'Reopen closed chat as new? Otherwise it will be reopened as active.', 0),
('reopen_chat_enabled', '0', 0, 'Reopen chat functionality enabled', 0),
('reverse_pending', '0', 0, 'Make default pending chats order from old to new', 0),
('run_departments_workflow', '0', 0, 'Should cronjob run departments transfer workflow, even if user leaves a chat', 0),
('run_unaswered_chat_workflow', '0', 0, 'Should cronjob run unanswered chats workflow and execute unaswered chats callback, 0 - no, any other number bigger than 0 is a minits how long chat have to be not accepted before executing callback.', 0),
('session_captcha', '0', 0, 'Use session captcha. LHC have to be installed on the same domain or subdomain.', 0),
('sharing_auto_allow', '0', 0, 'Do not ask permission for users to see their screen', 0),
('sharing_nodejs_enabled', '0', 0, 'NodeJs support enabled', 0),
('sharing_nodejs_path', '', 0, 'socket.io path, optional', 0),
('sharing_nodejs_secure', '0', 0, 'Connect to NodeJs in https mode', 0),
('sharing_nodejs_sllocation', 'https://cdn.jsdelivr.net/npm/socket.io-client@2/dist/socket.io.js', 0, 'Location of SocketIO JS library', 0),
('sharing_nodejs_socket_host', '', 0, 'Host where NodeJs is running', 0),
('show_language_switcher', '0', 0, 'Show users option to switch language at widget', 0),
('show_languages', 'eng,lit,hrv,esp,por,nld,ara,ger,pol,rus,ita,fre,chn,cse,nor,tur,vnm,idn,sve,per,ell,dnk,rou,bgr,tha,geo,fin,alb', 0, 'Between what languages user should be able to switch', 0),
('smtp_data', 'a:5:{s:4:\"host\";s:0:\"\";s:4:\"port\";s:2:\"25\";s:8:\"use_smtp\";i:0;s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";}', 0, 'SMTP configuration', 1),
('sound_invitation', '1', 0, 'Play sound on invitation to chat.', 0),
('speech_data', 'a:3:{i:0;b:0;s:8:\"language\";i:20;s:7:\"dialect\";s:5:\"pt-BR\";}', 1, '', 1),
('start_chat_data', 'a:80:{i:0;b:0;s:21:\"name_visible_in_popup\";b:0;s:27:\"name_visible_in_page_widget\";b:0;s:19:\"name_require_option\";s:8:\"required\";s:22:\"email_visible_in_popup\";b:0;s:28:\"email_visible_in_page_widget\";b:0;s:20:\"email_require_option\";s:8:\"required\";s:24:\"message_visible_in_popup\";b:1;s:30:\"message_visible_in_page_widget\";b:1;s:22:\"message_require_option\";s:8:\"required\";s:22:\"phone_visible_in_popup\";b:0;s:28:\"phone_visible_in_page_widget\";b:0;s:20:\"phone_require_option\";s:8:\"required\";s:21:\"force_leave_a_message\";b:0;s:29:\"offline_name_visible_in_popup\";b:1;s:35:\"offline_name_visible_in_page_widget\";b:1;s:27:\"offline_name_require_option\";s:8:\"required\";s:30:\"offline_phone_visible_in_popup\";b:0;s:36:\"offline_phone_visible_in_page_widget\";b:0;s:28:\"offline_phone_require_option\";s:8:\"required\";s:32:\"offline_message_visible_in_popup\";b:1;s:38:\"offline_message_visible_in_page_widget\";b:1;s:30:\"offline_message_require_option\";s:8:\"required\";s:15:\"auto_start_chat\";b:0;s:12:\"mobile_popup\";b:0;s:17:\"dont_auto_process\";b:0;s:20:\"tos_visible_in_popup\";b:0;s:12:\"requires_dep\";b:0;s:17:\"requires_dep_lock\";b:0;s:17:\"show_messages_box\";b:1;s:26:\"tos_visible_in_page_widget\";b:0;s:19:\"tos_checked_offline\";b:0;s:18:\"tos_checked_online\";b:0;s:28:\"offline_tos_visible_in_popup\";b:0;s:34:\"offline_tos_visible_in_page_widget\";b:0;s:35:\"offline_file_visible_in_page_widget\";b:0;s:29:\"offline_file_visible_in_popup\";b:0;s:11:\"name_hidden\";b:0;s:15:\"name_hidden_bot\";b:0;s:24:\"custom_fields_encryption\";s:0:\"\";s:19:\"offline_name_hidden\";b:0;s:13:\"pre_chat_html\";s:0:\"\";s:21:\"pre_offline_chat_html\";s:0:\"\";s:12:\"email_hidden\";b:0;s:16:\"email_hidden_bot\";b:0;s:20:\"offline_email_hidden\";b:0;s:15:\"user_msg_height\";s:0:\"\";s:12:\"phone_hidden\";b:0;s:16:\"phone_hidden_bot\";b:0;s:20:\"offline_phone_hidden\";b:0;s:14:\"message_hidden\";b:0;s:18:\"message_hidden_bot\";b:0;s:18:\"message_auto_start\";b:0;s:28:\"message_auto_start_key_press\";b:0;s:22:\"offline_message_hidden\";b:0;s:21:\"show_operator_profile\";b:1;s:21:\"remove_operator_space\";b:0;s:18:\"hide_message_label\";b:0;s:17:\"custom_fields_url\";s:0:\"\";s:13:\"custom_fields\";s:0:\"\";s:21:\"name_hidden_prefilled\";b:0;s:22:\"email_hidden_prefilled\";b:0;s:24:\"message_hidden_prefilled\";b:0;s:22:\"phone_hidden_prefilled\";b:0;s:29:\"offline_name_hidden_prefilled\";b:0;s:32:\"offline_message_hidden_prefilled\";b:0;s:30:\"offline_phone_hidden_prefilled\";b:0;s:18:\"disable_start_chat\";b:0;s:18:\"offline_name_width\";i:0;s:19:\"offline_email_width\";i:0;s:19:\"offline_phone_width\";i:0;s:10:\"name_width\";i:0;s:11:\"email_width\";i:0;s:11:\"phone_width\";i:0;s:17:\"hide_start_button\";b:0;s:9:\"lazy_load\";b:0;s:28:\"offline_email_require_option\";s:8:\"required\";s:30:\"offline_email_hidden_prefilled\";b:0;s:36:\"offline_email_visible_in_page_widget\";b:1;s:30:\"offline_email_visible_in_popup\";b:1;}', 0, '', 1),
('suggest_leave_msg', '1', 0, 'Suggest user to leave a message then user chooses offline department', 0),
('sync_sound_settings', 'a:16:{i:0;b:0;s:12:\"repeat_sound\";i:1;s:18:\"repeat_sound_delay\";i:5;s:10:\"show_alert\";b:0;s:22:\"new_chat_sound_enabled\";b:1;s:31:\"new_message_sound_admin_enabled\";b:1;s:30:\"new_message_sound_user_enabled\";b:1;s:14:\"online_timeout\";d:300;s:22:\"check_for_operator_msg\";d:10;s:21:\"back_office_sinterval\";d:10;s:22:\"chat_message_sinterval\";d:3.5;s:20:\"long_polling_enabled\";b:0;s:30:\"polling_chat_message_sinterval\";d:1.5;s:29:\"polling_back_office_sinterval\";d:5;s:18:\"connection_timeout\";i:30;s:28:\"browser_notification_message\";b:0;}', 0, '', 1),
('track_activity', '0', 0, 'Track users activity on site?', 0),
('track_domain', '', 0, 'Set your domain to enable user tracking across different domain subdomains.', 0),
('track_footprint', '0', 0, 'Track users footprint. For this also online visitors tracking should be enabled', 0),
('track_if_offline', '0', 0, 'Track online visitors even if there is no online operators', 0),
('track_is_online', '0', 0, 'Track is user still on site, chat status checks also has to be enabled', 0),
('track_mouse_activity', '0', 0, 'Should mouse movement be tracked as activity measure, if not checked only basic events would be tracked', 0),
('track_online_visitors', '1', 0, 'Enable online site visitors tracking', 0),
('tracked_footprint_cleanup', '90', 0, 'How many days keep records of users footprint.', 0),
('tracked_users_cleanup', '160', 0, 'How many days keep records of online users.', 0),
('tracked_users_cleanup_last', '1702072459', 0, 'Track last cleanup', 1),
('transfer_configuration', '0', 0, 'Transfer configuration', 1),
('translation_data', 'a:6:{i:0;b:0;s:19:\"translation_handler\";s:4:\"bing\";s:19:\"enable_translations\";b:0;s:14:\"bing_client_id\";s:0:\"\";s:18:\"bing_client_secret\";s:0:\"\";s:14:\"google_api_key\";s:0:\"\";}', 0, 'Translation data', 1),
('uonline_sessions', '364', 0, 'How long keep operators online sessions data? (days)', 0),
('update_ip', '127.0.0.1', 0, 'Which ip should be allowed to update DB by executing http request, separate by comma?', 0),
('use_secure_cookie', '0', 0, 'Use secure cookie, check this if you want to force SSL all the time', 0),
('valid_domains', '', 0, 'Domains where script can be embedded. E.g example.com, google.com', 0),
('voting_days_limit', '7', 0, 'How many days voting widget should not be expanded after last show', 0),
('vwait_to_long', '120', 0, 'How long we should wait before we inform operator about unanswered chat.', 0),
('xmp_data', 'a:14:{i:0;b:0;s:4:\"host\";s:15:\"talk.google.com\";s:6:\"server\";s:9:\"gmail.com\";s:8:\"resource\";s:6:\"xmpphp\";s:4:\"port\";s:4:\"5222\";s:7:\"use_xmp\";i:0;s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:11:\"xmp_message\";s:98:\"New chat request [{chat_id}] from [{department}]\r\n{messages}\r\nClick to accept a chat\r\n{url_accept}\";s:10:\"recipients\";s:0:\"\";s:20:\"xmp_accepted_message\";s:89:\"{user_name} has accepted a chat [{chat_id}] from [{department}]\r\n{messages}\r\n{url_accept}\";s:16:\"use_standard_xmp\";i:0;s:15:\"test_recipients\";s:0:\"\";s:21:\"test_group_recipients\";s:0:\"\";}', 0, 'XMP data', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_chat_event_track`
--

CREATE TABLE `lh_chat_event_track` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_chat_file`
--

CREATE TABLE `lh_chat_file` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upload_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chat_id` bigint NOT NULL,
  `persistent` int NOT NULL,
  `online_user_id` int NOT NULL,
  `user_id` int NOT NULL,
  `date` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_chat_incoming`
--

CREATE TABLE `lh_chat_incoming` (
  `id` bigint NOT NULL,
  `chat_id` bigint NOT NULL,
  `utime` bigint NOT NULL,
  `incoming_id` int NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `chat_external_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_chat_online_user`
--

CREATE TABLE `lh_chat_online_user` (
  `id` bigint UNSIGNED NOT NULL,
  `vid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_page` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referrer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `chat_id` bigint NOT NULL,
  `invitation_seen_count` int NOT NULL,
  `invitation_id` int NOT NULL,
  `last_visit` int NOT NULL,
  `first_visit` int NOT NULL,
  `total_visits` int NOT NULL,
  `pages_count` int NOT NULL,
  `tt_pages_count` int NOT NULL,
  `invitation_count` int NOT NULL,
  `last_check_time` int NOT NULL,
  `dep_id` int NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_country_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_country_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visitor_tz` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operator_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `operator_user_proactive` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operator_user_id` int NOT NULL,
  `conversion_id` int NOT NULL,
  `message_seen` int NOT NULL,
  `message_seen_ts` int NOT NULL,
  `user_active` int NOT NULL,
  `lat` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lon` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reopen_chat` int NOT NULL,
  `time_on_site` int NOT NULL,
  `tt_time_on_site` int NOT NULL,
  `requires_email` int NOT NULL,
  `requires_username` int NOT NULL,
  `requires_phone` int NOT NULL,
  `screenshot_id` int NOT NULL,
  `identifier` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `online_attr_system` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `operation_chat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `online_attr` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_type` tinyint(1) NOT NULL DEFAULT '0',
  `chat_time` bigint UNSIGNED NOT NULL DEFAULT '0',
  `last_visit_prev` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `lh_chat_online_user`
--

INSERT INTO `lh_chat_online_user` (`id`, `vid`, `ip`, `current_page`, `page_title`, `referrer`, `chat_id`, `invitation_seen_count`, `invitation_id`, `last_visit`, `first_visit`, `total_visits`, `pages_count`, `tt_pages_count`, `invitation_count`, `last_check_time`, `dep_id`, `user_agent`, `notes`, `user_country_code`, `user_country_name`, `visitor_tz`, `operator_message`, `operator_user_proactive`, `operator_user_id`, `conversion_id`, `message_seen`, `message_seen_ts`, `user_active`, `lat`, `lon`, `city`, `reopen_chat`, `time_on_site`, `tt_time_on_site`, `requires_email`, `requires_username`, `requires_phone`, `screenshot_id`, `identifier`, `operation`, `online_attr_system`, `operation_chat`, `online_attr`, `device_type`, `chat_time`, `last_visit_prev`) VALUES
(1, 'f7d663bab5e941f637d8', '::1', '//localhost/society/chat/suporte.php', '', '//localhost/society/chat/', 0, 0, 0, 1699980417, 1699975817, 2, 1, 5, 0, 1699980417, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '', '', '', 'America/Sao_Paulo', '', '', 0, 0, 1, 1699976443, 1, '0', '0', '', 1, 0, 639, 0, 0, 0, 0, '', '', '', '', '', 1, 0, 1699976431),
(2, '3068741c9e19943a5917', '::1', 'http://localhost/society/chat/', '', '', 0, 0, 0, 1699980513, 1699980401, 1, 10, 10, 0, 1699980513, 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '', '', '', '', '', '', 0, 0, 0, 0, 1, '0', '0', '', 0, 112, 112, 0, 0, 0, 0, '', '', '', '', '', 1, 0, 1699980401),
(3, '5020c98b936d69c024c9', '::1', 'http://localhost/society/chat/', '', '', 0, 0, 0, 1702072430, 1702063774, 2, 1, 7, 0, 1702072430, 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '', '', '', '', '', '', 0, 0, 0, 0, 1, '0', '0', '', 0, 0, 1061, 0, 0, 0, 0, '', '', '', '', '', 1, 0, 1702064835);

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_chat_online_user_footprint`
--

CREATE TABLE `lh_chat_online_user_footprint` (
  `id` bigint UNSIGNED NOT NULL,
  `chat_id` bigint NOT NULL,
  `online_user_id` int NOT NULL,
  `page` varchar(2083) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vtime` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_chat_online_user_footprint_update`
--

CREATE TABLE `lh_chat_online_user_footprint_update` (
  `online_user_id` bigint NOT NULL,
  `command` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `args` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ctime` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_chat_paid`
--

CREATE TABLE `lh_chat_paid` (
  `id` int NOT NULL,
  `hash` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chat_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_chat_participant`
--

CREATE TABLE `lh_chat_participant` (
  `id` bigint UNSIGNED NOT NULL,
  `chat_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `duration` int UNSIGNED NOT NULL,
  `time` bigint UNSIGNED NOT NULL,
  `dep_id` bigint UNSIGNED NOT NULL,
  `frt` int UNSIGNED NOT NULL DEFAULT '0',
  `aart` int UNSIGNED NOT NULL DEFAULT '0',
  `mart` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_chat_start_settings`
--

CREATE TABLE `lh_chat_start_settings` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `dep_ids` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_chat_voice_video`
--

CREATE TABLE `lh_chat_voice_video` (
  `id` bigint NOT NULL,
  `chat_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `op_status` tinyint NOT NULL,
  `vi_status` tinyint NOT NULL,
  `voice` tinyint NOT NULL,
  `video` tinyint NOT NULL,
  `screen_share` tinyint NOT NULL,
  `status` tinyint NOT NULL,
  `ctime` int NOT NULL,
  `token` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_cobrowse`
--

CREATE TABLE `lh_cobrowse` (
  `id` int NOT NULL,
  `chat_id` int NOT NULL,
  `online_user_id` int NOT NULL,
  `mtime` int NOT NULL,
  `url` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initialize` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `modifications` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished` tinyint(1) NOT NULL,
  `w` int NOT NULL,
  `wh` int NOT NULL,
  `x` int NOT NULL,
  `y` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_departament`
--

CREATE TABLE `lh_departament` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `xmpp_recipients` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xmpp_group_recipients` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int NOT NULL,
  `sort_priority` int NOT NULL,
  `department_transfer_id` int NOT NULL,
  `transfer_timeout` int NOT NULL,
  `exclude_inactive_chats` int NOT NULL,
  `delay_before_assign` int NOT NULL,
  `max_ac_dep_chats` int NOT NULL,
  `assign_same_language` int NOT NULL,
  `archive` tinyint(1) NOT NULL DEFAULT '0',
  `max_load` int NOT NULL DEFAULT '0',
  `max_load_h` int NOT NULL DEFAULT '0',
  `disabled` int NOT NULL,
  `hidden` int NOT NULL,
  `delay_lm` int NOT NULL,
  `max_active_chats` int NOT NULL,
  `max_timeout_seconds` int NOT NULL,
  `identifier` varchar(2083) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mod_start_hour` int NOT NULL DEFAULT '-1',
  `mod_end_hour` int NOT NULL DEFAULT '-1',
  `tud_start_hour` int NOT NULL DEFAULT '-1',
  `tud_end_hour` int NOT NULL DEFAULT '-1',
  `wed_start_hour` int NOT NULL DEFAULT '-1',
  `wed_end_hour` int NOT NULL DEFAULT '-1',
  `thd_start_hour` int NOT NULL DEFAULT '-1',
  `thd_end_hour` int NOT NULL DEFAULT '-1',
  `frd_start_hour` int NOT NULL DEFAULT '-1',
  `frd_end_hour` int NOT NULL DEFAULT '-1',
  `sad_start_hour` int NOT NULL DEFAULT '-1',
  `sad_end_hour` int NOT NULL DEFAULT '-1',
  `sud_start_hour` int NOT NULL DEFAULT '-1',
  `sud_end_hour` int NOT NULL DEFAULT '-1',
  `nc_cb_execute` tinyint(1) NOT NULL,
  `na_cb_execute` tinyint(1) NOT NULL,
  `inform_unread` tinyint(1) NOT NULL,
  `active_balancing` tinyint(1) NOT NULL,
  `visible_if_online` tinyint(1) NOT NULL,
  `inform_close` int NOT NULL,
  `inform_unread_delay` int NOT NULL,
  `inform_options` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `online_hours_active` tinyint(1) NOT NULL,
  `inform_delay` int NOT NULL,
  `attr_int_1` int NOT NULL,
  `attr_int_2` int NOT NULL,
  `attr_int_3` int NOT NULL,
  `pending_max` int NOT NULL,
  `pending_group_max` int NOT NULL,
  `active_chats_counter` int NOT NULL,
  `inactive_chats_cnt` int NOT NULL DEFAULT '0',
  `pending_chats_counter` int NOT NULL,
  `bot_chats_counter` int NOT NULL DEFAULT '0',
  `inop_chats_cnt` int NOT NULL DEFAULT '0',
  `acop_chats_cnt` int NOT NULL DEFAULT '0',
  `inform_close_all` int NOT NULL,
  `inform_close_all_email` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_configuration` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `bot_configuration` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `lh_departament`
--

INSERT INTO `lh_departament` (`id`, `name`, `email`, `xmpp_recipients`, `xmpp_group_recipients`, `priority`, `sort_priority`, `department_transfer_id`, `transfer_timeout`, `exclude_inactive_chats`, `delay_before_assign`, `max_ac_dep_chats`, `assign_same_language`, `archive`, `max_load`, `max_load_h`, `disabled`, `hidden`, `delay_lm`, `max_active_chats`, `max_timeout_seconds`, `identifier`, `mod_start_hour`, `mod_end_hour`, `tud_start_hour`, `tud_end_hour`, `wed_start_hour`, `wed_end_hour`, `thd_start_hour`, `thd_end_hour`, `frd_start_hour`, `frd_end_hour`, `sad_start_hour`, `sad_end_hour`, `sud_start_hour`, `sud_end_hour`, `nc_cb_execute`, `na_cb_execute`, `inform_unread`, `active_balancing`, `visible_if_online`, `inform_close`, `inform_unread_delay`, `inform_options`, `online_hours_active`, `inform_delay`, `attr_int_1`, `attr_int_2`, `attr_int_3`, `pending_max`, `pending_group_max`, `active_chats_counter`, `inactive_chats_cnt`, `pending_chats_counter`, `bot_chats_counter`, `inop_chats_cnt`, `acop_chats_cnt`, `inform_close_all`, `inform_close_all_email`, `alias`, `product_configuration`, `bot_configuration`) VALUES
(1, 'Agendamento', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_departament_availability`
--

CREATE TABLE `lh_departament_availability` (
  `id` bigint NOT NULL,
  `dep_id` int NOT NULL,
  `hour` int NOT NULL,
  `hourminute` int NOT NULL,
  `minute` int NOT NULL,
  `time` int NOT NULL,
  `ymdhi` bigint NOT NULL,
  `ymd` int NOT NULL,
  `status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_departament_custom_work_hours`
--

CREATE TABLE `lh_departament_custom_work_hours` (
  `id` int NOT NULL,
  `dep_id` int NOT NULL,
  `date_from` int NOT NULL,
  `date_to` int NOT NULL,
  `start_hour` int NOT NULL,
  `end_hour` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_departament_group`
--

CREATE TABLE `lh_departament_group` (
  `id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `achats_cnt` int NOT NULL DEFAULT '0',
  `inachats_cnt` int NOT NULL DEFAULT '0',
  `pchats_cnt` int NOT NULL DEFAULT '0',
  `max_load` int NOT NULL DEFAULT '0',
  `max_load_h` int NOT NULL DEFAULT '0',
  `bchats_cnt` int NOT NULL DEFAULT '0',
  `inopchats_cnt` int NOT NULL DEFAULT '0',
  `acopchats_cnt` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_departament_group_member`
--

CREATE TABLE `lh_departament_group_member` (
  `id` int NOT NULL,
  `dep_id` int NOT NULL,
  `dep_group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_departament_group_user`
--

CREATE TABLE `lh_departament_group_user` (
  `id` int NOT NULL,
  `dep_group_id` int NOT NULL,
  `user_id` int NOT NULL,
  `read_only` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `exc_indv_autoasign` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `assign_priority` int NOT NULL DEFAULT '0',
  `chat_min_priority` int NOT NULL DEFAULT '0',
  `chat_max_priority` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_departament_limit_group`
--

CREATE TABLE `lh_departament_limit_group` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pending_max` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_departament_limit_group_member`
--

CREATE TABLE `lh_departament_limit_group_member` (
  `id` int NOT NULL,
  `dep_id` int NOT NULL,
  `dep_limit_group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_faq`
--

CREATE TABLE `lh_faq` (
  `id` int NOT NULL,
  `question` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int NOT NULL,
  `has_url` tinyint(1) NOT NULL,
  `is_wildcard` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_forgotpasswordhash`
--

CREATE TABLE `lh_forgotpasswordhash` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `hash` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_generic_bot_bot`
--

CREATE TABLE `lh_generic_bot_bot` (
  `id` bigint NOT NULL,
  `configuration` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filepath` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nick` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attr_str_1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attr_str_2` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attr_str_3` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_generic_bot_chat_event`
--

CREATE TABLE `lh_generic_bot_chat_event` (
  `id` bigint NOT NULL,
  `chat_id` bigint NOT NULL,
  `counter` int NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ctime` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_generic_bot_chat_workflow`
--

CREATE TABLE `lh_generic_bot_chat_workflow` (
  `id` bigint NOT NULL,
  `chat_id` bigint NOT NULL,
  `trigger_id` bigint NOT NULL,
  `time` int NOT NULL,
  `identifier` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `collected_data` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_generic_bot_command`
--

CREATE TABLE `lh_generic_bot_command` (
  `id` int NOT NULL,
  `command` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_command` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info_msg` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bot_id` int NOT NULL,
  `trigger_id` int NOT NULL,
  `dep_id` int NOT NULL,
  `shortcut_1` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shortcut_2` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_generic_bot_exception`
--

CREATE TABLE `lh_generic_bot_exception` (
  `id` bigint NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_generic_bot_exception_message`
--

CREATE TABLE `lh_generic_bot_exception_message` (
  `id` bigint NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception_group_id` int NOT NULL,
  `priority` int NOT NULL,
  `active` tinyint(1) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_generic_bot_group`
--

CREATE TABLE `lh_generic_bot_group` (
  `id` bigint NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_collapsed` int NOT NULL DEFAULT '0',
  `pos` int NOT NULL DEFAULT '0',
  `bot_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_generic_bot_payload`
--

CREATE TABLE `lh_generic_bot_payload` (
  `id` bigint NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bot_id` int NOT NULL,
  `trigger_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_generic_bot_pending_event`
--

CREATE TABLE `lh_generic_bot_pending_event` (
  `id` bigint NOT NULL,
  `chat_id` bigint NOT NULL,
  `trigger_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_generic_bot_repeat_restrict`
--

CREATE TABLE `lh_generic_bot_repeat_restrict` (
  `id` bigint NOT NULL,
  `chat_id` bigint NOT NULL,
  `trigger_id` bigint DEFAULT NULL,
  `identifier` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_generic_bot_rest_api`
--

CREATE TABLE `lh_generic_bot_rest_api` (
  `id` bigint NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `configuration` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_generic_bot_rest_api_cache`
--

CREATE TABLE `lh_generic_bot_rest_api_cache` (
  `hash` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rest_api_id` bigint UNSIGNED NOT NULL,
  `response` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ctime` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_generic_bot_trigger`
--

CREATE TABLE `lh_generic_bot_trigger` (
  `id` bigint NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actions` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_id` bigint NOT NULL,
  `bot_id` int NOT NULL,
  `default` int NOT NULL,
  `default_unknown` int NOT NULL,
  `as_argument` int NOT NULL DEFAULT '0',
  `in_progress` int NOT NULL DEFAULT '0',
  `default_unknown_btn` int NOT NULL DEFAULT '0',
  `default_always` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_generic_bot_trigger_event`
--

CREATE TABLE `lh_generic_bot_trigger_event` (
  `id` bigint NOT NULL,
  `pattern` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pattern_exc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `trigger_id` bigint NOT NULL,
  `bot_id` int NOT NULL,
  `skip` tinyint(1) NOT NULL DEFAULT '0',
  `on_start_type` tinyint(1) NOT NULL,
  `priority` int NOT NULL,
  `type` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_generic_bot_trigger_event_template`
--

CREATE TABLE `lh_generic_bot_trigger_event_template` (
  `id` bigint NOT NULL,
  `configuration` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_generic_bot_trigger_template`
--

CREATE TABLE `lh_generic_bot_trigger_template` (
  `id` bigint NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actions` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_generic_bot_tr_group`
--

CREATE TABLE `lh_generic_bot_tr_group` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bot_lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `use_translation_service` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `filename` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filepath` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `nick` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_generic_bot_tr_item`
--

CREATE TABLE `lh_generic_bot_tr_item` (
  `id` int NOT NULL,
  `group_id` int NOT NULL,
  `auto_translate` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `identifier` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `translation` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_group`
--

CREATE TABLE `lh_group` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disabled` tinyint(1) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `lh_group`
--

INSERT INTO `lh_group` (`id`, `name`, `disabled`, `required`) VALUES
(1, 'Administrators', 0, 0),
(2, 'Operators', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_grouprole`
--

CREATE TABLE `lh_grouprole` (
  `id` int NOT NULL,
  `group_id` int NOT NULL,
  `role_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `lh_grouprole`
--

INSERT INTO `lh_grouprole` (`id`, `group_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_groupuser`
--

CREATE TABLE `lh_groupuser` (
  `id` int NOT NULL,
  `group_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `lh_groupuser`
--

INSERT INTO `lh_groupuser` (`id`, `group_id`, `user_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_group_chat`
--

CREATE TABLE `lh_group_chat` (
  `id` bigint NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `time` int NOT NULL,
  `user_id` int NOT NULL,
  `chat_id` bigint NOT NULL DEFAULT '0',
  `last_msg_op_id` bigint NOT NULL,
  `last_msg` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_user_msg_time` int NOT NULL,
  `last_msg_id` bigint NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `tm` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_group_chat_member`
--

CREATE TABLE `lh_group_chat_member` (
  `id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `group_id` bigint NOT NULL,
  `last_activity` int NOT NULL,
  `last_msg_id` bigint NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `jtime` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_group_msg`
--

CREATE TABLE `lh_group_msg` (
  `id` bigint NOT NULL,
  `msg` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` int NOT NULL,
  `chat_id` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL DEFAULT '0',
  `name_support` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_msg` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_group_object`
--

CREATE TABLE `lh_group_object` (
  `id` bigint NOT NULL,
  `object_id` bigint NOT NULL,
  `group_id` bigint NOT NULL,
  `type` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_group_work`
--

CREATE TABLE `lh_group_work` (
  `id` int NOT NULL,
  `group_id` int NOT NULL,
  `group_work_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_incoming_webhook`
--

CREATE TABLE `lh_incoming_webhook` (
  `id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `disabled` tinyint(1) NOT NULL,
  `configuration` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dep_id` int NOT NULL,
  `scope` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_incoming` tinyint UNSIGNED NOT NULL,
  `log_failed_parse` tinyint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_msg`
--

CREATE TABLE `lh_msg` (
  `id` bigint UNSIGNED NOT NULL,
  `msg` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_msg` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` int NOT NULL,
  `chat_id` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL DEFAULT '0',
  `del_st` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `name_support` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `lh_msg`
--

INSERT INTO `lh_msg` (`id`, `msg`, `meta_msg`, `time`, `chat_id`, `user_id`, `del_st`, `name_support`) VALUES
(13, 'ola', '', 1699977648, 5, 0, 0, ''),
(14, 'Andre  Bertolo aceitou o bate-papo!', '{\"content\":{\"accept_action\":{\"user_id\":1,\"name_support\":\"Andre  Bertolo\"}}}', 1699977667, 5, -1, 0, 'Andre  Bertolo'),
(15, 'Boa tarde', '', 1699977676, 5, 1, 1, 'Andre  Bertolo'),
(16, 'estou com problemas para agendar', '', 1699977693, 5, 0, 0, ''),
(17, 'oi', '', 1702072459, 6, 0, 0, ''),
(18, 'Andre  Bertolo aceitou o bate-papo!', '{\"content\":{\"accept_action\":{\"user_id\":1,\"name_support\":\"Andre  Bertolo\"}}}', 1702072483, 6, -1, 0, 'Andre  Bertolo'),
(19, 'Ola', '', 1702072492, 6, 1, 1, 'Andre  Bertolo');

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_notification_subscriber`
--

CREATE TABLE `lh_notification_subscriber` (
  `id` bigint NOT NULL,
  `chat_id` bigint NOT NULL,
  `online_user_id` bigint NOT NULL,
  `dep_id` int NOT NULL,
  `theme_id` int NOT NULL,
  `ctime` int NOT NULL,
  `utime` int NOT NULL,
  `status` int NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_type` tinyint(1) NOT NULL,
  `subscriber_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uagent` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_error` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_question`
--

CREATE TABLE `lh_question` (
  `id` int NOT NULL,
  `question` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int NOT NULL,
  `priority` int NOT NULL,
  `is_voting` int NOT NULL,
  `question_intro` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `revote` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_question_answer`
--

CREATE TABLE `lh_question_answer` (
  `id` int NOT NULL,
  `ip` bigint NOT NULL,
  `question_id` int NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ctime` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_question_option`
--

CREATE TABLE `lh_question_option` (
  `id` int NOT NULL,
  `question_id` int NOT NULL,
  `option_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_question_option_answer`
--

CREATE TABLE `lh_question_option_answer` (
  `id` int NOT NULL,
  `question_id` int NOT NULL,
  `option_id` int NOT NULL,
  `ctime` int NOT NULL,
  `ip` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_role`
--

CREATE TABLE `lh_role` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `lh_role`
--

INSERT INTO `lh_role` (`id`, `name`) VALUES
(1, 'Administrators'),
(2, 'Operators');

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_rolefunction`
--

CREATE TABLE `lh_rolefunction` (
  `id` int NOT NULL,
  `role_id` int NOT NULL,
  `module` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `function` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `limitation` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `lh_rolefunction`
--

INSERT INTO `lh_rolefunction` (`id`, `role_id`, `module`, `function`, `limitation`) VALUES
(1, 1, '*', '*', ''),
(2, 2, 'lhuser', 'selfedit', ''),
(3, 2, 'lhuser', 'change_chat_nickname', ''),
(4, 2, 'lhuser', 'changephoto', ''),
(5, 2, 'lhuser', 'change_job_title', ''),
(6, 2, 'lhuser', 'change_core_attributes', ''),
(7, 2, 'lhuser', 'change_name_surname', ''),
(8, 2, 'lhuser', 'selfedit', ''),
(9, 2, 'lhuser', 'changeonlinestatus', ''),
(10, 2, 'lhuser', 'changeskypenick', ''),
(11, 2, 'lhuser', 'personalcannedmsg', ''),
(12, 2, 'lhuser', 'change_visibility_list', ''),
(13, 2, 'lhuser', 'see_assigned_departments', ''),
(14, 2, 'lhuser', 'canseedepartmentstats', ''),
(15, 2, 'lhchat', 'use', ''),
(16, 2, 'lhchat', 'open_all', ''),
(17, 2, 'lhchat', 'chattabschrome', ''),
(18, 2, 'lhchat', 'singlechatwindow', ''),
(19, 2, 'lhchat', 'allowopenremotechat', ''),
(20, 2, 'lhchat', 'writeremotechat', ''),
(21, 2, 'lhchat', 'allowchattabs', ''),
(22, 2, 'lhchat', 'use_onlineusers', ''),
(23, 2, 'lhchat', 'take_screenshot', ''),
(24, 2, 'lhchat', 'editprevious', ''),
(25, 2, 'lhfront', 'use', ''),
(26, 2, 'lhsystem', 'use', ''),
(27, 2, 'lhtranslation', 'use', ''),
(28, 2, 'lhchat', 'allowblockusers', ''),
(29, 2, 'lhsystem', 'generatejs', ''),
(30, 2, 'lhsystem', 'changelanguage', ''),
(31, 2, 'lhchat', 'allowredirect', ''),
(32, 2, 'lhchat', 'allowtransfer', ''),
(33, 2, 'lhchat', 'allowtransferdirectly', ''),
(34, 2, 'lhchat', 'administratecannedmsg', ''),
(35, 2, 'lhchat', 'explorecannedmsg', ''),
(36, 2, 'lhchat', 'sees_all_online_visitors', ''),
(37, 2, 'lhchat', 'list_all_chats', ''),
(38, 2, 'lhchat', 'use_unhidden_phone', ''),
(39, 2, 'lhchat', 'chat_see_email', ''),
(40, 2, 'lhchat', 'chat_see_unhidden_email', ''),
(41, 2, 'lhchat', 'see_sensitive_information', ''),
(42, 2, 'lhpermission', 'see_permissions', ''),
(43, 2, 'lhquestionary', 'manage_questionary', ''),
(44, 2, 'lhfaq', 'manage_faq', ''),
(45, 2, 'lhchatbox', 'manage_chatbox', ''),
(46, 2, 'lhbrowseoffer', 'manage_bo', ''),
(47, 2, 'lhxml', '*', ''),
(48, 2, 'lhcobrowse', 'browse', ''),
(49, 2, 'lhfile', 'use_operator', ''),
(50, 2, 'lhfile', 'file_delete_chat', ''),
(51, 2, 'lhstatistic', 'use', ''),
(52, 2, 'lhspeech', 'changedefaultlanguage', ''),
(53, 2, 'lhspeech', 'use', ''),
(54, 2, 'lhcannedmsg', 'use', ''),
(55, 2, 'lhcannedmsg', 'see_global', ''),
(56, 2, 'lhchat', 'prev_chats', ''),
(57, 2, 'lhchat', 'allowopenclosedchats', ''),
(58, 2, 'lhtheme', 'personaltheme', ''),
(59, 2, 'lhuser', 'userlistonline', ''),
(60, 2, 'lhspeech', 'change_chat_recognition', ''),
(61, 2, 'lhgroupchat', 'use', ''),
(62, 2, 'lhuser', 'see_all_group_users', ''),
(63, 2, 'lhvoicevideo', 'use', ''),
(64, 2, 'lhtheme', 'use_operator', ''),
(65, 2, 'lhgenericbot', 'use_operator', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_speech_chat_language`
--

CREATE TABLE `lh_speech_chat_language` (
  `id` int NOT NULL,
  `chat_id` int NOT NULL,
  `language_id` int NOT NULL,
  `dialect` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_speech_language`
--

CREATE TABLE `lh_speech_language` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siteaccess` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `lh_speech_language`
--

INSERT INTO `lh_speech_language` (`id`, `name`, `siteaccess`) VALUES
(1, 'Afrikaans', ''),
(2, 'Bahasa Indonesia', ''),
(3, 'Bahasa Melayu', ''),
(4, 'Català', ''),
(5, 'Čeština', 'cse'),
(6, 'Deutsch', 'ger'),
(7, 'English', ''),
(8, 'Español', 'esp'),
(9, 'Euskara', ''),
(10, 'Français', 'fre'),
(11, 'Galego', ''),
(12, 'Hrvatski', ''),
(13, 'IsiZulu', ''),
(14, 'Íslenska', ''),
(15, 'Italiano', 'ita'),
(16, 'Magyar', ''),
(17, 'Nederlands', 'nld'),
(18, 'Norsk bokmål', ''),
(19, 'Polski', 'pol'),
(20, 'Português', 'por'),
(21, 'Română', ''),
(22, 'Slovenčina', 'svk'),
(23, 'Suomi', 'fin'),
(24, 'Svenska', ''),
(25, 'Türkçe', 'tur'),
(26, 'български', ''),
(27, 'Pусский', 'rus'),
(28, 'Српски', ''),
(29, '한국어', ''),
(30, '中文', ''),
(31, '日本語', ''),
(32, 'Lingua latīna', ''),
(33, 'Lithuanian', 'lit'),
(34, 'Latvia', ''),
(35, 'Afar', ''),
(36, 'Arabic', ''),
(37, 'Assamese', ''),
(38, 'Azerbaijani', ''),
(39, 'Bulgarian', 'bgr'),
(40, 'Bangla', ''),
(41, 'Bosnian', ''),
(42, 'Cakchiquel', ''),
(43, 'Danish', ''),
(44, 'Greek', ''),
(45, 'Estonian', ''),
(46, 'Persian', ''),
(47, 'Filipino', ''),
(48, 'Gujarati', ''),
(49, 'Hebrew', ''),
(50, 'Croatian', ''),
(51, 'Indonesia', ''),
(52, 'Icelandic', ''),
(53, 'Georgian', ''),
(54, 'Maori (New Zealand)', ''),
(55, 'Macedonian', ''),
(56, 'Malay (Latin)', ''),
(57, 'Maltese', ''),
(58, 'Norwegian Nynorsk', ''),
(59, 'Norwegian', 'nor'),
(60, 'Northern Sotho (South Africa)', ''),
(61, 'Slovenian', ''),
(63, 'Thai', ''),
(64, 'Tagalog', ''),
(65, 'Tongan', ''),
(66, 'Ukrainian', ''),
(67, 'Vietnamese', 'vnm'),
(68, 'Chinese', 'chn');

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_speech_language_dialect`
--

CREATE TABLE `lh_speech_language_dialect` (
  `id` int NOT NULL,
  `language_id` int NOT NULL,
  `lang_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_code` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `lh_speech_language_dialect`
--

INSERT INTO `lh_speech_language_dialect` (`id`, `language_id`, `lang_name`, `lang_code`, `short_code`) VALUES
(1, 1, 'Afrikaans', 'af-ZA', 'af'),
(2, 2, 'Bahasa Indonesia', 'id-ID', 'id'),
(3, 3, 'Bahasa Melayu', 'ms-MY', ''),
(4, 4, 'Català', 'ca-ES', ''),
(5, 5, 'Čeština', 'cs-CZ', 'cs'),
(6, 6, 'Deutsch', 'de-DE', 'de'),
(7, 7, 'Australia', 'en-AU', ''),
(8, 7, 'Canada', 'en-CA', ''),
(9, 7, 'India', 'en-IN', ''),
(10, 7, 'New Zealand', 'en-NZ', ''),
(11, 7, 'South Africa', 'en-ZA', ''),
(12, 7, 'United Kingdom', 'en-GB', 'en'),
(13, 7, 'United States', 'en-US', ''),
(14, 8, 'Argentina', 'es-AR', ''),
(15, 8, 'Bolivia', 'es-BO', ''),
(16, 8, 'Chile', 'es-CL', ''),
(17, 8, 'Colombia', 'es-CO', ''),
(18, 8, 'Costa Rica', 'es-CR', ''),
(19, 8, 'Ecuador', 'es-EC', ''),
(20, 8, 'El Salvador', 'es-SV', ''),
(21, 8, 'España', 'es-ES', 'es'),
(22, 8, 'Estados Unidos', 'es-US', ''),
(23, 8, 'Guatemala', 'es-GT', ''),
(24, 8, 'Honduras', 'es-HN', ''),
(25, 8, 'México', 'es-MX', ''),
(26, 8, 'Nicaragua', 'es-NI', ''),
(27, 8, 'Panamá', 'es-PA', ''),
(28, 8, 'Paraguay', 'es-PY', ''),
(29, 8, 'Perú', 'es-PE', ''),
(30, 8, 'Puerto Rico', 'es-PR', ''),
(31, 8, 'República Dominicana', 'es-DO', ''),
(32, 8, 'Uruguay', 'es-UY', ''),
(33, 8, 'Venezuela', 'es-VE', ''),
(34, 9, 'Euskara', 'eu-ES', ''),
(35, 10, 'Français', 'fr-FR', 'fr'),
(36, 11, 'Galego', 'gl-ES', ''),
(37, 12, 'Hrvatski', 'hr_HR', ''),
(38, 13, 'IsiZulu', 'zu-ZA', ''),
(39, 14, 'Íslenska', 'is-IS', ''),
(40, 15, 'Italia', 'it-IT', 'it'),
(41, 15, 'Svizzera', 'it-CH', 'it'),
(42, 16, 'Magyar', 'hu-HU', 'hu'),
(43, 17, 'Nederlands', 'nl-NL', 'nl'),
(44, 18, 'Norsk bokmål', 'nb-NO', 'nb'),
(45, 19, 'Polski', 'pl-PL', 'pl'),
(46, 20, 'Brasil', 'pt-BR', ''),
(47, 20, 'Portugal', 'pt-PT', 'pt'),
(48, 21, 'Română', 'ro-RO', 'ro'),
(49, 22, 'Slovenčina', 'sk-SK', 'sk'),
(50, 23, 'Suomi', 'fi-FI', 'fi'),
(51, 24, 'Swedish', 'sv-SE', 'sv'),
(52, 25, 'Türkçe', 'tr-TR', 'tr'),
(53, 26, 'български', 'bg-BG', ''),
(54, 27, 'Pусский', 'ru-RU', 'ru'),
(55, 28, 'Serbian', 'sr-RS', 'sr'),
(56, 29, '한국어', 'ko-KR', 'ko'),
(57, 30, '普通话 (中国大陆)', 'cmn-Hans-CN', ''),
(58, 30, '普通话 (香港)', 'cmn-Hans-HK', ''),
(59, 30, '中文 (台灣)', 'cmn-Hant-TW', ''),
(60, 30, '粵語 (香港)', 'yue-Hant-HK', ''),
(61, 31, '日本語', 'ja-JP', 'ja'),
(62, 32, 'Lingua latīna', 'la', ''),
(64, 33, 'Lithuanian', 'lt-LT', 'lt'),
(65, 34, 'Latvia', 'lv-LV', 'lv'),
(66, 35, 'Afar', 'aa-DJ', 'aa'),
(67, 36, 'Egypt', 'ar-EG', 'ar'),
(68, 37, 'India', 'as-IN', 'as'),
(69, 38, 'Azerbaijani', 'az-AZ', 'az'),
(70, 39, 'Bulgarian', 'bg', 'bg'),
(71, 40, 'Bangla', 'bn', 'bn'),
(72, 41, 'Bosnian', 'bs-BA', 'bs'),
(73, 42, 'Cakchiquel', 'cak', 'cak'),
(74, 43, 'Danish', 'da-dk', 'da'),
(75, 44, 'Greek', 'el-GR', 'el'),
(76, 45, 'Estonian', 'et-EE', 'et'),
(77, 46, 'Persian', 'fa-IR', 'fa'),
(78, 47, 'Filipino', 'fil', 'fil'),
(79, 48, 'Gujarati', 'gu-IN', 'gu'),
(80, 49, 'Hebrew', 'he', 'he'),
(81, 50, 'Croatian', 'hr-HR', 'hr'),
(82, 51, 'Indonesia', 'in', 'in'),
(83, 52, 'Icelandic', 'is', 'is'),
(84, 53, 'Georgian', 'ka-ge', 'ka'),
(85, 54, 'Maori (New Zealand)', 'mi-nz', 'mi'),
(86, 55, 'Macedonian', 'mk-MK', 'mk'),
(87, 56, 'Malay (Latin)', 'ms', 'ms'),
(88, 57, 'Maltese', 'mt', 'mt'),
(89, 58, 'Norwegian Nynorsk', 'nn-NO', 'nn'),
(90, 59, 'Norwegian', 'no', 'no'),
(91, 60, 'Northern Sotho (South Africa)', 'nso-za', 'nso'),
(92, 61, 'Slovenian', 'sl-SI', 'sl'),
(94, 63, 'Thai', 'th-TH', 'th'),
(95, 64, 'Tagalog', 'tl', 'tl'),
(96, 65, 'Tongan', 'to-TO', 'to'),
(97, 66, 'Ukrainian', 'uk-UA', 'uk'),
(98, 67, 'Vietnamese', 'vi-VN', 'vi'),
(99, 68, 'Chinese', 'zh-CN', 'zh'),
(100, 36, 'Egypt', 'ar-AE', ''),
(101, 36, 'Egypt', 'ar-IQ', ''),
(102, 41, 'Bosnian', 'bs-Latn-BA', ''),
(103, 6, 'Deutsch', 'de-at', ''),
(104, 6, 'Deutsch', 'de-ch', ''),
(105, 6, 'Deutsch', 'de-GB', ''),
(106, 6, 'Deutsch', 'de-LI', ''),
(107, 6, 'Deutsch', 'de-LU', ''),
(108, 7, 'United Kingdom', 'en-029', ''),
(109, 7, 'United Kingdom', 'en-AS', ''),
(110, 7, 'United Kingdom', 'en-BE', ''),
(111, 7, 'United Kingdom', 'en-BM', ''),
(112, 7, 'United Kingdom', 'en-BS', ''),
(113, 7, 'United Kingdom', 'en-BW', ''),
(114, 7, 'United Kingdom', 'en-CH', ''),
(115, 7, 'United Kingdom', 'en-CX', ''),
(116, 7, 'United Kingdom', 'en-CY', ''),
(117, 7, 'United Kingdom', 'en-DE', ''),
(118, 7, 'United Kingdom', 'en-DK', ''),
(119, 7, 'United Kingdom', 'en-DM', ''),
(120, 7, 'United Kingdom', 'en-GY', ''),
(121, 7, 'United Kingdom', 'en-HK', ''),
(122, 7, 'United Kingdom', 'en-ie', ''),
(123, 7, 'United Kingdom', 'en-IM', ''),
(124, 7, 'United Kingdom', 'en-JM', ''),
(125, 7, 'United Kingdom', 'en-KY', ''),
(126, 7, 'United Kingdom', 'en-MY', ''),
(127, 7, 'United Kingdom', 'en-NF', ''),
(128, 7, 'United Kingdom', 'en-NG', ''),
(129, 7, 'United Kingdom', 'en-NL', ''),
(130, 7, 'United Kingdom', 'en-PH', ''),
(131, 7, 'United Kingdom', 'en-SE', ''),
(132, 7, 'United Kingdom', 'en-sg', ''),
(133, 7, 'United Kingdom', 'en-SI', ''),
(134, 7, 'United Kingdom', 'en-SS', ''),
(135, 7, 'United Kingdom', 'en-TO', ''),
(136, 7, 'United Kingdom', 'en-TZ', ''),
(137, 7, 'United Kingdom', 'en-UG', ''),
(138, 7, 'United Kingdom', 'en-UK', ''),
(139, 7, 'United Kingdom', 'en-ZG', ''),
(140, 7, 'United Kingdom', 'en-ZM', ''),
(141, 7, 'United Kingdom', 'en-ZW', ''),
(142, 8, 'España', 'es-419', ''),
(143, 8, 'España', 'es-xl', ''),
(144, 47, 'Filipino', 'fil-PH', ''),
(145, 10, 'Français', 'fr-BE', ''),
(146, 10, 'Français', 'fr-ca', ''),
(147, 10, 'Français', 'fr-ch', ''),
(148, 10, 'Français', 'fr-CM', ''),
(149, 10, 'Français', 'fr-MC', ''),
(150, 49, 'Hebrew', 'he-IL', ''),
(151, 50, 'Croatian', 'hr-BA', ''),
(152, 17, 'Nederlands', 'nl-BE', ''),
(153, 19, 'Polski', 'pl-GB', ''),
(154, 27, 'Pусский', 'ru-KZ', ''),
(155, 27, 'Pусский', 'ru-UA', ''),
(156, 28, 'Serbian', 'sr-BA', ''),
(157, 28, 'Serbian', 'sr-Latn-RS', ''),
(158, 68, 'Chinese', 'zh-MO', ''),
(159, 68, 'Chinese', 'zh-SG', ''),
(160, 68, 'Chinese', 'zh-TW', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_speech_user_language`
--

CREATE TABLE `lh_speech_user_language` (
  `id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `language` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_transfer`
--

CREATE TABLE `lh_transfer` (
  `id` int NOT NULL,
  `chat_id` int NOT NULL,
  `dep_id` int NOT NULL,
  `transfer_user_id` int NOT NULL,
  `from_dep_id` int NOT NULL,
  `ctime` int NOT NULL,
  `transfer_to_user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_userdep`
--

CREATE TABLE `lh_userdep` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `dep_id` int NOT NULL,
  `last_activity` int NOT NULL,
  `lastd_activity` int NOT NULL DEFAULT '0',
  `exclude_autoasign` tinyint(1) NOT NULL DEFAULT '0',
  `exc_indv_autoasign` tinyint(1) NOT NULL DEFAULT '0',
  `hide_online` int NOT NULL,
  `last_accepted` int NOT NULL DEFAULT '0',
  `active_chats` int NOT NULL DEFAULT '0',
  `pending_chats` int NOT NULL DEFAULT '0',
  `inactive_chats` int NOT NULL DEFAULT '0',
  `max_chats` int NOT NULL DEFAULT '0',
  `type` int NOT NULL DEFAULT '0',
  `ro` tinyint(1) NOT NULL DEFAULT '0',
  `hide_online_ts` int NOT NULL DEFAULT '0',
  `dep_group_id` int NOT NULL DEFAULT '0',
  `always_on` tinyint(1) NOT NULL DEFAULT '0',
  `assign_priority` int NOT NULL DEFAULT '0',
  `chat_max_priority` int NOT NULL DEFAULT '0',
  `chat_min_priority` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `lh_userdep`
--

INSERT INTO `lh_userdep` (`id`, `user_id`, `dep_id`, `last_activity`, `lastd_activity`, `exclude_autoasign`, `exc_indv_autoasign`, `hide_online`, `last_accepted`, `active_chats`, `pending_chats`, `inactive_chats`, `max_chats`, `type`, `ro`, `hide_online_ts`, `dep_group_id`, `always_on`, `assign_priority`, `chat_max_priority`, `chat_min_priority`) VALUES
(1, 1, 0, 1702080965, 1702072480, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_userdep_alias`
--

CREATE TABLE `lh_userdep_alias` (
  `id` bigint UNSIGNED NOT NULL,
  `dep_id` bigint UNSIGNED NOT NULL,
  `dep_group_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `nick` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `filepath` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_users`
--

CREATE TABLE `lh_users` (
  `id` int NOT NULL,
  `username` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_zone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filepath` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departments_ids` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `chat_nickname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `xmpp_username` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operation_admin` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `skype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exclude_autoasign` tinyint(1) NOT NULL,
  `disabled` tinyint NOT NULL,
  `hide_online` tinyint(1) NOT NULL,
  `all_departments` tinyint(1) NOT NULL,
  `invisible_mode` tinyint(1) NOT NULL,
  `inactive_mode` tinyint(1) NOT NULL,
  `rec_per_req` tinyint(1) NOT NULL,
  `auto_accept` tinyint(1) NOT NULL,
  `max_active_chats` int NOT NULL,
  `cache_version` int UNSIGNED NOT NULL DEFAULT '0',
  `pswd_updated` int NOT NULL,
  `attr_int_1` int NOT NULL,
  `attr_int_2` int NOT NULL,
  `attr_int_3` int NOT NULL,
  `force_logout` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `llogin` bigint UNSIGNED NOT NULL DEFAULT '0',
  `always_on` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `lh_users`
--

INSERT INTO `lh_users` (`id`, `username`, `password`, `email`, `time_zone`, `name`, `surname`, `filepath`, `filename`, `job_title`, `departments_ids`, `chat_nickname`, `xmpp_username`, `session_id`, `avatar`, `operation_admin`, `skype`, `exclude_autoasign`, `disabled`, `hide_online`, `all_departments`, `invisible_mode`, `inactive_mode`, `rec_per_req`, `auto_accept`, `max_active_chats`, `cache_version`, `pswd_updated`, `attr_int_1`, `attr_int_2`, `attr_int_3`, `force_logout`, `llogin`, `always_on`) VALUES
(1, 'bertolo', '$2y$10$aVQ2nO1e8wGt6vsSdMnZKeD.91JCxzDGqvrixzu00.DX.yyQEH5pm', 'barata321@gmail.com', '', 'Andre ', 'Bertolo', '', '', '', '0', '', '', '', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1699975147, 0, 0, 0, 0, 1702072417, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_users_login`
--

CREATE TABLE `lh_users_login` (
  `id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `type` int NOT NULL,
  `ctime` bigint NOT NULL,
  `status` int NOT NULL,
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `lh_users_login`
--

INSERT INTO `lh_users_login` (`id`, `user_id`, `type`, `ctime`, `status`, `ip`, `msg`) VALUES
(1, 1, 1, 1699975163, 0, '::1', 'Logged in successfully. WEB'),
(2, 1, 0, 1699980620, 0, '::1', 'Failed login. WEB'),
(3, 1, 1, 1699980644, 0, '::1', 'Logged in successfully. WEB'),
(4, 1, 0, 1702072409, 0, '::1', 'Failed login. WEB'),
(5, 1, 1, 1702072417, 0, '::1', 'Logged in successfully. WEB');

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_users_online_session`
--

CREATE TABLE `lh_users_online_session` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `time` int NOT NULL,
  `duration` int NOT NULL,
  `lactivity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `lh_users_online_session`
--

INSERT INTO `lh_users_online_session` (`id`, `user_id`, `time`, `duration`, `lactivity`) VALUES
(1, 1, 1699975164, 3875, 1699979039),
(2, 1, 1699980572, 1538, 1699982110),
(3, 1, 1702072418, 8537, 1702080955);

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_users_remember`
--

CREATE TABLE `lh_users_remember` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `mtime` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_users_session`
--

CREATE TABLE `lh_users_session` (
  `id` int NOT NULL,
  `token` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_type` int NOT NULL,
  `device_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `created_on` int NOT NULL,
  `updated_on` int NOT NULL,
  `expires_on` int NOT NULL,
  `notifications_status` int NOT NULL DEFAULT '1',
  `error` int NOT NULL DEFAULT '0',
  `last_error` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_users_setting`
--

CREATE TABLE `lh_users_setting` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `identifier` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `lh_users_setting`
--

INSERT INTO `lh_users_setting` (`id`, `user_id`, `identifier`, `value`) VALUES
(1, 1, 'user_language', 'pt_BR'),
(2, 1, 'new_dashboard', '1'),
(3, 1, 'enable_pending_list', '1'),
(4, 1, 'enable_active_list', '1'),
(5, 1, 'enable_close_list', '0'),
(6, 1, 'enable_unread_list', '0'),
(7, 1, 'enable_mchats_list', '1'),
(8, 1, 'dwo', ''),
(9, 1, 'left_list', '0'),
(10, 1, 'new_user_bn', '0'),
(11, 1, 'new_user_sound', '0'),
(12, 1, 'dw_filters', '{}'),
(13, 1, 'ouser_timeout', '3600'),
(14, 1, 'oupdate_timeout', '10'),
(15, 1, 'omax_rows', '50'),
(16, 1, 'ogroup_by', 'none'),
(17, 1, 'ocountry', 'none'),
(18, 1, 'otime_on_site', ''),
(19, 1, 'omap_depid', '0'),
(20, 1, 'omap_mtimeout', '30'),
(21, 1, 'online_connected', '0'),
(22, 1, 'oattrf_key_1', ''),
(23, 1, 'oattrf_val_1', ''),
(24, 1, 'oattrf_key_2', ''),
(25, 1, 'oattrf_val_2', ''),
(26, 1, 'oattrf_key_3', ''),
(27, 1, 'oattrf_val_3', ''),
(28, 1, 'oattrf_key_4', ''),
(29, 1, 'oattrf_val_4', ''),
(30, 1, 'oattrf_key_5', ''),
(31, 1, 'oattrf_val_5', ''),
(32, 1, 'hide_tabs', '1'),
(33, 1, 'column_chats', '0'),
(34, 1, 'enable_bot_list', '1'),
(35, 1, 'dark_mode', '0'),
(36, 1, 'admin_theme_enabled', '0'),
(37, 1, 'show_alert_transfer', '1'),
(38, 1, 'show_alert_chat', '0'),
(39, 1, 'auto_join_private', '1'),
(40, 1, 'chat_message', '1'),
(41, 1, 'new_chat_sound', '1'),
(42, 1, 'sn_off', '1'),
(43, 1, 'ownntfonly', '0'),
(44, 1, 'auto_uppercase', '1'),
(45, 1, 'no_scroll_bottom', '0'),
(46, 1, 'scroll_load', '1'),
(47, 1, 'hide_quick_notifications', '0'),
(48, 1, 'auto_preload', '0'),
(49, 1, 'static_order', '0'),
(50, 1, 'trackactivitytimeout', '-1'),
(51, 1, 'trackactivity', '0'),
(52, 1, 'dwic', ''),
(53, 1, 'dw_nic', ''),
(54, 1, 'bot_msg_nm', '3'),
(55, 1, 'bot_notifications', '0'),
(56, 1, 'show_all_pending', '1'),
(57, 1, 'chat_text_rows', '2'),
(58, 1, 'speech_language', ''),
(59, 1, 'speech_dialect', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_users_setting_option`
--

CREATE TABLE `lh_users_setting_option` (
  `identifier` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `lh_users_setting_option`
--

INSERT INTO `lh_users_setting_option` (`identifier`, `class`, `attribute`) VALUES
('chat_message', '', ''),
('dwo', '', ''),
('enable_active_list', '', ''),
('enable_close_list', '', ''),
('enable_pending_list', '', ''),
('enable_unread_list', '', ''),
('new_chat_sound', '', ''),
('new_user_bn', '', ''),
('new_user_sound', '', ''),
('o_department', '', ''),
('ocountry', '', ''),
('ogroup_by', '', ''),
('omap_depid', '', ''),
('omap_mtimeout', '', ''),
('omax_rows', '', ''),
('otime_on_site', '', ''),
('oupdate_timeout', '', ''),
('ouser_timeout', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `lh_webhook`
--

CREATE TABLE `lh_webhook` (
  `id` int NOT NULL,
  `event` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bot_id_alt` int NOT NULL DEFAULT '0',
  `trigger_id_alt` int NOT NULL DEFAULT '0',
  `bot_id` int NOT NULL,
  `trigger_id` int NOT NULL,
  `disabled` tinyint(1) NOT NULL,
  `configuration` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `lh_abstract_auto_responder`
--
ALTER TABLE `lh_abstract_auto_responder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siteaccess_position` (`siteaccess`,`position`);

--
-- Índices de tabela `lh_abstract_auto_responder_chat`
--
ALTER TABLE `lh_abstract_auto_responder_chat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_id` (`chat_id`);

--
-- Índices de tabela `lh_abstract_auto_responder_dep`
--
ALTER TABLE `lh_abstract_auto_responder_dep`
  ADD PRIMARY KEY (`id`),
  ADD KEY `autoresponder_id` (`autoresponder_id`),
  ADD KEY `dep_id` (`dep_id`);

--
-- Índices de tabela `lh_abstract_browse_offer_invitation`
--
ALTER TABLE `lh_abstract_browse_offer_invitation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `active` (`active`),
  ADD KEY `identifier` (`identifier`);

--
-- Índices de tabela `lh_abstract_chat_alert_icon`
--
ALTER TABLE `lh_abstract_chat_alert_icon`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `lh_abstract_chat_column`
--
ALTER TABLE `lh_abstract_chat_column`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enabled` (`enabled`),
  ADD KEY `online_enabled` (`online_enabled`),
  ADD KEY `chat_enabled` (`chat_enabled`);

--
-- Índices de tabela `lh_abstract_chat_priority`
--
ALTER TABLE `lh_abstract_chat_priority`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dep_id` (`dep_id`);

--
-- Índices de tabela `lh_abstract_chat_variable`
--
ALTER TABLE `lh_abstract_chat_variable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dep_id` (`dep_id`);

--
-- Índices de tabela `lh_abstract_email_template`
--
ALTER TABLE `lh_abstract_email_template`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `lh_abstract_form`
--
ALTER TABLE `lh_abstract_form`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `lh_abstract_form_collected`
--
ALTER TABLE `lh_abstract_form_collected`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`);

--
-- Índices de tabela `lh_abstract_msg_protection`
--
ALTER TABLE `lh_abstract_msg_protection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enabled` (`enabled`);

--
-- Índices de tabela `lh_abstract_proactive_chat_campaign`
--
ALTER TABLE `lh_abstract_proactive_chat_campaign`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `lh_abstract_proactive_chat_campaign_conv`
--
ALTER TABLE `lh_abstract_proactive_chat_campaign_conv`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_id` (`campaign_id`),
  ADD KEY `invitation_status` (`invitation_status`),
  ADD KEY `ctime` (`ctime`),
  ADD KEY `invitation_id_variation_id` (`invitation_id`,`variation_id`),
  ADD KEY `unique_id` (`unique_id`),
  ADD KEY `conv_int_time` (`conv_int_time`),
  ADD KEY `conv_event_vid_id` (`conv_event`,`vid_id`);

--
-- Índices de tabela `lh_abstract_proactive_chat_event`
--
ALTER TABLE `lh_abstract_proactive_chat_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vid_id_ev_id_val_ts` (`vid_id`,`ev_id`,`val`,`ts`),
  ADD KEY `vid_id_ev_id_ts` (`vid_id`,`ev_id`,`ts`);

--
-- Índices de tabela `lh_abstract_proactive_chat_invitation`
--
ALTER TABLE `lh_abstract_proactive_chat_invitation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `time_on_site_pageviews_siteaccess_position` (`time_on_site`,`pageviews`,`siteaccess`,`identifier`,`position`),
  ADD KEY `identifier` (`identifier`),
  ADD KEY `dynamic_invitation` (`dynamic_invitation`),
  ADD KEY `tag` (`tag`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `show_on_mobile` (`show_on_mobile`),
  ADD KEY `dep_id` (`dep_id`);

--
-- Índices de tabela `lh_abstract_proactive_chat_invitation_dep`
--
ALTER TABLE `lh_abstract_proactive_chat_invitation_dep`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invitation_id` (`invitation_id`),
  ADD KEY `dep_id` (`dep_id`);

--
-- Índices de tabela `lh_abstract_proactive_chat_invitation_event`
--
ALTER TABLE `lh_abstract_proactive_chat_invitation_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invitation_id` (`invitation_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Índices de tabela `lh_abstract_proactive_chat_variables`
--
ALTER TABLE `lh_abstract_proactive_chat_variables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Índices de tabela `lh_abstract_product`
--
ALTER TABLE `lh_abstract_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departament_id` (`departament_id`);

--
-- Índices de tabela `lh_abstract_product_departament`
--
ALTER TABLE `lh_abstract_product_departament`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departament_id` (`departament_id`);

--
-- Índices de tabela `lh_abstract_rest_api_key`
--
ALTER TABLE `lh_abstract_rest_api_key`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_key` (`api_key`),
  ADD KEY `user_id` (`user_id`);

--
-- Índices de tabela `lh_abstract_rest_api_key_remote`
--
ALTER TABLE `lh_abstract_rest_api_key_remote`
  ADD PRIMARY KEY (`id`),
  ADD KEY `active` (`active`);

--
-- Índices de tabela `lh_abstract_saved_report`
--
ALTER TABLE `lh_abstract_saved_report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Índices de tabela `lh_abstract_saved_search`
--
ALTER TABLE `lh_abstract_saved_search`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scope` (`scope`),
  ADD KEY `updated_at` (`updated_at`),
  ADD KEY `requested_at` (`requested_at`),
  ADD KEY `user_id_status` (`user_id`,`status`);

--
-- Índices de tabela `lh_abstract_stats`
--
ALTER TABLE `lh_abstract_stats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_object_id` (`type`,`object_id`);

--
-- Índices de tabela `lh_abstract_subject`
--
ALTER TABLE `lh_abstract_subject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `internal` (`internal`),
  ADD KEY `internal_type` (`internal_type`);

--
-- Índices de tabela `lh_abstract_subject_chat`
--
ALTER TABLE `lh_abstract_subject_chat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_id` (`chat_id`);

--
-- Índices de tabela `lh_abstract_subject_dep`
--
ALTER TABLE `lh_abstract_subject_dep`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Índices de tabela `lh_abstract_survey`
--
ALTER TABLE `lh_abstract_survey`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Índices de tabela `lh_abstract_survey_item`
--
ALTER TABLE `lh_abstract_survey_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `online_user_id` (`online_user_id`),
  ADD KEY `survey_id` (`survey_id`),
  ADD KEY `chat_id` (`chat_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `dep_id` (`dep_id`),
  ADD KEY `ftime` (`ftime`),
  ADD KEY `max_stars_1` (`max_stars_1`),
  ADD KEY `max_stars_2` (`max_stars_2`),
  ADD KEY `max_stars_3` (`max_stars_3`),
  ADD KEY `max_stars_4` (`max_stars_4`),
  ADD KEY `max_stars_5` (`max_stars_5`),
  ADD KEY `question_options_1` (`question_options_1`),
  ADD KEY `question_options_2` (`question_options_2`),
  ADD KEY `question_options_3` (`question_options_3`),
  ADD KEY `question_options_4` (`question_options_4`),
  ADD KEY `question_options_5` (`question_options_5`);

--
-- Índices de tabela `lh_abstract_widget_theme`
--
ALTER TABLE `lh_abstract_widget_theme`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`);

--
-- Índices de tabela `lh_admin_theme`
--
ALTER TABLE `lh_admin_theme`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Índices de tabela `lh_audits`
--
ALTER TABLE `lh_audits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `time` (`time`),
  ADD KEY `source` (`source`(191)),
  ADD KEY `category` (`category`(191));

--
-- Índices de tabela `lh_bot_condition`
--
ALTER TABLE `lh_bot_condition`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Índices de tabela `lh_brand`
--
ALTER TABLE `lh_brand`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `lh_brand_member`
--
ALTER TABLE `lh_brand_member`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dep_id` (`dep_id`),
  ADD KEY `brand_id_role` (`brand_id`,`role`);

--
-- Índices de tabela `lh_canned_msg`
--
ALTER TABLE `lh_canned_msg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `attr_int_1` (`attr_int_1`),
  ADD KEY `attr_int_2` (`attr_int_2`),
  ADD KEY `attr_int_3` (`attr_int_3`),
  ADD KEY `delete_on_exp` (`delete_on_exp`),
  ADD KEY `position_title_v2` (`position`,`title`(191)),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `unique_id` (`unique_id`),
  ADD KEY `repetitiveness` (`repetitiveness`);

--
-- Índices de tabela `lh_canned_msg_dep`
--
ALTER TABLE `lh_canned_msg_dep`
  ADD PRIMARY KEY (`id`),
  ADD KEY `canned_id` (`canned_id`),
  ADD KEY `dep_id` (`dep_id`);

--
-- Índices de tabela `lh_canned_msg_replace`
--
ALTER TABLE `lh_canned_msg_replace`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Índices de tabela `lh_canned_msg_subject`
--
ALTER TABLE `lh_canned_msg_subject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `canned_id` (`canned_id`);

--
-- Índices de tabela `lh_canned_msg_tag`
--
ALTER TABLE `lh_canned_msg_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag` (`tag`);

--
-- Índices de tabela `lh_canned_msg_tag_link`
--
ALTER TABLE `lh_canned_msg_tag_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `canned_id` (`canned_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Índices de tabela `lh_canned_msg_use`
--
ALTER TABLE `lh_canned_msg_use`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ctime` (`ctime`),
  ADD KEY `chat_id` (`chat_id`),
  ADD KEY `canned_id` (`canned_id`);

--
-- Índices de tabela `lh_chat`
--
ALTER TABLE `lh_chat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status_user_id` (`status`,`user_id`),
  ADD KEY `unanswered_chat` (`unanswered_chat`),
  ADD KEY `online_user_id` (`online_user_id`),
  ADD KEY `dep_id` (`dep_id`),
  ADD KEY `time` (`time`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `unread_operator` (`has_unread_op_messages`,`unread_op_messages_informed`),
  ADD KEY `user_id_sender_user_id` (`user_id`,`sender_user_id`),
  ADD KEY `sender_user_id` (`sender_user_id`),
  ADD KEY `anonymized` (`anonymized`),
  ADD KEY `has_unread_messages` (`has_unread_messages`),
  ADD KEY `status` (`status`),
  ADD KEY `nick` (`nick`),
  ADD KEY `iwh_id` (`iwh_id`),
  ADD KEY `theme_id` (`theme_id`),
  ADD KEY `email` (`email`),
  ADD KEY `phone` (`phone`),
  ADD KEY `dep_id_status` (`dep_id`,`status`);

--
-- Índices de tabela `lh_chatbox`
--
ALTER TABLE `lh_chatbox`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Índices de tabela `lh_chat_accept`
--
ALTER TABLE `lh_chat_accept`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hash` (`hash`);

--
-- Índices de tabela `lh_chat_action`
--
ALTER TABLE `lh_chat_action`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_id` (`chat_id`);

--
-- Índices de tabela `lh_chat_archive_range`
--
ALTER TABLE `lh_chat_archive_range`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `lh_chat_blocked_user`
--
ALTER TABLE `lh_chat_blocked_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ip` (`ip`),
  ADD KEY `nick` (`nick`),
  ADD KEY `online_user_id` (`online_user_id`);

--
-- Índices de tabela `lh_chat_config`
--
ALTER TABLE `lh_chat_config`
  ADD PRIMARY KEY (`identifier`);

--
-- Índices de tabela `lh_chat_event_track`
--
ALTER TABLE `lh_chat_event_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`);

--
-- Índices de tabela `lh_chat_file`
--
ALTER TABLE `lh_chat_file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_id` (`chat_id`),
  ADD KEY `online_user_id` (`online_user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Índices de tabela `lh_chat_incoming`
--
ALTER TABLE `lh_chat_incoming`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `incoming_ext_id_uniq` (`incoming_id`,`chat_external_id`),
  ADD KEY `chat_id` (`chat_id`);

--
-- Índices de tabela `lh_chat_online_user`
--
ALTER TABLE `lh_chat_online_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vid` (`vid`),
  ADD KEY `dep_id` (`dep_id`),
  ADD KEY `last_visit_dep_id` (`last_visit`,`dep_id`);

--
-- Índices de tabela `lh_chat_online_user_footprint`
--
ALTER TABLE `lh_chat_online_user_footprint`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_id` (`chat_id`),
  ADD KEY `online_user_id` (`online_user_id`);

--
-- Índices de tabela `lh_chat_online_user_footprint_update`
--
ALTER TABLE `lh_chat_online_user_footprint_update`
  ADD KEY `online_user_id` (`online_user_id`);

--
-- Índices de tabela `lh_chat_paid`
--
ALTER TABLE `lh_chat_paid`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hash` (`hash`(191)),
  ADD KEY `chat_id` (`chat_id`);

--
-- Índices de tabela `lh_chat_participant`
--
ALTER TABLE `lh_chat_participant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_id` (`chat_id`),
  ADD KEY `time` (`time`),
  ADD KEY `user_id` (`user_id`);

--
-- Índices de tabela `lh_chat_start_settings`
--
ALTER TABLE `lh_chat_start_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`);

--
-- Índices de tabela `lh_chat_voice_video`
--
ALTER TABLE `lh_chat_voice_video`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_id` (`chat_id`);

--
-- Índices de tabela `lh_cobrowse`
--
ALTER TABLE `lh_cobrowse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_id` (`chat_id`),
  ADD KEY `online_user_id` (`online_user_id`);

--
-- Índices de tabela `lh_departament`
--
ALTER TABLE `lh_departament`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier_2` (`identifier`(191)),
  ADD KEY `archive` (`archive`),
  ADD KEY `alias` (`alias`),
  ADD KEY `attr_int_1` (`attr_int_1`),
  ADD KEY `attr_int_2` (`attr_int_2`),
  ADD KEY `attr_int_3` (`attr_int_3`),
  ADD KEY `active_chats_counter` (`active_chats_counter`),
  ADD KEY `pending_chats_counter` (`pending_chats_counter`),
  ADD KEY `bot_chats_counter` (`bot_chats_counter`),
  ADD KEY `disabled_hidden` (`disabled`,`hidden`),
  ADD KEY `sort_priority_name` (`sort_priority`,`name`),
  ADD KEY `active_mod` (`online_hours_active`,`mod_start_hour`,`mod_end_hour`),
  ADD KEY `active_tud` (`online_hours_active`,`tud_start_hour`,`tud_end_hour`),
  ADD KEY `active_wed` (`online_hours_active`,`wed_start_hour`,`wed_end_hour`),
  ADD KEY `active_thd` (`online_hours_active`,`thd_start_hour`,`thd_end_hour`),
  ADD KEY `active_frd` (`online_hours_active`,`frd_start_hour`,`frd_end_hour`),
  ADD KEY `active_sad` (`online_hours_active`,`sad_start_hour`,`sad_end_hour`),
  ADD KEY `active_sud` (`online_hours_active`,`sud_start_hour`,`sud_end_hour`);

--
-- Índices de tabela `lh_departament_availability`
--
ALTER TABLE `lh_departament_availability`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ymdhi` (`ymdhi`),
  ADD KEY `dep_id` (`dep_id`),
  ADD KEY `hourminute` (`hourminute`),
  ADD KEY `time` (`time`);

--
-- Índices de tabela `lh_departament_custom_work_hours`
--
ALTER TABLE `lh_departament_custom_work_hours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dep_id` (`dep_id`),
  ADD KEY `date_from` (`date_from`),
  ADD KEY `search_active` (`date_from`,`date_to`,`dep_id`);

--
-- Índices de tabela `lh_departament_group`
--
ALTER TABLE `lh_departament_group`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `lh_departament_group_member`
--
ALTER TABLE `lh_departament_group_member`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dep_group_id` (`dep_group_id`);

--
-- Índices de tabela `lh_departament_group_user`
--
ALTER TABLE `lh_departament_group_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dep_group_id` (`dep_group_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Índices de tabela `lh_departament_limit_group`
--
ALTER TABLE `lh_departament_limit_group`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `lh_departament_limit_group_member`
--
ALTER TABLE `lh_departament_limit_group_member`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dep_limit_group_id` (`dep_limit_group_id`);

--
-- Índices de tabela `lh_faq`
--
ALTER TABLE `lh_faq`
  ADD PRIMARY KEY (`id`),
  ADD KEY `active` (`active`),
  ADD KEY `active_url_2` (`active`,`url`(191)),
  ADD KEY `has_url` (`has_url`),
  ADD KEY `identifier` (`identifier`),
  ADD KEY `is_wildcard` (`is_wildcard`);

--
-- Índices de tabela `lh_forgotpasswordhash`
--
ALTER TABLE `lh_forgotpasswordhash`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `lh_generic_bot_bot`
--
ALTER TABLE `lh_generic_bot_bot`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `lh_generic_bot_chat_event`
--
ALTER TABLE `lh_generic_bot_chat_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_id` (`chat_id`);

--
-- Índices de tabela `lh_generic_bot_chat_workflow`
--
ALTER TABLE `lh_generic_bot_chat_workflow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_id` (`chat_id`);

--
-- Índices de tabela `lh_generic_bot_command`
--
ALTER TABLE `lh_generic_bot_command`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dep_id` (`dep_id`),
  ADD KEY `command` (`command`);

--
-- Índices de tabela `lh_generic_bot_exception`
--
ALTER TABLE `lh_generic_bot_exception`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `lh_generic_bot_exception_message`
--
ALTER TABLE `lh_generic_bot_exception_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`),
  ADD KEY `exception_group_id` (`exception_group_id`);

--
-- Índices de tabela `lh_generic_bot_group`
--
ALTER TABLE `lh_generic_bot_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bot_id` (`bot_id`);

--
-- Índices de tabela `lh_generic_bot_payload`
--
ALTER TABLE `lh_generic_bot_payload`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bot_id` (`bot_id`),
  ADD KEY `trigger_id` (`trigger_id`);

--
-- Índices de tabela `lh_generic_bot_pending_event`
--
ALTER TABLE `lh_generic_bot_pending_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_id` (`chat_id`);

--
-- Índices de tabela `lh_generic_bot_repeat_restrict`
--
ALTER TABLE `lh_generic_bot_repeat_restrict`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_id_trigger_id` (`chat_id`,`trigger_id`);

--
-- Índices de tabela `lh_generic_bot_rest_api`
--
ALTER TABLE `lh_generic_bot_rest_api`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `lh_generic_bot_rest_api_cache`
--
ALTER TABLE `lh_generic_bot_rest_api_cache`
  ADD UNIQUE KEY `rest_api_id_hash` (`rest_api_id`,`hash`);

--
-- Índices de tabela `lh_generic_bot_trigger`
--
ALTER TABLE `lh_generic_bot_trigger`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bot_id` (`bot_id`),
  ADD KEY `default_unknown` (`default_unknown`),
  ADD KEY `in_progress` (`in_progress`),
  ADD KEY `default_unknown_btn` (`default_unknown_btn`),
  ADD KEY `default_always` (`default_always`),
  ADD KEY `group_id` (`group_id`);

--
-- Índices de tabela `lh_generic_bot_trigger_event`
--
ALTER TABLE `lh_generic_bot_trigger_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pattern_v2` (`pattern`(191)),
  ADD KEY `type` (`type`),
  ADD KEY `on_start_type` (`on_start_type`),
  ADD KEY `trigger_id` (`trigger_id`);

--
-- Índices de tabela `lh_generic_bot_trigger_event_template`
--
ALTER TABLE `lh_generic_bot_trigger_event_template`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `lh_generic_bot_trigger_template`
--
ALTER TABLE `lh_generic_bot_trigger_template`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `lh_generic_bot_tr_group`
--
ALTER TABLE `lh_generic_bot_tr_group`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `lh_generic_bot_tr_item`
--
ALTER TABLE `lh_generic_bot_tr_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`),
  ADD KEY `group_id` (`group_id`);

--
-- Índices de tabela `lh_group`
--
ALTER TABLE `lh_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disabled` (`disabled`);

--
-- Índices de tabela `lh_grouprole`
--
ALTER TABLE `lh_grouprole`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`role_id`,`group_id`),
  ADD KEY `group_id_primary` (`group_id`);

--
-- Índices de tabela `lh_groupuser`
--
ALTER TABLE `lh_groupuser`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `group_id_2` (`group_id`,`user_id`);

--
-- Índices de tabela `lh_group_chat`
--
ALTER TABLE `lh_group_chat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `chat_id` (`chat_id`),
  ADD KEY `type` (`type`);

--
-- Índices de tabela `lh_group_chat_member`
--
ALTER TABLE `lh_group_chat_member`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `type` (`type`);

--
-- Índices de tabela `lh_group_msg`
--
ALTER TABLE `lh_group_msg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_id_id` (`chat_id`,`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Índices de tabela `lh_group_object`
--
ALTER TABLE `lh_group_object`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id_type` (`object_id`,`type`),
  ADD KEY `group_id` (`group_id`);

--
-- Índices de tabela `lh_group_work`
--
ALTER TABLE `lh_group_work`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`);

--
-- Índices de tabela `lh_incoming_webhook`
--
ALTER TABLE `lh_incoming_webhook`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`,`disabled`);

--
-- Índices de tabela `lh_msg`
--
ALTER TABLE `lh_msg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_id_id` (`chat_id`,`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Índices de tabela `lh_notification_subscriber`
--
ALTER TABLE `lh_notification_subscriber`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_id` (`chat_id`),
  ADD KEY `dep_id` (`dep_id`),
  ADD KEY `online_user_id` (`online_user_id`),
  ADD KEY `subscriber_hash` (`subscriber_hash`);

--
-- Índices de tabela `lh_question`
--
ALTER TABLE `lh_question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `priority` (`priority`),
  ADD KEY `active_priority` (`active`,`priority`);

--
-- Índices de tabela `lh_question_answer`
--
ALTER TABLE `lh_question_answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ip` (`ip`),
  ADD KEY `question_id` (`question_id`);

--
-- Índices de tabela `lh_question_option`
--
ALTER TABLE `lh_question_option`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Índices de tabela `lh_question_option_answer`
--
ALTER TABLE `lh_question_option_answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `ip` (`ip`);

--
-- Índices de tabela `lh_role`
--
ALTER TABLE `lh_role`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `lh_rolefunction`
--
ALTER TABLE `lh_rolefunction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Índices de tabela `lh_speech_chat_language`
--
ALTER TABLE `lh_speech_chat_language`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_id` (`chat_id`);

--
-- Índices de tabela `lh_speech_language`
--
ALTER TABLE `lh_speech_language`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `lh_speech_language_dialect`
--
ALTER TABLE `lh_speech_language_dialect`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_id` (`language_id`),
  ADD KEY `short_code` (`short_code`),
  ADD KEY `lang_code` (`lang_code`);

--
-- Índices de tabela `lh_speech_user_language`
--
ALTER TABLE `lh_speech_user_language`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_language` (`user_id`,`language`);

--
-- Índices de tabela `lh_transfer`
--
ALTER TABLE `lh_transfer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dep_id` (`dep_id`),
  ADD KEY `transfer_user_id_dep_id` (`transfer_user_id`,`dep_id`),
  ADD KEY `transfer_to_user_id` (`transfer_to_user_id`);

--
-- Índices de tabela `lh_userdep`
--
ALTER TABLE `lh_userdep`
  ADD PRIMARY KEY (`id`),
  ADD KEY `last_activity_hide_online_dep_id` (`last_activity`,`hide_online`,`dep_id`),
  ADD KEY `dep_id` (`dep_id`),
  ADD KEY `user_id_type` (`user_id`,`type`);

--
-- Índices de tabela `lh_userdep_alias`
--
ALTER TABLE `lh_userdep_alias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dep_id_user_id` (`dep_id`,`user_id`),
  ADD KEY `dep_group_id_user_id` (`dep_group_id`,`user_id`);

--
-- Índices de tabela `lh_users`
--
ALTER TABLE `lh_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hide_online` (`hide_online`),
  ADD KEY `rec_per_req` (`rec_per_req`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `email` (`email`),
  ADD KEY `xmpp_username` (`xmpp_username`(191));

--
-- Índices de tabela `lh_users_login`
--
ALTER TABLE `lh_users_login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_type` (`user_id`,`type`);

--
-- Índices de tabela `lh_users_online_session`
--
ALTER TABLE `lh_users_online_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_lactivity` (`user_id`,`lactivity`),
  ADD KEY `lactivity` (`lactivity`);

--
-- Índices de tabela `lh_users_remember`
--
ALTER TABLE `lh_users_remember`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `lh_users_session`
--
ALTER TABLE `lh_users_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `token` (`token`),
  ADD KEY `device_token_device_type_v2` (`device_token`(191),`device_type`),
  ADD KEY `error` (`error`);

--
-- Índices de tabela `lh_users_setting`
--
ALTER TABLE `lh_users_setting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`identifier`);

--
-- Índices de tabela `lh_users_setting_option`
--
ALTER TABLE `lh_users_setting_option`
  ADD PRIMARY KEY (`identifier`);

--
-- Índices de tabela `lh_webhook`
--
ALTER TABLE `lh_webhook`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_disabled` (`event`,`disabled`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `lh_abstract_auto_responder`
--
ALTER TABLE `lh_abstract_auto_responder`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_abstract_auto_responder_chat`
--
ALTER TABLE `lh_abstract_auto_responder_chat`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_abstract_auto_responder_dep`
--
ALTER TABLE `lh_abstract_auto_responder_dep`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_abstract_browse_offer_invitation`
--
ALTER TABLE `lh_abstract_browse_offer_invitation`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_abstract_chat_alert_icon`
--
ALTER TABLE `lh_abstract_chat_alert_icon`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_abstract_chat_column`
--
ALTER TABLE `lh_abstract_chat_column`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_abstract_chat_priority`
--
ALTER TABLE `lh_abstract_chat_priority`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_abstract_chat_variable`
--
ALTER TABLE `lh_abstract_chat_variable`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_abstract_email_template`
--
ALTER TABLE `lh_abstract_email_template`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `lh_abstract_form`
--
ALTER TABLE `lh_abstract_form`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_abstract_form_collected`
--
ALTER TABLE `lh_abstract_form_collected`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_abstract_msg_protection`
--
ALTER TABLE `lh_abstract_msg_protection`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_abstract_proactive_chat_campaign`
--
ALTER TABLE `lh_abstract_proactive_chat_campaign`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_abstract_proactive_chat_campaign_conv`
--
ALTER TABLE `lh_abstract_proactive_chat_campaign_conv`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_abstract_proactive_chat_event`
--
ALTER TABLE `lh_abstract_proactive_chat_event`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_abstract_proactive_chat_invitation`
--
ALTER TABLE `lh_abstract_proactive_chat_invitation`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_abstract_proactive_chat_invitation_dep`
--
ALTER TABLE `lh_abstract_proactive_chat_invitation_dep`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_abstract_proactive_chat_invitation_event`
--
ALTER TABLE `lh_abstract_proactive_chat_invitation_event`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_abstract_proactive_chat_variables`
--
ALTER TABLE `lh_abstract_proactive_chat_variables`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_abstract_product`
--
ALTER TABLE `lh_abstract_product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_abstract_product_departament`
--
ALTER TABLE `lh_abstract_product_departament`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_abstract_rest_api_key`
--
ALTER TABLE `lh_abstract_rest_api_key`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_abstract_rest_api_key_remote`
--
ALTER TABLE `lh_abstract_rest_api_key_remote`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_abstract_saved_report`
--
ALTER TABLE `lh_abstract_saved_report`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_abstract_saved_search`
--
ALTER TABLE `lh_abstract_saved_search`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_abstract_stats`
--
ALTER TABLE `lh_abstract_stats`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_abstract_subject`
--
ALTER TABLE `lh_abstract_subject`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_abstract_subject_chat`
--
ALTER TABLE `lh_abstract_subject_chat`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_abstract_subject_dep`
--
ALTER TABLE `lh_abstract_subject_dep`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_abstract_survey`
--
ALTER TABLE `lh_abstract_survey`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_abstract_survey_item`
--
ALTER TABLE `lh_abstract_survey_item`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_abstract_widget_theme`
--
ALTER TABLE `lh_abstract_widget_theme`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_admin_theme`
--
ALTER TABLE `lh_admin_theme`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_audits`
--
ALTER TABLE `lh_audits`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `lh_bot_condition`
--
ALTER TABLE `lh_bot_condition`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_brand`
--
ALTER TABLE `lh_brand`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_brand_member`
--
ALTER TABLE `lh_brand_member`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_canned_msg`
--
ALTER TABLE `lh_canned_msg`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_canned_msg_dep`
--
ALTER TABLE `lh_canned_msg_dep`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_canned_msg_replace`
--
ALTER TABLE `lh_canned_msg_replace`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_canned_msg_subject`
--
ALTER TABLE `lh_canned_msg_subject`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_canned_msg_tag`
--
ALTER TABLE `lh_canned_msg_tag`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_canned_msg_tag_link`
--
ALTER TABLE `lh_canned_msg_tag_link`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_canned_msg_use`
--
ALTER TABLE `lh_canned_msg_use`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_chat`
--
ALTER TABLE `lh_chat`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `lh_chatbox`
--
ALTER TABLE `lh_chatbox`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `lh_chat_accept`
--
ALTER TABLE `lh_chat_accept`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_chat_action`
--
ALTER TABLE `lh_chat_action`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_chat_archive_range`
--
ALTER TABLE `lh_chat_archive_range`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_chat_blocked_user`
--
ALTER TABLE `lh_chat_blocked_user`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_chat_event_track`
--
ALTER TABLE `lh_chat_event_track`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_chat_file`
--
ALTER TABLE `lh_chat_file`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_chat_incoming`
--
ALTER TABLE `lh_chat_incoming`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_chat_online_user`
--
ALTER TABLE `lh_chat_online_user`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `lh_chat_online_user_footprint`
--
ALTER TABLE `lh_chat_online_user_footprint`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_chat_paid`
--
ALTER TABLE `lh_chat_paid`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_chat_participant`
--
ALTER TABLE `lh_chat_participant`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_chat_start_settings`
--
ALTER TABLE `lh_chat_start_settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_chat_voice_video`
--
ALTER TABLE `lh_chat_voice_video`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_cobrowse`
--
ALTER TABLE `lh_cobrowse`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_departament`
--
ALTER TABLE `lh_departament`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `lh_departament_availability`
--
ALTER TABLE `lh_departament_availability`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_departament_custom_work_hours`
--
ALTER TABLE `lh_departament_custom_work_hours`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_departament_group`
--
ALTER TABLE `lh_departament_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_departament_group_member`
--
ALTER TABLE `lh_departament_group_member`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_departament_group_user`
--
ALTER TABLE `lh_departament_group_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_departament_limit_group`
--
ALTER TABLE `lh_departament_limit_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_departament_limit_group_member`
--
ALTER TABLE `lh_departament_limit_group_member`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_faq`
--
ALTER TABLE `lh_faq`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_forgotpasswordhash`
--
ALTER TABLE `lh_forgotpasswordhash`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_generic_bot_bot`
--
ALTER TABLE `lh_generic_bot_bot`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_generic_bot_chat_event`
--
ALTER TABLE `lh_generic_bot_chat_event`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_generic_bot_chat_workflow`
--
ALTER TABLE `lh_generic_bot_chat_workflow`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_generic_bot_command`
--
ALTER TABLE `lh_generic_bot_command`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_generic_bot_exception`
--
ALTER TABLE `lh_generic_bot_exception`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_generic_bot_exception_message`
--
ALTER TABLE `lh_generic_bot_exception_message`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_generic_bot_group`
--
ALTER TABLE `lh_generic_bot_group`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_generic_bot_payload`
--
ALTER TABLE `lh_generic_bot_payload`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_generic_bot_pending_event`
--
ALTER TABLE `lh_generic_bot_pending_event`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_generic_bot_repeat_restrict`
--
ALTER TABLE `lh_generic_bot_repeat_restrict`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_generic_bot_rest_api`
--
ALTER TABLE `lh_generic_bot_rest_api`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_generic_bot_trigger`
--
ALTER TABLE `lh_generic_bot_trigger`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_generic_bot_trigger_event`
--
ALTER TABLE `lh_generic_bot_trigger_event`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_generic_bot_trigger_event_template`
--
ALTER TABLE `lh_generic_bot_trigger_event_template`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_generic_bot_trigger_template`
--
ALTER TABLE `lh_generic_bot_trigger_template`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_generic_bot_tr_group`
--
ALTER TABLE `lh_generic_bot_tr_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_generic_bot_tr_item`
--
ALTER TABLE `lh_generic_bot_tr_item`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_group`
--
ALTER TABLE `lh_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `lh_grouprole`
--
ALTER TABLE `lh_grouprole`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `lh_groupuser`
--
ALTER TABLE `lh_groupuser`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `lh_group_chat`
--
ALTER TABLE `lh_group_chat`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `lh_group_chat_member`
--
ALTER TABLE `lh_group_chat_member`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_group_msg`
--
ALTER TABLE `lh_group_msg`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_group_object`
--
ALTER TABLE `lh_group_object`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_group_work`
--
ALTER TABLE `lh_group_work`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_incoming_webhook`
--
ALTER TABLE `lh_incoming_webhook`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_msg`
--
ALTER TABLE `lh_msg`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `lh_notification_subscriber`
--
ALTER TABLE `lh_notification_subscriber`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_question`
--
ALTER TABLE `lh_question`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_question_answer`
--
ALTER TABLE `lh_question_answer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_question_option`
--
ALTER TABLE `lh_question_option`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_question_option_answer`
--
ALTER TABLE `lh_question_option_answer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_role`
--
ALTER TABLE `lh_role`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `lh_rolefunction`
--
ALTER TABLE `lh_rolefunction`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de tabela `lh_speech_chat_language`
--
ALTER TABLE `lh_speech_chat_language`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_speech_language`
--
ALTER TABLE `lh_speech_language`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de tabela `lh_speech_language_dialect`
--
ALTER TABLE `lh_speech_language_dialect`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT de tabela `lh_speech_user_language`
--
ALTER TABLE `lh_speech_user_language`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_transfer`
--
ALTER TABLE `lh_transfer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_userdep`
--
ALTER TABLE `lh_userdep`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `lh_userdep_alias`
--
ALTER TABLE `lh_userdep_alias`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_users`
--
ALTER TABLE `lh_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `lh_users_login`
--
ALTER TABLE `lh_users_login`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `lh_users_online_session`
--
ALTER TABLE `lh_users_online_session`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `lh_users_remember`
--
ALTER TABLE `lh_users_remember`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_users_session`
--
ALTER TABLE `lh_users_session`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lh_users_setting`
--
ALTER TABLE `lh_users_setting`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de tabela `lh_webhook`
--
ALTER TABLE `lh_webhook`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
