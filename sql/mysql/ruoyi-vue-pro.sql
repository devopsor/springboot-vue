-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2022 at 01:37 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ruoyi-vue-pro`
--

-- --------------------------------------------------------

--
-- Table structure for table `act_evt_log`
--

CREATE TABLE `act_evt_log` (
  `LOG_NR_` bigint(20) NOT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_STAMP_` timestamp NOT NULL DEFAULT current_timestamp(),
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DATA_` longblob DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp NULL DEFAULT NULL,
  `IS_PROCESSED_` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `act_ge_bytearray`
--

CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob DEFAULT NULL,
  `GENERATED_` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `act_ge_property`
--

CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL,
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `act_ge_property`
--

INSERT INTO `act_ge_property` (`NAME_`, `VALUE_`, `REV_`) VALUES
('batch.schema.version', '6.7.0.0', 1),
('cfg.execution-related-entities-count', 'true', 1),
('cfg.task-related-entities-count', 'true', 1),
('common.schema.version', '6.7.0.0', 1),
('entitylink.schema.version', '6.7.0.0', 1),
('eventsubscription.schema.version', '6.7.0.0', 1),
('identitylink.schema.version', '6.7.0.0', 1),
('job.schema.version', '6.7.0.0', 1),
('next.dbid', '1', 1),
('schema.history', 'create(6.7.0.0)', 1),
('schema.version', '6.7.0.0', 1),
('task.schema.version', '6.7.0.0', 1),
('variable.schema.version', '6.7.0.0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `act_hi_actinst`
--

CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT 1,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `TRANSACTION_ORDER_` int(11) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `act_hi_attachment`
--

CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `act_hi_comment`
--

CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `FULL_MSG_` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `act_hi_detail`
--

CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `act_hi_entitylink`
--

CREATE TABLE `act_hi_entitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `LINK_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ELEMENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REF_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REF_SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REF_SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ROOT_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ROOT_SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HIERARCHY_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `act_hi_identitylink`
--

CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `act_hi_procinst`
--

CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT 1,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CALLBACK_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CALLBACK_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REFERENCE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REFERENCE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROPAGATED_STAGE_INST_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `act_hi_taskinst`
--

CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT 1,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROPAGATED_STAGE_INST_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `CLAIM_TIME_` datetime DEFAULT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `DUE_DATE_` datetime DEFAULT NULL,
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `LAST_UPDATED_TIME_` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `act_hi_tsk_log`
--

CREATE TABLE `act_hi_tsk_log` (
  `ID_` bigint(20) NOT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TIME_STAMP_` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DATA_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `act_hi_varinst`
--

CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT 1,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `act_id_bytearray`
--

CREATE TABLE `act_id_bytearray` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `act_id_group`
--

CREATE TABLE `act_id_group` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `act_id_info`
--

CREATE TABLE `act_id_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VALUE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD_` longblob DEFAULT NULL,
  `PARENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `act_id_membership`
--

CREATE TABLE `act_id_membership` (
  `USER_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `act_id_priv`
--

CREATE TABLE `act_id_priv` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `act_id_priv_mapping`
--

CREATE TABLE `act_id_priv_mapping` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PRIV_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `act_id_property`
--

CREATE TABLE `act_id_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL,
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `act_id_property`
--

INSERT INTO `act_id_property` (`NAME_`, `VALUE_`, `REV_`) VALUES
('schema.version', '6.7.0.0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `act_id_token`
--

CREATE TABLE `act_id_token` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TOKEN_VALUE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TOKEN_DATE_` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `IP_ADDRESS_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_AGENT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TOKEN_DATA_` varchar(2000) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `act_id_user`
--

CREATE TABLE `act_id_user` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `FIRST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DISPLAY_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PWD_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PICTURE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `act_procdef_info`
--

CREATE TABLE `act_procdef_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `INFO_JSON_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `act_re_deployment`
--

CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `DEPLOY_TIME_` timestamp NULL DEFAULT NULL,
  `DERIVED_FROM_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DERIVED_FROM_ROOT_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_DEPLOYMENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ENGINE_VERSION_` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `act_re_model`
--

CREATE TABLE `act_re_model` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp NULL DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `act_re_procdef`
--

CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint(4) DEFAULT NULL,
  `HAS_GRAPHICAL_NOTATION_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `ENGINE_VERSION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DERIVED_FROM_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DERIVED_FROM_ROOT_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DERIVED_VERSION_` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `act_ru_actinst`
--

CREATE TABLE `act_ru_actinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT 1,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `TRANSACTION_ORDER_` int(11) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `act_ru_deadletter_job`
--

CREATE TABLE `act_ru_deadletter_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ELEMENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ELEMENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CORRELATION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `act_ru_entitylink`
--

CREATE TABLE `act_ru_entitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CREATE_TIME_` datetime DEFAULT NULL,
  `LINK_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ELEMENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REF_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REF_SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REF_SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ROOT_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ROOT_SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HIERARCHY_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `act_ru_event_subscr`
--

CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_` timestamp NOT NULL DEFAULT current_timestamp(),
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `act_ru_execution`
--

CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint(4) DEFAULT NULL,
  `IS_CONCURRENT_` tinyint(4) DEFAULT NULL,
  `IS_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_MI_ROOT_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `CACHED_ENT_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_COUNT_ENABLED_` tinyint(4) DEFAULT NULL,
  `EVT_SUBSCR_COUNT_` int(11) DEFAULT NULL,
  `TASK_COUNT_` int(11) DEFAULT NULL,
  `JOB_COUNT_` int(11) DEFAULT NULL,
  `TIMER_JOB_COUNT_` int(11) DEFAULT NULL,
  `SUSP_JOB_COUNT_` int(11) DEFAULT NULL,
  `DEADLETTER_JOB_COUNT_` int(11) DEFAULT NULL,
  `EXTERNAL_WORKER_JOB_COUNT_` int(11) DEFAULT NULL,
  `VAR_COUNT_` int(11) DEFAULT NULL,
  `ID_LINK_COUNT_` int(11) DEFAULT NULL,
  `CALLBACK_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CALLBACK_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REFERENCE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REFERENCE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROPAGATED_STAGE_INST_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `act_ru_external_job`
--

CREATE TABLE `act_ru_external_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ELEMENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ELEMENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CORRELATION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `act_ru_history_job`
--

CREATE TABLE `act_ru_history_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `LOCK_EXP_TIME_` timestamp NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ADV_HANDLER_CFG_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `act_ru_identitylink`
--

CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `act_ru_job`
--

CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ELEMENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ELEMENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CORRELATION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `act_ru_suspended_job`
--

CREATE TABLE `act_ru_suspended_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ELEMENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ELEMENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CORRELATION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `act_ru_task`
--

CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROPAGATED_STAGE_INST_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `CREATE_TIME_` timestamp NULL DEFAULT NULL,
  `DUE_DATE_` datetime DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CLAIM_TIME_` datetime DEFAULT NULL,
  `IS_COUNT_ENABLED_` tinyint(4) DEFAULT NULL,
  `VAR_COUNT_` int(11) DEFAULT NULL,
  `ID_LINK_COUNT_` int(11) DEFAULT NULL,
  `SUB_TASK_COUNT_` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `act_ru_timer_job`
--

CREATE TABLE `act_ru_timer_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ELEMENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ELEMENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CORRELATION_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `act_ru_variable`
--

CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `bpm_form`
--

CREATE TABLE `bpm_form` (
  `id` bigint(20) NOT NULL COMMENT '??????',
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????????',
  `status` tinyint(4) NOT NULL COMMENT '????????????',
  `conf` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '???????????????',
  `fields` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '??????????????????',
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='????????????????????????';

-- --------------------------------------------------------

--
-- Table structure for table `bpm_oa_leave`
--

CREATE TABLE `bpm_oa_leave` (
  `id` bigint(20) NOT NULL COMMENT '??????????????????',
  `user_id` bigint(20) NOT NULL COMMENT '????????????????????????',
  `type` tinyint(4) NOT NULL COMMENT '????????????',
  `reason` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `start_time` datetime NOT NULL COMMENT '????????????',
  `end_time` datetime NOT NULL COMMENT '????????????',
  `day` tinyint(4) NOT NULL COMMENT '????????????',
  `result` tinyint(4) NOT NULL COMMENT '????????????',
  `process_instance_id` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '?????????????????????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OA ???????????????';

-- --------------------------------------------------------

--
-- Table structure for table `bpm_process_definition_ext`
--

CREATE TABLE `bpm_process_definition_ext` (
  `id` bigint(20) NOT NULL COMMENT '??????',
  `process_definition_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????????????????????',
  `model_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????????????????????',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????',
  `form_type` tinyint(4) NOT NULL COMMENT '????????????',
  `form_id` bigint(20) DEFAULT NULL COMMENT '????????????',
  `form_conf` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '???????????????',
  `form_fields` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????????????????',
  `form_custom_create_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????????????????????????????',
  `form_custom_view_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????????????????????????????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Bpm ????????????????????????\n';

-- --------------------------------------------------------

--
-- Table structure for table `bpm_process_instance_ext`
--

CREATE TABLE `bpm_process_instance_ext` (
  `id` bigint(20) NOT NULL COMMENT '??????',
  `start_user_id` bigint(20) NOT NULL COMMENT '???????????????????????????',
  `name` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '?????????????????????',
  `process_instance_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????????????????????',
  `process_definition_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????????????????????',
  `category` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `status` tinyint(4) NOT NULL COMMENT '?????????????????????',
  `result` tinyint(4) NOT NULL COMMENT '?????????????????????',
  `end_time` datetime DEFAULT NULL COMMENT '????????????',
  `form_variables` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '?????????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='?????????????????????????????????';

-- --------------------------------------------------------

--
-- Table structure for table `bpm_task_assign_rule`
--

CREATE TABLE `bpm_task_assign_rule` (
  `id` bigint(20) NOT NULL COMMENT '??????',
  `model_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????????????????????',
  `process_definition_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????????????????????',
  `task_definition_key` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????????????? key',
  `type` tinyint(4) NOT NULL COMMENT '????????????',
  `options` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????JSON ??????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Bpm ???????????????';

-- --------------------------------------------------------

--
-- Table structure for table `bpm_task_ext`
--

CREATE TABLE `bpm_task_ext` (
  `id` bigint(20) NOT NULL COMMENT '??????',
  `assignee_user_id` bigint(20) DEFAULT NULL COMMENT '??????????????????',
  `name` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '???????????????',
  `task_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '???????????????',
  `result` tinyint(4) NOT NULL COMMENT '???????????????',
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `end_time` datetime DEFAULT NULL COMMENT '?????????????????????',
  `process_instance_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????????????????????',
  `process_definition_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????????????????????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='????????????????????????????????????';

-- --------------------------------------------------------

--
-- Table structure for table `bpm_user_group`
--

CREATE TABLE `bpm_user_group` (
  `id` bigint(20) NOT NULL COMMENT '??????',
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '??????',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '??????',
  `member_user_ids` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '??????????????????',
  `status` tinyint(4) NOT NULL COMMENT '?????????0?????? 1?????????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='?????????';

-- --------------------------------------------------------

--
-- Table structure for table `flw_channel_definition`
--

CREATE TABLE `flw_channel_definition` (
  `ID_` varchar(255) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `KEY_` varchar(255) DEFAULT NULL,
  `CATEGORY_` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(255) DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `TENANT_ID_` varchar(255) DEFAULT NULL,
  `RESOURCE_NAME_` varchar(255) DEFAULT NULL,
  `DESCRIPTION_` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `flw_event_definition`
--

CREATE TABLE `flw_event_definition` (
  `ID_` varchar(255) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `KEY_` varchar(255) DEFAULT NULL,
  `CATEGORY_` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(255) DEFAULT NULL,
  `TENANT_ID_` varchar(255) DEFAULT NULL,
  `RESOURCE_NAME_` varchar(255) DEFAULT NULL,
  `DESCRIPTION_` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `flw_event_deployment`
--

CREATE TABLE `flw_event_deployment` (
  `ID_` varchar(255) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `CATEGORY_` varchar(255) DEFAULT NULL,
  `DEPLOY_TIME_` datetime(3) DEFAULT NULL,
  `TENANT_ID_` varchar(255) DEFAULT NULL,
  `PARENT_DEPLOYMENT_ID_` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `flw_event_resource`
--

CREATE TABLE `flw_event_resource` (
  `ID_` varchar(255) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(255) DEFAULT NULL,
  `RESOURCE_BYTES_` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `flw_ev_databasechangelog`
--

CREATE TABLE `flw_ev_databasechangelog` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flw_ev_databasechangelog`
--

INSERT INTO `flw_ev_databasechangelog` (`ID`, `AUTHOR`, `FILENAME`, `DATEEXECUTED`, `ORDEREXECUTED`, `EXECTYPE`, `MD5SUM`, `DESCRIPTION`, `COMMENTS`, `TAG`, `LIQUIBASE`, `CONTEXTS`, `LABELS`, `DEPLOYMENT_ID`) VALUES
('1', 'flowable', 'org/flowable/eventregistry/db/liquibase/flowable-eventregistry-db-changelog.xml', '2022-07-26 23:22:33', 1, 'EXECUTED', '8:1b0c48c9cf7945be799d868a2626d687', 'createTable tableName=FLW_EVENT_DEPLOYMENT; createTable tableName=FLW_EVENT_RESOURCE; createTable tableName=FLW_EVENT_DEFINITION; createIndex indexName=ACT_IDX_EVENT_DEF_UNIQ, tableName=FLW_EVENT_DEFINITION; createTable tableName=FLW_CHANNEL_DEFIN...', '', NULL, '4.5.0', NULL, NULL, '8845353001');

-- --------------------------------------------------------

--
-- Table structure for table `flw_ev_databasechangeloglock`
--

CREATE TABLE `flw_ev_databasechangeloglock` (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flw_ev_databasechangeloglock`
--

INSERT INTO `flw_ev_databasechangeloglock` (`ID`, `LOCKED`, `LOCKGRANTED`, `LOCKEDBY`) VALUES
(1, b'0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `flw_ru_batch`
--

CREATE TABLE `flw_ru_batch` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin NOT NULL,
  `SEARCH_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SEARCH_KEY2_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime NOT NULL,
  `COMPLETE_TIME_` datetime DEFAULT NULL,
  `STATUS_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `BATCH_DOC_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `flw_ru_batch_part`
--

CREATE TABLE `flw_ru_batch_part` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `BATCH_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin NOT NULL,
  `SCOPE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SCOPE_TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SEARCH_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SEARCH_KEY2_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime NOT NULL,
  `COMPLETE_TIME_` datetime DEFAULT NULL,
  `STATUS_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RESULT_DOC_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `infra_api_access_log`
--

CREATE TABLE `infra_api_access_log` (
  `id` bigint(20) NOT NULL COMMENT '????????????',
  `trace_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '??????????????????',
  `user_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '????????????',
  `user_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '????????????',
  `application_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????????',
  `request_method` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '???????????????',
  `request_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '????????????',
  `request_params` varchar(8000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '????????????',
  `user_ip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????? IP',
  `user_agent` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????? UA',
  `begin_time` datetime NOT NULL COMMENT '??????????????????',
  `end_time` datetime NOT NULL COMMENT '??????????????????',
  `duration` int(11) NOT NULL COMMENT '????????????',
  `result_code` int(11) NOT NULL DEFAULT 0 COMMENT '?????????',
  `result_msg` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '????????????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='API ???????????????';

-- --------------------------------------------------------

--
-- Table structure for table `infra_api_error_log`
--

CREATE TABLE `infra_api_error_log` (
  `id` int(11) NOT NULL COMMENT '??????',
  `trace_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '??????????????????\n     *\n     * ??????????????????????????????????????????????????????????????????????????????????????????????????????logger ?????????????????????????????????????????????????????????',
  `user_id` int(11) NOT NULL DEFAULT 0 COMMENT '????????????',
  `user_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '????????????',
  `application_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????????\n     *\n     * ???????????? spring.application.name',
  `request_method` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '???????????????',
  `request_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `request_params` varchar(8000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `user_ip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????? IP',
  `user_agent` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????? UA',
  `exception_time` datetime NOT NULL COMMENT '??????????????????',
  `exception_name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '?????????\n     *\n     * {@link Throwable#getClass()} ????????????',
  `exception_message` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????????????????????\n     *\n     * {@link cn.iocoder.common.framework.util.ExceptionUtil#getMessage(Throwable)}',
  `exception_root_cause_message` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????????????????\n     *\n     * {@link cn.iocoder.common.framework.util.ExceptionUtil#getRootCauseMessage(Throwable)}',
  `exception_stack_trace` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '??????????????????\n     *\n     * {@link cn.iocoder.common.framework.util.ExceptionUtil#getServiceException(Exception)}',
  `exception_class_name` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????????????????\n     *\n     * {@link StackTraceElement#getClassName()}',
  `exception_file_name` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????????????????\n     *\n     * {@link StackTraceElement#getFileName()}',
  `exception_method_name` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????????????????\n     *\n     * {@link StackTraceElement#getMethodName()}',
  `exception_line_number` int(11) NOT NULL COMMENT '??????????????????????????????\n     *\n     * {@link StackTraceElement#getLineNumber()}',
  `process_status` tinyint(4) NOT NULL COMMENT '????????????',
  `process_time` datetime DEFAULT NULL COMMENT '????????????',
  `process_user_id` int(11) DEFAULT 0 COMMENT '??????????????????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='??????????????????';

--
-- Dumping data for table `infra_api_error_log`
--

INSERT INTO `infra_api_error_log` (`id`, `trace_id`, `user_id`, `user_type`, `application_name`, `request_method`, `request_url`, `request_params`, `user_ip`, `user_agent`, `exception_time`, `exception_name`, `exception_message`, `exception_root_cause_message`, `exception_stack_trace`, `exception_class_name`, `exception_file_name`, `exception_method_name`, `exception_line_number`, `process_status`, `process_time`, `process_user_id`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`) VALUES
(627, '', 0, 2, 'yudao-server', 'GET', '/admin-api/system/captcha/get-image', '{\"query\":{},\"body\":\"\"}', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-26 23:02:00', 'org.springframework.data.redis.RedisConnectionFailureException', 'RedisConnectionFailureException: Unable to write command into connection! Increase connection pool size. Node source: NodeSource [slot=0, addr=null, redisClient=null, redirect=null, entry=null], connection: RedisConnection@23563846 [redisClient=[addr=redis://127.0.0.1:6379], channel=[id: 0x580e51c1, L:0.0.0.0/0.0.0.0:4488], currentCommand=null, usage=1], command: (SETEX), params: [[99, 97, 112, 116, 99, 104, 97, 95, 99, 111, ...], 300, [56, 56, 108, 122, 99]] after 3 retry attempts; nested exception is org.redisson.client.WriteRedisConnectionException: Unable to write command into connection! Increase connection pool size. Node source: NodeSource [slot=0, addr=null, redisClient=null, redirect=null, entry=null], connection: RedisConnection@23563846 [redisClient=[addr=redis://127.0.0.1:6379], channel=[id: 0x580e51c1, L:0.0.0.0/0.0.0.0:4488], currentCommand=null, usage=1], command: (SETEX), params: [[99, 97, 112, 116, 99, 104, 97, 95, 99, 111, ...], 300, [56, 56, 108, 122, 99]] after 3 retry attempts', 'StacklessClosedChannelException: null', 'org.springframework.data.redis.RedisConnectionFailureException: Unable to write command into connection! Increase connection pool size. Node source: NodeSource [slot=0, addr=null, redisClient=null, redirect=null, entry=null], connection: RedisConnection@23563846 [redisClient=[addr=redis://127.0.0.1:6379], channel=[id: 0x580e51c1, L:0.0.0.0/0.0.0.0:4488], currentCommand=null, usage=1], command: (SETEX), params: [[99, 97, 112, 116, 99, 104, 97, 95, 99, 111, ...], 300, [56, 56, 108, 122, 99]] after 3 retry attempts; nested exception is org.redisson.client.WriteRedisConnectionException: Unable to write command into connection! Increase connection pool size. Node source: NodeSource [slot=0, addr=null, redisClient=null, redirect=null, entry=null], connection: RedisConnection@23563846 [redisClient=[addr=redis://127.0.0.1:6379], channel=[id: 0x580e51c1, L:0.0.0.0/0.0.0.0:4488], currentCommand=null, usage=1], command: (SETEX), params: [[99, 97, 112, 116, 99, 104, 97, 95, 99, 111, ...], 300, [56, 56, 108, 122, 99]] after 3 retry attempts\r\n	at org.redisson.spring.data.connection.RedissonExceptionConverter.convert(RedissonExceptionConverter.java:40)\r\n	at org.redisson.spring.data.connection.RedissonExceptionConverter.convert(RedissonExceptionConverter.java:35)\r\n	at org.springframework.data.redis.PassThroughExceptionTranslationStrategy.translate(PassThroughExceptionTranslationStrategy.java:44)\r\n	at org.redisson.spring.data.connection.RedissonConnection.transform(RedissonConnection.java:199)\r\n	at org.redisson.spring.data.connection.RedissonConnection.syncFuture(RedissonConnection.java:194)\r\n	at org.redisson.spring.data.connection.RedissonConnection.sync(RedissonConnection.java:364)\r\n	at org.redisson.spring.data.connection.RedissonConnection.write(RedissonConnection.java:730)\r\n	at org.redisson.spring.data.connection.RedissonConnection.setEx(RedissonConnection.java:538)\r\n	at org.springframework.data.redis.connection.DefaultStringRedisConnection.setEx(DefaultStringRedisConnection.java:1138)\r\n	at org.springframework.data.redis.core.DefaultValueOperations$8.potentiallyUsePsetEx(DefaultValueOperations.java:337)\r\n	at org.springframework.data.redis.core.DefaultValueOperations$8.doInRedis(DefaultValueOperations.java:330)\r\n	at org.springframework.data.redis.core.RedisTemplate.execute(RedisTemplate.java:223)\r\n	at org.springframework.data.redis.core.RedisTemplate.execute(RedisTemplate.java:190)\r\n	at org.springframework.data.redis.core.AbstractOperations.execute(AbstractOperations.java:97)\r\n	at org.springframework.data.redis.core.DefaultValueOperations.set(DefaultValueOperations.java:325)\r\n	at org.springframework.data.redis.core.ValueOperations.set(ValueOperations.java:75)\r\n	at cn.iocoder.yudao.module.system.dal.redis.common.CaptchaRedisDAO.set(CaptchaRedisDAO.java:29)\r\n	at cn.iocoder.yudao.module.system.dal.redis.common.CaptchaRedisDAO$$FastClassBySpringCGLIB$$d74a0527.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:793)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:763)\r\n	at org.springframework.dao.support.PersistenceExceptionTranslationInterceptor.invoke(PersistenceExceptionTranslationInterceptor.java:137)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:763)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:708)\r\n	at cn.iocoder.yudao.module.system.dal.redis.common.CaptchaRedisDAO$$EnhancerBySpringCGLIB$$4673e6e4.set(<generated>)\r\n	at cn.iocoder.yudao.module.system.service.common.CaptchaServiceImpl.getCaptchaImage(CaptchaServiceImpl.java:45)\r\n	at cn.iocoder.yudao.module.system.controller.admin.common.CaptchaController.getCaptchaImage(CaptchaController.java:29)\r\n	at cn.iocoder.yudao.module.system.controller.admin.common.CaptchaController$$FastClassBySpringCGLIB$$380ad7bd.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:793)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:763)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:89)\r\n	at cn.iocoder.yudao.framework.operatelog.core.aop.OperateLogAspect.around0(OperateLogAspect.java:100)\r\n	at cn.iocoder.yudao.framework.operatelog.core.aop.OperateLogAspect.around(OperateLogAspect.java:77)\r\n	at sun.reflect.GeneratedMethodAccessor317.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:634)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:624)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:72)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:763)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:97)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:763)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:708)\r\n	at cn.iocoder.yudao.module.system.controller.admin.common.CaptchaController$$EnhancerBySpringCGLIB$$126157f1.getCaptchaImage(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:205)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:150)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:117)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:808)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1067)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:963)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:1006)\r\n	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:898)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:655)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:883)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:764)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:227)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)\r\n	at de.codecentric.boot.admin.server.ui.web.servlet.HomepageForwardingFilter.doFilter(HomepageForwardingFilter.java:78)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:111)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:124)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)\r\n	at cn.iocoder.yudao.framework.flowable.core.web.FlowableWebFilter.doFilterInternal(FlowableWebFilter.java:29)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:117)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)\r\n	at cn.iocoder.yudao.framework.tenant.core.security.TenantSecurityWebFilter.doFilterInternal(TenantSecurityWebFilter.java:102)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:117)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:327)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:115)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:81)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:336)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:122)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:336)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:126)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:81)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:336)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:109)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:336)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:149)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:336)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:336)\r\n	at cn.iocoder.yudao.framework.security.core.filter.TokenAuthenticationFilter.doFilterInternal(TokenAuthenticationFilter.java:67)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:117)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:336)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:103)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:89)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:336)\r\n	at org.springframework.web.filter.CorsFilter.doFilterInternal(CorsFilter.java:91)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:117)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:336)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doHeadersAfter(HeaderWriterFilter.java:90)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:75)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:117)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:336)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:110)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:80)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:336)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:55)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:117)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:336)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:211)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:183)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:354)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:267)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:102)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)\r\n	at cn.iocoder.yudao.framework.tenant.core.web.TenantContextWebFilter.doFilterInternal(TenantContextWebFilter.java:30)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:117)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)\r\n	at org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:100)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:117)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)\r\n	at org.springframework.web.filter.FormContentFilter.doFilterInternal(FormContentFilter.java:93)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:117)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:102)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)\r\n	at org.springframework.boot.actuate.metrics.web.servlet.WebMvcMetricsFilter.doFilterInternal(WebMvcMetricsFilter.java:96)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:117)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)\r\n	at cn.iocoder.yudao.framework.tracer.core.filter.TraceFilter.doFilterInternal(TraceFilter.java:30)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:117)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:201)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:117)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)\r\n	at org.springframework.web.filter.CorsFilter.doFilterInternal(CorsFilter.java:91)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:117)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:197)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:97)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:541)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:135)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:78)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:360)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:399)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:65)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:890)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1787)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at org.apache.tomcat.util.threads.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1191)\r\n	at org.apache.tomcat.util.threads.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:659)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:748)\r\nCaused by: org.redisson.client.WriteRedisConnectionException: Unable to write command into connection! Increase connection pool size. Node source: NodeSource [slot=0, addr=null, redisClient=null, redirect=null, entry=null], connection: RedisConnection@23563846 [redisClient=[addr=redis://127.0.0.1:6379], channel=[id: 0x580e51c1, L:0.0.0.0/0.0.0.0:4488], currentCommand=null, usage=1], command: (SETEX), params: [[99, 97, 112, 116, 99, 104, 97, 95, 99, 111, ...], 300, [56, 56, 108, 122, 99]] after 3 retry attempts\r\n	at org.redisson.command.RedisExecutor.checkWriteFuture(RedisExecutor.java:281)\r\n	at org.redisson.command.RedisExecutor.access$100(RedisExecutor.java:61)\r\n	at org.redisson.command.RedisExecutor$1.operationComplete(RedisExecutor.java:164)\r\n	at org.redisson.command.RedisExecutor$1.operationComplete(RedisExecutor.java:161)\r\n	at io.netty.util.concurrent.DefaultPromise.notifyListener0(DefaultPromise.java:578)\r\n	at io.netty.util.concurrent.DefaultPromise.notifyListenersNow(DefaultPromise.java:552)\r\n	at io.netty.util.concurrent.DefaultPromise.notifyListeners(DefaultPromise.java:491)\r\n	at io.netty.util.concurrent.DefaultPromise.setValue0(DefaultPromise.java:616)\r\n	at io.netty.util.concurrent.DefaultPromise.setFailure0(DefaultPromise.java:609)\r\n	at io.netty.util.concurrent.DefaultPromise.tryFailure(DefaultPromise.java:117)\r\n	at io.netty.channel.AbstractChannel$AbstractUnsafe.safeSetFailure(AbstractChannel.java:999)\r\n	at io.netty.channel.AbstractChannel$AbstractUnsafe.write(AbstractChannel.java:860)\r\n	at io.netty.channel.DefaultChannelPipeline$HeadContext.write(DefaultChannelPipeline.java:1367)\r\n	at io.netty.channel.AbstractChannelHandlerContext.invokeWrite0(AbstractChannelHandlerContext.java:717)\r\n	at io.netty.channel.AbstractChannelHandlerContext.invokeWriteAndFlush(AbstractChannelHandlerContext.java:764)\r\n	at io.netty.channel.AbstractChannelHandlerContext$WriteTask.run(AbstractChannelHandlerContext.java:1071)\r\n	at io.netty.util.concurrent.AbstractEventExecutor.runTask(AbstractEventExecutor.java:174)\r\n	at io.netty.util.concurrent.AbstractEventExecutor.safeExecute(AbstractEventExecutor.java:167)\r\n	at io.netty.util.concurrent.SingleThreadEventExecutor.runAllTasks(SingleThreadEventExecutor.java:470)\r\n	at io.netty.channel.nio.NioEventLoop.run(NioEventLoop.java:503)\r\n	at io.netty.util.concurrent.SingleThreadEventExecutor$4.run(SingleThreadEventExecutor.java:997)\r\n	at io.netty.util.internal.ThreadExecutorMap$2.run(ThreadExecutorMap.java:74)\r\n	at io.netty.util.concurrent.FastThreadLocalRunnable.run(FastThreadLocalRunnable.java:30)\r\n	... 1 more\r\nCaused by: io.netty.channel.StacklessClosedChannelException\r\n	at io.netty.channel.AbstractChannel$AbstractUnsafe.write(Object, ChannelPromise)(Unknown Source)\r\n', 'org.redisson.spring.data.connection.RedissonExceptionConverter', 'RedissonExceptionConverter.java', 'convert', 40, 0, NULL, 0, NULL, '2022-07-26 23:02:00', NULL, '2022-07-26 23:02:00', b'0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `infra_codegen_column`
--

CREATE TABLE `infra_codegen_column` (
  `id` bigint(20) NOT NULL COMMENT '??????',
  `table_id` bigint(20) NOT NULL COMMENT '?????????',
  `column_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????????',
  `data_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `column_comment` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `nullable` bit(1) NOT NULL COMMENT '??????????????????',
  `primary_key` bit(1) NOT NULL COMMENT '????????????',
  `auto_increment` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `ordinal_position` int(11) NOT NULL COMMENT '??????',
  `java_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Java ????????????',
  `java_field` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Java ?????????',
  `dict_type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '????????????',
  `example` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `create_operation` bit(1) NOT NULL COMMENT '????????? Create ?????????????????????',
  `update_operation` bit(1) NOT NULL COMMENT '????????? Update ?????????????????????',
  `list_operation` bit(1) NOT NULL COMMENT '????????? List ?????????????????????',
  `list_operation_condition` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '=' COMMENT 'List ???????????????????????????',
  `list_operation_result` bit(1) NOT NULL COMMENT '????????? List ???????????????????????????',
  `html_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='???????????????????????????';

-- --------------------------------------------------------

--
-- Table structure for table `infra_codegen_table`
--

CREATE TABLE `infra_codegen_table` (
  `id` bigint(20) NOT NULL COMMENT '??????',
  `data_source_config_id` bigint(20) NOT NULL COMMENT '????????????????????????',
  `scene` tinyint(4) NOT NULL DEFAULT 1 COMMENT '????????????',
  `table_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '?????????',
  `table_comment` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '?????????',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????',
  `module_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????????',
  `business_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????????',
  `class_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '?????????',
  `class_comment` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????????',
  `author` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '??????',
  `template_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '????????????',
  `parent_menu_id` bigint(20) DEFAULT NULL COMMENT '???????????????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='?????????????????????';

-- --------------------------------------------------------

--
-- Table structure for table `infra_config`
--

CREATE TABLE `infra_config` (
  `id` int(11) NOT NULL COMMENT '????????????',
  `category` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `type` tinyint(4) NOT NULL COMMENT '????????????',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '????????????',
  `config_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '????????????',
  `value` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '????????????',
  `visible` bit(1) NOT NULL COMMENT '????????????',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='???????????????';

--
-- Dumping data for table `infra_config`
--

INSERT INTO `infra_config` (`id`, `category`, `type`, `name`, `config_key`, `value`, `visible`, `remark`, `creator`, `create_time`, `updater`, `update_time`, `deleted`) VALUES
(1, 'ui', 1, '????????????-????????????????????????', 'sys.index.skinName', 'skin-blue', b'0', '?????? skin-blue????????? skin-green????????? skin-purple????????? skin-red????????? skin-yellow', 'admin', '2021-01-05 17:03:48', '1', '2022-03-26 23:10:31', b'0'),
(2, 'biz', 1, '????????????-??????????????????', 'sys.user.init-password', '123456', b'0', '??????????????? 123456', 'admin', '2021-01-05 17:03:48', '1', '2022-03-20 02:25:51', b'0'),
(3, 'ui', 1, '????????????-???????????????', 'sys.index.sideTheme', 'theme-dark', b'0', '????????????theme-dark???????????????theme-light', 'admin', '2021-01-05 17:03:48', '', '2021-01-19 03:05:21', b'0'),
(4, '1', 2, 'xxx', 'demo.test', '10', b'0', '5', '', '2021-01-19 03:10:26', '', '2021-01-20 09:25:55', b'0'),
(5, 'xxx', 2, 'xxx', 'xxx', 'xxx', b'1', 'xxx', '', '2021-02-09 20:06:47', '', '2021-02-09 20:06:47', b'0'),
(6, 'biz', 2, '????????????????????????', 'yudao.captcha.enable', 'true', b'1', NULL, '1', '2022-02-17 00:03:11', '1', '2022-04-04 12:51:40', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `infra_data_source_config`
--

CREATE TABLE `infra_data_source_config` (
  `id` bigint(20) NOT NULL COMMENT '????????????',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '????????????',
  `url` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '???????????????',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????????',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '??????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='??????????????????';

-- --------------------------------------------------------

--
-- Table structure for table `infra_file`
--

CREATE TABLE `infra_file` (
  `id` bigint(20) NOT NULL COMMENT '????????????',
  `config_id` bigint(20) DEFAULT NULL COMMENT '????????????',
  `name` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '?????????',
  `path` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `url` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????? URL',
  `type` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????MIME??????',
  `size` int(11) NOT NULL COMMENT '????????????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='?????????';

-- --------------------------------------------------------

--
-- Table structure for table `infra_file_config`
--

CREATE TABLE `infra_file_config` (
  `id` bigint(20) NOT NULL COMMENT '??????',
  `name` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????????',
  `storage` tinyint(4) NOT NULL COMMENT '?????????',
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????',
  `master` bit(1) NOT NULL COMMENT '??????????????????',
  `config` varchar(4096) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='???????????????';

--
-- Dumping data for table `infra_file_config`
--

INSERT INTO `infra_file_config` (`id`, `name`, `storage`, `remark`, `master`, `config`, `creator`, `create_time`, `updater`, `update_time`, `deleted`) VALUES
(4, '?????????', 1, '???????????????', b'0', '{\"@class\":\"cn.iocoder.yudao.framework.file.core.client.db.DBFileClientConfig\",\"domain\":\"http://127.0.0.1:48080\"}', '1', '2022-03-15 23:56:24', '1', '2022-03-26 21:39:26', b'0'),
(5, '????????????', 10, '?????????????????????', b'0', '{\"@class\":\"cn.iocoder.yudao.framework.file.core.client.local.LocalFileClientConfig\",\"basePath\":\"/Users/yunai/file_test\",\"domain\":\"http://127.0.0.1:48080\"}', '1', '2022-03-15 23:57:00', '1', '2022-03-26 21:39:26', b'0'),
(11, 'S3 - ?????????', 20, NULL, b'1', '{\"@class\":\"cn.iocoder.yudao.framework.file.core.client.s3.S3FileClientConfig\",\"endpoint\":\"s3-cn-south-1.qiniucs.com\",\"domain\":\"http://test.yudao.iocoder.cn\",\"bucket\":\"ruoyi-vue-pro\",\"accessKey\":\"b7yvuhBSAGjmtPhMFcn9iMOxUOY_I06cA_p0ZUx8\",\"accessSecret\":\"kXM1l5ia1RvSX3QaOEcwI3RLz3Y2rmNszWonKZtP\"}', '1', '2022-03-19 18:00:03', '1', '2022-03-26 21:39:26', b'0'),
(15, 'S3 - ?????????', 20, '', b'0', '{\"@class\":\"cn.iocoder.yudao.framework.file.core.client.s3.S3FileClientConfig\",\"endpoint\":\"s3-cn-south-1.qiniucs.com\",\"domain\":\"http://test.yudao.iocoder.cn\",\"bucket\":\"ruoyi-vue-pro\",\"accessKey\":\"b7yvuhBSAGjmtPhMFcn9iMOxUOY_I06cA_p0ZUx8\",\"accessSecret\":\"kXM1l5ia1RvSX3QaOEcwI3RLz3Y2rmNszWonKZtP\"}', '1', '2022-06-10 20:50:41', '1', '2022-06-10 20:50:41', b'0'),
(16, 'S3 - ?????????', 20, '', b'0', '{\"@class\":\"cn.iocoder.yudao.framework.file.core.client.s3.S3FileClientConfig\",\"endpoint\":\"s3-cn-south-1.qiniucs.com\",\"domain\":\"http://test.yudao.iocoder.cn\",\"bucket\":\"ruoyi-vue-pro\",\"accessKey\":\"b7yvuhBSAGjmtPhMFcn9iMOxUOY_I06cA_p0ZUx8\",\"accessSecret\":\"kXM1l5ia1RvSX3QaOEcwI3RLz3Y2rmNszWonKZtP\"}', '1', '2022-06-11 20:32:08', '1', '2022-06-11 20:32:08', b'0'),
(17, 'S3 - ?????????', 20, '', b'0', '{\"@class\":\"cn.iocoder.yudao.framework.file.core.client.s3.S3FileClientConfig\",\"endpoint\":\"s3-cn-south-1.qiniucs.com\",\"domain\":\"http://test.yudao.iocoder.cn\",\"bucket\":\"ruoyi-vue-pro\",\"accessKey\":\"b7yvuhBSAGjmtPhMFcn9iMOxUOY_I06cA_p0ZUx8\",\"accessSecret\":\"kXM1l5ia1RvSX3QaOEcwI3RLz3Y2rmNszWonKZtP\"}', '1', '2022-06-11 20:32:47', '1', '2022-06-11 20:32:47', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `infra_file_content`
--

CREATE TABLE `infra_file_content` (
  `id` bigint(20) NOT NULL COMMENT '??????',
  `config_id` bigint(20) NOT NULL COMMENT '????????????',
  `path` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `content` mediumblob NOT NULL COMMENT '????????????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='?????????';

-- --------------------------------------------------------

--
-- Table structure for table `infra_job`
--

CREATE TABLE `infra_job` (
  `id` bigint(20) NOT NULL COMMENT '????????????',
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `status` tinyint(4) NOT NULL COMMENT '????????????',
  `handler_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '??????????????????',
  `handler_param` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????????????????',
  `cron_expression` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'CRON ?????????',
  `retry_count` int(11) NOT NULL DEFAULT 0 COMMENT '????????????',
  `retry_interval` int(11) NOT NULL DEFAULT 0 COMMENT '????????????',
  `monitor_timeout` int(11) NOT NULL DEFAULT 0 COMMENT '??????????????????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='???????????????';

--
-- Dumping data for table `infra_job`
--

INSERT INTO `infra_job` (`id`, `name`, `status`, `handler_name`, `handler_param`, `cron_expression`, `retry_count`, `retry_interval`, `monitor_timeout`, `creator`, `create_time`, `updater`, `update_time`, `deleted`) VALUES
(5, '???????????? Job', 2, 'payNotifyJob', NULL, '* * * * * ?', 0, 0, 0, '1', '2021-10-27 08:34:42', '1', '2022-04-03 20:35:25', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `infra_job_log`
--

CREATE TABLE `infra_job_log` (
  `id` bigint(20) NOT NULL COMMENT '????????????',
  `job_id` bigint(20) NOT NULL COMMENT '????????????',
  `handler_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '??????????????????',
  `handler_param` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????????????????',
  `execute_index` tinyint(4) NOT NULL DEFAULT 1 COMMENT '???????????????',
  `begin_time` datetime NOT NULL COMMENT '??????????????????',
  `end_time` datetime DEFAULT NULL COMMENT '??????????????????',
  `duration` int(11) DEFAULT NULL COMMENT '????????????',
  `status` tinyint(4) NOT NULL COMMENT '????????????',
  `result` varchar(4000) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '????????????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='?????????????????????';

-- --------------------------------------------------------

--
-- Table structure for table `infra_test_demo`
--

CREATE TABLE `infra_test_demo` (
  `id` bigint(20) NOT NULL COMMENT '??????',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '??????',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '??????',
  `type` tinyint(4) NOT NULL COMMENT '??????',
  `category` tinyint(4) NOT NULL COMMENT '??????',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='???????????????';

-- --------------------------------------------------------

--
-- Table structure for table `member_user`
--

CREATE TABLE `member_user` (
  `id` bigint(20) NOT NULL COMMENT '??????',
  `nickname` varchar(30) NOT NULL DEFAULT '' COMMENT '????????????',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '??????',
  `status` tinyint(4) NOT NULL COMMENT '??????',
  `mobile` varchar(11) NOT NULL COMMENT '?????????',
  `password` varchar(100) NOT NULL DEFAULT '' COMMENT '??????',
  `register_ip` varchar(32) NOT NULL COMMENT '?????? IP',
  `login_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '????????????IP',
  `login_date` datetime DEFAULT NULL COMMENT '??????????????????',
  `creator` varchar(64) DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='??????';

-- --------------------------------------------------------

--
-- Table structure for table `pay_app`
--

CREATE TABLE `pay_app` (
  `id` bigint(20) NOT NULL COMMENT '????????????',
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????????',
  `status` tinyint(4) NOT NULL COMMENT '????????????',
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????',
  `pay_notify_url` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '???????????????????????????',
  `refund_notify_url` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '???????????????????????????',
  `merchant_id` bigint(20) NOT NULL COMMENT '????????????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='??????????????????';

-- --------------------------------------------------------

--
-- Table structure for table `pay_channel`
--

CREATE TABLE `pay_channel` (
  `id` bigint(20) NOT NULL COMMENT '????????????',
  `code` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `status` tinyint(4) NOT NULL COMMENT '????????????',
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????',
  `fee_rate` double NOT NULL DEFAULT 0 COMMENT '?????????????????????????????????',
  `merchant_id` bigint(20) NOT NULL COMMENT '????????????',
  `app_id` bigint(20) NOT NULL COMMENT '????????????',
  `config` varchar(4096) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '??????????????????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='????????????\n';

-- --------------------------------------------------------

--
-- Table structure for table `pay_merchant`
--

CREATE TABLE `pay_merchant` (
  `id` bigint(20) NOT NULL COMMENT '????????????',
  `no` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????????',
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `short_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `status` tinyint(4) NOT NULL COMMENT '????????????',
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='??????????????????';

-- --------------------------------------------------------

--
-- Table structure for table `pay_notify_log`
--

CREATE TABLE `pay_notify_log` (
  `id` bigint(20) NOT NULL COMMENT '????????????',
  `task_id` bigint(20) NOT NULL COMMENT '??????????????????',
  `notify_times` tinyint(4) NOT NULL COMMENT '??????????????????',
  `response` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `status` tinyint(4) NOT NULL COMMENT '????????????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='???????????? App ?????????';

-- --------------------------------------------------------

--
-- Table structure for table `pay_notify_task`
--

CREATE TABLE `pay_notify_task` (
  `id` bigint(20) NOT NULL COMMENT '????????????',
  `merchant_id` bigint(20) NOT NULL COMMENT '????????????',
  `app_id` bigint(20) NOT NULL COMMENT '????????????',
  `type` tinyint(4) NOT NULL COMMENT '????????????',
  `data_id` bigint(20) NOT NULL COMMENT '????????????',
  `status` tinyint(4) NOT NULL COMMENT '????????????',
  `merchant_order_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '??????????????????',
  `next_notify_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '?????????????????????',
  `last_execute_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????????????????',
  `notify_times` tinyint(4) NOT NULL COMMENT '??????????????????',
  `max_notify_times` tinyint(4) NOT NULL COMMENT '?????????????????????',
  `notify_url` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '??????????????????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='?????????????????????????????????\n';

-- --------------------------------------------------------

--
-- Table structure for table `pay_order`
--

CREATE TABLE `pay_order` (
  `id` bigint(20) NOT NULL COMMENT '??????????????????',
  `merchant_id` bigint(20) NOT NULL COMMENT '????????????',
  `app_id` bigint(20) NOT NULL COMMENT '????????????',
  `channel_id` bigint(20) DEFAULT NULL COMMENT '????????????',
  `channel_code` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `merchant_order_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '??????????????????',
  `subject` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `body` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `notify_url` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '??????????????????',
  `notify_status` tinyint(4) NOT NULL COMMENT '???????????????????????????????????????',
  `amount` bigint(20) NOT NULL COMMENT '???????????????????????????',
  `channel_fee_rate` double DEFAULT 0 COMMENT '????????????????????????????????????',
  `channel_fee_amount` bigint(20) DEFAULT 0 COMMENT '?????????????????????????????????',
  `status` tinyint(4) NOT NULL COMMENT '????????????',
  `user_ip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????? IP',
  `expire_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '??????????????????',
  `success_time` datetime DEFAULT current_timestamp() COMMENT '????????????????????????',
  `notify_time` datetime DEFAULT current_timestamp() COMMENT '????????????????????????',
  `success_extension_id` bigint(20) DEFAULT NULL COMMENT '????????????????????????????????????',
  `refund_status` tinyint(4) NOT NULL COMMENT '????????????',
  `refund_times` tinyint(4) NOT NULL COMMENT '????????????',
  `refund_amount` bigint(20) NOT NULL COMMENT '??????????????????????????????',
  `channel_user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????????????????',
  `channel_order_no` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '???????????????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='????????????\n';

-- --------------------------------------------------------

--
-- Table structure for table `pay_order_extension`
--

CREATE TABLE `pay_order_extension` (
  `id` bigint(20) NOT NULL COMMENT '??????????????????',
  `no` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '???????????????',
  `order_id` bigint(20) NOT NULL COMMENT '??????????????????',
  `channel_id` bigint(20) NOT NULL COMMENT '????????????',
  `channel_code` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `user_ip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????? IP',
  `status` tinyint(4) NOT NULL COMMENT '????????????',
  `channel_extras` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '???????????????????????????',
  `channel_notify_data` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '?????????????????????????????????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='????????????\n';

-- --------------------------------------------------------

--
-- Table structure for table `pay_refund`
--

CREATE TABLE `pay_refund` (
  `id` bigint(20) NOT NULL COMMENT '??????????????????',
  `merchant_id` bigint(20) NOT NULL COMMENT '????????????',
  `app_id` bigint(20) NOT NULL COMMENT '????????????',
  `channel_id` bigint(20) NOT NULL COMMENT '????????????',
  `channel_code` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `order_id` bigint(20) NOT NULL COMMENT '?????????????????? pay_order ???id',
  `trade_no` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '??????????????? pay_extension ???no ??????',
  `merchant_order_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '??????????????????????????????????????????',
  `merchant_refund_no` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????????????????????????????????????????????',
  `notify_url` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????????????????',
  `notify_status` tinyint(4) NOT NULL COMMENT '???????????????????????????????????????',
  `status` tinyint(4) NOT NULL COMMENT '????????????',
  `type` tinyint(4) NOT NULL COMMENT '????????????(???????????????????????????)',
  `pay_amount` bigint(20) NOT NULL COMMENT '????????????,?????????',
  `refund_amount` bigint(20) NOT NULL COMMENT '????????????,?????????',
  `reason` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `user_ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '?????? IP',
  `channel_order_no` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '??????????????????pay_order ??????channel_order_no ??????',
  `channel_refund_no` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '?????????????????????????????????',
  `channel_error_code` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '?????????????????????????????????',
  `channel_error_msg` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????????????????????????????',
  `channel_extras` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '???????????????????????????',
  `expire_time` datetime DEFAULT NULL COMMENT '??????????????????',
  `success_time` datetime DEFAULT NULL COMMENT '??????????????????',
  `notify_time` datetime DEFAULT NULL COMMENT '??????????????????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='????????????';

-- --------------------------------------------------------

--
-- Table structure for table `qrtz_blob_triggers`
--

CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BLOB_DATA` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qrtz_calendars`
--

CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CALENDAR_NAME` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CALENDAR` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qrtz_cron_triggers`
--

CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CRON_EXPRESSION` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TIME_ZONE_ID` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qrtz_cron_triggers`
--

INSERT INTO `qrtz_cron_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`, `CRON_EXPRESSION`, `TIME_ZONE_ID`) VALUES
('schedulerName', 'payNotifyJob', 'DEFAULT', '* * * * * ?', 'Asia/Shanghai');

-- --------------------------------------------------------

--
-- Table structure for table `qrtz_fired_triggers`
--

CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ENTRY_ID` varchar(95) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `INSTANCE_NAME` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FIRED_TIME` bigint(20) NOT NULL,
  `SCHED_TIME` bigint(20) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_NAME` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JOB_GROUP` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qrtz_job_details`
--

CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_NAME` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_GROUP` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IS_DURABLE` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IS_NONCONCURRENT` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IS_UPDATE_DATA` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_DATA` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qrtz_job_details`
--

INSERT INTO `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`, `DESCRIPTION`, `JOB_CLASS_NAME`, `IS_DURABLE`, `IS_NONCONCURRENT`, `IS_UPDATE_DATA`, `REQUESTS_RECOVERY`, `JOB_DATA`) VALUES
('schedulerName', 'payNotifyJob', 'DEFAULT', NULL, 'cn.iocoder.yudao.framework.quartz.core.handler.JobHandlerInvoker', '0', '1', '1', '0', 0xaced0005737200156f72672e71756172747a2e4a6f62446174614d61709fb083e8bfa9b0cb020000787200266f72672e71756172747a2e7574696c732e537472696e674b65794469727479466c61674d61708208e8c3fbc55d280200015a0013616c6c6f77735472616e7369656e74446174617872001d6f72672e71756172747a2e7574696c732e4469727479466c61674d617013e62ead28760ace0200025a000564697274794c00036d617074000f4c6a6176612f7574696c2f4d61703b787001737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f4000000000000c770800000010000000027400064a4f425f49447372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b020000787000000000000000057400104a4f425f48414e444c45525f4e414d4574000c7061794e6f746966794a6f627800);

-- --------------------------------------------------------

--
-- Table structure for table `qrtz_locks`
--

CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LOCK_NAME` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qrtz_locks`
--

INSERT INTO `qrtz_locks` (`SCHED_NAME`, `LOCK_NAME`) VALUES
('schedulerName', 'STATE_ACCESS'),
('schedulerName', 'TRIGGER_ACCESS');

-- --------------------------------------------------------

--
-- Table structure for table `qrtz_paused_trigger_grps`
--

CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qrtz_scheduler_state`
--

CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `INSTANCE_NAME` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LAST_CHECKIN_TIME` bigint(20) NOT NULL,
  `CHECKIN_INTERVAL` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qrtz_scheduler_state`
--

INSERT INTO `qrtz_scheduler_state` (`SCHED_NAME`, `INSTANCE_NAME`, `LAST_CHECKIN_TIME`, `CHECKIN_INTERVAL`) VALUES
('schedulerName', 'Yunai.local1635571630493', 1635572537879, 15000);

-- --------------------------------------------------------

--
-- Table structure for table `qrtz_simple_triggers`
--

CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `REPEAT_COUNT` bigint(20) NOT NULL,
  `REPEAT_INTERVAL` bigint(20) NOT NULL,
  `TIMES_TRIGGERED` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qrtz_simprop_triggers`
--

CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `STR_PROP_1` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `STR_PROP_2` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `STR_PROP_3` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qrtz_triggers`
--

CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_NAME` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_GROUP` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_TYPE` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `START_TIME` bigint(20) NOT NULL,
  `END_TIME` bigint(20) DEFAULT NULL,
  `CALENDAR_NAME` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MISFIRE_INSTR` smallint(6) DEFAULT NULL,
  `JOB_DATA` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qrtz_triggers`
--

INSERT INTO `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`, `JOB_NAME`, `JOB_GROUP`, `DESCRIPTION`, `NEXT_FIRE_TIME`, `PREV_FIRE_TIME`, `PRIORITY`, `TRIGGER_STATE`, `TRIGGER_TYPE`, `START_TIME`, `END_TIME`, `CALENDAR_NAME`, `MISFIRE_INSTR`, `JOB_DATA`) VALUES
('schedulerName', 'payNotifyJob', 'DEFAULT', 'payNotifyJob', 'DEFAULT', NULL, 1635572540000, 1635572539000, 5, 'WAITING', 'CRON', 1635294882000, 0, NULL, 0, 0xaced0005737200156f72672e71756172747a2e4a6f62446174614d61709fb083e8bfa9b0cb020000787200266f72672e71756172747a2e7574696c732e537472696e674b65794469727479466c61674d61708208e8c3fbc55d280200015a0013616c6c6f77735472616e7369656e74446174617872001d6f72672e71756172747a2e7574696c732e4469727479466c61674d617013e62ead28760ace0200025a000564697274794c00036d617074000f4c6a6176612f7574696c2f4d61703b787001737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f4000000000000c770800000010000000037400114a4f425f48414e444c45525f504152414d707400124a4f425f52455452595f494e54455256414c737200116a6176612e6c616e672e496e746567657212e2a0a4f781873802000149000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b02000078700000000074000f4a4f425f52455452595f434f554e5471007e000b7800);

-- --------------------------------------------------------

--
-- Table structure for table `system_dept`
--

CREATE TABLE `system_dept` (
  `id` bigint(20) NOT NULL COMMENT '??????id',
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '????????????',
  `parent_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '?????????id',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '????????????',
  `leader_user_id` bigint(20) DEFAULT NULL COMMENT '?????????',
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????',
  `status` tinyint(4) NOT NULL COMMENT '???????????????0?????? 1?????????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='?????????';

--
-- Dumping data for table `system_dept`
--

INSERT INTO `system_dept` (`id`, `name`, `parent_id`, `sort`, `leader_user_id`, `phone`, `email`, `status`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`) VALUES
(100, '????????????', 0, 0, 1, '15888888888', 'ry@qq.com', 0, 'admin', '2021-01-05 17:03:47', '103', '2022-01-14 01:04:05', b'0', 1),
(101, '???????????????', 100, 1, 104, '15888888888', 'ry@qq.com', 0, 'admin', '2021-01-05 17:03:47', '1', '2022-05-16 20:25:23', b'0', 1),
(102, '???????????????', 100, 2, NULL, '15888888888', 'ry@qq.com', 0, 'admin', '2021-01-05 17:03:47', '', '2021-12-15 05:01:40', b'0', 1),
(103, '????????????', 101, 1, 104, '15888888888', 'ry@qq.com', 0, 'admin', '2021-01-05 17:03:47', '103', '2022-01-14 01:04:14', b'0', 1),
(104, '????????????', 101, 2, NULL, '15888888888', 'ry@qq.com', 0, 'admin', '2021-01-05 17:03:47', '', '2021-12-15 05:01:38', b'0', 1),
(105, '????????????', 101, 3, NULL, '15888888888', 'ry@qq.com', 0, 'admin', '2021-01-05 17:03:47', '1', '2022-05-16 20:25:15', b'0', 1),
(106, '????????????', 101, 4, 103, '15888888888', 'ry@qq.com', 0, 'admin', '2021-01-05 17:03:47', '103', '2022-01-15 21:32:22', b'0', 1),
(107, '????????????', 101, 5, NULL, '15888888888', 'ry@qq.com', 0, 'admin', '2021-01-05 17:03:47', '', '2021-12-15 05:01:33', b'0', 1),
(108, '????????????', 102, 1, NULL, '15888888888', 'ry@qq.com', 0, 'admin', '2021-01-05 17:03:47', '1', '2022-02-16 08:35:45', b'0', 1),
(109, '????????????', 102, 2, NULL, '15888888888', 'ry@qq.com', 0, 'admin', '2021-01-05 17:03:47', '', '2021-12-15 05:01:29', b'0', 1),
(110, '?????????', 0, 1, NULL, NULL, NULL, 0, '110', '2022-02-23 20:46:30', '110', '2022-02-23 20:46:30', b'0', 121),
(111, '????????????', 0, 1, NULL, NULL, NULL, 0, '113', '2022-03-07 21:44:50', '113', '2022-03-07 21:44:50', b'0', 122);

-- --------------------------------------------------------

--
-- Table structure for table `system_dict_data`
--

CREATE TABLE `system_dict_data` (
  `id` bigint(20) NOT NULL COMMENT '????????????',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '????????????',
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '????????????',
  `value` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '????????????',
  `dict_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '????????????',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '?????????0?????? 1?????????',
  `color_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '????????????',
  `css_class` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'css ??????',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='???????????????';

--
-- Dumping data for table `system_dict_data`
--

INSERT INTO `system_dict_data` (`id`, `sort`, `label`, `value`, `dict_type`, `status`, `color_type`, `css_class`, `remark`, `creator`, `create_time`, `updater`, `update_time`, `deleted`) VALUES
(1, 1, '???', '1', 'system_user_sex', 0, 'default', 'A', '?????????', 'admin', '2021-01-05 17:03:48', '1', '2022-03-29 00:14:39', b'0'),
(2, 2, '???', '2', 'system_user_sex', 1, 'success', '', '?????????', 'admin', '2021-01-05 17:03:48', '1', '2022-02-16 01:30:51', b'0'),
(8, 1, '??????', '1', 'infra_job_status', 0, 'success', '', '????????????', 'admin', '2021-01-05 17:03:48', '1', '2022-02-16 19:33:38', b'0'),
(9, 2, '??????', '2', 'infra_job_status', 0, 'danger', '', '????????????', 'admin', '2021-01-05 17:03:48', '1', '2022-02-16 19:33:45', b'0'),
(12, 1, '????????????', '1', 'infra_config_type', 0, 'danger', '', '???????????? - ????????????', 'admin', '2021-01-05 17:03:48', '1', '2022-02-16 19:06:02', b'0'),
(13, 2, '?????????', '2', 'infra_config_type', 0, 'primary', '', '???????????? - ?????????', 'admin', '2021-01-05 17:03:48', '1', '2022-02-16 19:06:07', b'0'),
(14, 1, '??????', '1', 'system_notice_type', 0, 'success', '', '??????', 'admin', '2021-01-05 17:03:48', '1', '2022-02-16 13:05:57', b'0'),
(15, 2, '??????', '2', 'system_notice_type', 0, 'info', '', '??????', 'admin', '2021-01-05 17:03:48', '1', '2022-02-16 13:06:01', b'0'),
(16, 0, '??????', '0', 'system_operate_type', 0, 'default', '', '????????????', 'admin', '2021-01-05 17:03:48', '1', '2022-02-16 09:32:46', b'0'),
(17, 1, '??????', '1', 'system_operate_type', 0, 'info', '', '????????????', 'admin', '2021-01-05 17:03:48', '1', '2022-02-16 09:33:16', b'0'),
(18, 2, '??????', '2', 'system_operate_type', 0, 'primary', '', '????????????', 'admin', '2021-01-05 17:03:48', '1', '2022-02-16 09:33:13', b'0'),
(19, 3, '??????', '3', 'system_operate_type', 0, 'warning', '', '????????????', 'admin', '2021-01-05 17:03:48', '1', '2022-02-16 09:33:22', b'0'),
(20, 4, '??????', '4', 'system_operate_type', 0, 'danger', '', '????????????', 'admin', '2021-01-05 17:03:48', '1', '2022-02-16 09:33:27', b'0'),
(22, 5, '??????', '5', 'system_operate_type', 0, 'default', '', '????????????', 'admin', '2021-01-05 17:03:48', '1', '2022-02-16 09:33:32', b'0'),
(23, 6, '??????', '6', 'system_operate_type', 0, 'default', '', '????????????', 'admin', '2021-01-05 17:03:48', '1', '2022-02-16 09:33:35', b'0'),
(27, 1, '??????', '0', 'common_status', 0, 'primary', '', '????????????', 'admin', '2021-01-05 17:03:48', '1', '2022-02-16 08:00:39', b'0'),
(28, 2, '??????', '1', 'common_status', 0, 'info', '', '????????????', 'admin', '2021-01-05 17:03:48', '1', '2022-02-16 08:00:44', b'0'),
(29, 1, '??????', '1', 'system_menu_type', 0, '', '', '??????', 'admin', '2021-01-05 17:03:48', '', '2022-02-01 16:43:45', b'0'),
(30, 2, '??????', '2', 'system_menu_type', 0, '', '', '??????', 'admin', '2021-01-05 17:03:48', '', '2022-02-01 16:43:41', b'0'),
(31, 3, '??????', '3', 'system_menu_type', 0, '', '', '??????', 'admin', '2021-01-05 17:03:48', '', '2022-02-01 16:43:39', b'0'),
(32, 1, '??????', '1', 'system_role_type', 0, 'danger', '', '????????????', 'admin', '2021-01-05 17:03:48', '1', '2022-02-16 13:02:08', b'0'),
(33, 2, '?????????', '2', 'system_role_type', 0, 'primary', '', '???????????????', 'admin', '2021-01-05 17:03:48', '1', '2022-02-16 13:02:12', b'0'),
(34, 1, '??????????????????', '1', 'system_data_scope', 0, '', '', '??????????????????', 'admin', '2021-01-05 17:03:48', '', '2022-02-01 16:47:17', b'0'),
(35, 2, '????????????????????????', '2', 'system_data_scope', 0, '', '', '????????????????????????', 'admin', '2021-01-05 17:03:48', '', '2022-02-01 16:47:18', b'0'),
(36, 3, '?????????????????????', '3', 'system_data_scope', 0, '', '', '?????????????????????', 'admin', '2021-01-05 17:03:48', '', '2022-02-01 16:47:16', b'0'),
(37, 4, '??????????????????????????????', '4', 'system_data_scope', 0, '', '', '??????????????????????????????', 'admin', '2021-01-05 17:03:48', '', '2022-02-01 16:47:21', b'0'),
(38, 5, '?????????????????????', '5', 'system_data_scope', 0, '', '', '?????????????????????', 'admin', '2021-01-05 17:03:48', '', '2022-02-01 16:47:23', b'0'),
(39, 0, '??????', '0', 'system_login_result', 0, 'success', '', '???????????? - ??????', '', '2021-01-18 06:17:36', '1', '2022-02-16 13:23:49', b'0'),
(40, 10, '????????????????????????', '10', 'system_login_result', 0, 'primary', '', '???????????? - ????????????????????????', '', '2021-01-18 06:17:54', '1', '2022-02-16 13:24:27', b'0'),
(41, 20, '???????????????', '20', 'system_login_result', 0, 'warning', '', '???????????? - ???????????????', '', '2021-01-18 06:17:54', '1', '2022-02-16 13:23:57', b'0'),
(42, 30, '??????????????????', '30', 'system_login_result', 0, 'info', '', '???????????? - ??????????????????', '', '2021-01-18 06:17:54', '1', '2022-02-16 13:24:07', b'0'),
(43, 31, '??????????????????', '31', 'system_login_result', 0, 'info', '', '???????????? - ??????????????????', '', '2021-01-18 06:17:54', '1', '2022-02-16 13:24:11', b'0'),
(44, 100, '????????????', '100', 'system_login_result', 0, 'danger', '', '???????????? - ????????????', '', '2021-01-18 06:17:54', '1', '2022-02-16 13:24:23', b'0'),
(45, 1, '???', 'true', 'infra_boolean_string', 0, 'danger', '', 'Boolean ???????????? - ???', '', '2021-01-19 03:20:55', '1', '2022-03-15 23:01:45', b'0'),
(46, 1, '???', 'false', 'infra_boolean_string', 0, 'info', '', 'Boolean ???????????? - ???', '', '2021-01-19 03:20:55', '1', '2022-03-15 23:09:45', b'0'),
(47, 1, '????????????', '1', 'infra_redis_timeout_type', 0, 'primary', '', 'Redis ????????????????????????', '', '2021-01-26 00:53:17', '1', '2022-02-16 19:03:35', b'0'),
(48, 1, '????????????', '2', 'infra_redis_timeout_type', 0, 'info', '', '????????????????????????????????????????????????', '', '2021-01-26 00:55:00', '1', '2022-02-16 19:03:41', b'0'),
(49, 3, '????????????', '3', 'infra_redis_timeout_type', 0, 'success', '', 'Redis ?????????????????????', '', '2021-01-26 00:55:26', '1', '2022-02-16 19:03:45', b'0'),
(50, 1, '????????????????????????', '1', 'infra_codegen_template_type', 0, '', '', NULL, '', '2021-02-05 07:09:06', '', '2022-03-10 16:33:15', b'0'),
(51, 2, '????????????????????????', '2', 'infra_codegen_template_type', 0, '', '', NULL, '', '2021-02-05 07:14:46', '', '2022-03-10 16:33:19', b'0'),
(53, 0, '????????????', '0', 'infra_job_status', 0, 'primary', '', NULL, '', '2021-02-07 07:46:49', '1', '2022-02-16 19:33:29', b'0'),
(57, 0, '?????????', '0', 'infra_job_log_status', 0, 'primary', '', 'RUNNING', '', '2021-02-08 10:04:24', '1', '2022-02-16 19:07:48', b'0'),
(58, 1, '??????', '1', 'infra_job_log_status', 0, 'success', '', NULL, '', '2021-02-08 10:06:57', '1', '2022-02-16 19:07:52', b'0'),
(59, 2, '??????', '2', 'infra_job_log_status', 0, 'warning', '', '??????', '', '2021-02-08 10:07:38', '1', '2022-02-16 19:07:56', b'0'),
(60, 1, '??????', '1', 'user_type', 0, 'primary', '', NULL, '', '2021-02-26 00:16:27', '1', '2022-02-16 10:22:19', b'0'),
(61, 2, '?????????', '2', 'user_type', 0, 'success', '', NULL, '', '2021-02-26 00:16:34', '1', '2022-02-16 10:22:22', b'0'),
(62, 0, '?????????', '0', 'infra_api_error_log_process_status', 0, 'primary', '', NULL, '', '2021-02-26 07:07:19', '1', '2022-02-16 20:14:17', b'0'),
(63, 1, '?????????', '1', 'infra_api_error_log_process_status', 0, 'success', '', NULL, '', '2021-02-26 07:07:26', '1', '2022-02-16 20:14:08', b'0'),
(64, 2, '?????????', '2', 'infra_api_error_log_process_status', 0, 'danger', '', NULL, '', '2021-02-26 07:07:34', '1', '2022-02-16 20:14:14', b'0'),
(65, 1, '??????', 'YUN_PIAN', 'system_sms_channel_code', 0, 'success', '', NULL, '1', '2021-04-05 01:05:14', '1', '2022-02-16 10:09:55', b'0'),
(66, 2, '?????????', 'ALIYUN', 'system_sms_channel_code', 0, 'primary', '', NULL, '1', '2021-04-05 01:05:26', '1', '2022-02-16 10:09:52', b'0'),
(67, 1, '?????????', '1', 'system_sms_template_type', 0, 'warning', '', NULL, '1', '2021-04-05 21:50:57', '1', '2022-02-16 12:48:30', b'0'),
(68, 2, '??????', '2', 'system_sms_template_type', 0, 'primary', '', NULL, '1', '2021-04-05 21:51:08', '1', '2022-02-16 12:48:27', b'0'),
(69, 0, '??????', '3', 'system_sms_template_type', 0, 'danger', '', NULL, '1', '2021-04-05 21:51:15', '1', '2022-02-16 12:48:22', b'0'),
(70, 0, '?????????', '0', 'system_sms_send_status', 0, 'primary', '', NULL, '1', '2021-04-11 20:18:33', '1', '2022-02-16 10:26:07', b'0'),
(71, 1, '????????????', '10', 'system_sms_send_status', 0, 'success', '', NULL, '1', '2021-04-11 20:18:43', '1', '2022-02-16 10:25:56', b'0'),
(72, 2, '????????????', '20', 'system_sms_send_status', 0, 'danger', '', NULL, '1', '2021-04-11 20:18:49', '1', '2022-02-16 10:26:03', b'0'),
(73, 3, '?????????', '30', 'system_sms_send_status', 0, 'info', '', NULL, '1', '2021-04-11 20:19:44', '1', '2022-02-16 10:26:10', b'0'),
(74, 0, '????????????', '0', 'system_sms_receive_status', 0, 'primary', '', NULL, '1', '2021-04-11 20:27:43', '1', '2022-02-16 10:28:24', b'0'),
(75, 1, '????????????', '10', 'system_sms_receive_status', 0, 'success', '', NULL, '1', '2021-04-11 20:29:25', '1', '2022-02-16 10:28:28', b'0'),
(76, 2, '????????????', '20', 'system_sms_receive_status', 0, 'danger', '', NULL, '1', '2021-04-11 20:29:31', '1', '2022-02-16 10:28:32', b'0'),
(77, 0, '??????(??????)', 'DEBUG_DING_TALK', 'system_sms_channel_code', 0, 'info', '', NULL, '1', '2021-04-13 00:20:37', '1', '2022-02-16 10:10:00', b'0'),
(78, 1, '????????????', '1', 'system_error_code_type', 0, 'warning', '', NULL, '1', '2021-04-21 00:06:48', '1', '2022-02-16 13:57:20', b'0'),
(79, 2, '????????????', '2', 'system_error_code_type', 0, 'primary', '', NULL, '1', '2021-04-21 00:07:14', '1', '2022-02-16 13:57:24', b'0'),
(80, 100, '????????????', '100', 'system_login_type', 0, 'primary', '', '????????????', '1', '2021-10-06 00:52:02', '1', '2022-02-16 13:11:34', b'0'),
(81, 101, '????????????', '101', 'system_login_type', 0, 'info', '', '????????????', '1', '2021-10-06 00:52:17', '1', '2022-02-16 13:11:40', b'0'),
(83, 200, '????????????', '200', 'system_login_type', 0, 'primary', '', '????????????', '1', '2021-10-06 00:52:58', '1', '2022-02-16 13:11:49', b'0'),
(85, 202, '????????????', '202', 'system_login_type', 0, 'danger', '', '????????????', '1', '2021-10-06 00:53:41', '1', '2022-02-16 13:11:57', b'0'),
(86, 0, '??????', '1', 'bpm_oa_leave_type', 0, 'primary', '', NULL, '1', '2021-09-21 22:35:28', '1', '2022-02-16 10:00:41', b'0'),
(87, 1, '??????', '2', 'bpm_oa_leave_type', 0, 'info', '', NULL, '1', '2021-09-21 22:36:11', '1', '2022-02-16 10:00:49', b'0'),
(88, 2, '??????', '3', 'bpm_oa_leave_type', 0, 'warning', '', NULL, '1', '2021-09-21 22:36:38', '1', '2022-02-16 10:00:53', b'0'),
(98, 1, 'v2', 'v2', 'pay_channel_wechat_version', 0, '', '', 'v2??????', '1', '2021-11-08 17:00:58', '1', '2021-11-08 17:00:58', b'0'),
(99, 2, 'v3', 'v3', 'pay_channel_wechat_version', 0, '', '', 'v3??????', '1', '2021-11-08 17:01:07', '1', '2021-11-08 17:01:07', b'0'),
(108, 1, 'RSA2', 'RSA2', 'pay_channel_alipay_sign_type', 0, '', '', 'RSA2', '1', '2021-11-18 15:39:29', '1', '2021-11-18 15:39:29', b'0'),
(109, 1, '????????????', '1', 'pay_channel_alipay_mode', 0, '', '', '???????????????privateKey + alipayPublicKey', '1', '2021-11-18 15:45:23', '1', '2021-11-18 15:45:23', b'0'),
(110, 2, '????????????', '2', 'pay_channel_alipay_mode', 0, '', '', '???????????????appCertContent + alipayPublicCertContent + rootCertContent', '1', '2021-11-18 15:45:40', '1', '2021-11-18 15:45:40', b'0'),
(111, 1, '??????', 'https://openapi.alipay.com/gateway.do', 'pay_channel_alipay_server_type', 0, '', '', '???????????? - ??????', '1', '2021-11-18 16:59:32', '1', '2021-11-21 17:37:29', b'0'),
(112, 2, '??????', 'https://openapi.alipaydev.com/gateway.do', 'pay_channel_alipay_server_type', 0, '', '', '???????????? - ??????', '1', '2021-11-18 16:59:48', '1', '2021-11-21 17:37:39', b'0'),
(113, 1, '?????? JSAPI ??????', 'wx_pub', 'pay_channel_code_type', 0, '', '', '?????? JSAPI??????????????? ??????', '1', '2021-12-03 10:40:24', '1', '2021-12-04 16:41:00', b'0'),
(114, 2, '?????????????????????', 'wx_lite', 'pay_channel_code_type', 0, '', '', '?????????????????????', '1', '2021-12-03 10:41:06', '1', '2021-12-03 10:41:06', b'0'),
(115, 3, '?????? App ??????', 'wx_app', 'pay_channel_code_type', 0, '', '', '?????? App ??????', '1', '2021-12-03 10:41:20', '1', '2021-12-03 10:41:20', b'0'),
(116, 4, '????????? PC ????????????', 'alipay_pc', 'pay_channel_code_type', 0, '', '', '????????? PC ????????????', '1', '2021-12-03 10:42:09', '1', '2021-12-03 10:42:09', b'0'),
(117, 5, '????????? Wap ????????????', 'alipay_wap', 'pay_channel_code_type', 0, '', '', '????????? Wap ????????????', '1', '2021-12-03 10:42:26', '1', '2021-12-03 10:42:26', b'0'),
(118, 6, '?????????App ??????', 'alipay_app', 'pay_channel_code_type', 0, '', '', '?????????App ??????', '1', '2021-12-03 10:42:55', '1', '2021-12-03 10:42:55', b'0'),
(119, 7, '?????????????????????', 'alipay_qr', 'pay_channel_code_type', 0, '', '', '?????????????????????', '1', '2021-12-03 10:43:10', '1', '2021-12-03 10:43:10', b'0'),
(120, 1, '????????????', '10', 'pay_order_notify_status', 0, 'success', '', '????????????', '1', '2021-12-03 11:02:41', '1', '2022-02-16 13:59:13', b'0'),
(121, 2, '????????????', '20', 'pay_order_notify_status', 0, 'danger', '', '????????????', '1', '2021-12-03 11:02:59', '1', '2022-02-16 13:59:17', b'0'),
(122, 3, '?????????', '0', 'pay_order_notify_status', 0, 'info', '', '?????????', '1', '2021-12-03 11:03:10', '1', '2022-02-16 13:59:23', b'0'),
(123, 1, '????????????', '10', 'pay_order_status', 0, 'success', '', '????????????', '1', '2021-12-03 11:18:29', '1', '2022-02-16 15:24:25', b'0'),
(124, 2, '????????????', '20', 'pay_order_status', 0, 'danger', '', '????????????', '1', '2021-12-03 11:18:42', '1', '2022-02-16 15:24:31', b'0'),
(125, 3, '?????????', '0', 'pay_order_status', 0, 'info', '', '?????????', '1', '2021-12-03 11:18:18', '1', '2022-02-16 15:24:35', b'0'),
(126, 1, '?????????', '0', 'pay_order_refund_status', 0, '', '', '?????????', '1', '2021-12-03 11:30:35', '1', '2021-12-03 11:34:05', b'0'),
(127, 2, '????????????', '10', 'pay_order_refund_status', 0, '', '', '????????????', '1', '2021-12-03 11:30:44', '1', '2021-12-03 11:34:10', b'0'),
(128, 3, '????????????', '20', 'pay_order_refund_status', 0, '', '', '????????????', '1', '2021-12-03 11:30:52', '1', '2021-12-03 11:34:14', b'0'),
(1117, 1, '??????????????????', '0', 'pay_refund_order_status', 0, 'primary', '', '??????????????????', '1', '2021-12-10 16:44:44', '1', '2022-02-16 14:05:24', b'0'),
(1118, 2, '????????????', '1', 'pay_refund_order_status', 0, 'success', '', '????????????', '1', '2021-12-10 16:44:59', '1', '2022-02-16 14:05:28', b'0'),
(1119, 3, '????????????', '2', 'pay_refund_order_status', 0, 'danger', '', '????????????', '1', '2021-12-10 16:45:10', '1', '2022-02-16 14:05:34', b'0'),
(1124, 8, '????????????', '99', 'pay_refund_order_status', 0, 'info', '', '????????????', '1', '2021-12-10 16:46:26', '1', '2022-02-16 14:05:40', b'0'),
(1125, 0, '??????', '1', 'bpm_model_category', 0, 'primary', '', '???????????? - ??????', '1', '2022-01-02 08:41:11', '1', '2022-02-16 20:01:42', b'0'),
(1126, 0, 'OA', '2', 'bpm_model_category', 0, 'success', '', '???????????? - OA', '1', '2022-01-02 08:41:22', '1', '2022-02-16 20:01:50', b'0'),
(1127, 0, '?????????', '1', 'bpm_process_instance_status', 0, 'primary', '', '????????????????????? - ?????????', '1', '2022-01-07 23:47:22', '1', '2022-02-16 20:07:49', b'0'),
(1128, 2, '?????????', '2', 'bpm_process_instance_status', 0, 'success', '', '????????????????????? - ?????????', '1', '2022-01-07 23:47:49', '1', '2022-02-16 20:07:54', b'0'),
(1129, 1, '?????????', '1', 'bpm_process_instance_result', 0, 'primary', '', '????????????????????? - ?????????', '1', '2022-01-07 23:48:32', '1', '2022-02-16 09:53:26', b'0'),
(1130, 2, '??????', '2', 'bpm_process_instance_result', 0, 'success', '', '????????????????????? - ??????', '1', '2022-01-07 23:48:45', '1', '2022-02-16 09:53:31', b'0'),
(1131, 3, '?????????', '3', 'bpm_process_instance_result', 0, 'danger', '', '????????????????????? - ?????????', '1', '2022-01-07 23:48:55', '1', '2022-02-16 09:53:38', b'0'),
(1132, 4, '?????????', '4', 'bpm_process_instance_result', 0, 'info', '', '????????????????????? - ??????', '1', '2022-01-07 23:49:06', '1', '2022-02-16 09:53:42', b'0'),
(1133, 10, '????????????', '10', 'bpm_model_form_type', 0, '', '', '????????????????????? - ????????????', '103', '2022-01-11 23:51:30', '103', '2022-01-11 23:51:30', b'0'),
(1134, 20, '????????????', '20', 'bpm_model_form_type', 0, '', '', '????????????????????? - ????????????', '103', '2022-01-11 23:51:47', '103', '2022-01-11 23:51:47', b'0'),
(1135, 10, '??????', '10', 'bpm_task_assign_rule_type', 0, 'info', '', '??????????????????????????? - ??????', '103', '2022-01-12 23:21:22', '1', '2022-02-16 20:06:14', b'0'),
(1136, 20, '???????????????', '20', 'bpm_task_assign_rule_type', 0, 'primary', '', '??????????????????????????? - ???????????????', '103', '2022-01-12 23:21:47', '1', '2022-02-16 20:05:28', b'0'),
(1137, 21, '??????????????????', '21', 'bpm_task_assign_rule_type', 0, 'primary', '', '??????????????????????????? - ??????????????????', '103', '2022-01-12 23:33:36', '1', '2022-02-16 20:05:31', b'0'),
(1138, 30, '??????', '30', 'bpm_task_assign_rule_type', 0, 'info', '', '??????????????????????????? - ??????', '103', '2022-01-12 23:34:02', '1', '2022-02-16 20:05:50', b'0'),
(1139, 40, '?????????', '40', 'bpm_task_assign_rule_type', 0, 'warning', '', '??????????????????????????? - ?????????', '103', '2022-01-12 23:34:21', '1', '2022-02-16 20:05:57', b'0'),
(1140, 50, '???????????????', '50', 'bpm_task_assign_rule_type', 0, 'danger', '', '??????????????????????????? - ???????????????', '103', '2022-01-12 23:34:43', '1', '2022-02-16 20:06:01', b'0'),
(1141, 22, '??????', '22', 'bpm_task_assign_rule_type', 0, 'success', '', '??????????????????????????? - ??????', '103', '2022-01-14 18:41:55', '1', '2022-02-16 20:05:39', b'0'),
(1142, 10, '???????????????', '10', 'bpm_task_assign_script', 0, '', '', '??????????????????????????? - ???????????????', '103', '2022-01-15 00:10:57', '103', '2022-01-15 21:24:10', b'0'),
(1143, 20, '??????????????????????????????', '20', 'bpm_task_assign_script', 0, '', '', '??????????????????????????? - ??????????????????????????????', '103', '2022-01-15 21:24:31', '103', '2022-01-15 21:24:31', b'0'),
(1144, 21, '??????????????????????????????', '21', 'bpm_task_assign_script', 0, '', '', '??????????????????????????? - ??????????????????????????????', '103', '2022-01-15 21:24:46', '103', '2022-01-15 21:24:57', b'0'),
(1145, 1, '????????????', '1', 'infra_codegen_scene', 0, '', '', '??????????????????????????? - ????????????', '1', '2022-02-02 13:15:06', '1', '2022-03-10 16:32:59', b'0'),
(1146, 2, '?????? APP', '2', 'infra_codegen_scene', 0, '', '', '??????????????????????????? - ?????? APP', '1', '2022-02-02 13:15:19', '1', '2022-03-10 16:33:03', b'0'),
(1147, 0, '?????????', '0', 'pay_refund_order_type', 0, 'info', '', '???????????? - ?????????', '1', '2022-02-16 14:09:01', '1', '2022-02-16 14:09:01', b'0'),
(1148, 10, '????????????', '10', 'pay_refund_order_type', 0, 'success', '', '???????????? - ????????????', '1', '2022-02-16 14:09:25', '1', '2022-02-16 14:11:38', b'0'),
(1149, 20, '????????????', '20', 'pay_refund_order_type', 0, 'warning', '', '???????????? - ????????????', '1', '2022-02-16 14:11:33', '1', '2022-02-16 14:11:33', b'0'),
(1150, 1, '?????????', '1', 'infra_file_storage', 0, 'default', '', NULL, '1', '2022-03-15 00:25:28', '1', '2022-03-15 00:25:28', b'0'),
(1151, 10, '????????????', '10', 'infra_file_storage', 0, 'default', '', NULL, '1', '2022-03-15 00:25:41', '1', '2022-03-15 00:25:56', b'0'),
(1152, 11, 'FTP ?????????', '11', 'infra_file_storage', 0, 'default', '', NULL, '1', '2022-03-15 00:26:06', '1', '2022-03-15 00:26:10', b'0'),
(1153, 12, 'SFTP ?????????', '12', 'infra_file_storage', 0, 'default', '', NULL, '1', '2022-03-15 00:26:22', '1', '2022-03-15 00:26:22', b'0'),
(1154, 20, 'S3 ????????????', '20', 'infra_file_storage', 0, 'default', '', NULL, '1', '2022-03-15 00:26:31', '1', '2022-03-15 00:26:45', b'0'),
(1155, 103, '????????????', '103', 'system_login_type', 0, 'default', '', NULL, '1', '2022-05-09 23:57:58', '1', '2022-05-09 23:58:09', b'0'),
(1156, 1, 'password', 'password', 'system_oauth2_grant_type', 0, 'default', '', '????????????', '1', '2022-05-12 00:22:05', '1', '2022-05-11 16:26:01', b'0'),
(1157, 2, 'authorization_code', 'authorization_code', 'system_oauth2_grant_type', 0, 'primary', '', '???????????????', '1', '2022-05-12 00:22:59', '1', '2022-05-11 16:26:02', b'0'),
(1158, 3, 'implicit', 'implicit', 'system_oauth2_grant_type', 0, 'success', '', '????????????', '1', '2022-05-12 00:23:40', '1', '2022-05-11 16:26:05', b'0'),
(1159, 4, 'client_credentials', 'client_credentials', 'system_oauth2_grant_type', 0, 'default', '', '???????????????', '1', '2022-05-12 00:23:51', '1', '2022-05-11 16:26:08', b'0'),
(1160, 5, 'refresh_token', 'refresh_token', 'system_oauth2_grant_type', 0, 'info', '', '????????????', '1', '2022-05-12 00:24:02', '1', '2022-05-11 16:26:11', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `system_dict_type`
--

CREATE TABLE `system_dict_type` (
  `id` bigint(20) NOT NULL COMMENT '????????????',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '????????????',
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '????????????',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '?????????0?????? 1?????????',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='???????????????';

--
-- Dumping data for table `system_dict_type`
--

INSERT INTO `system_dict_type` (`id`, `name`, `type`, `status`, `remark`, `creator`, `create_time`, `updater`, `update_time`, `deleted`) VALUES
(1, '????????????', 'system_user_sex', 0, NULL, 'admin', '2021-01-05 17:03:48', '1', '2022-05-16 20:29:32', b'0'),
(6, '????????????', 'infra_config_type', 0, NULL, 'admin', '2021-01-05 17:03:48', '', '2022-02-01 16:36:54', b'0'),
(7, '????????????', 'system_notice_type', 0, NULL, 'admin', '2021-01-05 17:03:48', '', '2022-02-01 16:35:26', b'0'),
(9, '????????????', 'system_operate_type', 0, NULL, 'admin', '2021-01-05 17:03:48', '1', '2022-02-16 09:32:21', b'0'),
(10, '????????????', 'common_status', 0, NULL, 'admin', '2021-01-05 17:03:48', '', '2022-02-01 16:21:28', b'0'),
(11, 'Boolean ????????????', 'infra_boolean_string', 0, 'boolean ?????????', '', '2021-01-19 03:20:08', '', '2022-02-01 16:37:10', b'0'),
(104, '????????????', 'system_login_result', 0, '????????????', '', '2021-01-18 06:17:11', '', '2022-02-01 16:36:00', b'0'),
(105, 'Redis ????????????', 'infra_redis_timeout_type', 0, 'RedisKeyDefine.TimeoutTypeEnum', '', '2021-01-26 00:52:50', '', '2022-02-01 16:50:29', b'0'),
(106, '????????????????????????', 'infra_codegen_template_type', 0, NULL, '', '2021-02-05 07:08:06', '1', '2022-05-16 20:26:50', b'0'),
(107, '??????????????????', 'infra_job_status', 0, NULL, '', '2021-02-07 07:44:16', '', '2022-02-01 16:51:11', b'0'),
(108, '????????????????????????', 'infra_job_log_status', 0, NULL, '', '2021-02-08 10:03:51', '', '2022-02-01 16:50:43', b'0'),
(109, '????????????', 'user_type', 0, NULL, '', '2021-02-26 00:15:51', '', '2021-02-26 00:15:51', b'0'),
(110, 'API ???????????????????????????', 'infra_api_error_log_process_status', 0, NULL, '', '2021-02-26 07:07:01', '', '2022-02-01 16:50:53', b'0'),
(111, '??????????????????', 'system_sms_channel_code', 0, NULL, '1', '2021-04-05 01:04:50', '1', '2022-02-16 02:09:08', b'0'),
(112, '?????????????????????', 'system_sms_template_type', 0, NULL, '1', '2021-04-05 21:50:43', '1', '2022-02-01 16:35:06', b'0'),
(113, '??????????????????', 'system_sms_send_status', 0, NULL, '1', '2021-04-11 20:18:03', '1', '2022-02-01 16:35:09', b'0'),
(114, '??????????????????', 'system_sms_receive_status', 0, NULL, '1', '2021-04-11 20:27:14', '1', '2022-02-01 16:35:14', b'0'),
(115, '??????????????????', 'system_error_code_type', 0, NULL, '1', '2021-04-21 00:06:30', '1', '2022-02-01 16:36:49', b'0'),
(116, '?????????????????????', 'system_login_type', 0, '?????????????????????', '1', '2021-10-06 00:50:46', '1', '2022-02-01 16:35:56', b'0'),
(117, 'OA ????????????', 'bpm_oa_leave_type', 0, NULL, '1', '2021-09-21 22:34:33', '1', '2022-01-22 10:41:37', b'0'),
(122, '????????????????????????', 'pay_channel_wechat_version', 0, '????????????????????????', '1', '2021-11-08 17:00:26', '1', '2021-11-08 17:00:26', b'0'),
(127, '?????????????????????????????????', 'pay_channel_alipay_sign_type', 0, '?????????????????????????????????', '1', '2021-11-18 15:39:09', '1', '2021-11-18 15:39:09', b'0'),
(128, '?????????????????????????????????', 'pay_channel_alipay_mode', 0, '?????????????????????????????????', '1', '2021-11-18 15:44:28', '1', '2021-11-18 15:44:28', b'0'),
(129, '?????????????????????', 'pay_channel_alipay_server_type', 0, '?????????????????????', '1', '2021-11-18 16:58:55', '1', '2021-11-18 17:01:34', b'0'),
(130, '????????????????????????', 'pay_channel_code_type', 0, '?????????????????????', '1', '2021-12-03 10:35:08', '1', '2021-12-03 10:35:08', b'0'),
(131, '????????????????????????', 'pay_order_notify_status', 0, '????????????????????????', '1', '2021-12-03 10:53:29', '1', '2021-12-03 10:53:29', b'0'),
(132, '??????????????????', 'pay_order_status', 0, '??????????????????', '1', '2021-12-03 11:17:50', '1', '2021-12-03 11:17:50', b'0'),
(133, '????????????????????????', 'pay_order_refund_status', 0, '????????????????????????', '1', '2021-12-03 11:27:31', '1', '2021-12-03 11:27:31', b'0'),
(134, '??????????????????', 'pay_refund_order_status', 0, '??????????????????', '1', '2021-12-10 16:42:50', '1', '2021-12-10 16:42:50', b'0'),
(135, '??????????????????', 'pay_refund_order_type', 0, '??????????????????', '1', '2021-12-10 17:14:53', '1', '2021-12-10 17:14:53', b'0'),
(138, '????????????', 'bpm_model_category', 0, '????????????', '1', '2022-01-02 08:40:45', '1', '2022-01-02 08:40:45', b'0'),
(139, '?????????????????????', 'bpm_process_instance_status', 0, '?????????????????????', '1', '2022-01-07 23:46:42', '1', '2022-01-07 23:46:42', b'0'),
(140, '?????????????????????', 'bpm_process_instance_result', 0, '?????????????????????', '1', '2022-01-07 23:48:10', '1', '2022-01-07 23:48:10', b'0'),
(141, '?????????????????????', 'bpm_model_form_type', 0, '?????????????????????', '103', '2022-01-11 23:50:45', '103', '2022-01-11 23:50:45', b'0'),
(142, '???????????????????????????', 'bpm_task_assign_rule_type', 0, '???????????????????????????', '103', '2022-01-12 23:21:04', '103', '2022-01-12 15:46:10', b'0'),
(143, '???????????????????????????', 'bpm_task_assign_script', 0, '???????????????????????????', '103', '2022-01-15 00:10:35', '103', '2022-01-15 00:10:35', b'0'),
(144, '???????????????????????????', 'infra_codegen_scene', 0, '???????????????????????????', '1', '2022-02-02 13:14:45', '1', '2022-03-10 16:33:46', b'0'),
(145, '????????????', 'system_role_type', 0, '????????????', '1', '2022-02-16 13:01:46', '1', '2022-02-16 13:01:46', b'0'),
(146, '???????????????', 'infra_file_storage', 0, '???????????????', '1', '2022-03-15 00:24:38', '1', '2022-03-15 00:24:38', b'0'),
(147, 'OAuth 2.0 ????????????', 'system_oauth2_grant_type', 0, 'OAuth 2.0 ????????????????????????', '1', '2022-05-12 00:20:52', '1', '2022-05-11 16:25:49', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `system_error_code`
--

CREATE TABLE `system_error_code` (
  `id` bigint(20) NOT NULL COMMENT '???????????????',
  `type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '???????????????',
  `application_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????????',
  `code` int(11) NOT NULL DEFAULT 0 COMMENT '???????????????',
  `message` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '?????????????????????',
  `memo` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '??????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='????????????';

-- --------------------------------------------------------

--
-- Table structure for table `system_login_log`
--

CREATE TABLE `system_login_log` (
  `id` bigint(20) NOT NULL COMMENT '??????ID',
  `log_type` bigint(20) NOT NULL COMMENT '????????????',
  `trace_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '??????????????????',
  `user_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '????????????',
  `user_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '????????????',
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '????????????',
  `result` tinyint(4) NOT NULL COMMENT '????????????',
  `user_ip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????? IP',
  `user_agent` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????? UA',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='??????????????????';

--
-- Dumping data for table `system_login_log`
--

INSERT INTO `system_login_log` (`id`, `log_type`, `trace_id`, `user_id`, `user_type`, `username`, `result`, `user_ip`, `user_agent`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`) VALUES
(1489, 100, '', 1, 2, 'admin', 0, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', NULL, '2022-07-26 22:35:17', NULL, '2022-07-26 22:35:17', b'0', 1),
(1490, 100, '', 1, 2, 'admin', 0, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', NULL, '2022-07-26 22:44:37', NULL, '2022-07-26 22:44:37', b'0', 1),
(1491, 100, '', 0, 2, 'admin', 31, '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', NULL, '2022-07-26 22:59:35', NULL, '2022-07-26 22:59:35', b'0', 1),
(1492, 100, '', 0, 2, 'admin', 31, '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', NULL, '2022-07-26 22:59:42', NULL, '2022-07-26 22:59:42', b'0', 1),
(1493, 100, '', 1, 2, 'admin', 0, '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', NULL, '2022-07-26 22:59:47', NULL, '2022-07-26 22:59:47', b'0', 1),
(1494, 100, '', 1, 2, 'admin', 0, '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', NULL, '2022-07-26 23:00:37', NULL, '2022-07-26 23:00:37', b'0', 1),
(1495, 200, '', 1, 2, 'admin', 0, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '1', '2022-07-27 15:48:11', '1', '2022-07-27 15:48:11', b'0', 1),
(1496, 100, '', 1, 2, 'admin', 0, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', NULL, '2022-07-27 15:48:21', NULL, '2022-07-27 15:48:21', b'0', 1),
(1497, 200, '', 1, 2, 'admin', 0, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '1', '2022-07-27 15:49:36', '1', '2022-07-27 15:49:36', b'0', 1),
(1498, 100, '', 1, 2, 'admin', 0, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', NULL, '2022-07-27 15:56:51', NULL, '2022-07-27 15:56:51', b'0', 1),
(1499, 100, '', 0, 2, 'admin', 31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', NULL, '2022-07-27 16:03:34', NULL, '2022-07-27 16:03:34', b'0', 1),
(1500, 100, '', 0, 2, 'admin', 31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', NULL, '2022-07-27 16:03:45', NULL, '2022-07-27 16:03:45', b'0', 1),
(1501, 100, '', 1, 2, 'admin', 0, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', NULL, '2022-07-27 16:03:53', NULL, '2022-07-27 16:03:53', b'0', 1),
(1502, 200, '', 1, 2, 'admin', 0, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '1', '2022-07-27 16:42:01', '1', '2022-07-27 16:42:01', b'0', 1),
(1503, 100, '', 0, 2, 'admin', 31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', NULL, '2022-07-27 16:55:35', NULL, '2022-07-27 16:55:35', b'0', 1),
(1504, 100, '', 1, 2, 'admin', 0, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', NULL, '2022-07-27 17:08:21', NULL, '2022-07-27 17:08:21', b'0', 1),
(1505, 200, '', 1, 2, 'admin', 0, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '1', '2022-07-27 17:17:48', '1', '2022-07-27 17:17:48', b'0', 1),
(1506, 100, '', 1, 2, 'admin', 0, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', NULL, '2022-07-27 17:17:59', NULL, '2022-07-27 17:17:59', b'0', 1),
(1507, 200, '', 1, 2, 'admin', 0, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '1', '2022-07-27 17:53:49', '1', '2022-07-27 17:53:49', b'0', 1),
(1508, 100, '', 0, 2, 'admin', 31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', NULL, '2022-07-27 17:54:43', NULL, '2022-07-27 17:54:43', b'0', 1),
(1509, 100, '', 0, 2, 'admin', 31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', NULL, '2022-07-27 17:54:53', NULL, '2022-07-27 17:54:53', b'0', 1),
(1510, 100, '', 1, 2, 'admin', 0, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', NULL, '2022-07-27 17:55:10', NULL, '2022-07-27 17:55:10', b'0', 1),
(1511, 200, '', 1, 2, 'admin', 0, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '1', '2022-07-27 18:00:01', '1', '2022-07-27 18:00:01', b'0', 1),
(1512, 100, '', 1, 2, 'admin', 0, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', NULL, '2022-07-27 18:07:16', NULL, '2022-07-27 18:07:16', b'0', 1),
(1513, 100, '', 0, 2, 'admin', 31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', NULL, '2022-07-27 18:15:06', NULL, '2022-07-27 18:15:06', b'0', 1),
(1514, 100, '', 1, 2, 'admin', 0, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', NULL, '2022-07-27 18:15:12', NULL, '2022-07-27 18:15:12', b'0', 1),
(1515, 100, '', 0, 2, 'admin', 31, '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', NULL, '2022-07-27 18:44:19', NULL, '2022-07-27 18:44:19', b'0', 1),
(1516, 100, '', 1, 2, 'admin', 0, '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', NULL, '2022-07-27 18:44:27', NULL, '2022-07-27 18:44:27', b'0', 1),
(1517, 200, '', 1, 2, 'admin', 0, '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '1', '2022-07-27 19:03:14', '1', '2022-07-27 19:03:14', b'0', 1),
(1518, 100, '', 1, 2, 'admin', 0, '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', NULL, '2022-07-27 19:03:23', NULL, '2022-07-27 19:03:23', b'0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_menu`
--

CREATE TABLE `system_menu` (
  `id` bigint(20) NOT NULL COMMENT '??????ID',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `permission` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '????????????',
  `type` tinyint(4) NOT NULL COMMENT '????????????',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '????????????',
  `parent_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '?????????ID',
  `path` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '????????????',
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '#' COMMENT '????????????',
  `component` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '????????????',
  `visible` bit(1) NOT NULL DEFAULT b'1' COMMENT '????????????',
  `keep_alive` bit(1) NOT NULL DEFAULT b'1' COMMENT '????????????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='???????????????';

--
-- Dumping data for table `system_menu`
--

INSERT INTO `system_menu` (`id`, `name`, `permission`, `type`, `sort`, `parent_id`, `path`, `icon`, `component`, `status`, `visible`, `keep_alive`, `creator`, `create_time`, `updater`, `update_time`, `deleted`) VALUES
(1, '??????????????????', '', 1, 10, 0, '/system', 'system', NULL, 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-07-27 19:03:56', b'0'),
(2, '?????????????????????', '', 1, 20, 0, '/infra', 'monitor', NULL, 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-07-27 19:10:35', b'0'),
(5, 'OA ??????', '', 1, 40, 1185, 'oa', 'people', NULL, 0, b'1', b'1', 'admin', '2021-09-20 16:26:19', '1', '2022-07-27 19:22:38', b'1'),
(100, '????????????', 'system:user:list', 2, 1, 1, 'user', 'user', 'system/user/index', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', b'0'),
(101, '????????????', '', 2, 2, 1, 'role', 'peoples', 'system/role/index', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(102, '????????????', '', 2, 3, 1, 'menu', 'tree-table', 'system/menu/index', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(103, '????????????', '', 2, 4, 1, 'dept', 'tree', 'system/dept/index', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(104, '????????????', '', 2, 5, 1, 'post', 'post', 'system/post/index', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(105, '????????????', '', 2, 6, 1, 'dict', 'dict', 'system/dict/index', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(106, '????????????', '', 2, 6, 2, 'config', 'edit', 'infra/config/index', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(107, '????????????', '', 2, 8, 1, 'notice', 'message', 'system/notice/index', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(108, '????????????', '', 1, 9, 1, 'log', 'log', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(109, '????????????', '', 2, 2, 1261, 'token', 'online', 'system/oauth2/token/index', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-05-11 23:31:42', b'0'),
(110, '????????????', '', 2, 12, 2, 'job', 'job', 'infra/job/index', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(111, 'MySQL ??????', '', 2, 9, 2, 'druid', 'druid', 'infra/druid/index', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(112, 'Java ??????', '', 2, 11, 2, 'admin-server', 'server', 'infra/server/index', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(113, 'Redis ??????', '', 2, 10, 2, 'redis', 'redis', 'infra/redis/index', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(114, '????????????', 'infra:build:list', 2, 2, 2, 'build', 'build', 'infra/build/index', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(115, '????????????', 'infra:codegen:query', 2, 1, 2, 'codegen', 'code', 'infra/codegen/index', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(116, '????????????', 'infra:swagger:list', 2, 3, 2, 'swagger', 'swagger', 'infra/swagger/index', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(500, '????????????', '', 2, 1, 108, 'operate-log', 'form', 'system/operatelog/index', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(501, '????????????', '', 2, 2, 108, 'login-log', 'logininfor', 'system/loginlog/index', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(1001, '????????????', 'system:user:query', 3, 1, 100, '', '#', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', b'0'),
(1002, '????????????', 'system:user:create', 3, 2, 100, '', '', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(1003, '????????????', 'system:user:update', 3, 3, 100, '', '', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(1004, '????????????', 'system:user:delete', 3, 4, 100, '', '', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(1005, '????????????', 'system:user:export', 3, 5, 100, '', '#', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', b'0'),
(1006, '????????????', 'system:user:import', 3, 6, 100, '', '#', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', b'0'),
(1007, '????????????', 'system:user:update-password', 3, 7, 100, '', '', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(1008, '????????????', 'system:role:query', 3, 1, 101, '', '#', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', b'0'),
(1009, '????????????', 'system:role:create', 3, 2, 101, '', '', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(1010, '????????????', 'system:role:update', 3, 3, 101, '', '', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(1011, '????????????', 'system:role:delete', 3, 4, 101, '', '', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(1012, '????????????', 'system:role:export', 3, 5, 101, '', '#', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', b'0'),
(1013, '????????????', 'system:menu:query', 3, 1, 102, '', '#', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', b'0'),
(1014, '????????????', 'system:menu:create', 3, 2, 102, '', '#', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', b'0'),
(1015, '????????????', 'system:menu:update', 3, 3, 102, '', '#', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', b'0'),
(1016, '????????????', 'system:menu:delete', 3, 4, 102, '', '#', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', b'0'),
(1017, '????????????', 'system:dept:query', 3, 1, 103, '', '#', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', b'0'),
(1018, '????????????', 'system:dept:create', 3, 2, 103, '', '', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(1019, '????????????', 'system:dept:update', 3, 3, 103, '', '', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(1020, '????????????', 'system:dept:delete', 3, 4, 103, '', '', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(1021, '????????????', 'system:post:query', 3, 1, 104, '', '#', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', b'0'),
(1022, '????????????', 'system:post:create', 3, 2, 104, '', '', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(1023, '????????????', 'system:post:update', 3, 3, 104, '', '', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(1024, '????????????', 'system:post:delete', 3, 4, 104, '', '', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(1025, '????????????', 'system:post:export', 3, 5, 104, '', '#', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', b'0'),
(1026, '????????????', 'system:dict:query', 3, 1, 105, '#', '#', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', b'0'),
(1027, '????????????', 'system:dict:create', 3, 2, 105, '', '', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(1028, '????????????', 'system:dict:update', 3, 3, 105, '', '', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(1029, '????????????', 'system:dict:delete', 3, 4, 105, '', '', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(1030, '????????????', 'system:dict:export', 3, 5, 105, '#', '#', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', b'0'),
(1031, '????????????', 'infra:config:query', 3, 1, 106, '', '', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', b'0'),
(1032, '????????????', 'infra:config:create', 3, 2, 106, '', '', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(1033, '????????????', 'infra:config:update', 3, 3, 106, '', '', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(1034, '????????????', 'infra:config:delete', 3, 4, 106, '', '', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(1035, '????????????', 'infra:config:export', 3, 5, 106, '', '', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', b'0'),
(1036, '????????????', 'system:notice:query', 3, 1, 107, '#', '#', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', b'0'),
(1037, '????????????', 'system:notice:create', 3, 2, 107, '', '', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(1038, '????????????', 'system:notice:update', 3, 3, 107, '', '', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(1039, '????????????', 'system:notice:delete', 3, 4, 107, '', '', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(1040, '????????????', 'system:operate-log:query', 3, 1, 500, '', '', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', b'0'),
(1042, '????????????', 'system:operate-log:export', 3, 2, 500, '', '', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', b'0'),
(1043, '????????????', 'system:login-log:query', 3, 1, 501, '#', '#', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', b'0'),
(1045, '????????????', 'system:login-log:export', 3, 3, 501, '#', '#', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', b'0'),
(1046, '????????????', 'system:oauth2-token:page', 3, 1, 109, '', '', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-05-09 23:54:42', b'0'),
(1048, '????????????', 'system:oauth2-token:delete', 3, 2, 109, '', '', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-05-09 23:54:53', b'0'),
(1050, '????????????', 'infra:job:create', 3, 2, 110, '', '', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', b'0'),
(1051, '????????????', 'infra:job:update', 3, 3, 110, '', '', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', b'0'),
(1052, '????????????', 'infra:job:delete', 3, 4, 110, '', '', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', b'0'),
(1053, '????????????', 'infra:job:update', 3, 5, 110, '', '', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', b'0'),
(1054, '????????????', 'infra:job:export', 3, 7, 110, '', '', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', b'0'),
(1056, '????????????', 'infra:codegen:update', 3, 2, 115, '', '', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(1057, '????????????', 'infra:codegen:delete', 3, 3, 115, '', '', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(1058, '????????????', 'infra:codegen:create', 3, 2, 115, '', '', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(1059, '????????????', 'infra:codegen:preview', 3, 4, 115, '', '', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(1060, '????????????', 'infra:codegen:download', 3, 5, 115, '', '', '', 0, b'1', b'1', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', b'0'),
(1063, '????????????????????????', 'system:permission:assign-role-menu', 3, 6, 101, '', '', '', 0, b'1', b'1', '', '2021-01-06 17:53:44', '', '2022-04-20 17:03:10', b'0'),
(1064, '????????????????????????', 'system:permission:assign-role-data-scope', 3, 7, 101, '', '', '', 0, b'1', b'1', '', '2021-01-06 17:56:31', '', '2022-04-20 17:03:10', b'0'),
(1065, '??????????????????', 'system:permission:assign-user-role', 3, 8, 101, '', '', '', 0, b'1', b'1', '', '2021-01-07 10:23:28', '', '2022-04-20 17:03:10', b'0'),
(1066, '?????? Redis ????????????', 'infra:redis:get-monitor-info', 3, 1, 113, '', '', '', 0, b'1', b'1', '', '2021-01-26 01:02:31', '', '2022-04-20 17:03:10', b'0'),
(1067, '?????? Redis Key ??????', 'infra:redis:get-key-list', 3, 2, 113, '', '', '', 0, b'1', b'1', '', '2021-01-26 01:02:52', '', '2022-04-20 17:03:10', b'0'),
(1070, '??????????????????', 'infra:test-demo:query', 2, 1, 2, 'test-demo', 'validCode', 'infra/testDemo/index', 0, b'1', b'1', '', '2021-02-06 12:42:49', '1', '2022-04-20 17:03:10', b'0'),
(1071, '?????????????????????', 'infra:test-demo:create', 3, 1, 1070, '', '', '', 0, b'1', b'1', '', '2021-02-06 12:42:49', '1', '2022-04-20 17:03:10', b'0'),
(1072, '?????????????????????', 'infra:test-demo:update', 3, 2, 1070, '', '', '', 0, b'1', b'1', '', '2021-02-06 12:42:49', '1', '2022-04-20 17:03:10', b'0'),
(1073, '?????????????????????', 'infra:test-demo:delete', 3, 3, 1070, '', '', '', 0, b'1', b'1', '', '2021-02-06 12:42:49', '1', '2022-04-20 17:03:10', b'0'),
(1074, '?????????????????????', 'infra:test-demo:export', 3, 4, 1070, '', '', '', 0, b'1', b'1', '', '2021-02-06 12:42:49', '1', '2022-04-20 17:03:10', b'0'),
(1075, '????????????', 'infra:job:trigger', 3, 8, 110, '', '', '', 0, b'1', b'1', '', '2021-02-07 13:03:10', '', '2022-04-20 17:03:10', b'0'),
(1076, '???????????????', '', 2, 4, 2, 'db-doc', 'table', 'infra/dbDoc/index', 0, b'1', b'1', '', '2021-02-08 01:41:47', '1', '2022-04-20 17:03:10', b'0'),
(1077, '????????????', '', 2, 13, 2, 'skywalking', 'eye-open', 'infra/skywalking/index', 0, b'1', b'1', '', '2021-02-08 20:41:31', '1', '2022-04-20 17:03:10', b'0'),
(1078, '????????????', '', 2, 1, 1083, 'api-access-log', 'log', 'infra/apiAccessLog/index', 0, b'1', b'1', '', '2021-02-26 01:32:59', '1', '2022-04-20 17:03:10', b'0'),
(1082, '????????????', 'infra:api-access-log:export', 3, 2, 1078, '', '', '', 0, b'1', b'1', '', '2021-02-26 01:32:59', '1', '2022-04-20 17:03:10', b'0'),
(1083, 'API ??????', '', 2, 8, 2, 'log', 'log', NULL, 0, b'1', b'1', '', '2021-02-26 02:18:24', '1', '2022-04-20 17:03:10', b'0'),
(1084, '????????????', 'infra:api-error-log:query', 2, 2, 1083, 'api-error-log', 'log', 'infra/apiErrorLog/index', 0, b'1', b'1', '', '2021-02-26 07:53:20', '', '2022-04-20 17:03:10', b'0'),
(1085, '????????????', 'infra:api-error-log:update-status', 3, 2, 1084, '', '', '', 0, b'1', b'1', '', '2021-02-26 07:53:20', '1', '2022-04-20 17:03:10', b'0'),
(1086, '????????????', 'infra:api-error-log:export', 3, 3, 1084, '', '', '', 0, b'1', b'1', '', '2021-02-26 07:53:20', '1', '2022-04-20 17:03:10', b'0'),
(1087, '????????????', 'infra:job:query', 3, 1, 110, '', '', '', 0, b'1', b'1', '1', '2021-03-10 01:26:19', '1', '2022-04-20 17:03:10', b'0'),
(1088, '????????????', 'infra:api-access-log:query', 3, 1, 1078, '', '', '', 0, b'1', b'1', '1', '2021-03-10 01:28:04', '1', '2022-04-20 17:03:10', b'0'),
(1089, '????????????', 'infra:api-error-log:query', 3, 1, 1084, '', '', '', 0, b'1', b'1', '1', '2021-03-10 01:29:09', '1', '2022-04-20 17:03:10', b'0'),
(1090, '????????????', '', 2, 5, 1243, 'file', 'upload', 'infra/file/index', 0, b'1', b'1', '', '2021-03-12 20:16:20', '1', '2022-04-20 17:03:10', b'0'),
(1091, '????????????', 'infra:file:query', 3, 1, 1090, '', '', '', 0, b'1', b'1', '', '2021-03-12 20:16:20', '', '2022-04-20 17:03:10', b'0'),
(1092, '????????????', 'infra:file:delete', 3, 4, 1090, '', '', '', 0, b'1', b'1', '', '2021-03-12 20:16:20', '', '2022-04-20 17:03:10', b'0'),
(1093, '????????????', '', 1, 11, 1, 'sms', 'validCode', NULL, 0, b'1', b'1', '1', '2021-04-05 01:10:16', '1', '2022-04-20 17:03:10', b'0'),
(1094, '????????????', '', 2, 0, 1093, 'sms-channel', 'phone', 'system/sms/smsChannel', 0, b'1', b'1', '', '2021-04-01 11:07:15', '1', '2022-04-20 17:03:10', b'0'),
(1095, '??????????????????', 'system:sms-channel:query', 3, 1, 1094, '', '', '', 0, b'1', b'1', '', '2021-04-01 11:07:15', '', '2022-04-20 17:03:10', b'0'),
(1096, '??????????????????', 'system:sms-channel:create', 3, 2, 1094, '', '', '', 0, b'1', b'1', '', '2021-04-01 11:07:15', '', '2022-04-20 17:03:10', b'0'),
(1097, '??????????????????', 'system:sms-channel:update', 3, 3, 1094, '', '', '', 0, b'1', b'1', '', '2021-04-01 11:07:15', '', '2022-04-20 17:03:10', b'0'),
(1098, '??????????????????', 'system:sms-channel:delete', 3, 4, 1094, '', '', '', 0, b'1', b'1', '', '2021-04-01 11:07:15', '', '2022-04-20 17:03:10', b'0'),
(1100, '????????????', '', 2, 1, 1093, 'sms-template', 'phone', 'system/sms/smsTemplate', 0, b'1', b'1', '', '2021-04-01 17:35:17', '1', '2022-04-20 17:03:10', b'0'),
(1101, '??????????????????', 'system:sms-template:query', 3, 1, 1100, '', '', '', 0, b'1', b'1', '', '2021-04-01 17:35:17', '', '2022-04-20 17:03:10', b'0'),
(1102, '??????????????????', 'system:sms-template:create', 3, 2, 1100, '', '', '', 0, b'1', b'1', '', '2021-04-01 17:35:17', '', '2022-04-20 17:03:10', b'0'),
(1103, '??????????????????', 'system:sms-template:update', 3, 3, 1100, '', '', '', 0, b'1', b'1', '', '2021-04-01 17:35:17', '', '2022-04-20 17:03:10', b'0'),
(1104, '??????????????????', 'system:sms-template:delete', 3, 4, 1100, '', '', '', 0, b'1', b'1', '', '2021-04-01 17:35:17', '', '2022-04-20 17:03:10', b'0'),
(1105, '??????????????????', 'system:sms-template:export', 3, 5, 1100, '', '', '', 0, b'1', b'1', '', '2021-04-01 17:35:17', '', '2022-04-20 17:03:10', b'0'),
(1106, '??????????????????', 'system:sms-template:send-sms', 3, 6, 1100, '', '', '', 0, b'1', b'1', '1', '2021-04-11 00:26:40', '1', '2022-04-20 17:03:10', b'0'),
(1107, '????????????', '', 2, 2, 1093, 'sms-log', 'phone', 'system/sms/smsLog', 0, b'1', b'1', '', '2021-04-11 08:37:05', '1', '2022-04-20 17:03:10', b'0'),
(1108, '??????????????????', 'system:sms-log:query', 3, 1, 1107, '', '', '', 0, b'1', b'1', '', '2021-04-11 08:37:05', '', '2022-04-20 17:03:10', b'0'),
(1109, '??????????????????', 'system:sms-log:export', 3, 5, 1107, '', '', '', 0, b'1', b'1', '', '2021-04-11 08:37:05', '', '2022-04-20 17:03:10', b'0'),
(1110, '???????????????', '', 2, 12, 1, 'error-code', 'code', 'system/errorCode/index', 0, b'1', b'1', '', '2021-04-13 21:46:42', '1', '2022-04-20 17:03:10', b'0'),
(1111, '???????????????', 'system:error-code:query', 3, 1, 1110, '', '', '', 0, b'1', b'1', '', '2021-04-13 21:46:42', '', '2022-04-20 17:03:10', b'0'),
(1112, '???????????????', 'system:error-code:create', 3, 2, 1110, '', '', '', 0, b'1', b'1', '', '2021-04-13 21:46:42', '', '2022-04-20 17:03:10', b'0'),
(1113, '???????????????', 'system:error-code:update', 3, 3, 1110, '', '', '', 0, b'1', b'1', '', '2021-04-13 21:46:42', '', '2022-04-20 17:03:10', b'0'),
(1114, '???????????????', 'system:error-code:delete', 3, 4, 1110, '', '', '', 0, b'1', b'1', '', '2021-04-13 21:46:42', '', '2022-04-20 17:03:10', b'0'),
(1115, '???????????????', 'system:error-code:export', 3, 5, 1110, '', '', '', 0, b'1', b'1', '', '2021-04-13 21:46:42', '', '2022-04-20 17:03:10', b'0'),
(1117, '????????????', '', 1, 11, 0, '/pay', 'money', NULL, 0, b'1', b'1', '1', '2021-12-25 16:43:41', '1', '2022-07-27 19:27:12', b'1'),
(1118, '????????????', '', 2, 0, 5, 'leave', 'user', 'bpm/oa/leave/index', 0, b'1', b'1', '', '2021-09-20 08:51:03', '1', '2022-07-27 19:22:34', b'1'),
(1119, '??????????????????', 'bpm:oa-leave:query', 3, 1, 1118, '', '', '', 0, b'1', b'1', '', '2021-09-20 08:51:03', '1', '2022-07-27 19:22:31', b'1'),
(1120, '??????????????????', 'bpm:oa-leave:create', 3, 2, 1118, '', '', '', 0, b'1', b'1', '', '2021-09-20 08:51:03', '1', '2022-07-27 19:22:28', b'1'),
(1126, '????????????', '', 2, 1, 1117, 'app', 'table', 'pay/app/index', 0, b'1', b'1', '', '2021-11-10 01:13:30', '1', '2022-07-27 19:26:49', b'1'),
(1127, '????????????????????????', 'pay:app:query', 3, 1, 1126, '', '', '', 0, b'1', b'1', '', '2021-11-10 01:13:31', '', '2022-07-27 19:26:44', b'1'),
(1128, '????????????????????????', 'pay:app:create', 3, 2, 1126, '', '', '', 0, b'1', b'1', '', '2021-11-10 01:13:31', '', '2022-07-27 19:26:41', b'1'),
(1129, '????????????????????????', 'pay:app:update', 3, 3, 1126, '', '', '', 0, b'1', b'1', '', '2021-11-10 01:13:31', '', '2022-07-27 19:26:39', b'1'),
(1130, '????????????????????????', 'pay:app:delete', 3, 4, 1126, '', '', '', 0, b'1', b'1', '', '2021-11-10 01:13:31', '', '2022-07-27 19:26:13', b'1'),
(1131, '????????????????????????', 'pay:app:export', 3, 5, 1126, '', '', '', 0, b'1', b'1', '', '2021-11-10 01:13:31', '', '2022-07-27 19:26:10', b'1'),
(1132, '????????????', 'pay:channel:parsing', 3, 6, 1129, '', '', '', 0, b'1', b'1', '1', '2021-11-08 15:15:47', '1', '2022-07-27 19:26:36', b'1'),
(1133, '????????????????????????', 'pay:merchant:query', 3, 1, 1132, '', '', '', 0, b'1', b'1', '', '2021-11-10 01:13:41', '', '2022-07-27 19:26:34', b'1'),
(1134, '????????????????????????', 'pay:merchant:create', 3, 2, 1132, '', '', '', 0, b'1', b'1', '', '2021-11-10 01:13:41', '', '2022-07-27 19:26:31', b'1'),
(1135, '????????????????????????', 'pay:merchant:update', 3, 3, 1132, '', '', '', 0, b'1', b'1', '', '2021-11-10 01:13:41', '', '2022-07-27 19:26:29', b'1'),
(1136, '????????????????????????', 'pay:merchant:delete', 3, 4, 1132, '', '', '', 0, b'1', b'1', '', '2021-11-10 01:13:41', '', '2022-07-27 19:26:26', b'1'),
(1137, '????????????????????????', 'pay:merchant:export', 3, 5, 1132, '', '', '', 0, b'1', b'1', '', '2021-11-10 01:13:41', '', '2022-07-27 19:26:24', b'1'),
(1138, '????????????', '', 2, 0, 1224, 'list', 'peoples', 'system/tenant/index', 0, b'1', b'1', '', '2021-12-14 12:31:43', '1', '2022-04-20 17:03:10', b'0'),
(1139, '????????????', 'system:tenant:query', 3, 1, 1138, '', '', '', 0, b'1', b'1', '', '2021-12-14 12:31:44', '', '2022-04-20 17:03:10', b'0'),
(1140, '????????????', 'system:tenant:create', 3, 2, 1138, '', '', '', 0, b'1', b'1', '', '2021-12-14 12:31:44', '', '2022-04-20 17:03:10', b'0'),
(1141, '????????????', 'system:tenant:update', 3, 3, 1138, '', '', '', 0, b'1', b'1', '', '2021-12-14 12:31:44', '', '2022-04-20 17:03:10', b'0'),
(1142, '????????????', 'system:tenant:delete', 3, 4, 1138, '', '', '', 0, b'1', b'1', '', '2021-12-14 12:31:44', '', '2022-04-20 17:03:10', b'0'),
(1143, '????????????', 'system:tenant:export', 3, 5, 1138, '', '', '', 0, b'1', b'1', '', '2021-12-14 12:31:44', '', '2022-04-20 17:03:10', b'0'),
(1150, '????????????', '', 3, 6, 1129, '', '', '', 0, b'1', b'1', '1', '2021-11-08 15:15:47', '1', '2022-07-27 19:26:19', b'1'),
(1161, '????????????', '', 2, 3, 1117, 'refund', 'order', 'pay/refund/index', 0, b'1', b'1', '', '2021-12-25 08:29:07', '1', '2022-07-27 19:25:45', b'1'),
(1162, '??????????????????', 'pay:refund:query', 3, 1, 1161, '', '', '', 0, b'1', b'1', '', '2021-12-25 08:29:07', '', '2022-07-27 19:25:41', b'1'),
(1163, '??????????????????', 'pay:refund:create', 3, 2, 1161, '', '', '', 0, b'1', b'1', '', '2021-12-25 08:29:07', '', '2022-07-27 19:25:21', b'1'),
(1164, '??????????????????', 'pay:refund:update', 3, 3, 1161, '', '', '', 0, b'1', b'1', '', '2021-12-25 08:29:07', '', '2022-07-27 19:25:19', b'1'),
(1165, '??????????????????', 'pay:refund:delete', 3, 4, 1161, '', '', '', 0, b'1', b'1', '', '2021-12-25 08:29:07', '', '2022-07-27 19:25:16', b'1'),
(1166, '??????????????????', 'pay:refund:export', 3, 5, 1161, '', '', '', 0, b'1', b'1', '', '2021-12-25 08:29:07', '', '2022-07-27 19:25:11', b'1'),
(1173, '????????????', '', 2, 2, 1117, 'order', 'pay', 'pay/order/index', 0, b'1', b'1', '', '2021-12-25 08:49:43', '1', '2022-07-27 19:26:06', b'1'),
(1174, '??????????????????', 'pay:order:query', 3, 1, 1173, '', '', '', 0, b'1', b'1', '', '2021-12-25 08:49:43', '', '2022-07-27 19:26:03', b'1'),
(1175, '??????????????????', 'pay:order:create', 3, 2, 1173, '', '', '', 0, b'1', b'1', '', '2021-12-25 08:49:43', '', '2022-07-27 19:26:00', b'1'),
(1176, '??????????????????', 'pay:order:update', 3, 3, 1173, '', '', '', 0, b'1', b'1', '', '2021-12-25 08:49:43', '', '2022-07-27 19:25:58', b'1'),
(1177, '??????????????????', 'pay:order:delete', 3, 4, 1173, '', '', '', 0, b'1', b'1', '', '2021-12-25 08:49:43', '', '2022-07-27 19:25:55', b'1'),
(1178, '??????????????????', 'pay:order:export', 3, 5, 1173, '', '', '', 0, b'1', b'1', '', '2021-12-25 08:49:43', '', '2022-07-27 19:25:49', b'1'),
(1179, '????????????', '', 2, 0, 1117, 'merchant', 'merchant', 'pay/merchant/index', 0, b'1', b'1', '', '2021-12-25 09:01:44', '1', '2022-07-27 19:27:06', b'1'),
(1180, '????????????????????????', 'pay:merchant:query', 3, 1, 1179, '', '', '', 0, b'1', b'1', '', '2021-12-25 09:01:44', '', '2022-07-27 19:27:03', b'1'),
(1181, '????????????????????????', 'pay:merchant:create', 3, 2, 1179, '', '', '', 0, b'1', b'1', '', '2021-12-25 09:01:44', '', '2022-07-27 19:27:01', b'1'),
(1182, '????????????????????????', 'pay:merchant:update', 3, 3, 1179, '', '', '', 0, b'1', b'1', '', '2021-12-25 09:01:44', '', '2022-07-27 19:26:58', b'1'),
(1183, '????????????????????????', '', 3, 4, 1179, '', '', '', 0, b'1', b'1', '', '2021-12-25 09:01:44', '', '2022-07-27 19:26:56', b'1'),
(1184, '????????????????????????', 'pay:merchant:export', 3, 5, 1179, '', '', '', 0, b'1', b'1', '', '2021-12-25 09:01:44', '', '2022-07-27 19:26:54', b'1'),
(1185, '????????????', '', 1, 50, 0, '/bpm', 'tool', NULL, 0, b'1', b'1', '1', '2021-12-30 20:26:36', '103', '2022-07-27 19:24:53', b'1'),
(1186, '????????????', '', 1, 10, 1185, 'manager', 'nested', NULL, 0, b'1', b'1', '1', '2021-12-30 20:28:30', '1', '2022-07-27 19:24:49', b'1'),
(1187, '????????????', '', 2, 0, 1186, 'form', 'form', 'bpm/form/index', 0, b'1', b'1', '', '2021-12-30 12:38:22', '1', '2022-07-27 19:24:47', b'1'),
(1188, '????????????', 'bpm:form:query', 3, 1, 1187, '', '', '', 0, b'1', b'1', '', '2021-12-30 12:38:22', '1', '2022-07-27 19:24:44', b'1'),
(1189, '????????????', 'bpm:form:create', 3, 2, 1187, '', '', '', 0, b'1', b'1', '', '2021-12-30 12:38:22', '1', '2022-07-27 19:24:42', b'1'),
(1190, '????????????', 'bpm:form:update', 3, 3, 1187, '', '', '', 0, b'1', b'1', '', '2021-12-30 12:38:22', '1', '2022-07-27 19:24:39', b'1'),
(1191, '????????????', 'bpm:form:delete', 3, 4, 1187, '', '', '', 0, b'1', b'1', '', '2021-12-30 12:38:22', '1', '2022-07-27 19:24:37', b'1'),
(1192, '????????????', 'bpm:form:export', 3, 5, 1187, '', '', '', 0, b'1', b'1', '', '2021-12-30 12:38:22', '1', '2022-07-27 19:24:35', b'1'),
(1193, '????????????', '', 2, 5, 1186, 'model', 'guide', 'bpm/model/index', 0, b'1', b'1', '1', '2021-12-31 23:24:58', '103', '2022-07-27 19:24:17', b'1'),
(1194, '????????????', 'bpm:model:query', 3, 1, 1193, '', '', '', 0, b'1', b'1', '1', '2022-01-03 19:01:10', '1', '2022-07-27 19:24:14', b'1'),
(1195, '????????????', 'bpm:model:create', 3, 2, 1193, '', '', '', 0, b'1', b'1', '1', '2022-01-03 19:01:24', '1', '2022-07-27 19:24:12', b'1'),
(1196, '????????????', 'bpm:model:import', 3, 3, 1193, '', '', '', 0, b'1', b'1', '1', '2022-01-03 19:01:35', '1', '2022-07-27 19:24:09', b'1'),
(1197, '????????????', 'bpm:model:update', 3, 4, 1193, '', '', '', 0, b'1', b'1', '1', '2022-01-03 19:02:28', '1', '2022-07-27 19:24:00', b'1'),
(1198, '????????????', 'bpm:model:delete', 3, 5, 1193, '', '', '', 0, b'1', b'1', '1', '2022-01-03 19:02:43', '1', '2022-07-27 19:23:58', b'1'),
(1199, '????????????', 'bpm:model:deploy', 3, 6, 1193, '', '', '', 0, b'1', b'1', '1', '2022-01-03 19:03:24', '1', '2022-07-27 19:23:54', b'1'),
(1200, '????????????', '', 1, 20, 1185, 'task', 'cascader', NULL, 0, b'1', b'1', '1', '2022-01-07 23:51:48', '1', '2022-07-27 19:23:13', b'1'),
(1201, '????????????', '', 2, 0, 1200, 'my', 'people', 'bpm/processInstance/index', 0, b'1', b'1', '', '2022-01-07 15:53:44', '1', '2022-07-27 19:23:09', b'1'),
(1202, '?????????????????????', 'bpm:process-instance:query', 3, 1, 1201, '', '', '', 0, b'1', b'1', '', '2022-01-07 15:53:44', '1', '2022-07-27 19:23:02', b'1'),
(1207, '????????????', '', 2, 10, 1200, 'todo', 'eye-open', 'bpm/task/todo', 0, b'1', b'1', '1', '2022-01-08 10:33:37', '1', '2022-07-27 19:22:57', b'1'),
(1208, '????????????', '', 2, 20, 1200, 'done', 'eye', 'bpm/task/done', 0, b'1', b'1', '1', '2022-01-08 10:34:13', '1', '2022-07-27 19:22:47', b'1'),
(1209, '????????????', '', 2, 2, 1186, 'user-group', 'people', 'bpm/group/index', 0, b'1', b'1', '', '2022-01-14 02:14:20', '103', '2022-07-27 19:24:31', b'1'),
(1210, '???????????????', 'bpm:user-group:query', 3, 1, 1209, '', '', '', 0, b'1', b'1', '', '2022-01-14 02:14:20', '', '2022-07-27 19:24:29', b'1'),
(1211, '???????????????', 'bpm:user-group:create', 3, 2, 1209, '', '', '', 0, b'1', b'1', '', '2022-01-14 02:14:20', '', '2022-07-27 19:24:26', b'1'),
(1212, '???????????????', 'bpm:user-group:update', 3, 3, 1209, '', '', '', 0, b'1', b'1', '', '2022-01-14 02:14:20', '', '2022-07-27 19:24:24', b'1'),
(1213, '???????????????', 'bpm:user-group:delete', 3, 4, 1209, '', '', '', 0, b'1', b'1', '', '2022-01-14 02:14:20', '', '2022-07-27 19:24:22', b'1'),
(1215, '??????????????????', 'bpm:process-definition:query', 3, 10, 1193, '', '', '', 0, b'1', b'1', '1', '2022-01-23 00:21:43', '1', '2022-07-27 19:23:27', b'1'),
(1216, '??????????????????????????????', 'bpm:task-assign-rule:query', 3, 20, 1193, '', '', '', 0, b'1', b'1', '1', '2022-01-23 00:26:53', '1', '2022-07-27 19:23:25', b'1'),
(1217, '??????????????????????????????', 'bpm:task-assign-rule:create', 3, 21, 1193, '', '', '', 0, b'1', b'1', '1', '2022-01-23 00:28:15', '1', '2022-07-27 19:23:23', b'1'),
(1218, '??????????????????????????????', 'bpm:task-assign-rule:update', 3, 22, 1193, '', '', '', 0, b'1', b'1', '1', '2022-01-23 00:28:41', '1', '2022-07-27 19:23:21', b'1'),
(1219, '?????????????????????', 'bpm:process-instance:create', 3, 2, 1201, '', '', '', 0, b'1', b'1', '1', '2022-01-23 00:36:15', '1', '2022-07-27 19:23:06', b'1'),
(1220, '?????????????????????', 'bpm:process-instance:cancel', 3, 3, 1201, '', '', '', 0, b'1', b'1', '1', '2022-01-23 00:36:33', '1', '2022-07-27 19:23:04', b'1'),
(1221, '?????????????????????', 'bpm:task:query', 3, 1, 1207, '', '', '', 0, b'1', b'1', '1', '2022-01-23 00:38:52', '1', '2022-07-27 19:22:54', b'1'),
(1222, '?????????????????????', 'bpm:task:update', 3, 2, 1207, '', '', '', 0, b'1', b'1', '1', '2022-01-23 00:39:24', '1', '2022-07-27 19:22:51', b'1'),
(1224, '????????????', '', 2, 0, 1, 'tenant', 'peoples', NULL, 0, b'1', b'1', '1', '2022-02-20 01:41:13', '1', '2022-04-20 17:03:10', b'0'),
(1225, '????????????', '', 2, 0, 1224, 'package', 'eye', 'system/tenantPackage/index', 0, b'1', b'1', '', '2022-02-19 17:44:06', '1', '2022-04-21 01:21:25', b'0'),
(1226, '??????????????????', 'system:tenant-package:query', 3, 1, 1225, '', '', '', 0, b'1', b'1', '', '2022-02-19 17:44:06', '', '2022-04-20 17:03:10', b'0'),
(1227, '??????????????????', 'system:tenant-package:create', 3, 2, 1225, '', '', '', 0, b'1', b'1', '', '2022-02-19 17:44:06', '', '2022-04-20 17:03:10', b'0'),
(1228, '??????????????????', 'system:tenant-package:update', 3, 3, 1225, '', '', '', 0, b'1', b'1', '', '2022-02-19 17:44:06', '', '2022-04-20 17:03:10', b'0'),
(1229, '??????????????????', 'system:tenant-package:delete', 3, 4, 1225, '', '', '', 0, b'1', b'1', '', '2022-02-19 17:44:06', '', '2022-04-20 17:03:10', b'0'),
(1237, '????????????', '', 2, 0, 1243, 'file-config', 'config', 'infra/fileConfig/index', 0, b'1', b'1', '', '2022-03-15 14:35:28', '1', '2022-04-20 17:03:10', b'0'),
(1238, '??????????????????', 'infra:file-config:query', 3, 1, 1237, '', '', '', 0, b'1', b'1', '', '2022-03-15 14:35:28', '', '2022-04-20 17:03:10', b'0'),
(1239, '??????????????????', 'infra:file-config:create', 3, 2, 1237, '', '', '', 0, b'1', b'1', '', '2022-03-15 14:35:28', '', '2022-04-20 17:03:10', b'0'),
(1240, '??????????????????', 'infra:file-config:update', 3, 3, 1237, '', '', '', 0, b'1', b'1', '', '2022-03-15 14:35:28', '', '2022-04-20 17:03:10', b'0'),
(1241, '??????????????????', 'infra:file-config:delete', 3, 4, 1237, '', '', '', 0, b'1', b'1', '', '2022-03-15 14:35:28', '', '2022-04-20 17:03:10', b'0'),
(1242, '??????????????????', 'infra:file-config:export', 3, 5, 1237, '', '', '', 0, b'1', b'1', '', '2022-03-15 14:35:28', '', '2022-04-20 17:03:10', b'0'),
(1243, '????????????', '', 2, 5, 2, 'file', 'download', NULL, 0, b'1', b'1', '1', '2022-03-16 23:47:40', '1', '2022-04-20 17:03:10', b'0'),
(1247, '???????????????', '', 2, 13, 1, 'sensitive-word', 'education', 'system/sensitiveWord/index', 0, b'1', b'1', '', '2022-04-07 16:55:03', '1', '2022-04-20 17:03:10', b'0'),
(1248, '???????????????', 'system:sensitive-word:query', 3, 1, 1247, '', '', '', 0, b'1', b'1', '', '2022-04-07 16:55:03', '', '2022-04-20 17:03:10', b'0'),
(1249, '???????????????', 'system:sensitive-word:create', 3, 2, 1247, '', '', '', 0, b'1', b'1', '', '2022-04-07 16:55:03', '', '2022-04-20 17:03:10', b'0'),
(1250, '???????????????', 'system:sensitive-word:update', 3, 3, 1247, '', '', '', 0, b'1', b'1', '', '2022-04-07 16:55:03', '', '2022-04-20 17:03:10', b'0'),
(1251, '???????????????', 'system:sensitive-word:delete', 3, 4, 1247, '', '', '', 0, b'1', b'1', '', '2022-04-07 16:55:03', '', '2022-04-20 17:03:10', b'0'),
(1252, '???????????????', 'system:sensitive-word:export', 3, 5, 1247, '', '', '', 0, b'1', b'1', '', '2022-04-07 16:55:03', '', '2022-04-20 17:03:10', b'0'),
(1255, '???????????????', '', 2, 1, 2, 'data-source-config', 'rate', 'infra/dataSourceConfig/index', 0, b'1', b'1', '', '2022-04-27 14:37:32', '1', '2022-04-27 22:42:06', b'0'),
(1256, '?????????????????????', 'infra:data-source-config:query', 3, 1, 1255, '', '', '', 0, b'1', b'1', '', '2022-04-27 14:37:32', '', '2022-04-27 14:37:32', b'0'),
(1257, '?????????????????????', 'infra:data-source-config:create', 3, 2, 1255, '', '', '', 0, b'1', b'1', '', '2022-04-27 14:37:32', '', '2022-04-27 14:37:32', b'0'),
(1258, '?????????????????????', 'infra:data-source-config:update', 3, 3, 1255, '', '', '', 0, b'1', b'1', '', '2022-04-27 14:37:32', '', '2022-04-27 14:37:32', b'0'),
(1259, '?????????????????????', 'infra:data-source-config:delete', 3, 4, 1255, '', '', '', 0, b'1', b'1', '', '2022-04-27 14:37:32', '', '2022-04-27 14:37:32', b'0'),
(1260, '?????????????????????', 'infra:data-source-config:export', 3, 5, 1255, '', '', '', 0, b'1', b'1', '', '2022-04-27 14:37:32', '', '2022-04-27 14:37:32', b'0'),
(1261, 'OAuth 2.0', '', 1, 10, 1, 'oauth2', 'people', NULL, 0, b'1', b'1', '1', '2022-05-09 23:38:17', '1', '2022-05-11 23:51:46', b'0'),
(1263, '????????????', '', 2, 0, 1261, 'oauth2/application', 'tool', 'system/oauth2/client/index', 0, b'1', b'1', '', '2022-05-10 16:26:33', '1', '2022-05-11 23:31:36', b'0'),
(1264, '???????????????', 'system:oauth2-client:query', 3, 1, 1263, '', '', '', 0, b'1', b'1', '', '2022-05-10 16:26:33', '1', '2022-05-11 00:31:06', b'0'),
(1265, '???????????????', 'system:oauth2-client:create', 3, 2, 1263, '', '', '', 0, b'1', b'1', '', '2022-05-10 16:26:33', '1', '2022-05-11 00:31:23', b'0'),
(1266, '???????????????', 'system:oauth2-client:update', 3, 3, 1263, '', '', '', 0, b'1', b'1', '', '2022-05-10 16:26:33', '1', '2022-05-11 00:31:28', b'0'),
(1267, '???????????????', 'system:oauth2-client:delete', 3, 4, 1263, '', '', '', 0, b'1', b'1', '', '2022-05-10 16:26:33', '1', '2022-05-11 00:31:33', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `system_notice`
--

CREATE TABLE `system_notice` (
  `id` bigint(20) NOT NULL COMMENT '??????ID',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `type` tinyint(4) NOT NULL COMMENT '???????????????1?????? 2?????????',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '???????????????0?????? 1?????????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='???????????????';

--
-- Dumping data for table `system_notice`
--

INSERT INTO `system_notice` (`id`, `title`, `content`, `type`, `status`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`) VALUES
(1, '???????????????', '<p>???????????????133</p>', 1, 0, 'admin', '2021-01-05 17:03:48', '1', '2022-05-04 21:00:20', b'0', 1),
(2, '???????????????2018-07-01 ????????????????????????', '<p><img src=\"http://test.yudao.iocoder.cn/b7cb3cf49b4b3258bf7309a09dd2f4e5.jpg\">????????????</p>', 2, 1, 'admin', '2021-01-05 17:03:48', '1', '2022-05-11 12:34:24', b'0', 1),
(4, '??????????????????', '<p>????????????123</p>', 1, 0, '110', '2022-02-22 01:01:25', '110', '2022-02-22 01:01:46', b'0', 121);

-- --------------------------------------------------------

--
-- Table structure for table `system_oauth2_access_token`
--

CREATE TABLE `system_oauth2_access_token` (
  `id` bigint(20) NOT NULL COMMENT '??????',
  `user_id` bigint(20) NOT NULL COMMENT '????????????',
  `user_type` tinyint(4) NOT NULL COMMENT '????????????',
  `access_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `refresh_token` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `client_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '???????????????',
  `scopes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `expires_time` datetime NOT NULL COMMENT '????????????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OAuth2 ????????????';

--
-- Dumping data for table `system_oauth2_access_token`
--

INSERT INTO `system_oauth2_access_token` (`id`, `user_id`, `user_type`, `access_token`, `refresh_token`, `client_id`, `scopes`, `expires_time`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`) VALUES
(231, 1, 2, '619fc16a340941dc820aea08eb71984f', 'cafd917037bc470f88aebbe216af3a76', 'default', NULL, '2054-04-04 00:21:56', NULL, '2022-07-26 22:35:17', NULL, '2022-07-26 22:35:17', b'0', 1),
(232, 1, 2, '27b8e137f40640e2997891d2a3ffa5ba', '517e8375ae76438a80d331b940a45da3', 'default', NULL, '2054-04-04 00:31:16', NULL, '2022-07-26 22:44:37', NULL, '2022-07-27 16:48:11', b'1', 1),
(233, 1, 2, '508bc77431dc4d96b23441d5ddca29d6', '40c76569d0784f5385d7f6d2dd074d07', 'default', NULL, '2054-04-04 00:46:26', NULL, '2022-07-26 22:59:47', NULL, '2022-07-26 22:59:47', b'0', 1),
(234, 1, 2, '68178a7544784e8aaeaa5997f5151656', '60687f2f37d04b448178fafa88b80290', 'default', NULL, '2054-04-04 00:47:16', NULL, '2022-07-26 23:00:37', NULL, '2022-07-26 23:00:37', b'0', 1),
(235, 1, 2, '7e18ef5c7ea947969982f79017f08804', '1136052f77df48a68b5b1ce7ad5a4868', 'default', NULL, '2054-04-04 17:35:00', NULL, '2022-07-27 15:48:21', NULL, '2022-07-27 16:49:36', b'1', 1),
(236, 1, 2, 'aa14bb88028a496589c847cd006ca829', 'e7725ef3d248417ca5026687203b8b59', 'default', NULL, '2054-04-04 17:43:30', NULL, '2022-07-27 15:56:51', NULL, '2022-07-27 15:56:51', b'0', 1),
(237, 1, 2, '056ca7c37a0d4ab0a45439f6f8f231b2', 'a90861e250bf4637b17e00785f9ef99c', 'default', NULL, '2054-04-04 17:50:32', NULL, '2022-07-27 16:03:53', NULL, '2022-07-27 17:42:01', b'1', 1),
(238, 1, 2, 'cf60afcb592f43c5b5eb767953cf69e0', '1913198b6d7148598239465af6edab09', 'default', NULL, '2054-04-04 18:55:00', NULL, '2022-07-27 17:08:21', NULL, '2022-07-27 18:17:48', b'1', 1),
(239, 1, 2, 'd3b42d8ddaa24d25ba6f643691a22583', 'e4d2e0a87c8143218697fdf821880f64', 'default', NULL, '2054-04-04 19:04:38', NULL, '2022-07-27 17:17:59', NULL, '2022-07-27 18:53:49', b'1', 1),
(240, 1, 2, '5cb89ad08e354c0e8580027110a82f6e', 'a8c633743650415881c608b12aba5c04', 'default', NULL, '2054-04-04 19:41:49', NULL, '2022-07-27 17:55:10', NULL, '2022-07-27 19:00:01', b'1', 1),
(241, 1, 2, '6663469942784e6190bda38135532b7f', 'a50bb5e80a114ab19152d9016b6a8656', 'default', NULL, '2054-04-04 19:53:55', NULL, '2022-07-27 18:07:16', NULL, '2022-07-27 18:07:16', b'0', 1),
(242, 1, 2, '2aa75a7b85954e90a2e4d9ff00ca6a45', 'c64b19198b7e49dc800be498f425666f', 'default', NULL, '2054-04-04 20:01:51', NULL, '2022-07-27 18:15:12', NULL, '2022-07-27 18:15:12', b'0', 1),
(243, 1, 2, '50fa1c8fe5b6456da0546b1deee745a0', '5729b0b554da492d881189017ccda9a1', 'default', NULL, '2054-04-04 20:31:06', NULL, '2022-07-27 18:44:27', NULL, '2022-07-27 20:03:14', b'1', 1),
(244, 1, 2, '6617819eac3f4e6f96c15a233e70f7ae', 'ce2709474c19478b8d75f6f5bc7a69a9', 'default', NULL, '2054-04-04 20:50:02', NULL, '2022-07-27 19:03:23', NULL, '2022-07-27 19:03:23', b'0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_oauth2_approve`
--

CREATE TABLE `system_oauth2_approve` (
  `id` bigint(20) NOT NULL COMMENT '??????',
  `user_id` bigint(20) NOT NULL COMMENT '????????????',
  `user_type` tinyint(4) NOT NULL COMMENT '????????????',
  `client_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '???????????????',
  `scope` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '????????????',
  `approved` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????',
  `expires_time` datetime NOT NULL COMMENT '????????????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OAuth2 ?????????';

-- --------------------------------------------------------

--
-- Table structure for table `system_oauth2_client`
--

CREATE TABLE `system_oauth2_client` (
  `id` bigint(20) NOT NULL COMMENT '??????',
  `client_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '???????????????',
  `secret` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '???????????????',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????????',
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `status` tinyint(4) NOT NULL COMMENT '??????',
  `access_token_validity_seconds` int(11) NOT NULL COMMENT '????????????????????????',
  `refresh_token_validity_seconds` int(11) NOT NULL COMMENT '????????????????????????',
  `redirect_uris` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '??????????????? URI ??????',
  `authorized_grant_types` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `scopes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `auto_approve_scopes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '???????????????????????????',
  `authorities` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????',
  `resource_ids` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????',
  `additional_information` varchar(4096) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OAuth2 ????????????';

--
-- Dumping data for table `system_oauth2_client`
--

INSERT INTO `system_oauth2_client` (`id`, `client_id`, `secret`, `name`, `logo`, `description`, `status`, `access_token_validity_seconds`, `refresh_token_validity_seconds`, `redirect_uris`, `authorized_grant_types`, `scopes`, `auto_approve_scopes`, `authorities`, `resource_ids`, `additional_information`, `creator`, `create_time`, `updater`, `update_time`, `deleted`) VALUES
(1, 'default', 'admin123', '????????????', 'http://test.yudao.iocoder.cn/a5e2e244368878a366b516805a4aabf1.png', '????????????', 0, 999999999, 8640, '[\"https://www.iocoder.cn\",\"https://doc.iocoder.cn\"]', '[\"password\",\"authorization_code\",\"implicit\",\"refresh_token\"]', '[\"user.read\",\"user.write\"]', '[]', '[\"user.read\",\"user.write\"]', '[]', '{}', '1', '2022-05-11 21:47:12', '1', '2022-05-23 13:33:11', b'0'),
(40, 'test', 'test2', 'biubiu', 'http://test.yudao.iocoder.cn/277a899d573723f1fcdfb57340f00379.png', NULL, 0, 1800, 43200, '[\"https://www.iocoder.cn\"]', '[\"password\",\"authorization_code\",\"implicit\"]', '[\"user_info\",\"projects\"]', '[\"user_info\"]', '[]', '[]', '{}', '1', '2022-05-12 00:28:20', '1', '2022-05-14 15:11:31', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `system_oauth2_code`
--

CREATE TABLE `system_oauth2_code` (
  `id` bigint(20) NOT NULL COMMENT '??????',
  `user_id` bigint(20) NOT NULL COMMENT '????????????',
  `user_type` tinyint(4) NOT NULL COMMENT '????????????',
  `code` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????????',
  `client_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '???????????????',
  `scopes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '????????????',
  `expires_time` datetime NOT NULL COMMENT '????????????',
  `redirect_uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????????????? URI ??????',
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '??????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='OAuth2 ????????????';

-- --------------------------------------------------------

--
-- Table structure for table `system_oauth2_refresh_token`
--

CREATE TABLE `system_oauth2_refresh_token` (
  `id` bigint(20) NOT NULL COMMENT '??????',
  `user_id` bigint(20) NOT NULL COMMENT '????????????',
  `refresh_token` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `user_type` tinyint(4) NOT NULL COMMENT '????????????',
  `client_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '???????????????',
  `scopes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `expires_time` datetime NOT NULL COMMENT '????????????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='????????????';

--
-- Dumping data for table `system_oauth2_refresh_token`
--

INSERT INTO `system_oauth2_refresh_token` (`id`, `user_id`, `refresh_token`, `user_type`, `client_id`, `scopes`, `expires_time`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`) VALUES
(165, 1, 'cafd917037bc470f88aebbe216af3a76', 2, 'default', NULL, '2022-07-27 00:59:17', NULL, '2022-07-26 22:35:17', NULL, '2022-07-26 22:35:17', b'0', 1),
(166, 1, '517e8375ae76438a80d331b940a45da3', 2, 'default', NULL, '2022-07-27 01:08:37', NULL, '2022-07-26 22:44:37', NULL, '2022-07-27 16:48:11', b'1', 1),
(167, 1, '40c76569d0784f5385d7f6d2dd074d07', 2, 'default', NULL, '2022-07-27 01:23:47', NULL, '2022-07-26 22:59:47', NULL, '2022-07-26 22:59:47', b'0', 1),
(168, 1, '60687f2f37d04b448178fafa88b80290', 2, 'default', NULL, '2022-07-27 01:24:37', NULL, '2022-07-26 23:00:37', NULL, '2022-07-26 23:00:37', b'0', 1),
(169, 1, '1136052f77df48a68b5b1ce7ad5a4868', 2, 'default', NULL, '2022-07-27 18:12:21', NULL, '2022-07-27 15:48:21', NULL, '2022-07-27 16:49:36', b'1', 1),
(170, 1, 'e7725ef3d248417ca5026687203b8b59', 2, 'default', NULL, '2022-07-27 18:20:51', NULL, '2022-07-27 15:56:51', NULL, '2022-07-27 15:56:51', b'0', 1),
(171, 1, 'a90861e250bf4637b17e00785f9ef99c', 2, 'default', NULL, '2022-07-27 18:27:53', NULL, '2022-07-27 16:03:53', NULL, '2022-07-27 17:42:01', b'1', 1),
(172, 1, '1913198b6d7148598239465af6edab09', 2, 'default', NULL, '2022-07-27 19:32:21', NULL, '2022-07-27 17:08:21', NULL, '2022-07-27 18:17:48', b'1', 1),
(173, 1, 'e4d2e0a87c8143218697fdf821880f64', 2, 'default', NULL, '2022-07-27 19:41:59', NULL, '2022-07-27 17:17:59', NULL, '2022-07-27 18:53:49', b'1', 1),
(174, 1, 'a8c633743650415881c608b12aba5c04', 2, 'default', NULL, '2022-07-27 20:19:10', NULL, '2022-07-27 17:55:10', NULL, '2022-07-27 19:00:01', b'1', 1),
(175, 1, 'a50bb5e80a114ab19152d9016b6a8656', 2, 'default', NULL, '2022-07-27 20:31:16', NULL, '2022-07-27 18:07:16', NULL, '2022-07-27 18:07:16', b'0', 1),
(176, 1, 'c64b19198b7e49dc800be498f425666f', 2, 'default', NULL, '2022-07-27 20:39:12', NULL, '2022-07-27 18:15:12', NULL, '2022-07-27 18:15:12', b'0', 1),
(177, 1, '5729b0b554da492d881189017ccda9a1', 2, 'default', NULL, '2022-07-27 21:08:27', NULL, '2022-07-27 18:44:27', NULL, '2022-07-27 20:03:14', b'1', 1),
(178, 1, 'ce2709474c19478b8d75f6f5bc7a69a9', 2, 'default', NULL, '2022-07-27 21:27:23', NULL, '2022-07-27 19:03:23', NULL, '2022-07-27 19:03:23', b'0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_operate_log`
--

CREATE TABLE `system_operate_log` (
  `id` bigint(20) NOT NULL COMMENT '????????????',
  `trace_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '??????????????????',
  `user_id` bigint(20) NOT NULL COMMENT '????????????',
  `user_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '????????????',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????????',
  `type` bigint(20) NOT NULL DEFAULT 0 COMMENT '????????????',
  `content` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '????????????',
  `exts` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '????????????',
  `request_method` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '???????????????',
  `request_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '????????????',
  `user_ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '?????? IP',
  `user_agent` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????? UA',
  `java_method` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Java ?????????',
  `java_method_args` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Java ???????????????',
  `start_time` datetime NOT NULL COMMENT '????????????',
  `duration` int(11) NOT NULL COMMENT '????????????',
  `result_code` int(11) NOT NULL DEFAULT 0 COMMENT '?????????',
  `result_msg` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '????????????',
  `result_data` varchar(4000) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '????????????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='??????????????????';

--
-- Dumping data for table `system_operate_log`
--

INSERT INTO `system_operate_log` (`id`, `trace_id`, `user_id`, `user_type`, `module`, `name`, `type`, `content`, `exts`, `request_method`, `request_url`, `user_ip`, `user_agent`, `java_method`, `java_method_args`, `start_time`, `duration`, `result_code`, `result_msg`, `result_data`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`) VALUES
(2432, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1185}', '2022-07-27 16:35:32', 31, 500, 'ServiceException: ??????????????????????????????', 'null', NULL, '2022-07-27 16:35:32', NULL, '2022-07-27 16:35:32', b'0', 1),
(2433, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":5}', '2022-07-27 16:35:41', 5, 500, 'ServiceException: ??????????????????????????????', 'null', NULL, '2022-07-27 16:35:41', NULL, '2022-07-27 16:35:41', b'0', 1),
(2434, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1118}', '2022-07-27 16:35:50', 5, 500, 'ServiceException: ??????????????????????????????', 'null', NULL, '2022-07-27 16:35:50', NULL, '2022-07-27 16:35:50', b'0', 1),
(2435, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1120}', '2022-07-27 18:22:28', 36, 0, '', 'true', NULL, '2022-07-27 18:22:28', NULL, '2022-07-27 18:22:28', b'0', 1),
(2436, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1119}', '2022-07-27 18:22:31', 16, 0, '', 'true', NULL, '2022-07-27 18:22:31', NULL, '2022-07-27 18:22:31', b'0', 1),
(2437, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1118}', '2022-07-27 18:22:34', 16, 0, '', 'true', NULL, '2022-07-27 18:22:34', NULL, '2022-07-27 18:22:34', b'0', 1),
(2438, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":5}', '2022-07-27 18:22:38', 16, 0, '', 'true', NULL, '2022-07-27 18:22:38', NULL, '2022-07-27 18:22:38', b'0', 1),
(2439, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1200}', '2022-07-27 18:22:41', 7, 500, 'ServiceException: ??????????????????????????????', 'null', NULL, '2022-07-27 18:22:41', NULL, '2022-07-27 18:22:41', b'0', 1),
(2440, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1208}', '2022-07-27 18:22:47', 16, 0, '', 'true', NULL, '2022-07-27 18:22:47', NULL, '2022-07-27 18:22:47', b'0', 1),
(2441, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1222}', '2022-07-27 18:22:51', 18, 0, '', 'true', NULL, '2022-07-27 18:22:51', NULL, '2022-07-27 18:22:51', b'0', 1),
(2442, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1221}', '2022-07-27 18:22:54', 15, 0, '', 'true', NULL, '2022-07-27 18:22:54', NULL, '2022-07-27 18:22:54', b'0', 1),
(2443, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1207}', '2022-07-27 18:22:57', 16, 0, '', 'true', NULL, '2022-07-27 18:22:57', NULL, '2022-07-27 18:22:57', b'0', 1),
(2444, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1202}', '2022-07-27 18:23:02', 16, 0, '', 'true', NULL, '2022-07-27 18:23:02', NULL, '2022-07-27 18:23:02', b'0', 1),
(2445, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1220}', '2022-07-27 18:23:04', 14, 0, '', 'true', NULL, '2022-07-27 18:23:04', NULL, '2022-07-27 18:23:04', b'0', 1),
(2446, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1219}', '2022-07-27 18:23:06', 16, 0, '', 'true', NULL, '2022-07-27 18:23:06', NULL, '2022-07-27 18:23:06', b'0', 1),
(2447, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1201}', '2022-07-27 18:23:09', 14, 0, '', 'true', NULL, '2022-07-27 18:23:09', NULL, '2022-07-27 18:23:09', b'0', 1),
(2448, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1200}', '2022-07-27 18:23:13', 14, 0, '', 'true', NULL, '2022-07-27 18:23:13', NULL, '2022-07-27 18:23:13', b'0', 1),
(2449, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1218}', '2022-07-27 18:23:21', 17, 0, '', 'true', NULL, '2022-07-27 18:23:21', NULL, '2022-07-27 18:23:21', b'0', 1),
(2450, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1217}', '2022-07-27 18:23:23', 14, 0, '', 'true', NULL, '2022-07-27 18:23:23', NULL, '2022-07-27 18:23:23', b'0', 1),
(2451, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1216}', '2022-07-27 18:23:25', 15, 0, '', 'true', NULL, '2022-07-27 18:23:25', NULL, '2022-07-27 18:23:25', b'0', 1),
(2452, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1215}', '2022-07-27 18:23:27', 16, 0, '', 'true', NULL, '2022-07-27 18:23:27', NULL, '2022-07-27 18:23:27', b'0', 1),
(2453, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1199}', '2022-07-27 18:23:54', 14, 0, '', 'true', NULL, '2022-07-27 18:23:54', NULL, '2022-07-27 18:23:54', b'0', 1),
(2454, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1198}', '2022-07-27 18:23:58', 17, 0, '', 'true', NULL, '2022-07-27 18:23:58', NULL, '2022-07-27 18:23:58', b'0', 1),
(2455, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1197}', '2022-07-27 18:24:00', 14, 0, '', 'true', NULL, '2022-07-27 18:24:00', NULL, '2022-07-27 18:24:00', b'0', 1),
(2456, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1196}', '2022-07-27 18:24:09', 15, 0, '', 'true', NULL, '2022-07-27 18:24:09', NULL, '2022-07-27 18:24:09', b'0', 1),
(2457, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1195}', '2022-07-27 18:24:12', 14, 0, '', 'true', NULL, '2022-07-27 18:24:12', NULL, '2022-07-27 18:24:12', b'0', 1),
(2458, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1194}', '2022-07-27 18:24:14', 14, 0, '', 'true', NULL, '2022-07-27 18:24:14', NULL, '2022-07-27 18:24:14', b'0', 1),
(2459, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1193}', '2022-07-27 18:24:17', 13, 0, '', 'true', NULL, '2022-07-27 18:24:17', NULL, '2022-07-27 18:24:17', b'0', 1),
(2460, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1213}', '2022-07-27 18:24:22', 15, 0, '', 'true', NULL, '2022-07-27 18:24:22', NULL, '2022-07-27 18:24:22', b'0', 1),
(2461, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1212}', '2022-07-27 18:24:24', 15, 0, '', 'true', NULL, '2022-07-27 18:24:24', NULL, '2022-07-27 18:24:24', b'0', 1),
(2462, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1211}', '2022-07-27 18:24:26', 13, 0, '', 'true', NULL, '2022-07-27 18:24:26', NULL, '2022-07-27 18:24:26', b'0', 1),
(2463, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1210}', '2022-07-27 18:24:29', 13, 0, '', 'true', NULL, '2022-07-27 18:24:29', NULL, '2022-07-27 18:24:29', b'0', 1),
(2464, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1209}', '2022-07-27 18:24:31', 15, 0, '', 'true', NULL, '2022-07-27 18:24:31', NULL, '2022-07-27 18:24:31', b'0', 1),
(2465, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1192}', '2022-07-27 18:24:35', 14, 0, '', 'true', NULL, '2022-07-27 18:24:35', NULL, '2022-07-27 18:24:35', b'0', 1),
(2466, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1191}', '2022-07-27 18:24:37', 13, 0, '', 'true', NULL, '2022-07-27 18:24:37', NULL, '2022-07-27 18:24:37', b'0', 1),
(2467, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1190}', '2022-07-27 18:24:39', 15, 0, '', 'true', NULL, '2022-07-27 18:24:39', NULL, '2022-07-27 18:24:39', b'0', 1),
(2468, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1189}', '2022-07-27 18:24:42', 14, 0, '', 'true', NULL, '2022-07-27 18:24:42', NULL, '2022-07-27 18:24:42', b'0', 1),
(2469, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1188}', '2022-07-27 18:24:44', 15, 0, '', 'true', NULL, '2022-07-27 18:24:44', NULL, '2022-07-27 18:24:44', b'0', 1),
(2470, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1187}', '2022-07-27 18:24:47', 14, 0, '', 'true', NULL, '2022-07-27 18:24:47', NULL, '2022-07-27 18:24:47', b'0', 1),
(2471, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1186}', '2022-07-27 18:24:49', 13, 0, '', 'true', NULL, '2022-07-27 18:24:49', NULL, '2022-07-27 18:24:49', b'0', 1),
(2472, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1185}', '2022-07-27 18:24:53', 15, 0, '', 'true', NULL, '2022-07-27 18:24:53', NULL, '2022-07-27 18:24:53', b'0', 1),
(2473, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1166}', '2022-07-27 18:25:11', 15, 0, '', 'true', NULL, '2022-07-27 18:25:11', NULL, '2022-07-27 18:25:11', b'0', 1),
(2474, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1165}', '2022-07-27 18:25:16', 14, 0, '', 'true', NULL, '2022-07-27 18:25:16', NULL, '2022-07-27 18:25:16', b'0', 1),
(2475, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1164}', '2022-07-27 18:25:19', 16, 0, '', 'true', NULL, '2022-07-27 18:25:19', NULL, '2022-07-27 18:25:19', b'0', 1),
(2476, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1163}', '2022-07-27 18:25:21', 14, 0, '', 'true', NULL, '2022-07-27 18:25:21', NULL, '2022-07-27 18:25:21', b'0', 1),
(2477, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1162}', '2022-07-27 18:25:41', 15, 0, '', 'true', NULL, '2022-07-27 18:25:41', NULL, '2022-07-27 18:25:41', b'0', 1),
(2478, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1161}', '2022-07-27 18:25:45', 14, 0, '', 'true', NULL, '2022-07-27 18:25:45', NULL, '2022-07-27 18:25:45', b'0', 1),
(2479, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1178}', '2022-07-27 18:25:49', 13, 0, '', 'true', NULL, '2022-07-27 18:25:49', NULL, '2022-07-27 18:25:49', b'0', 1),
(2480, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1177}', '2022-07-27 18:25:55', 12, 0, '', 'true', NULL, '2022-07-27 18:25:55', NULL, '2022-07-27 18:25:55', b'0', 1),
(2481, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1176}', '2022-07-27 18:25:58', 13, 0, '', 'true', NULL, '2022-07-27 18:25:58', NULL, '2022-07-27 18:25:58', b'0', 1),
(2482, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1175}', '2022-07-27 18:26:00', 15, 0, '', 'true', NULL, '2022-07-27 18:26:00', NULL, '2022-07-27 18:26:00', b'0', 1),
(2483, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1174}', '2022-07-27 18:26:03', 13, 0, '', 'true', NULL, '2022-07-27 18:26:03', NULL, '2022-07-27 18:26:03', b'0', 1),
(2484, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1173}', '2022-07-27 18:26:06', 13, 0, '', 'true', NULL, '2022-07-27 18:26:06', NULL, '2022-07-27 18:26:06', b'0', 1),
(2485, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1131}', '2022-07-27 18:26:10', 13, 0, '', 'true', NULL, '2022-07-27 18:26:10', NULL, '2022-07-27 18:26:10', b'0', 1),
(2486, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1130}', '2022-07-27 18:26:13', 12, 0, '', 'true', NULL, '2022-07-27 18:26:13', NULL, '2022-07-27 18:26:13', b'0', 1),
(2487, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1150}', '2022-07-27 18:26:19', 13, 0, '', 'true', NULL, '2022-07-27 18:26:19', NULL, '2022-07-27 18:26:19', b'0', 1),
(2488, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1137}', '2022-07-27 18:26:24', 13, 0, '', 'true', NULL, '2022-07-27 18:26:24', NULL, '2022-07-27 18:26:24', b'0', 1),
(2489, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1136}', '2022-07-27 18:26:26', 13, 0, '', 'true', NULL, '2022-07-27 18:26:26', NULL, '2022-07-27 18:26:26', b'0', 1),
(2490, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1135}', '2022-07-27 18:26:29', 14, 0, '', 'true', NULL, '2022-07-27 18:26:29', NULL, '2022-07-27 18:26:29', b'0', 1),
(2491, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1134}', '2022-07-27 18:26:31', 13, 0, '', 'true', NULL, '2022-07-27 18:26:31', NULL, '2022-07-27 18:26:31', b'0', 1),
(2492, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1133}', '2022-07-27 18:26:34', 12, 0, '', 'true', NULL, '2022-07-27 18:26:34', NULL, '2022-07-27 18:26:34', b'0', 1),
(2493, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1132}', '2022-07-27 18:26:36', 12, 0, '', 'true', NULL, '2022-07-27 18:26:36', NULL, '2022-07-27 18:26:36', b'0', 1),
(2494, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1129}', '2022-07-27 18:26:39', 14, 0, '', 'true', NULL, '2022-07-27 18:26:39', NULL, '2022-07-27 18:26:39', b'0', 1),
(2495, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1128}', '2022-07-27 18:26:41', 13, 0, '', 'true', NULL, '2022-07-27 18:26:41', NULL, '2022-07-27 18:26:41', b'0', 1),
(2496, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1127}', '2022-07-27 18:26:44', 13, 0, '', 'true', NULL, '2022-07-27 18:26:44', NULL, '2022-07-27 18:26:44', b'0', 1),
(2497, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1126}', '2022-07-27 18:26:49', 14, 0, '', 'true', NULL, '2022-07-27 18:26:49', NULL, '2022-07-27 18:26:49', b'0', 1),
(2498, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1184}', '2022-07-27 18:26:54', 13, 0, '', 'true', NULL, '2022-07-27 18:26:54', NULL, '2022-07-27 18:26:54', b'0', 1),
(2499, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1183}', '2022-07-27 18:26:56', 12, 0, '', 'true', NULL, '2022-07-27 18:26:56', NULL, '2022-07-27 18:26:56', b'0', 1),
(2500, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1182}', '2022-07-27 18:26:58', 12, 0, '', 'true', NULL, '2022-07-27 18:26:58', NULL, '2022-07-27 18:26:58', b'0', 1),
(2501, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1181}', '2022-07-27 18:27:01', 14, 0, '', 'true', NULL, '2022-07-27 18:27:01', NULL, '2022-07-27 18:27:01', b'0', 1),
(2502, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1180}', '2022-07-27 18:27:03', 14, 0, '', 'true', NULL, '2022-07-27 18:27:03', NULL, '2022-07-27 18:27:03', b'0', 1),
(2503, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1179}', '2022-07-27 18:27:06', 12, 0, '', 'true', NULL, '2022-07-27 18:27:06', NULL, '2022-07-27 18:27:06', b'0', 1),
(2504, '', 1, 2, '???????????? - ??????', '????????????', 4, '', '', 'DELETE', '/admin-api/system/menu/delete', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.deleteMenu(Long)', '{\"id\":1117}', '2022-07-27 18:27:12', 14, 0, '', 'true', NULL, '2022-07-27 18:27:12', NULL, '2022-07-27 18:27:12', b'0', 1),
(2505, '', 1, 2, '???????????? - ??????', '????????????', 3, '', '', 'PUT', '/admin-api/system/menu/update', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.updateMenu(MenuUpdateReqVO)', '{\"reqVO\":{\"name\":\"??????????????????\",\"permission\":\"\",\"type\":1,\"sort\":10,\"parentId\":0,\"path\":\"/system\",\"icon\":\"system\",\"component\":null,\"status\":0,\"visible\":true,\"keepAlive\":true,\"id\":1}}', '2022-07-27 19:03:56', 33, 0, '', 'true', NULL, '2022-07-27 19:03:56', NULL, '2022-07-27 19:03:56', b'0', 1),
(2506, '', 1, 2, '???????????? - ??????', '????????????', 3, '', '', 'PUT', '/admin-api/system/menu/update', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'CommonResult cn.iocoder.yudao.module.system.controller.admin.permission.MenuController.updateMenu(MenuUpdateReqVO)', '{\"reqVO\":{\"name\":\"?????????????????????\",\"permission\":\"\",\"type\":1,\"sort\":20,\"parentId\":0,\"path\":\"/infra\",\"icon\":\"monitor\",\"component\":null,\"status\":0,\"visible\":true,\"keepAlive\":true,\"id\":2}}', '2022-07-27 19:10:34', 18, 0, '', 'true', NULL, '2022-07-27 19:10:35', NULL, '2022-07-27 19:10:35', b'0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_post`
--

CREATE TABLE `system_post` (
  `id` bigint(20) NOT NULL COMMENT '??????ID',
  `code` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `sort` int(11) NOT NULL COMMENT '????????????',
  `status` tinyint(4) NOT NULL COMMENT '?????????0?????? 1?????????',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='???????????????';

--
-- Dumping data for table `system_post`
--

INSERT INTO `system_post` (`id`, `code`, `name`, `sort`, `status`, `remark`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`) VALUES
(1, 'ceo', '?????????', 1, 0, '', 'admin', '2021-01-06 17:03:48', '1', '2022-04-19 16:53:39', b'0', 1),
(2, 'se', '????????????', 2, 0, '', 'admin', '2021-01-05 17:03:48', '1', '2021-12-12 10:47:47', b'0', 1),
(4, 'user', '????????????', 4, 0, '111', 'admin', '2021-01-05 17:03:48', '1', '2022-05-04 22:46:35', b'0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_role`
--

CREATE TABLE `system_role` (
  `id` bigint(20) NOT NULL COMMENT '??????ID',
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????????????????????',
  `sort` int(11) NOT NULL COMMENT '????????????',
  `data_scope` tinyint(4) NOT NULL DEFAULT 1 COMMENT '???????????????1????????????????????? 2????????????????????? 3???????????????????????? 4????????????????????????????????????',
  `data_scope_dept_ids` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '????????????(??????????????????)',
  `status` tinyint(4) NOT NULL COMMENT '???????????????0?????? 1?????????',
  `type` tinyint(4) NOT NULL COMMENT '????????????',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='???????????????';

--
-- Dumping data for table `system_role`
--

INSERT INTO `system_role` (`id`, `name`, `code`, `sort`, `data_scope`, `data_scope_dept_ids`, `status`, `type`, `remark`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`) VALUES
(1, '???????????????', 'super_admin', 1, 1, '', 0, 1, '???????????????', 'admin', '2021-01-05 17:03:48', '', '2022-02-22 05:08:21', b'0', 1),
(2, '????????????', 'common', 2, 2, '', 0, 1, '????????????', 'admin', '2021-01-05 17:03:48', '', '2022-02-22 05:08:20', b'0', 1),
(101, '????????????', 'test', 0, 1, '[]', 0, 2, '132', '', '2021-01-06 13:49:35', '1', '2022-05-28 16:11:05', b'0', 1),
(109, '???????????????', 'tenant_admin', 0, 1, '', 0, 1, '??????????????????', '1', '2022-02-22 00:56:14', '1', '2022-02-22 00:56:14', b'0', 121),
(110, '????????????', 'test', 0, 1, '[]', 0, 2, '??????', '110', '2022-02-23 00:14:34', '110', '2022-02-23 13:14:58', b'0', 121),
(111, '???????????????', 'tenant_admin', 0, 1, '', 0, 1, '??????????????????', '1', '2022-03-07 21:37:58', '1', '2022-03-07 21:37:58', b'0', 122),
(113, '???????????????', 'tenant_admin', 0, 1, '', 0, 1, '??????????????????', '1', '2022-05-17 10:07:10', '1', '2022-05-17 10:07:10', b'0', 124);

-- --------------------------------------------------------

--
-- Table structure for table `system_role_menu`
--

CREATE TABLE `system_role_menu` (
  `id` bigint(20) NOT NULL COMMENT '????????????',
  `role_id` bigint(20) NOT NULL COMMENT '??????ID',
  `menu_id` bigint(20) NOT NULL COMMENT '??????ID',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='????????????????????????';

--
-- Dumping data for table `system_role_menu`
--

INSERT INTO `system_role_menu` (`id`, `role_id`, `menu_id`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`) VALUES
(263, 109, 1, '1', '2022-02-22 00:56:14', '1', '2022-02-22 00:56:14', b'0', 121),
(434, 2, 1, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', b'0', 1),
(454, 2, 1093, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', b'0', 1),
(455, 2, 1094, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', b'0', 1),
(460, 2, 1100, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', b'0', 1),
(467, 2, 1107, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', b'0', 1),
(470, 2, 1110, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', b'0', 1),
(476, 2, 1117, '1', '2022-02-22 13:09:12', '1', '2022-07-27 19:27:12', b'1', 1),
(477, 2, 100, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', b'0', 1),
(478, 2, 101, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', b'0', 1),
(479, 2, 102, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', b'0', 1),
(480, 2, 1126, '1', '2022-02-22 13:09:12', '1', '2022-07-27 19:26:49', b'1', 1),
(481, 2, 103, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', b'0', 1),
(483, 2, 104, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', b'0', 1),
(485, 2, 105, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', b'0', 1),
(488, 2, 107, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', b'0', 1),
(490, 2, 108, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', b'0', 1),
(492, 2, 109, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', b'0', 1),
(498, 2, 1138, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', b'0', 1),
(523, 2, 1224, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', b'0', 1),
(524, 2, 1225, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', b'0', 1),
(541, 2, 500, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', b'0', 1),
(543, 2, 501, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', b'0', 1),
(675, 2, 2, '1', '2022-02-22 13:16:57', '1', '2022-02-22 13:16:57', b'0', 1),
(689, 2, 1077, '1', '2022-02-22 13:16:57', '1', '2022-02-22 13:16:57', b'0', 1),
(690, 2, 1078, '1', '2022-02-22 13:16:57', '1', '2022-02-22 13:16:57', b'0', 1),
(692, 2, 1083, '1', '2022-02-22 13:16:57', '1', '2022-02-22 13:16:57', b'0', 1),
(693, 2, 1084, '1', '2022-02-22 13:16:57', '1', '2022-02-22 13:16:57', b'0', 1),
(699, 2, 1090, '1', '2022-02-22 13:16:57', '1', '2022-02-22 13:16:57', b'0', 1),
(703, 2, 106, '1', '2022-02-22 13:16:57', '1', '2022-02-22 13:16:57', b'0', 1),
(704, 2, 110, '1', '2022-02-22 13:16:57', '1', '2022-02-22 13:16:57', b'0', 1),
(705, 2, 111, '1', '2022-02-22 13:16:57', '1', '2022-02-22 13:16:57', b'0', 1),
(706, 2, 112, '1', '2022-02-22 13:16:57', '1', '2022-02-22 13:16:57', b'0', 1),
(707, 2, 113, '1', '2022-02-22 13:16:57', '1', '2022-02-22 13:16:57', b'0', 1),
(1296, 110, 1, '110', '2022-02-23 00:23:55', '110', '2022-02-23 00:23:55', b'0', 121),
(1486, 109, 103, '1', '2022-02-23 19:32:14', '1', '2022-02-23 19:32:14', b'0', 121),
(1487, 109, 104, '1', '2022-02-23 19:32:14', '1', '2022-02-23 19:32:14', b'0', 121),
(1489, 1, 1, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', b'0', 1),
(1490, 1, 2, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', b'0', 1),
(1494, 1, 1077, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', b'0', 1),
(1495, 1, 1078, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', b'0', 1),
(1496, 1, 1083, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', b'0', 1),
(1497, 1, 1084, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', b'0', 1),
(1498, 1, 1090, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', b'0', 1),
(1499, 1, 1093, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', b'0', 1),
(1500, 1, 1094, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', b'0', 1),
(1501, 1, 1100, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', b'0', 1),
(1502, 1, 1107, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', b'0', 1),
(1503, 1, 1110, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', b'0', 1),
(1505, 1, 1117, '1', '2022-02-23 20:03:57', '1', '2022-07-27 19:27:12', b'1', 1),
(1506, 1, 100, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', b'0', 1),
(1507, 1, 101, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', b'0', 1),
(1508, 1, 102, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', b'0', 1),
(1509, 1, 1126, '1', '2022-02-23 20:03:57', '1', '2022-07-27 19:26:49', b'1', 1),
(1510, 1, 103, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', b'0', 1),
(1511, 1, 104, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', b'0', 1),
(1512, 1, 105, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', b'0', 1),
(1513, 1, 106, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', b'0', 1),
(1514, 1, 107, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', b'0', 1),
(1515, 1, 108, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', b'0', 1),
(1516, 1, 109, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', b'0', 1),
(1517, 1, 110, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', b'0', 1),
(1518, 1, 111, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', b'0', 1),
(1519, 1, 112, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', b'0', 1),
(1520, 1, 113, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', b'0', 1),
(1522, 1, 1138, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', b'0', 1),
(1525, 1, 1224, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', b'0', 1),
(1526, 1, 1225, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', b'0', 1),
(1527, 1, 500, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', b'0', 1),
(1528, 1, 501, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', b'0', 1),
(1529, 109, 1024, '1', '2022-02-23 20:30:14', '1', '2022-02-23 20:30:14', b'0', 121),
(1530, 109, 1025, '1', '2022-02-23 20:30:14', '1', '2022-02-23 20:30:14', b'0', 121),
(1536, 109, 1017, '1', '2022-02-23 20:30:14', '1', '2022-02-23 20:30:14', b'0', 121),
(1537, 109, 1018, '1', '2022-02-23 20:30:14', '1', '2022-02-23 20:30:14', b'0', 121),
(1538, 109, 1019, '1', '2022-02-23 20:30:14', '1', '2022-02-23 20:30:14', b'0', 121),
(1539, 109, 1020, '1', '2022-02-23 20:30:14', '1', '2022-02-23 20:30:14', b'0', 121),
(1540, 109, 1021, '1', '2022-02-23 20:30:14', '1', '2022-02-23 20:30:14', b'0', 121),
(1541, 109, 1022, '1', '2022-02-23 20:30:14', '1', '2022-02-23 20:30:14', b'0', 121),
(1542, 109, 1023, '1', '2022-02-23 20:30:14', '1', '2022-02-23 20:30:14', b'0', 121),
(1576, 111, 1024, '1', '2022-03-07 21:37:58', '1', '2022-03-07 21:37:58', b'0', 122),
(1577, 111, 1025, '1', '2022-03-07 21:37:58', '1', '2022-03-07 21:37:58', b'0', 122),
(1578, 111, 1, '1', '2022-03-07 21:37:58', '1', '2022-03-07 21:37:58', b'0', 122),
(1584, 111, 103, '1', '2022-03-07 21:37:58', '1', '2022-03-07 21:37:58', b'0', 122),
(1585, 111, 104, '1', '2022-03-07 21:37:58', '1', '2022-03-07 21:37:58', b'0', 122),
(1587, 111, 1017, '1', '2022-03-07 21:37:58', '1', '2022-03-07 21:37:58', b'0', 122),
(1588, 111, 1018, '1', '2022-03-07 21:37:58', '1', '2022-03-07 21:37:58', b'0', 122),
(1589, 111, 1019, '1', '2022-03-07 21:37:58', '1', '2022-03-07 21:37:58', b'0', 122),
(1590, 111, 1020, '1', '2022-03-07 21:37:58', '1', '2022-03-07 21:37:58', b'0', 122),
(1591, 111, 1021, '1', '2022-03-07 21:37:58', '1', '2022-03-07 21:37:58', b'0', 122),
(1592, 111, 1022, '1', '2022-03-07 21:37:58', '1', '2022-03-07 21:37:58', b'0', 122),
(1593, 111, 1023, '1', '2022-03-07 21:37:58', '1', '2022-03-07 21:37:58', b'0', 122),
(1594, 109, 102, '1', '2022-03-19 18:39:13', '1', '2022-03-19 18:39:13', b'0', 121),
(1595, 109, 1013, '1', '2022-03-19 18:39:13', '1', '2022-03-19 18:39:13', b'0', 121),
(1596, 109, 1014, '1', '2022-03-19 18:39:13', '1', '2022-03-19 18:39:13', b'0', 121),
(1597, 109, 1015, '1', '2022-03-19 18:39:13', '1', '2022-03-19 18:39:13', b'0', 121),
(1598, 109, 1016, '1', '2022-03-19 18:39:13', '1', '2022-03-19 18:39:13', b'0', 121),
(1599, 111, 102, '1', '2022-03-19 18:39:13', '1', '2022-03-19 18:39:13', b'0', 122),
(1600, 111, 1013, '1', '2022-03-19 18:39:13', '1', '2022-03-19 18:39:13', b'0', 122),
(1601, 111, 1014, '1', '2022-03-19 18:39:13', '1', '2022-03-19 18:39:13', b'0', 122),
(1602, 111, 1015, '1', '2022-03-19 18:39:13', '1', '2022-03-19 18:39:13', b'0', 122),
(1603, 111, 1016, '1', '2022-03-19 18:39:13', '1', '2022-03-19 18:39:13', b'0', 122),
(1604, 101, 1216, '1', '2022-03-19 21:45:52', '1', '2022-07-27 19:23:25', b'1', 1),
(1605, 101, 1217, '1', '2022-03-19 21:45:52', '1', '2022-07-27 19:23:23', b'1', 1),
(1606, 101, 1218, '1', '2022-03-19 21:45:52', '1', '2022-07-27 19:23:21', b'1', 1),
(1607, 101, 1219, '1', '2022-03-19 21:45:52', '1', '2022-07-27 19:23:06', b'1', 1),
(1608, 101, 1220, '1', '2022-03-19 21:45:52', '1', '2022-07-27 19:23:04', b'1', 1),
(1609, 101, 1221, '1', '2022-03-19 21:45:52', '1', '2022-07-27 19:22:54', b'1', 1),
(1610, 101, 5, '1', '2022-03-19 21:45:52', '1', '2022-07-27 19:22:38', b'1', 1),
(1611, 101, 1222, '1', '2022-03-19 21:45:52', '1', '2022-07-27 19:22:51', b'1', 1),
(1612, 101, 1118, '1', '2022-03-19 21:45:52', '1', '2022-07-27 19:22:34', b'1', 1),
(1613, 101, 1119, '1', '2022-03-19 21:45:52', '1', '2022-07-27 19:22:31', b'1', 1),
(1614, 101, 1120, '1', '2022-03-19 21:45:52', '1', '2022-07-27 19:22:28', b'1', 1),
(1615, 101, 1185, '1', '2022-03-19 21:45:52', '1', '2022-07-27 19:24:53', b'1', 1),
(1616, 101, 1186, '1', '2022-03-19 21:45:52', '1', '2022-07-27 19:24:49', b'1', 1),
(1617, 101, 1187, '1', '2022-03-19 21:45:52', '1', '2022-07-27 19:24:47', b'1', 1),
(1618, 101, 1188, '1', '2022-03-19 21:45:52', '1', '2022-07-27 19:24:44', b'1', 1),
(1619, 101, 1189, '1', '2022-03-19 21:45:52', '1', '2022-07-27 19:24:42', b'1', 1),
(1620, 101, 1190, '1', '2022-03-19 21:45:52', '1', '2022-07-27 19:24:39', b'1', 1),
(1621, 101, 1191, '1', '2022-03-19 21:45:52', '1', '2022-07-27 19:24:37', b'1', 1),
(1622, 101, 1192, '1', '2022-03-19 21:45:52', '1', '2022-07-27 19:24:35', b'1', 1),
(1623, 101, 1193, '1', '2022-03-19 21:45:52', '1', '2022-07-27 19:24:17', b'1', 1),
(1624, 101, 1194, '1', '2022-03-19 21:45:52', '1', '2022-07-27 19:24:14', b'1', 1),
(1625, 101, 1195, '1', '2022-03-19 21:45:52', '1', '2022-07-27 19:24:12', b'1', 1),
(1626, 101, 1196, '1', '2022-03-19 21:45:52', '1', '2022-07-27 19:24:09', b'1', 1),
(1627, 101, 1197, '1', '2022-03-19 21:45:52', '1', '2022-07-27 19:24:00', b'1', 1),
(1628, 101, 1198, '1', '2022-03-19 21:45:52', '1', '2022-07-27 19:23:58', b'1', 1),
(1629, 101, 1199, '1', '2022-03-19 21:45:52', '1', '2022-07-27 19:23:54', b'1', 1),
(1630, 101, 1200, '1', '2022-03-19 21:45:52', '1', '2022-07-27 19:23:13', b'1', 1),
(1631, 101, 1201, '1', '2022-03-19 21:45:52', '1', '2022-07-27 19:23:09', b'1', 1),
(1632, 101, 1202, '1', '2022-03-19 21:45:52', '1', '2022-07-27 19:23:02', b'1', 1),
(1633, 101, 1207, '1', '2022-03-19 21:45:52', '1', '2022-07-27 19:22:57', b'1', 1),
(1634, 101, 1208, '1', '2022-03-19 21:45:52', '1', '2022-07-27 19:22:47', b'1', 1),
(1635, 101, 1209, '1', '2022-03-19 21:45:52', '1', '2022-07-27 19:24:31', b'1', 1),
(1636, 101, 1210, '1', '2022-03-19 21:45:52', '1', '2022-07-27 19:24:29', b'1', 1),
(1637, 101, 1211, '1', '2022-03-19 21:45:52', '1', '2022-07-27 19:24:26', b'1', 1),
(1638, 101, 1212, '1', '2022-03-19 21:45:52', '1', '2022-07-27 19:24:24', b'1', 1),
(1639, 101, 1213, '1', '2022-03-19 21:45:52', '1', '2022-07-27 19:24:22', b'1', 1),
(1640, 101, 1215, '1', '2022-03-19 21:45:52', '1', '2022-07-27 19:23:27', b'1', 1),
(1641, 101, 2, '1', '2022-04-01 22:21:24', '1', '2022-04-01 22:21:24', b'0', 1),
(1642, 101, 1031, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1643, 101, 1032, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1644, 101, 1033, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1645, 101, 1034, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1646, 101, 1035, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1647, 101, 1050, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1648, 101, 1051, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1649, 101, 1052, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1650, 101, 1053, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1651, 101, 1054, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1652, 101, 1056, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1653, 101, 1057, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1654, 101, 1058, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1655, 101, 1059, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1656, 101, 1060, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1657, 101, 1066, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1658, 101, 1067, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1659, 101, 1070, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1660, 101, 1071, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1661, 101, 1072, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1662, 101, 1073, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1663, 101, 1074, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1664, 101, 1075, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1665, 101, 1076, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1666, 101, 1077, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1667, 101, 1078, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1668, 101, 1082, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1669, 101, 1083, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1670, 101, 1084, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1671, 101, 1085, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1672, 101, 1086, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1673, 101, 1087, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1674, 101, 1088, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1675, 101, 1089, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1676, 101, 1090, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1677, 101, 1091, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1678, 101, 1092, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1679, 101, 1237, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1680, 101, 1238, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1681, 101, 1239, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1682, 101, 1240, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1683, 101, 1241, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1684, 101, 1242, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1685, 101, 1243, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1687, 101, 106, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1688, 101, 110, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1689, 101, 111, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1690, 101, 112, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1691, 101, 113, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1692, 101, 114, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1693, 101, 115, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1694, 101, 116, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', b'0', 1),
(1712, 113, 1024, '1', '2022-05-17 10:07:10', '1', '2022-05-17 10:07:10', b'0', 124),
(1713, 113, 1025, '1', '2022-05-17 10:07:10', '1', '2022-05-17 10:07:10', b'0', 124),
(1714, 113, 1, '1', '2022-05-17 10:07:10', '1', '2022-05-17 10:07:10', b'0', 124),
(1715, 113, 102, '1', '2022-05-17 10:07:10', '1', '2022-05-17 10:07:10', b'0', 124),
(1716, 113, 103, '1', '2022-05-17 10:07:10', '1', '2022-05-17 10:07:10', b'0', 124),
(1717, 113, 104, '1', '2022-05-17 10:07:10', '1', '2022-05-17 10:07:10', b'0', 124),
(1718, 113, 1013, '1', '2022-05-17 10:07:10', '1', '2022-05-17 10:07:10', b'0', 124),
(1719, 113, 1014, '1', '2022-05-17 10:07:10', '1', '2022-05-17 10:07:10', b'0', 124),
(1720, 113, 1015, '1', '2022-05-17 10:07:10', '1', '2022-05-17 10:07:10', b'0', 124),
(1721, 113, 1016, '1', '2022-05-17 10:07:10', '1', '2022-05-17 10:07:10', b'0', 124),
(1722, 113, 1017, '1', '2022-05-17 10:07:10', '1', '2022-05-17 10:07:10', b'0', 124),
(1723, 113, 1018, '1', '2022-05-17 10:07:10', '1', '2022-05-17 10:07:10', b'0', 124),
(1724, 113, 1019, '1', '2022-05-17 10:07:10', '1', '2022-05-17 10:07:10', b'0', 124),
(1725, 113, 1020, '1', '2022-05-17 10:07:10', '1', '2022-05-17 10:07:10', b'0', 124),
(1726, 113, 1021, '1', '2022-05-17 10:07:10', '1', '2022-05-17 10:07:10', b'0', 124),
(1727, 113, 1022, '1', '2022-05-17 10:07:10', '1', '2022-05-17 10:07:10', b'0', 124),
(1728, 113, 1023, '1', '2022-05-17 10:07:10', '1', '2022-05-17 10:07:10', b'0', 124);

-- --------------------------------------------------------

--
-- Table structure for table `system_sensitive_word`
--

CREATE TABLE `system_sensitive_word` (
  `id` bigint(20) NOT NULL COMMENT '??????',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????????',
  `description` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????',
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `status` tinyint(4) NOT NULL COMMENT '??????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='?????????';

--
-- Dumping data for table `system_sensitive_word`
--

INSERT INTO `system_sensitive_word` (`id`, `name`, `description`, `tags`, `status`, `creator`, `create_time`, `updater`, `update_time`, `deleted`) VALUES
(3, '??????', '??????', '??????,??????', 0, '1', '2022-04-08 21:07:12', '1', '2022-04-09 10:28:14', b'0'),
(4, 'XXX', NULL, '??????', 0, '1', '2022-04-08 21:27:49', '1', '2022-04-08 21:27:49', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `system_sms_channel`
--

CREATE TABLE `system_sms_channel` (
  `id` bigint(20) NOT NULL COMMENT '??????',
  `signature` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `code` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `status` tinyint(4) NOT NULL COMMENT '????????????',
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????',
  `api_key` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????? API ?????????',
  `api_secret` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '?????? API ?????????',
  `callback_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '?????????????????? URL',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='????????????';

--
-- Dumping data for table `system_sms_channel`
--

INSERT INTO `system_sms_channel` (`id`, `signature`, `code`, `status`, `remark`, `api_key`, `api_secret`, `callback_url`, `creator`, `create_time`, `updater`, `update_time`, `deleted`) VALUES
(1, '??????', 'YUN_PIAN', 0, '????????????', '1555a14277cb8a608cf45a9e6a80d510', NULL, 'http://vdwapu.natappfree.cc/admin-api/system/sms/callback/yunpian', '', '2021-03-31 06:12:20', '1', '2022-02-23 16:48:44', b'0'),
(2, 'Ballcat', 'ALIYUN', 0, '?????????', 'LTAI5tCnKso2uG3kJ5gRav88', 'fGJ5SNXL7P1NHNRmJ7DJaMJGPyE55C', NULL, '', '2021-03-31 11:53:10', '1', '2021-04-14 00:08:37', b'0'),
(4, '????????????', 'DEBUG_DING_TALK', 0, '123', '696b5d8ead48071237e4aa5861ff08dbadb2b4ded1c688a7b7c9afc615579859', 'SEC5c4e5ff888bc8a9923ae47f59e7ccd30af1f14d93c55b4e2c9cb094e35aeed67', NULL, '1', '2021-04-13 00:23:14', '1', '2022-03-27 20:29:49', b'0'),
(6, '????????????', 'DEBUG_DING_TALK', 0, NULL, '696b5d8ead48071237e4aa5861ff08dbadb2b4ded1c688a7b7c9afc615579859', 'SEC5c4e5ff888bc8a9923ae47f59e7ccd30af1f14d93c55b4e2c9cb094e35aeed67', NULL, '1', '2022-04-10 23:07:59', '1', '2022-05-16 20:34:49', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `system_sms_code`
--

CREATE TABLE `system_sms_code` (
  `id` bigint(20) NOT NULL COMMENT '??????',
  `mobile` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????????',
  `code` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????????',
  `create_ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????? IP',
  `scene` tinyint(4) NOT NULL COMMENT '????????????',
  `today_index` tinyint(4) NOT NULL COMMENT '????????????????????????',
  `used` tinyint(4) NOT NULL COMMENT '????????????',
  `used_time` datetime DEFAULT NULL COMMENT '????????????',
  `used_ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '?????? IP',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='???????????????';

-- --------------------------------------------------------

--
-- Table structure for table `system_sms_log`
--

CREATE TABLE `system_sms_log` (
  `id` bigint(20) NOT NULL COMMENT '??????',
  `channel_id` bigint(20) NOT NULL COMMENT '??????????????????',
  `channel_code` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '??????????????????',
  `template_id` bigint(20) NOT NULL COMMENT '????????????',
  `template_code` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `template_type` tinyint(4) NOT NULL COMMENT '????????????',
  `template_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `template_params` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `api_template_id` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????? API ???????????????',
  `mobile` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????????',
  `user_id` bigint(20) DEFAULT NULL COMMENT '????????????',
  `user_type` tinyint(4) DEFAULT NULL COMMENT '????????????',
  `send_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '????????????',
  `send_time` datetime DEFAULT NULL COMMENT '????????????',
  `send_code` int(11) DEFAULT NULL COMMENT '?????????????????????',
  `send_msg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '?????????????????????',
  `api_send_code` varchar(63) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '?????? API ?????????????????????',
  `api_send_msg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '?????? API ?????????????????????',
  `api_request_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '?????? API ??????????????????????????? ID',
  `api_serial_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '?????? API ?????????????????????',
  `receive_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '????????????',
  `receive_time` datetime DEFAULT NULL COMMENT '????????????',
  `api_receive_code` varchar(63) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'API ?????????????????????',
  `api_receive_msg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'API ?????????????????????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='????????????';

-- --------------------------------------------------------

--
-- Table structure for table `system_sms_template`
--

CREATE TABLE `system_sms_template` (
  `id` bigint(20) NOT NULL COMMENT '??????',
  `type` tinyint(4) NOT NULL COMMENT '????????????',
  `status` tinyint(4) NOT NULL COMMENT '????????????',
  `code` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `name` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `params` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????',
  `api_template_id` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????? API ???????????????',
  `channel_id` bigint(20) NOT NULL COMMENT '??????????????????',
  `channel_code` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '??????????????????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='????????????';

--
-- Dumping data for table `system_sms_template`
--

INSERT INTO `system_sms_template` (`id`, `type`, `status`, `code`, `name`, `content`, `params`, `remark`, `api_template_id`, `channel_id`, `channel_code`, `creator`, `create_time`, `updater`, `update_time`, `deleted`) VALUES
(2, 1, 0, 'test_01', '?????????????????????', '????????????????????????{operation}?????????????????????{code}', '[\"operation\",\"code\"]', NULL, '4383920', 1, 'YUN_PIAN', '', '2021-03-31 10:49:38', '1', '2021-04-10 01:22:00', b'0'),
(3, 1, 0, 'test_02', '????????????', '???????????????{code}???????????????5??????????????????????????????????????????', '[\"code\"]', NULL, 'SMS_207945135', 2, 'ALIYUN', '', '2021-03-31 11:56:30', '1', '2021-04-10 01:22:02', b'0'),
(6, 3, 0, 'test-01', '????????????', '????????? {name}', '[\"name\"]', 'f?????????', '4383920', 1, 'YUN_PIAN', '1', '2021-04-10 01:07:21', '1', '2021-04-10 01:22:05', b'0'),
(7, 3, 0, 'test-04', '?????????', '??????{name}?????????{code}', '[\"name\",\"code\"]', NULL, 'suibian', 4, 'DEBUG_DING_TALK', '1', '2021-04-13 00:29:53', '1', '2021-04-14 00:30:38', b'0'),
(8, 1, 0, 'user-sms-login', '????????????????????????', '??????????????????{code}', '[\"code\"]', NULL, '4372216', 1, 'YUN_PIAN', '1', '2021-10-11 08:10:00', '1', '2021-10-11 08:10:00', b'0'),
(9, 2, 0, 'bpm_task_assigned', '??????????????????????????????', '???????????????????????????????????????{processInstanceName}-{taskName}???????????????{startUserNickname}??????????????????{detailUrl}', '[\"processInstanceName\",\"taskName\",\"startUserNickname\",\"detailUrl\"]', NULL, 'suibian', 4, 'DEBUG_DING_TALK', '1', '2022-01-21 22:31:19', '1', '2022-01-22 00:03:36', b'0'),
(10, 2, 0, 'bpm_process_instance_reject', '?????????????????????????????????', '?????????????????????????????????{processInstanceName}????????????{reason}??????????????????{detailUrl}', '[\"processInstanceName\",\"reason\",\"detailUrl\"]', NULL, 'suibian', 4, 'DEBUG_DING_TALK', '1', '2022-01-22 00:03:31', '1', '2022-05-01 12:33:14', b'0'),
(11, 2, 0, 'bpm_process_instance_approve', '??????????????????????????????', '??????????????????????????????{processInstanceName}??????????????????{detailUrl}', '[\"processInstanceName\",\"detailUrl\"]', NULL, 'suibian', 4, 'DEBUG_DING_TALK', '1', '2022-01-22 00:04:31', '1', '2022-03-27 20:32:21', b'0'),
(12, 2, 0, 'demo', '????????????', '????????????????????????', '[]', NULL, 'biubiubiu', 6, 'DEBUG_DING_TALK', '1', '2022-04-10 23:22:49', '1', '2022-04-10 23:22:49', b'0'),
(13, 1, 0, 'admin-sms-login', '????????????????????????', '??????????????????{code}', '[\"code\"]', '', '4372216', 1, 'YUN_PIAN', '1', '2021-10-11 08:10:00', '1', '2021-10-11 08:10:00', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `system_social_user`
--

CREATE TABLE `system_social_user` (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT '??????(????????????)',
  `type` tinyint(4) NOT NULL COMMENT '?????????????????????',
  `openid` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????? openid',
  `token` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '?????? token',
  `raw_token_info` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????? Token ?????????????????? JSON ??????',
  `nickname` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `raw_user_info` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????????????????????????????? JSON ??????',
  `code` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????????????? code',
  `state` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????????????? state',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='???????????????';

-- --------------------------------------------------------

--
-- Table structure for table `system_social_user_bind`
--

CREATE TABLE `system_social_user_bind` (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT '??????(????????????)',
  `user_id` bigint(20) NOT NULL COMMENT '????????????',
  `user_type` tinyint(4) NOT NULL COMMENT '????????????',
  `social_type` tinyint(4) NOT NULL COMMENT '?????????????????????',
  `social_user_id` bigint(20) NOT NULL COMMENT '?????????????????????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='???????????????';

-- --------------------------------------------------------

--
-- Table structure for table `system_tenant`
--

CREATE TABLE `system_tenant` (
  `id` bigint(20) NOT NULL COMMENT '????????????',
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????????',
  `contact_user_id` bigint(20) DEFAULT NULL COMMENT '????????????????????????',
  `contact_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????????',
  `contact_mobile` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '????????????',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '???????????????0?????? 1?????????',
  `domain` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '????????????',
  `package_id` bigint(20) NOT NULL COMMENT '??????????????????',
  `expire_time` datetime NOT NULL COMMENT '????????????',
  `account_count` int(11) NOT NULL COMMENT '????????????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='?????????';

--
-- Dumping data for table `system_tenant`
--

INSERT INTO `system_tenant` (`id`, `name`, `contact_user_id`, `contact_name`, `contact_mobile`, `status`, `domain`, `package_id`, `expire_time`, `account_count`, `creator`, `create_time`, `updater`, `update_time`, `deleted`) VALUES
(1, '????????????', NULL, '??????', '17321315478', 0, 'https://www.iocoder.cn', 0, '2099-02-19 17:14:16', 9999, '1', '2021-01-05 17:03:47', '1', '2022-02-23 12:15:11', b'0'),
(121, '?????????', 110, '??????2', '15601691300', 0, 'http://www.iocoder.cn', 111, '2024-03-11 00:00:00', 20, '1', '2022-02-22 00:56:14', '1', '2022-05-17 10:03:59', b'0'),
(122, '????????????', 113, '??????', '15601691300', 0, 'https://www.iocoder.cn', 111, '2022-04-30 00:00:00', 50, '1', '2022-03-07 21:37:58', '1', '2022-03-07 21:37:58', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `system_tenant_package`
--

CREATE TABLE `system_tenant_package` (
  `id` bigint(20) NOT NULL COMMENT '????????????',
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????????',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '???????????????0?????? 1?????????',
  `remark` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '??????',
  `menu_ids` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????????????????????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='???????????????';

--
-- Dumping data for table `system_tenant_package`
--

INSERT INTO `system_tenant_package` (`id`, `name`, `status`, `remark`, `menu_ids`, `creator`, `create_time`, `updater`, `update_time`, `deleted`) VALUES
(111, '????????????', 0, '?????????', '[1024,1025,1,102,103,104,1013,1014,1015,1016,1017,1018,1019,1020,1021,1022,1023]', '1', '2022-02-22 00:54:00', '1', '2022-03-19 18:39:13', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `system_users`
--

CREATE TABLE `system_users` (
  `id` bigint(20) NOT NULL COMMENT '??????ID',
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '??????',
  `nickname` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `remark` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '??????ID',
  `post_ids` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '??????????????????',
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '????????????',
  `mobile` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '????????????',
  `sex` tinyint(4) DEFAULT 0 COMMENT '????????????',
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '????????????',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '???????????????0?????? 1?????????',
  `login_ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '????????????IP',
  `login_date` datetime DEFAULT NULL COMMENT '??????????????????',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='???????????????';

--
-- Dumping data for table `system_users`
--

INSERT INTO `system_users` (`id`, `username`, `password`, `nickname`, `remark`, `dept_id`, `post_ids`, `email`, `mobile`, `sex`, `avatar`, `status`, `login_ip`, `login_date`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`) VALUES
(1, 'admin', '$2a$10$0acJOIk2D25/oC87nyclE..0lzeu9DtQ/n3geP4fkun/zIVRhHJIO', '????????????', '?????????', 103, '[1]', 'aoteman@126.com', '15612345678', 1, 'http://test.yudao.iocoder.cn/48934f2f-92d4-4250-b917-d10d2b262c6a', 0, '0:0:0:0:0:0:0:1', '2022-07-27 19:03:23', 'admin', '2021-01-05 17:03:47', NULL, '2022-07-27 19:03:23', b'0', 1),
(100, 'yudao', '$2a$10$11U48RhyJ5pSBYWSn12AD./ld671.ycSzJHbyrtpeoMeYiw31eo8a', '??????', '????????????', 104, '[1]', 'yudao@iocoder.cn', '15601691300', 1, '', 1, '127.0.0.1', '2022-05-22 19:35:33', '', '2021-01-07 09:07:17', NULL, '2022-05-22 19:35:33', b'0', 1),
(103, 'yuanma', '$2a$10$wWoPT7sqriM2O1YXRL.je.GiL538OR6ZTN8aQZr9JAGdnpCH2tpYe', '??????', NULL, 106, NULL, 'yuanma@iocoder.cn', '15601701300', 0, '', 0, '127.0.0.1', '2022-01-18 00:33:40', '', '2021-01-13 23:50:35', NULL, '2022-01-18 00:33:40', b'0', 1),
(104, 'test', '$2a$10$GP8zvqHB//TekuzYZSBYAuBQJiNq1.fxQVDYJ.uBCOnWCtDVKE4H6', '?????????', NULL, 107, '[1]', '111@qq.com', '15601691200', 1, '', 0, '127.0.0.1', '2022-05-28 15:43:17', '', '2021-01-21 02:13:53', NULL, '2022-05-28 15:43:17', b'0', 1),
(107, 'admin107', '$2a$10$dYOOBKMO93v/.ReCqzyFg.o67Tqk.bbc2bhrpyBGkIw9aypCtr2pm', '??????', NULL, NULL, NULL, '', '15601691300', 0, '', 0, '', NULL, '1', '2022-02-20 22:59:33', '1', '2022-02-27 08:26:51', b'0', 118),
(108, 'admin108', '$2a$10$y6mfvKoNYL1GXWak8nYwVOH.kCWqjactkzdoIDgiKl93WN3Ejg.Lu', '??????', NULL, NULL, NULL, '', '15601691300', 0, '', 0, '', NULL, '1', '2022-02-20 23:00:50', '1', '2022-02-27 08:26:53', b'0', 119),
(109, 'admin109', '$2a$10$JAqvH0tEc0I7dfDVBI7zyuB4E3j.uH6daIjV53.vUS6PknFkDJkuK', '??????', NULL, NULL, NULL, '', '15601691300', 0, '', 0, '', NULL, '1', '2022-02-20 23:11:50', '1', '2022-02-27 08:26:56', b'0', 120),
(110, 'admin110', '$2a$10$qYxoXs0ogPHgYllyEneYde9xcCW5hZgukrxeXZ9lmLhKse8TK6IwW', '??????', NULL, NULL, NULL, '', '15601691300', 0, '', 0, '127.0.0.1', '2022-02-23 19:36:28', '1', '2022-02-22 00:56:14', NULL, '2022-02-27 08:26:59', b'0', 121),
(111, 'test', '$2a$10$mExveopHUx9Q4QiLtAzhDeH3n4/QlNLzEsM4AqgxKrU.ciUZDXZCy', '????????????', NULL, NULL, '[]', '', '', 0, '', 0, '', NULL, '110', '2022-02-23 13:14:33', '110', '2022-02-23 13:14:33', b'0', 121),
(112, 'newobject', '$2a$10$jh5MsR.ud/gKe3mVeUp5t.nEXGDSmHyv5OYjWQwHO8wlGmMSI9Twy', '?????????', NULL, NULL, '[]', '', '', 0, '', 0, '', NULL, '1', '2022-02-23 19:08:03', '1', '2022-02-23 19:08:03', b'0', 1),
(113, 'aoteman', '$2a$10$0acJOIk2D25/oC87nyclE..0lzeu9DtQ/n3geP4fkun/zIVRhHJIO', '??????', NULL, NULL, NULL, '', '15601691300', 0, '', 0, '127.0.0.1', '2022-03-19 18:38:51', '1', '2022-03-07 21:37:58', NULL, '2022-03-19 18:38:51', b'0', 122),
(114, 'hrmgr', '$2a$10$TR4eybBioGRhBmDBWkqWLO6NIh3mzYa8KBKDDB5woiGYFVlRAi.fu', 'hr ?????????', NULL, NULL, '[3]', '', '', 0, '', 0, '127.0.0.1', '2022-03-19 22:15:43', '1', '2022-03-19 21:50:58', NULL, '2022-03-19 22:15:43', b'0', 1),
(115, 'aotemane', '$2a$10$/WCwGHu1eq0wOVDd/u8HweJ0gJCHyLS6T7ndCqI8UXZAQom1etk2e', '1', '11', 101, '[]', '', '', 1, '', 0, '', NULL, '1', '2022-04-30 02:55:43', '1', '2022-05-22 20:18:45', b'0', 1),
(116, '15601691302', '$2a$10$L5C4S0U6adBWMvFv1Wwl4.DI/NwYS3WIfLj5Q.Naqr5II8CmqsDZ6', '??????', NULL, NULL, NULL, '', '', 0, '', 0, '', NULL, '1', '2022-05-17 10:07:10', '1', '2022-05-17 10:07:10', b'0', 124);

-- --------------------------------------------------------

--
-- Table structure for table `system_user_post`
--

CREATE TABLE `system_user_post` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `user_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '??????ID',
  `post_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '??????ID',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='???????????????';

--
-- Dumping data for table `system_user_post`
--

INSERT INTO `system_user_post` (`id`, `user_id`, `post_id`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`) VALUES
(112, 1, 1, 'admin', '2022-05-02 07:25:24', 'admin', '2022-05-02 07:25:24', b'0', 1),
(113, 100, 1, 'admin', '2022-05-02 07:25:24', 'admin', '2022-05-02 07:25:24', b'0', 1),
(114, 114, 3, 'admin', '2022-05-02 07:25:24', 'admin', '2022-05-02 07:25:24', b'0', 1),
(115, 104, 1, '1', '2022-05-16 19:36:28', '1', '2022-05-16 19:36:28', b'0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_user_role`
--

CREATE TABLE `system_user_role` (
  `id` bigint(20) NOT NULL COMMENT '????????????',
  `user_id` bigint(20) NOT NULL COMMENT '??????ID',
  `role_id` bigint(20) NOT NULL COMMENT '??????ID',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) DEFAULT b'0' COMMENT '????????????',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='????????????????????????';

--
-- Dumping data for table `system_user_role`
--

INSERT INTO `system_user_role` (`id`, `user_id`, `role_id`, `creator`, `create_time`, `updater`, `update_time`, `deleted`, `tenant_id`) VALUES
(1, 1, 1, '', '2022-01-11 13:19:45', '', '2022-05-12 12:35:17', b'0', 1),
(2, 2, 2, '', '2022-01-11 13:19:45', '', '2022-05-12 12:35:13', b'0', 1),
(4, 100, 101, '', '2022-01-11 13:19:45', '', '2022-05-12 12:35:13', b'0', 1),
(5, 100, 1, '', '2022-01-11 13:19:45', '', '2022-05-12 12:35:12', b'0', 1),
(6, 100, 2, '', '2022-01-11 13:19:45', '', '2022-05-12 12:35:11', b'0', 1),
(10, 103, 1, '1', '2022-01-11 13:19:45', '1', '2022-01-11 13:19:45', b'0', 1),
(11, 107, 106, '1', '2022-02-20 22:59:33', '1', '2022-02-20 22:59:33', b'0', 118),
(12, 108, 107, '1', '2022-02-20 23:00:50', '1', '2022-02-20 23:00:50', b'0', 119),
(13, 109, 108, '1', '2022-02-20 23:11:50', '1', '2022-02-20 23:11:50', b'0', 120),
(14, 110, 109, '1', '2022-02-22 00:56:14', '1', '2022-02-22 00:56:14', b'0', 121),
(15, 111, 110, '110', '2022-02-23 13:14:38', '110', '2022-02-23 13:14:38', b'0', 121),
(16, 113, 111, '1', '2022-03-07 21:37:58', '1', '2022-03-07 21:37:58', b'0', 122),
(17, 114, 101, '1', '2022-03-19 21:51:13', '1', '2022-03-19 21:51:13', b'0', 1),
(18, 1, 2, '1', '2022-05-12 20:39:29', '1', '2022-05-12 20:39:29', b'0', 1),
(19, 116, 113, '1', '2022-05-17 10:07:10', '1', '2022-05-17 10:07:10', b'0', 124),
(20, 104, 101, '1', '2022-05-28 15:43:57', '1', '2022-05-28 15:43:57', b'0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_user_session`
--

CREATE TABLE `system_user_session` (
  `id` bigint(20) NOT NULL COMMENT '??????',
  `token` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `user_id` bigint(20) NOT NULL COMMENT '????????????',
  `user_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '????????????',
  `session_timeout` datetime NOT NULL COMMENT '??????????????????',
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????????',
  `user_ip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '?????? IP',
  `user_agent` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '????????? UA',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `create_time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '????????????',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '?????????',
  `update_time` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '????????????',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '????????????',
  `tenant_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '????????????'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='???????????? Session';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `act_evt_log`
--
ALTER TABLE `act_evt_log`
  ADD PRIMARY KEY (`LOG_NR_`);

--
-- Indexes for table `act_ge_bytearray`
--
ALTER TABLE `act_ge_bytearray`
  ADD PRIMARY KEY (`ID_`),
  ADD KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`);

--
-- Indexes for table `act_ge_property`
--
ALTER TABLE `act_ge_property`
  ADD PRIMARY KEY (`NAME_`);

--
-- Indexes for table `act_hi_actinst`
--
ALTER TABLE `act_hi_actinst`
  ADD PRIMARY KEY (`ID_`),
  ADD KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  ADD KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  ADD KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  ADD KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`);

--
-- Indexes for table `act_hi_attachment`
--
ALTER TABLE `act_hi_attachment`
  ADD PRIMARY KEY (`ID_`);

--
-- Indexes for table `act_hi_comment`
--
ALTER TABLE `act_hi_comment`
  ADD PRIMARY KEY (`ID_`);

--
-- Indexes for table `act_hi_detail`
--
ALTER TABLE `act_hi_detail`
  ADD PRIMARY KEY (`ID_`),
  ADD KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  ADD KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  ADD KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  ADD KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  ADD KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`);

--
-- Indexes for table `act_hi_entitylink`
--
ALTER TABLE `act_hi_entitylink`
  ADD PRIMARY KEY (`ID_`),
  ADD KEY `ACT_IDX_HI_ENT_LNK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`,`LINK_TYPE_`),
  ADD KEY `ACT_IDX_HI_ENT_LNK_REF_SCOPE` (`REF_SCOPE_ID_`,`REF_SCOPE_TYPE_`,`LINK_TYPE_`),
  ADD KEY `ACT_IDX_HI_ENT_LNK_ROOT_SCOPE` (`ROOT_SCOPE_ID_`,`ROOT_SCOPE_TYPE_`,`LINK_TYPE_`),
  ADD KEY `ACT_IDX_HI_ENT_LNK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`,`LINK_TYPE_`);

--
-- Indexes for table `act_hi_identitylink`
--
ALTER TABLE `act_hi_identitylink`
  ADD PRIMARY KEY (`ID_`),
  ADD KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  ADD KEY `ACT_IDX_HI_IDENT_LNK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  ADD KEY `ACT_IDX_HI_IDENT_LNK_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  ADD KEY `ACT_IDX_HI_IDENT_LNK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`),
  ADD KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  ADD KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`);

--
-- Indexes for table `act_hi_procinst`
--
ALTER TABLE `act_hi_procinst`
  ADD PRIMARY KEY (`ID_`),
  ADD UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  ADD KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  ADD KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`);

--
-- Indexes for table `act_hi_taskinst`
--
ALTER TABLE `act_hi_taskinst`
  ADD PRIMARY KEY (`ID_`),
  ADD KEY `ACT_IDX_HI_TASK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  ADD KEY `ACT_IDX_HI_TASK_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  ADD KEY `ACT_IDX_HI_TASK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`),
  ADD KEY `ACT_IDX_HI_TASK_INST_PROCINST` (`PROC_INST_ID_`);

--
-- Indexes for table `act_hi_tsk_log`
--
ALTER TABLE `act_hi_tsk_log`
  ADD PRIMARY KEY (`ID_`);

--
-- Indexes for table `act_hi_varinst`
--
ALTER TABLE `act_hi_varinst`
  ADD PRIMARY KEY (`ID_`),
  ADD KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`),
  ADD KEY `ACT_IDX_HI_VAR_SCOPE_ID_TYPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  ADD KEY `ACT_IDX_HI_VAR_SUB_ID_TYPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  ADD KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  ADD KEY `ACT_IDX_HI_PROCVAR_TASK_ID` (`TASK_ID_`),
  ADD KEY `ACT_IDX_HI_PROCVAR_EXE` (`EXECUTION_ID_`);

--
-- Indexes for table `act_id_bytearray`
--
ALTER TABLE `act_id_bytearray`
  ADD PRIMARY KEY (`ID_`);

--
-- Indexes for table `act_id_group`
--
ALTER TABLE `act_id_group`
  ADD PRIMARY KEY (`ID_`);

--
-- Indexes for table `act_id_info`
--
ALTER TABLE `act_id_info`
  ADD PRIMARY KEY (`ID_`);

--
-- Indexes for table `act_id_membership`
--
ALTER TABLE `act_id_membership`
  ADD PRIMARY KEY (`USER_ID_`,`GROUP_ID_`),
  ADD KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`);

--
-- Indexes for table `act_id_priv`
--
ALTER TABLE `act_id_priv`
  ADD PRIMARY KEY (`ID_`),
  ADD UNIQUE KEY `ACT_UNIQ_PRIV_NAME` (`NAME_`);

--
-- Indexes for table `act_id_priv_mapping`
--
ALTER TABLE `act_id_priv_mapping`
  ADD PRIMARY KEY (`ID_`),
  ADD KEY `ACT_FK_PRIV_MAPPING` (`PRIV_ID_`),
  ADD KEY `ACT_IDX_PRIV_USER` (`USER_ID_`),
  ADD KEY `ACT_IDX_PRIV_GROUP` (`GROUP_ID_`);

--
-- Indexes for table `act_id_property`
--
ALTER TABLE `act_id_property`
  ADD PRIMARY KEY (`NAME_`);

--
-- Indexes for table `act_id_token`
--
ALTER TABLE `act_id_token`
  ADD PRIMARY KEY (`ID_`);

--
-- Indexes for table `act_id_user`
--
ALTER TABLE `act_id_user`
  ADD PRIMARY KEY (`ID_`);

--
-- Indexes for table `act_procdef_info`
--
ALTER TABLE `act_procdef_info`
  ADD PRIMARY KEY (`ID_`),
  ADD UNIQUE KEY `ACT_UNIQ_INFO_PROCDEF` (`PROC_DEF_ID_`),
  ADD KEY `ACT_IDX_INFO_PROCDEF` (`PROC_DEF_ID_`),
  ADD KEY `ACT_FK_INFO_JSON_BA` (`INFO_JSON_ID_`);

--
-- Indexes for table `act_re_deployment`
--
ALTER TABLE `act_re_deployment`
  ADD PRIMARY KEY (`ID_`);

--
-- Indexes for table `act_re_model`
--
ALTER TABLE `act_re_model`
  ADD PRIMARY KEY (`ID_`),
  ADD KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`),
  ADD KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`),
  ADD KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`);

--
-- Indexes for table `act_re_procdef`
--
ALTER TABLE `act_re_procdef`
  ADD PRIMARY KEY (`ID_`),
  ADD UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`,`DERIVED_VERSION_`,`TENANT_ID_`);

--
-- Indexes for table `act_ru_actinst`
--
ALTER TABLE `act_ru_actinst`
  ADD PRIMARY KEY (`ID_`),
  ADD KEY `ACT_IDX_RU_ACTI_START` (`START_TIME_`),
  ADD KEY `ACT_IDX_RU_ACTI_END` (`END_TIME_`),
  ADD KEY `ACT_IDX_RU_ACTI_PROC` (`PROC_INST_ID_`),
  ADD KEY `ACT_IDX_RU_ACTI_PROC_ACT` (`PROC_INST_ID_`,`ACT_ID_`),
  ADD KEY `ACT_IDX_RU_ACTI_EXEC` (`EXECUTION_ID_`),
  ADD KEY `ACT_IDX_RU_ACTI_EXEC_ACT` (`EXECUTION_ID_`,`ACT_ID_`),
  ADD KEY `ACT_IDX_RU_ACTI_TASK` (`TASK_ID_`);

--
-- Indexes for table `act_ru_deadletter_job`
--
ALTER TABLE `act_ru_deadletter_job`
  ADD PRIMARY KEY (`ID_`),
  ADD KEY `ACT_IDX_DEADLETTER_JOB_EXCEPTION_STACK_ID` (`EXCEPTION_STACK_ID_`),
  ADD KEY `ACT_IDX_DEADLETTER_JOB_CUSTOM_VALUES_ID` (`CUSTOM_VALUES_ID_`),
  ADD KEY `ACT_IDX_DEADLETTER_JOB_CORRELATION_ID` (`CORRELATION_ID_`),
  ADD KEY `ACT_IDX_DJOB_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  ADD KEY `ACT_IDX_DJOB_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  ADD KEY `ACT_IDX_DJOB_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`),
  ADD KEY `ACT_FK_DEADLETTER_JOB_EXECUTION` (`EXECUTION_ID_`),
  ADD KEY `ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  ADD KEY `ACT_FK_DEADLETTER_JOB_PROC_DEF` (`PROC_DEF_ID_`);

--
-- Indexes for table `act_ru_entitylink`
--
ALTER TABLE `act_ru_entitylink`
  ADD PRIMARY KEY (`ID_`),
  ADD KEY `ACT_IDX_ENT_LNK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`,`LINK_TYPE_`),
  ADD KEY `ACT_IDX_ENT_LNK_REF_SCOPE` (`REF_SCOPE_ID_`,`REF_SCOPE_TYPE_`,`LINK_TYPE_`),
  ADD KEY `ACT_IDX_ENT_LNK_ROOT_SCOPE` (`ROOT_SCOPE_ID_`,`ROOT_SCOPE_TYPE_`,`LINK_TYPE_`),
  ADD KEY `ACT_IDX_ENT_LNK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`,`LINK_TYPE_`);

--
-- Indexes for table `act_ru_event_subscr`
--
ALTER TABLE `act_ru_event_subscr`
  ADD PRIMARY KEY (`ID_`),
  ADD KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  ADD KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`);

--
-- Indexes for table `act_ru_execution`
--
ALTER TABLE `act_ru_execution`
  ADD PRIMARY KEY (`ID_`),
  ADD KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  ADD KEY `ACT_IDC_EXEC_ROOT` (`ROOT_PROC_INST_ID_`),
  ADD KEY `ACT_IDX_EXEC_REF_ID_` (`REFERENCE_ID_`),
  ADD KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  ADD KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  ADD KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  ADD KEY `ACT_FK_EXE_PROCDEF` (`PROC_DEF_ID_`);

--
-- Indexes for table `act_ru_external_job`
--
ALTER TABLE `act_ru_external_job`
  ADD PRIMARY KEY (`ID_`),
  ADD KEY `ACT_IDX_EXTERNAL_JOB_EXCEPTION_STACK_ID` (`EXCEPTION_STACK_ID_`),
  ADD KEY `ACT_IDX_EXTERNAL_JOB_CUSTOM_VALUES_ID` (`CUSTOM_VALUES_ID_`),
  ADD KEY `ACT_IDX_EXTERNAL_JOB_CORRELATION_ID` (`CORRELATION_ID_`),
  ADD KEY `ACT_IDX_EJOB_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  ADD KEY `ACT_IDX_EJOB_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  ADD KEY `ACT_IDX_EJOB_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`);

--
-- Indexes for table `act_ru_history_job`
--
ALTER TABLE `act_ru_history_job`
  ADD PRIMARY KEY (`ID_`);

--
-- Indexes for table `act_ru_identitylink`
--
ALTER TABLE `act_ru_identitylink`
  ADD PRIMARY KEY (`ID_`),
  ADD KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  ADD KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  ADD KEY `ACT_IDX_IDENT_LNK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  ADD KEY `ACT_IDX_IDENT_LNK_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  ADD KEY `ACT_IDX_IDENT_LNK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`),
  ADD KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  ADD KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  ADD KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`);

--
-- Indexes for table `act_ru_job`
--
ALTER TABLE `act_ru_job`
  ADD PRIMARY KEY (`ID_`),
  ADD KEY `ACT_IDX_JOB_EXCEPTION_STACK_ID` (`EXCEPTION_STACK_ID_`),
  ADD KEY `ACT_IDX_JOB_CUSTOM_VALUES_ID` (`CUSTOM_VALUES_ID_`),
  ADD KEY `ACT_IDX_JOB_CORRELATION_ID` (`CORRELATION_ID_`),
  ADD KEY `ACT_IDX_JOB_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  ADD KEY `ACT_IDX_JOB_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  ADD KEY `ACT_IDX_JOB_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`),
  ADD KEY `ACT_FK_JOB_EXECUTION` (`EXECUTION_ID_`),
  ADD KEY `ACT_FK_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  ADD KEY `ACT_FK_JOB_PROC_DEF` (`PROC_DEF_ID_`);

--
-- Indexes for table `act_ru_suspended_job`
--
ALTER TABLE `act_ru_suspended_job`
  ADD PRIMARY KEY (`ID_`),
  ADD KEY `ACT_IDX_SUSPENDED_JOB_EXCEPTION_STACK_ID` (`EXCEPTION_STACK_ID_`),
  ADD KEY `ACT_IDX_SUSPENDED_JOB_CUSTOM_VALUES_ID` (`CUSTOM_VALUES_ID_`),
  ADD KEY `ACT_IDX_SUSPENDED_JOB_CORRELATION_ID` (`CORRELATION_ID_`),
  ADD KEY `ACT_IDX_SJOB_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  ADD KEY `ACT_IDX_SJOB_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  ADD KEY `ACT_IDX_SJOB_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`),
  ADD KEY `ACT_FK_SUSPENDED_JOB_EXECUTION` (`EXECUTION_ID_`),
  ADD KEY `ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  ADD KEY `ACT_FK_SUSPENDED_JOB_PROC_DEF` (`PROC_DEF_ID_`);

--
-- Indexes for table `act_ru_task`
--
ALTER TABLE `act_ru_task`
  ADD PRIMARY KEY (`ID_`),
  ADD KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  ADD KEY `ACT_IDX_TASK_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  ADD KEY `ACT_IDX_TASK_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  ADD KEY `ACT_IDX_TASK_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`),
  ADD KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  ADD KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  ADD KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`);

--
-- Indexes for table `act_ru_timer_job`
--
ALTER TABLE `act_ru_timer_job`
  ADD PRIMARY KEY (`ID_`),
  ADD KEY `ACT_IDX_TIMER_JOB_EXCEPTION_STACK_ID` (`EXCEPTION_STACK_ID_`),
  ADD KEY `ACT_IDX_TIMER_JOB_CUSTOM_VALUES_ID` (`CUSTOM_VALUES_ID_`),
  ADD KEY `ACT_IDX_TIMER_JOB_CORRELATION_ID` (`CORRELATION_ID_`),
  ADD KEY `ACT_IDX_TIMER_JOB_DUEDATE` (`DUEDATE_`),
  ADD KEY `ACT_IDX_TJOB_SCOPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  ADD KEY `ACT_IDX_TJOB_SUB_SCOPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  ADD KEY `ACT_IDX_TJOB_SCOPE_DEF` (`SCOPE_DEFINITION_ID_`,`SCOPE_TYPE_`),
  ADD KEY `ACT_FK_TIMER_JOB_EXECUTION` (`EXECUTION_ID_`),
  ADD KEY `ACT_FK_TIMER_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  ADD KEY `ACT_FK_TIMER_JOB_PROC_DEF` (`PROC_DEF_ID_`);

--
-- Indexes for table `act_ru_variable`
--
ALTER TABLE `act_ru_variable`
  ADD PRIMARY KEY (`ID_`),
  ADD KEY `ACT_IDX_RU_VAR_SCOPE_ID_TYPE` (`SCOPE_ID_`,`SCOPE_TYPE_`),
  ADD KEY `ACT_IDX_RU_VAR_SUB_ID_TYPE` (`SUB_SCOPE_ID_`,`SCOPE_TYPE_`),
  ADD KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  ADD KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  ADD KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  ADD KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`);

--
-- Indexes for table `bpm_form`
--
ALTER TABLE `bpm_form`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `bpm_oa_leave`
--
ALTER TABLE `bpm_oa_leave`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `bpm_process_definition_ext`
--
ALTER TABLE `bpm_process_definition_ext`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `bpm_process_instance_ext`
--
ALTER TABLE `bpm_process_instance_ext`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `bpm_task_assign_rule`
--
ALTER TABLE `bpm_task_assign_rule`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `bpm_task_ext`
--
ALTER TABLE `bpm_task_ext`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `bpm_user_group`
--
ALTER TABLE `bpm_user_group`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `flw_channel_definition`
--
ALTER TABLE `flw_channel_definition`
  ADD PRIMARY KEY (`ID_`),
  ADD UNIQUE KEY `ACT_IDX_CHANNEL_DEF_UNIQ` (`KEY_`,`VERSION_`,`TENANT_ID_`);

--
-- Indexes for table `flw_event_definition`
--
ALTER TABLE `flw_event_definition`
  ADD PRIMARY KEY (`ID_`),
  ADD UNIQUE KEY `ACT_IDX_EVENT_DEF_UNIQ` (`KEY_`,`VERSION_`,`TENANT_ID_`);

--
-- Indexes for table `flw_event_deployment`
--
ALTER TABLE `flw_event_deployment`
  ADD PRIMARY KEY (`ID_`);

--
-- Indexes for table `flw_event_resource`
--
ALTER TABLE `flw_event_resource`
  ADD PRIMARY KEY (`ID_`);

--
-- Indexes for table `flw_ev_databasechangeloglock`
--
ALTER TABLE `flw_ev_databasechangeloglock`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `flw_ru_batch`
--
ALTER TABLE `flw_ru_batch`
  ADD PRIMARY KEY (`ID_`);

--
-- Indexes for table `flw_ru_batch_part`
--
ALTER TABLE `flw_ru_batch_part`
  ADD PRIMARY KEY (`ID_`),
  ADD KEY `FLW_IDX_BATCH_PART` (`BATCH_ID_`);

--
-- Indexes for table `infra_api_access_log`
--
ALTER TABLE `infra_api_access_log`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `infra_api_error_log`
--
ALTER TABLE `infra_api_error_log`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `infra_codegen_column`
--
ALTER TABLE `infra_codegen_column`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `infra_codegen_table`
--
ALTER TABLE `infra_codegen_table`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `infra_config`
--
ALTER TABLE `infra_config`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `infra_data_source_config`
--
ALTER TABLE `infra_data_source_config`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `infra_file`
--
ALTER TABLE `infra_file`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `infra_file_config`
--
ALTER TABLE `infra_file_config`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `infra_file_content`
--
ALTER TABLE `infra_file_content`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `infra_job`
--
ALTER TABLE `infra_job`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `infra_job_log`
--
ALTER TABLE `infra_job_log`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `infra_test_demo`
--
ALTER TABLE `infra_test_demo`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `member_user`
--
ALTER TABLE `member_user`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `uk_mobile` (`mobile`) USING BTREE COMMENT '?????????';

--
-- Indexes for table `pay_app`
--
ALTER TABLE `pay_app`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `pay_channel`
--
ALTER TABLE `pay_channel`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `pay_merchant`
--
ALTER TABLE `pay_merchant`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `pay_notify_log`
--
ALTER TABLE `pay_notify_log`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `pay_notify_task`
--
ALTER TABLE `pay_notify_task`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `pay_order`
--
ALTER TABLE `pay_order`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `pay_order_extension`
--
ALTER TABLE `pay_order_extension`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `pay_refund`
--
ALTER TABLE `pay_refund`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `qrtz_blob_triggers`
--
ALTER TABLE `qrtz_blob_triggers`
  ADD PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  ADD KEY `SCHED_NAME` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE;

--
-- Indexes for table `qrtz_calendars`
--
ALTER TABLE `qrtz_calendars`
  ADD PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`) USING BTREE;

--
-- Indexes for table `qrtz_cron_triggers`
--
ALTER TABLE `qrtz_cron_triggers`
  ADD PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE;

--
-- Indexes for table `qrtz_fired_triggers`
--
ALTER TABLE `qrtz_fired_triggers`
  ADD PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`) USING BTREE,
  ADD KEY `IDX_QRTZ_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`) USING BTREE,
  ADD KEY `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`) USING BTREE,
  ADD KEY `IDX_QRTZ_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`) USING BTREE,
  ADD KEY `IDX_QRTZ_FT_JG` (`SCHED_NAME`,`JOB_GROUP`) USING BTREE,
  ADD KEY `IDX_QRTZ_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  ADD KEY `IDX_QRTZ_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`) USING BTREE;

--
-- Indexes for table `qrtz_job_details`
--
ALTER TABLE `qrtz_job_details`
  ADD PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`) USING BTREE,
  ADD KEY `IDX_QRTZ_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`) USING BTREE,
  ADD KEY `IDX_QRTZ_J_GRP` (`SCHED_NAME`,`JOB_GROUP`) USING BTREE;

--
-- Indexes for table `qrtz_locks`
--
ALTER TABLE `qrtz_locks`
  ADD PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`) USING BTREE;

--
-- Indexes for table `qrtz_paused_trigger_grps`
--
ALTER TABLE `qrtz_paused_trigger_grps`
  ADD PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`) USING BTREE;

--
-- Indexes for table `qrtz_scheduler_state`
--
ALTER TABLE `qrtz_scheduler_state`
  ADD PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`) USING BTREE;

--
-- Indexes for table `qrtz_simple_triggers`
--
ALTER TABLE `qrtz_simple_triggers`
  ADD PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE;

--
-- Indexes for table `qrtz_simprop_triggers`
--
ALTER TABLE `qrtz_simprop_triggers`
  ADD PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE;

--
-- Indexes for table `qrtz_triggers`
--
ALTER TABLE `qrtz_triggers`
  ADD PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  ADD KEY `IDX_QRTZ_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`) USING BTREE,
  ADD KEY `IDX_QRTZ_T_JG` (`SCHED_NAME`,`JOB_GROUP`) USING BTREE,
  ADD KEY `IDX_QRTZ_T_C` (`SCHED_NAME`,`CALENDAR_NAME`) USING BTREE,
  ADD KEY `IDX_QRTZ_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`) USING BTREE,
  ADD KEY `IDX_QRTZ_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`) USING BTREE,
  ADD KEY `IDX_QRTZ_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`) USING BTREE,
  ADD KEY `IDX_QRTZ_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`) USING BTREE,
  ADD KEY `IDX_QRTZ_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`) USING BTREE,
  ADD KEY `IDX_QRTZ_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`) USING BTREE,
  ADD KEY `IDX_QRTZ_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`) USING BTREE,
  ADD KEY `IDX_QRTZ_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`) USING BTREE,
  ADD KEY `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`) USING BTREE;

--
-- Indexes for table `system_dept`
--
ALTER TABLE `system_dept`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `system_dict_data`
--
ALTER TABLE `system_dict_data`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `system_dict_type`
--
ALTER TABLE `system_dict_type`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `dict_type` (`type`) USING BTREE;

--
-- Indexes for table `system_error_code`
--
ALTER TABLE `system_error_code`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `system_login_log`
--
ALTER TABLE `system_login_log`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `system_menu`
--
ALTER TABLE `system_menu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `system_notice`
--
ALTER TABLE `system_notice`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `system_oauth2_access_token`
--
ALTER TABLE `system_oauth2_access_token`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `system_oauth2_approve`
--
ALTER TABLE `system_oauth2_approve`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `system_oauth2_client`
--
ALTER TABLE `system_oauth2_client`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `system_oauth2_code`
--
ALTER TABLE `system_oauth2_code`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `system_oauth2_refresh_token`
--
ALTER TABLE `system_oauth2_refresh_token`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `system_operate_log`
--
ALTER TABLE `system_operate_log`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `system_post`
--
ALTER TABLE `system_post`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `system_role`
--
ALTER TABLE `system_role`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `system_role_menu`
--
ALTER TABLE `system_role_menu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `system_sensitive_word`
--
ALTER TABLE `system_sensitive_word`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `system_sms_channel`
--
ALTER TABLE `system_sms_channel`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `system_sms_code`
--
ALTER TABLE `system_sms_code`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `idx_mobile` (`mobile`) USING BTREE COMMENT '?????????';

--
-- Indexes for table `system_sms_log`
--
ALTER TABLE `system_sms_log`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `system_sms_template`
--
ALTER TABLE `system_sms_template`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `system_social_user`
--
ALTER TABLE `system_social_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `system_social_user_bind`
--
ALTER TABLE `system_social_user_bind`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `system_tenant`
--
ALTER TABLE `system_tenant`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `system_tenant_package`
--
ALTER TABLE `system_tenant_package`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `system_users`
--
ALTER TABLE `system_users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `idx_username` (`username`,`update_time`,`tenant_id`) USING BTREE;

--
-- Indexes for table `system_user_post`
--
ALTER TABLE `system_user_post`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `system_user_role`
--
ALTER TABLE `system_user_role`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `system_user_session`
--
ALTER TABLE `system_user_session`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `act_evt_log`
--
ALTER TABLE `act_evt_log`
  MODIFY `LOG_NR_` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `act_hi_tsk_log`
--
ALTER TABLE `act_hi_tsk_log`
  MODIFY `ID_` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bpm_form`
--
ALTER TABLE `bpm_form`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????', AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `bpm_oa_leave`
--
ALTER TABLE `bpm_oa_leave`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????????????????', AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `bpm_process_definition_ext`
--
ALTER TABLE `bpm_process_definition_ext`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????', AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `bpm_process_instance_ext`
--
ALTER TABLE `bpm_process_instance_ext`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????', AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `bpm_task_assign_rule`
--
ALTER TABLE `bpm_task_assign_rule`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????', AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `bpm_task_ext`
--
ALTER TABLE `bpm_task_ext`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????', AUTO_INCREMENT=295;

--
-- AUTO_INCREMENT for table `bpm_user_group`
--
ALTER TABLE `bpm_user_group`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????', AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `infra_api_access_log`
--
ALTER TABLE `infra_api_access_log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '????????????', AUTO_INCREMENT=35150;

--
-- AUTO_INCREMENT for table `infra_api_error_log`
--
ALTER TABLE `infra_api_error_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '??????', AUTO_INCREMENT=628;

--
-- AUTO_INCREMENT for table `infra_codegen_column`
--
ALTER TABLE `infra_codegen_column`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????', AUTO_INCREMENT=1114;

--
-- AUTO_INCREMENT for table `infra_codegen_table`
--
ALTER TABLE `infra_codegen_table`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????', AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `infra_config`
--
ALTER TABLE `infra_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '????????????', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `infra_data_source_config`
--
ALTER TABLE `infra_data_source_config`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '????????????', AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `infra_file`
--
ALTER TABLE `infra_file`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '????????????', AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `infra_file_config`
--
ALTER TABLE `infra_file_config`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????', AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `infra_file_content`
--
ALTER TABLE `infra_file_content`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `infra_job`
--
ALTER TABLE `infra_job`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '????????????', AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `infra_job_log`
--
ALTER TABLE `infra_job_log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '????????????', AUTO_INCREMENT=25295;

--
-- AUTO_INCREMENT for table `infra_test_demo`
--
ALTER TABLE `infra_test_demo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????', AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `member_user`
--
ALTER TABLE `member_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????', AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `pay_app`
--
ALTER TABLE `pay_app`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '????????????', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pay_channel`
--
ALTER TABLE `pay_channel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '????????????', AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pay_merchant`
--
ALTER TABLE `pay_merchant`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '????????????', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pay_notify_log`
--
ALTER TABLE `pay_notify_log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '????????????', AUTO_INCREMENT=363051;

--
-- AUTO_INCREMENT for table `pay_notify_task`
--
ALTER TABLE `pay_notify_task`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '????????????', AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `pay_order`
--
ALTER TABLE `pay_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????????????????', AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `pay_order_extension`
--
ALTER TABLE `pay_order_extension`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????????????????', AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `pay_refund`
--
ALTER TABLE `pay_refund`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????????????????';

--
-- AUTO_INCREMENT for table `system_dept`
--
ALTER TABLE `system_dept`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????id', AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `system_dict_data`
--
ALTER TABLE `system_dict_data`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '????????????', AUTO_INCREMENT=1162;

--
-- AUTO_INCREMENT for table `system_dict_type`
--
ALTER TABLE `system_dict_type`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '????????????', AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `system_error_code`
--
ALTER TABLE `system_error_code`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '???????????????', AUTO_INCREMENT=5832;

--
-- AUTO_INCREMENT for table `system_login_log`
--
ALTER TABLE `system_login_log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????ID', AUTO_INCREMENT=1519;

--
-- AUTO_INCREMENT for table `system_menu`
--
ALTER TABLE `system_menu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????ID', AUTO_INCREMENT=1268;

--
-- AUTO_INCREMENT for table `system_notice`
--
ALTER TABLE `system_notice`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????ID', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `system_oauth2_access_token`
--
ALTER TABLE `system_oauth2_access_token`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????', AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `system_oauth2_approve`
--
ALTER TABLE `system_oauth2_approve`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????', AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `system_oauth2_client`
--
ALTER TABLE `system_oauth2_client`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????', AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `system_oauth2_code`
--
ALTER TABLE `system_oauth2_code`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????', AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `system_oauth2_refresh_token`
--
ALTER TABLE `system_oauth2_refresh_token`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????', AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `system_operate_log`
--
ALTER TABLE `system_operate_log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '????????????', AUTO_INCREMENT=2507;

--
-- AUTO_INCREMENT for table `system_post`
--
ALTER TABLE `system_post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????ID', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `system_role`
--
ALTER TABLE `system_role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????ID', AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `system_role_menu`
--
ALTER TABLE `system_role_menu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '????????????', AUTO_INCREMENT=1729;

--
-- AUTO_INCREMENT for table `system_sensitive_word`
--
ALTER TABLE `system_sensitive_word`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `system_sms_channel`
--
ALTER TABLE `system_sms_channel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `system_sms_code`
--
ALTER TABLE `system_sms_code`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????', AUTO_INCREMENT=469;

--
-- AUTO_INCREMENT for table `system_sms_log`
--
ALTER TABLE `system_sms_log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????', AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `system_sms_template`
--
ALTER TABLE `system_sms_template`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????', AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `system_social_user`
--
ALTER TABLE `system_social_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '??????(????????????)', AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `system_social_user_bind`
--
ALTER TABLE `system_social_user_bind`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '??????(????????????)', AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `system_tenant`
--
ALTER TABLE `system_tenant`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '????????????', AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `system_tenant_package`
--
ALTER TABLE `system_tenant_package`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '????????????', AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `system_users`
--
ALTER TABLE `system_users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????ID', AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `system_user_post`
--
ALTER TABLE `system_user_post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `system_user_role`
--
ALTER TABLE `system_user_role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '????????????', AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `system_user_session`
--
ALTER TABLE `system_user_session`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '??????', AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `act_ge_bytearray`
--
ALTER TABLE `act_ge_bytearray`
  ADD CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`);

--
-- Constraints for table `act_id_membership`
--
ALTER TABLE `act_id_membership`
  ADD CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`),
  ADD CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`);

--
-- Constraints for table `act_id_priv_mapping`
--
ALTER TABLE `act_id_priv_mapping`
  ADD CONSTRAINT `ACT_FK_PRIV_MAPPING` FOREIGN KEY (`PRIV_ID_`) REFERENCES `act_id_priv` (`ID_`);

--
-- Constraints for table `act_procdef_info`
--
ALTER TABLE `act_procdef_info`
  ADD CONSTRAINT `ACT_FK_INFO_JSON_BA` FOREIGN KEY (`INFO_JSON_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  ADD CONSTRAINT `ACT_FK_INFO_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`);

--
-- Constraints for table `act_re_model`
--
ALTER TABLE `act_re_model`
  ADD CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
  ADD CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  ADD CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`);

--
-- Constraints for table `act_ru_deadletter_job`
--
ALTER TABLE `act_ru_deadletter_job`
  ADD CONSTRAINT `ACT_FK_DEADLETTER_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  ADD CONSTRAINT `ACT_FK_DEADLETTER_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  ADD CONSTRAINT `ACT_FK_DEADLETTER_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  ADD CONSTRAINT `ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  ADD CONSTRAINT `ACT_FK_DEADLETTER_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`);

--
-- Constraints for table `act_ru_event_subscr`
--
ALTER TABLE `act_ru_event_subscr`
  ADD CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`);

--
-- Constraints for table `act_ru_execution`
--
ALTER TABLE `act_ru_execution`
  ADD CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE,
  ADD CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  ADD CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE;

--
-- Constraints for table `act_ru_external_job`
--
ALTER TABLE `act_ru_external_job`
  ADD CONSTRAINT `ACT_FK_EXTERNAL_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  ADD CONSTRAINT `ACT_FK_EXTERNAL_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`);

--
-- Constraints for table `act_ru_identitylink`
--
ALTER TABLE `act_ru_identitylink`
  ADD CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  ADD CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  ADD CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`);

--
-- Constraints for table `act_ru_job`
--
ALTER TABLE `act_ru_job`
  ADD CONSTRAINT `ACT_FK_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  ADD CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  ADD CONSTRAINT `ACT_FK_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  ADD CONSTRAINT `ACT_FK_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  ADD CONSTRAINT `ACT_FK_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`);

--
-- Constraints for table `act_ru_suspended_job`
--
ALTER TABLE `act_ru_suspended_job`
  ADD CONSTRAINT `ACT_FK_SUSPENDED_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  ADD CONSTRAINT `ACT_FK_SUSPENDED_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  ADD CONSTRAINT `ACT_FK_SUSPENDED_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  ADD CONSTRAINT `ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  ADD CONSTRAINT `ACT_FK_SUSPENDED_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`);

--
-- Constraints for table `act_ru_task`
--
ALTER TABLE `act_ru_task`
  ADD CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  ADD CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  ADD CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`);

--
-- Constraints for table `act_ru_timer_job`
--
ALTER TABLE `act_ru_timer_job`
  ADD CONSTRAINT `ACT_FK_TIMER_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  ADD CONSTRAINT `ACT_FK_TIMER_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  ADD CONSTRAINT `ACT_FK_TIMER_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  ADD CONSTRAINT `ACT_FK_TIMER_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  ADD CONSTRAINT `ACT_FK_TIMER_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`);

--
-- Constraints for table `act_ru_variable`
--
ALTER TABLE `act_ru_variable`
  ADD CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  ADD CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  ADD CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`);

--
-- Constraints for table `flw_ru_batch_part`
--
ALTER TABLE `flw_ru_batch_part`
  ADD CONSTRAINT `FLW_FK_BATCH_PART_PARENT` FOREIGN KEY (`BATCH_ID_`) REFERENCES `flw_ru_batch` (`ID_`);

--
-- Constraints for table `qrtz_blob_triggers`
--
ALTER TABLE `qrtz_blob_triggers`
  ADD CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`);

--
-- Constraints for table `qrtz_cron_triggers`
--
ALTER TABLE `qrtz_cron_triggers`
  ADD CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`);

--
-- Constraints for table `qrtz_simple_triggers`
--
ALTER TABLE `qrtz_simple_triggers`
  ADD CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`);

--
-- Constraints for table `qrtz_simprop_triggers`
--
ALTER TABLE `qrtz_simprop_triggers`
  ADD CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`);

--
-- Constraints for table `qrtz_triggers`
--
ALTER TABLE `qrtz_triggers`
  ADD CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
