-- --------------------------------------------------------
-- 主机:                           192.168.10.119
-- 服务器版本:                        5.6.35 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Linux
-- HeidiSQL 版本:                  9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 plesson 的数据库结构
DROP DATABASE IF EXISTS `plesson`;
CREATE DATABASE IF NOT EXISTS `plesson` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `plesson`;

-- 导出  表 plesson.auth_group 结构
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  plesson.auth_group 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- 导出  表 plesson.auth_group_permissions 结构
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  plesson.auth_group_permissions 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- 导出  表 plesson.auth_permission 结构
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- 正在导出表  plesson.auth_permission 的数据：~42 rows (大约)
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can add permission', 2, 'add_permission'),
	(5, 'Can change permission', 2, 'change_permission'),
	(6, 'Can delete permission', 2, 'delete_permission'),
	(7, 'Can add group', 3, 'add_group'),
	(8, 'Can change group', 3, 'change_group'),
	(9, 'Can delete group', 3, 'delete_group'),
	(10, 'Can add content type', 4, 'add_contenttype'),
	(11, 'Can change content type', 4, 'change_contenttype'),
	(12, 'Can delete content type', 4, 'delete_contenttype'),
	(13, 'Can add session', 5, 'add_session'),
	(14, 'Can change session', 5, 'change_session'),
	(15, 'Can delete session', 5, 'delete_session'),
	(16, 'Can add user', 6, 'add_user'),
	(17, 'Can change user', 6, 'change_user'),
	(18, 'Can delete user', 6, 'delete_user'),
	(19, 'Can add admin', 7, 'add_admin'),
	(20, 'Can change admin', 7, 'change_admin'),
	(21, 'Can delete admin', 7, 'delete_admin'),
	(22, 'Can add course', 8, 'add_course'),
	(23, 'Can change course', 8, 'change_course'),
	(24, 'Can delete course', 8, 'delete_course'),
	(25, 'Can add lesson', 9, 'add_lesson'),
	(26, 'Can change lesson', 9, 'change_lesson'),
	(27, 'Can delete lesson', 9, 'delete_lesson'),
	(28, 'Can add student', 10, 'add_student'),
	(29, 'Can change student', 10, 'change_student'),
	(30, 'Can delete student', 10, 'delete_student'),
	(31, 'Can add student checkin', 11, 'add_studentcheckin'),
	(32, 'Can change student checkin', 11, 'change_studentcheckin'),
	(33, 'Can delete student checkin', 11, 'delete_studentcheckin'),
	(34, 'Can add teacher', 12, 'add_teacher'),
	(35, 'Can change teacher', 12, 'change_teacher'),
	(36, 'Can delete teacher', 12, 'delete_teacher'),
	(37, 'Can add training', 13, 'add_training'),
	(38, 'Can change training', 13, 'change_training'),
	(39, 'Can delete training', 13, 'delete_training'),
	(40, 'Can add training grade', 14, 'add_traininggrade'),
	(41, 'Can change training grade', 14, 'change_traininggrade'),
	(42, 'Can delete training grade', 14, 'delete_traininggrade');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- 导出  表 plesson.common_user 结构
CREATE TABLE IF NOT EXISTS `common_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `usertype` smallint(5) unsigned NOT NULL,
  `desc` varchar(500) DEFAULT NULL,
  `idcardnumber` varchar(50) DEFAULT NULL,
  `avatar_url` varchar(300) DEFAULT NULL,
  `phonenumber` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `realname` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `common_user_idcardnumber_186fece1` (`idcardnumber`),
  KEY `common_user_phonenumber_ba820ce0` (`phonenumber`),
  KEY `common_user_realname_1d99824c` (`realname`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- 正在导出表  plesson.common_user 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `common_user` DISABLE KEYS */;
INSERT INTO `common_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `usertype`, `desc`, `idcardnumber`, `avatar_url`, `phonenumber`, `address`, `birth`, `realname`) VALUES
	(1, 'pbkdf2_sha256$36000$eKaf7Bcl7pLk$Sr1A1BihmY2iRAz5o3O/n+PzxsFltuSZiujqExOKlGE=', '2018-03-17 12:05:22.297492', 1, 'auto', '', '', 'auto@gmail.com', 1, 1, '2018-03-17 12:04:07.254189', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(2, 'pbkdf2_sha256$36000$WSu0mkIcwB0C$3fQxHq2SmU+Vkpltwn2LLBEmapfgn4BUZhtjFI09OiY=', NULL, 0, 'laojiang', '', '老江', '', 0, 1, '2018-03-17 12:07:27.322778', 2, NULL, '', NULL, '', NULL, NULL, NULL),
	(3, 'pbkdf2_sha256$36000$SfE4cbt56pXz$0aL1OgGA7Zn2yVnIGI4E6IhG+gRLYD2dDbUGpeWRBKg=', NULL, 0, 'mayonghui', '', '马永辉', '', 0, 1, '2018-03-17 12:10:23.177593', 3, NULL, '', NULL, '', NULL, NULL, NULL);
/*!40000 ALTER TABLE `common_user` ENABLE KEYS */;

-- 导出  表 plesson.common_user_groups 结构
CREATE TABLE IF NOT EXISTS `common_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `common_user_groups_user_id_group_id_ba201ca9_uniq` (`user_id`,`group_id`),
  KEY `common_user_groups_group_id_27a26245_fk_auth_group_id` (`group_id`),
  CONSTRAINT `common_user_groups_group_id_27a26245_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `common_user_groups_user_id_92ddbe7a_fk_common_user_id` FOREIGN KEY (`user_id`) REFERENCES `common_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  plesson.common_user_groups 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `common_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `common_user_groups` ENABLE KEYS */;

-- 导出  表 plesson.common_user_user_permissions 结构
CREATE TABLE IF NOT EXISTS `common_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `common_user_user_permissions_user_id_permission_id_5694f4c4_uniq` (`user_id`,`permission_id`),
  KEY `common_user_user_per_permission_id_a6da427c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `common_user_user_per_permission_id_a6da427c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `common_user_user_permissions_user_id_56b84879_fk_common_user_id` FOREIGN KEY (`user_id`) REFERENCES `common_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  plesson.common_user_user_permissions 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `common_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `common_user_user_permissions` ENABLE KEYS */;

-- 导出  表 plesson.django_admin_log 结构
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_common_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_common_user_id` FOREIGN KEY (`user_id`) REFERENCES `common_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  plesson.django_admin_log 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- 导出  表 plesson.django_content_type 结构
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- 正在导出表  plesson.django_content_type 的数据：~14 rows (大约)
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(7, 'common', 'admin'),
	(8, 'common', 'course'),
	(9, 'common', 'lesson'),
	(10, 'common', 'student'),
	(11, 'common', 'studentcheckin'),
	(12, 'common', 'teacher'),
	(13, 'common', 'training'),
	(14, 'common', 'traininggrade'),
	(6, 'common', 'user'),
	(4, 'contenttypes', 'contenttype'),
	(5, 'sessions', 'session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- 导出  表 plesson.django_migrations 结构
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- 正在导出表  plesson.django_migrations 的数据：~14 rows (大约)
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2018-03-17 11:58:15.071951'),
	(2, 'contenttypes', '0002_remove_content_type_name', '2018-03-17 11:58:15.141182'),
	(3, 'auth', '0001_initial', '2018-03-17 11:58:15.488492'),
	(4, 'auth', '0002_alter_permission_name_max_length', '2018-03-17 11:58:15.539295'),
	(5, 'auth', '0003_alter_user_email_max_length', '2018-03-17 11:58:15.549109'),
	(6, 'auth', '0004_alter_user_username_opts', '2018-03-17 11:58:15.557941'),
	(7, 'auth', '0005_alter_user_last_login_null', '2018-03-17 11:58:15.566771'),
	(8, 'auth', '0006_require_contenttypes_0002', '2018-03-17 11:58:15.570697'),
	(9, 'auth', '0007_alter_validators_add_error_messages', '2018-03-17 11:58:15.578548'),
	(10, 'auth', '0008_alter_user_username_max_length', '2018-03-17 11:58:15.587993'),
	(11, 'common', '0001_initial', '2018-03-17 11:58:17.943395'),
	(12, 'admin', '0001_initial', '2018-03-17 11:58:18.253069'),
	(13, 'admin', '0002_logentry_remove_auto_add', '2018-03-17 11:58:18.267794'),
	(14, 'sessions', '0001_initial', '2018-03-17 11:58:18.337308');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- 导出  表 plesson.django_session 结构
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  plesson.django_session 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('nnrw9xr6h8s25hdql2faxn59trmv73fo', 'ZGEwMDNiOThhNjBiZWZlM2E3YTcxMDE3MWFjMmM1NWJhM2E4NzBhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMmY1NmViYTEzZDg2YmIzNTRhYWFmN2RhNjFhZjU2OTRkZWZkODNiIiwidXQiOjF9', '2018-03-24 12:05:22.301417');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

-- 导出  表 plesson.sq_admin 结构
CREATE TABLE IF NOT EXISTS `sq_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `sq_admin_user_id_79783b2b_fk_common_user_id` FOREIGN KEY (`user_id`) REFERENCES `common_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  plesson.sq_admin 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `sq_admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `sq_admin` ENABLE KEYS */;

-- 导出  表 plesson.sq_course 结构
CREATE TABLE IF NOT EXISTS `sq_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `desc` varchar(1500) DEFAULT NULL,
  `display_idx` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- 正在导出表  plesson.sq_course 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `sq_course` DISABLE KEYS */;
INSERT INTO `sq_course` (`id`, `name`, `desc`, `display_idx`) VALUES
	(1, 'Python', 'Python基础与实战', 1),
	(2, 'Selenium', 'web自动化', 2);
/*!40000 ALTER TABLE `sq_course` ENABLE KEYS */;

-- 导出  表 plesson.sq_lesson 结构
CREATE TABLE IF NOT EXISTS `sq_lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `starttime` datetime(6) NOT NULL,
  `endtime` datetime(6) NOT NULL,
  `desc` varchar(1500) DEFAULT NULL,
  `course_id` int(11) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sq_lesson_course_id_68b93634_fk_sq_course_id` (`course_id`),
  KEY `sq_lesson_publisher_id_18874e2c_fk_common_user_id` (`publisher_id`),
  CONSTRAINT `sq_lesson_course_id_68b93634_fk_sq_course_id` FOREIGN KEY (`course_id`) REFERENCES `sq_course` (`id`),
  CONSTRAINT `sq_lesson_publisher_id_18874e2c_fk_common_user_id` FOREIGN KEY (`publisher_id`) REFERENCES `common_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  plesson.sq_lesson 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `sq_lesson` DISABLE KEYS */;
/*!40000 ALTER TABLE `sq_lesson` ENABLE KEYS */;

-- 导出  表 plesson.sq_student 结构
CREATE TABLE IF NOT EXISTS `sq_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `realname` varchar(30) NOT NULL,
  `startcoursedate` date NOT NULL,
  `graduated` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `desc` varchar(1500) DEFAULT NULL,
  `training_id` int(11) NOT NULL,
  `traininggrade_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `sq_student_user_id_graduated_active_6ad28af1_idx` (`user_id`,`graduated`,`active`),
  KEY `sq_student_realname_a4a1db46` (`realname`),
  KEY `sq_student_startcoursedate_47973464` (`startcoursedate`),
  KEY `sq_student_graduated_affc32ad` (`graduated`),
  KEY `sq_student_training_id_42794850_fk_sq_training_id` (`training_id`),
  KEY `sq_student_traininggrade_id_c4557f53_fk_sq_training_grade_id` (`traininggrade_id`),
  CONSTRAINT `sq_student_training_id_42794850_fk_sq_training_id` FOREIGN KEY (`training_id`) REFERENCES `sq_training` (`id`),
  CONSTRAINT `sq_student_traininggrade_id_c4557f53_fk_sq_training_grade_id` FOREIGN KEY (`traininggrade_id`) REFERENCES `sq_training_grade` (`id`),
  CONSTRAINT `sq_student_user_id_63529266_fk_common_user_id` FOREIGN KEY (`user_id`) REFERENCES `common_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  plesson.sq_student 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `sq_student` DISABLE KEYS */;
INSERT INTO `sq_student` (`id`, `realname`, `startcoursedate`, `graduated`, `active`, `desc`, `training_id`, `traininggrade_id`, `user_id`) VALUES
	(1, '马永辉', '2017-03-17', 0, 1, '一期学员', 1, 1, 3);
/*!40000 ALTER TABLE `sq_student` ENABLE KEYS */;

-- 导出  表 plesson.sq_student_checkin 结构
CREATE TABLE IF NOT EXISTS `sq_student_checkin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `checkintime` datetime(6) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sq_student_checkin_student_id_lesson_id_df10128c_uniq` (`student_id`,`lesson_id`),
  KEY `sq_student_checkin_lesson_id_f1be4d45_fk_sq_lesson_id` (`lesson_id`),
  CONSTRAINT `sq_student_checkin_lesson_id_f1be4d45_fk_sq_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `sq_lesson` (`id`),
  CONSTRAINT `sq_student_checkin_student_id_2ca07fe3_fk_sq_student_id` FOREIGN KEY (`student_id`) REFERENCES `sq_student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  plesson.sq_student_checkin 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `sq_student_checkin` DISABLE KEYS */;
/*!40000 ALTER TABLE `sq_student_checkin` ENABLE KEYS */;

-- 导出  表 plesson.sq_teacher 结构
CREATE TABLE IF NOT EXISTS `sq_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `realname` varchar(30) NOT NULL,
  `desc` varchar(1500) DEFAULT NULL,
  `display_idx` smallint(5) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `sq_teacher_realname_0071b696` (`realname`),
  CONSTRAINT `sq_teacher_user_id_d25ff161_fk_common_user_id` FOREIGN KEY (`user_id`) REFERENCES `common_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  plesson.sq_teacher 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `sq_teacher` DISABLE KEYS */;
INSERT INTO `sq_teacher` (`id`, `realname`, `desc`, `display_idx`, `user_id`) VALUES
	(1, '老江', 'laojiang', 1, 2);
/*!40000 ALTER TABLE `sq_teacher` ENABLE KEYS */;

-- 导出  表 plesson.sq_teacher_courses 结构
CREATE TABLE IF NOT EXISTS `sq_teacher_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sq_teacher_courses_teacher_id_course_id_2df61f9e_uniq` (`teacher_id`,`course_id`),
  KEY `sq_teacher_courses_course_id_98e2f1a9_fk_sq_course_id` (`course_id`),
  CONSTRAINT `sq_teacher_courses_course_id_98e2f1a9_fk_sq_course_id` FOREIGN KEY (`course_id`) REFERENCES `sq_course` (`id`),
  CONSTRAINT `sq_teacher_courses_teacher_id_5253f9c5_fk_sq_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `sq_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  plesson.sq_teacher_courses 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `sq_teacher_courses` DISABLE KEYS */;
INSERT INTO `sq_teacher_courses` (`id`, `teacher_id`, `course_id`) VALUES
	(1, 1, 1);
/*!40000 ALTER TABLE `sq_teacher_courses` ENABLE KEYS */;

-- 导出  表 plesson.sq_training 结构
CREATE TABLE IF NOT EXISTS `sq_training` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `courselist` longtext,
  `desc` varchar(1500) DEFAULT NULL,
  `display_idx` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sq_training_name_a10fae3c` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  plesson.sq_training 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `sq_training` DISABLE KEYS */;
INSERT INTO `sq_training` (`id`, `name`, `courselist`, `desc`, `display_idx`) VALUES
	(1, '自动化班', '[{"id":1,"name":"Python"},{"id":2,"name":"Selenium"}]', '自动化班，学习自动化课程', 1);
/*!40000 ALTER TABLE `sq_training` ENABLE KEYS */;

-- 导出  表 plesson.sq_training_grade 结构
CREATE TABLE IF NOT EXISTS `sq_training_grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `desc` varchar(1500) DEFAULT NULL,
  `display_idx` smallint(5) unsigned NOT NULL,
  `training_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sq_training_grade_training_id_f84a0d02_fk_sq_training_id` (`training_id`),
  KEY `sq_training_grade_name_ac70c1db` (`name`),
  CONSTRAINT `sq_training_grade_training_id_f84a0d02_fk_sq_training_id` FOREIGN KEY (`training_id`) REFERENCES `sq_training` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  plesson.sq_training_grade 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `sq_training_grade` DISABLE KEYS */;
INSERT INTO `sq_training_grade` (`id`, `name`, `desc`, `display_idx`, `training_id`) VALUES
	(1, '自动化班第一期', '自动化班第一期 2017-3月开班', 1, 1);
/*!40000 ALTER TABLE `sq_training_grade` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
