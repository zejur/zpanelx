/*
MySQL Data Transfer
Source Host: ballen.co.uk
Source Database: zpanelx_dev
Target Host: ballen.co.uk
Target Database: zpanelx_dev
Date: 2/21/2012 10:14:11
*/

--
-- Database: `zpanelx_core`
--
CREATE DATABASE `zpanelx_core`;
USE `zpanelx_core`;

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for x_accounts
-- ----------------------------
DROP TABLE IF EXISTS `x_accounts`;
CREATE TABLE `x_accounts` (
  `ac_id_pk` int(6) unsigned NOT NULL auto_increment,
  `ac_user_vc` varchar(50) default NULL,
  `ac_pass_vc` varchar(50) default NULL,
  `ac_email_vc` varchar(250) default NULL,
  `ac_reseller_fk` int(6) default NULL,
  `ac_package_fk` int(6) default NULL,
  `ac_group_fk` int(6) default NULL,
  `ac_usertheme_vc` varchar(45) default NULL,
  `ac_usercss_vc` varchar(45) default NULL,
  `ac_enabled_in` int(1) default '1',
  `ac_lastlogon_ts` int(30) default NULL,
  `ac_notice_tx` text,
  `ac_resethash_tx` text,
  `ac_created_ts` int(30) default NULL,
  `ac_deleted_ts` int(30) default NULL,
  PRIMARY KEY  (`ac_id_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for x_aliases
-- ----------------------------
DROP TABLE IF EXISTS `x_aliases`;
CREATE TABLE `x_aliases` (
  `al_id_pk` int(6) unsigned NOT NULL auto_increment,
  `al_acc_fk` int(6) default NULL,
  `al_address_vc` varchar(255) default NULL,
  `al_destination_vc` varchar(255) default NULL,
  `al_created_ts` int(30) default NULL,
  `al_deleted_ts` int(30) default NULL,
  PRIMARY KEY  (`al_id_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for x_bandwidth
-- ----------------------------
DROP TABLE IF EXISTS `x_bandwidth`;
CREATE TABLE `x_bandwidth` (
  `bd_id_pk` int(6) unsigned NOT NULL auto_increment,
  `bd_acc_fk` int(6) default NULL,
  `bd_month_in` int(6) default NULL,
  `bd_transamount_bi` bigint(20) default NULL,
  `bd_diskamount_bi` bigint(20) default NULL,
  PRIMARY KEY  (`bd_id_pk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for x_cronjobs
-- ----------------------------
DROP TABLE IF EXISTS `x_cronjobs`;
CREATE TABLE `x_cronjobs` (
  `ct_id_pk` int(6) unsigned NOT NULL auto_increment,
  `ct_acc_fk` int(6) default NULL,
  `ct_script_vc` varchar(255) default NULL,
  `ct_timing_vc` varchar(255) default NULL,
  `ct_fullpath_vc` varchar(255) default NULL,
  `ct_description_tx` text,
  `ct_created_ts` int(30) default NULL,
  `ct_deleted_ts` int(30) default NULL,
  PRIMARY KEY  (`ct_id_pk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for x_distlists
-- ----------------------------
DROP TABLE IF EXISTS `x_distlists`;
CREATE TABLE `x_distlists` (
  `dl_id_pk` int(6) unsigned NOT NULL auto_increment,
  `dl_acc_fk` int(6) default NULL,
  `dl_address_vc` varchar(255) default NULL,
  `dl_created_ts` int(30) default NULL,
  `dl_deleted_ts` int(30) default NULL,
  PRIMARY KEY  (`dl_id_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for x_dns
-- ----------------------------
DROP TABLE IF EXISTS `x_dns`;
CREATE TABLE `x_dns` (
  `dn_id_pk` int(6) unsigned NOT NULL auto_increment,
  `dn_acc_fk` int(6) default NULL,
  `dn_name_vc` varchar(255) default NULL,
  `dn_vhost_fk` int(6) default NULL,
  `dn_type_vc` varchar(50) default NULL,
  `dn_host_vc` varchar(50) default NULL,
  `dn_ttl_in` int(30) default NULL,
  `dn_target_vc` varchar(50) default NULL,
  `dn_texttarget_tx` text,
  `dn_priority_in` int(50) default NULL,
  `dn_weight_in` int(50) default NULL,
  `dn_port_in` int(50) default NULL,
  `dn_created_ts` int(30) default NULL,
  `dn_deleted_ts` int(30) default NULL,
  PRIMARY KEY  (`dn_id_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for x_faqs
-- ----------------------------
DROP TABLE IF EXISTS `x_faqs`;
CREATE TABLE `x_faqs` (
  `fq_id_pk` int(6) unsigned NOT NULL auto_increment,
  `fq_acc_fk` int(6) default NULL,
  `fq_question_tx` text,
  `fq_answer_tx` text,
  `fq_global_in` int(1) default NULL,
  `fq_created_ts` int(30) default NULL,
  `fq_deleted_ts` int(30) default NULL,
  PRIMARY KEY  (`fq_id_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for x_forwarders
-- ----------------------------
DROP TABLE IF EXISTS `x_forwarders`;
CREATE TABLE `x_forwarders` (
  `fw_id_pk` int(6) unsigned NOT NULL auto_increment,
  `fw_acc_fk` int(6) default NULL,
  `fw_address_vc` varchar(255) default NULL,
  `fw_destination_vc` varchar(255) default NULL,
  `fw_keepmessage_in` int(1) default '1',
  `fw_created_ts` int(30) default NULL,
  `fw_deleted_ts` int(30) default NULL,
  PRIMARY KEY  (`fw_id_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for x_ftpaccounts
-- ----------------------------
DROP TABLE IF EXISTS `x_ftpaccounts`;
CREATE TABLE `x_ftpaccounts` (
  `ft_id_pk` int(6) unsigned NOT NULL auto_increment,
  `ft_acc_fk` int(6) default NULL,
  `ft_user_vc` varchar(20) default NULL,
  `ft_directory_vc` varchar(255) default NULL,
  `ft_access_vc` varchar(20) default NULL,
  `ft_password_vc` varchar(50) default NULL,
  `ft_created_ts` int(6) default NULL,
  `ft_deleted_ts` int(6) default NULL,
  PRIMARY KEY  (`ft_id_pk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for x_groups
-- ----------------------------
DROP TABLE IF EXISTS `x_groups`;
CREATE TABLE `x_groups` (
  `ug_id_pk` int(6) unsigned NOT NULL auto_increment,
  `ug_name_vc` varchar(20) default NULL,
  `ug_notes_tx` text,
  `ug_reseller_fk` int(6) default NULL,
  PRIMARY KEY  (`ug_id_pk`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for x_htaccess
-- ----------------------------
DROP TABLE IF EXISTS `x_htaccess`;
CREATE TABLE `x_htaccess` (
  `ht_id_pk` int(11) unsigned NOT NULL auto_increment,
  `ht_acc_fk` int(6) default NULL,
  `ht_user_vc` varchar(10) default NULL,
  `ht_dir_vc` varchar(255) default NULL,
  `ht_created_ts` int(30) default NULL,
  `ht_deleted_ts` int(30) default NULL,
  PRIMARY KEY  (`ht_id_pk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for x_logs
-- ----------------------------
DROP TABLE IF EXISTS `x_logs`;
CREATE TABLE `x_logs` (
  `lg_id_pk` int(9) unsigned NOT NULL auto_increment,
  `lg_user_fk` int(6) NOT NULL default '1',
  `lg_code_vc` varchar(10) default NULL,
  `lg_module_vc` varchar(25) default NULL,
  `lg_detail_tx` text,
  `lg_stack_tx` text,
  `lg_when_ts` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`lg_id_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for x_mailboxes
-- ----------------------------
DROP TABLE IF EXISTS `x_mailboxes`;
CREATE TABLE `x_mailboxes` (
  `mb_id_pk` int(6) unsigned NOT NULL auto_increment,
  `mb_acc_fk` int(6) default NULL,
  `mb_address_vc` varchar(255) default NULL,
  `mb_enabled_in` int(1) default '1',
  `mb_created_ts` int(30) default NULL,
  `mb_deleted_ts` int(30) default NULL,
  PRIMARY KEY  (`mb_id_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for x_modcats
-- ----------------------------
DROP TABLE IF EXISTS `x_modcats`;
CREATE TABLE `x_modcats` (
  `mc_id_pk` int(6) unsigned NOT NULL auto_increment,
  `mc_name_vc` varchar(50) default NULL,
  PRIMARY KEY  (`mc_id_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for x_modules
-- ----------------------------
DROP TABLE IF EXISTS `x_modules`;
CREATE TABLE `x_modules` (
  `mo_id_pk` int(6) unsigned NOT NULL auto_increment,
  `mo_category_fk` int(6) NOT NULL default '1',
  `mo_name_vc` varchar(200) NOT NULL,
  `mo_version_in` int(10) default NULL,
  `mo_folder_vc` varchar(255) default NULL,
  `mo_type_en` enum('user','system','modadmin','lang') NOT NULL default 'user',
  `mo_desc_tx` text,
  `mo_installed_ts` int(30) default NULL,
  `mo_enabled_en` enum('true','false') NOT NULL default 'true',
  `mo_updatever_vc` varchar(10) default NULL,
  `mo_updateurl_tx` text,
  PRIMARY KEY  (`mo_id_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for x_mysql
-- ----------------------------
DROP TABLE IF EXISTS `x_mysql`;
CREATE TABLE `x_mysql` (
  `my_id_pk` int(6) unsigned NOT NULL auto_increment,
  `my_acc_fk` int(6) default NULL,
  `my_name_vc` varchar(40) character set latin1 collate latin1_general_ci default NULL,
  `my_usedspace_bi` bigint(50) default '0',
  `my_created_ts` int(30) default NULL,
  `my_deleted_ts` int(30) default NULL,
  PRIMARY KEY  (`my_id_pk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for x_mysql_databases
-- ----------------------------
DROP TABLE IF EXISTS `x_mysql_databases`;
CREATE TABLE `x_mysql_databases` (
  `my_id_pk` int(6) unsigned NOT NULL auto_increment,
  `my_acc_fk` int(6) default NULL,
  `my_name_vc` varchar(40) character set latin1 collate latin1_general_ci default NULL,
  `my_usedspace_bi` bigint(50) default '0',
  `my_created_ts` int(30) default NULL,
  `my_deleted_ts` int(30) default NULL,
  PRIMARY KEY  (`my_id_pk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for x_mysql_dbmap
-- ----------------------------
DROP TABLE IF EXISTS `x_mysql_dbmap`;
CREATE TABLE `x_mysql_dbmap` (
  `mm_id_pk` int(6) unsigned NOT NULL auto_increment,
  `mm_acc_fk` int(6) default NULL,
  `mm_user_fk` int(6) default NULL,
  `mm_database_fk` int(6) default NULL,
  PRIMARY KEY  (`mm_id_pk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for x_mysql_users
-- ----------------------------
DROP TABLE IF EXISTS `x_mysql_users`;
CREATE TABLE `x_mysql_users` (
  `mu_id_pk` int(6) unsigned NOT NULL auto_increment,
  `mu_acc_fk` int(6) default NULL,
  `mu_name_vc` varchar(40) character set latin1 collate latin1_general_ci default NULL,
  `mu_database_fk` int(6) default NULL,
  `mu_access_vc` varchar(40) default NULL,
  `mu_pass_vc` varchar(40) default NULL,
  `mu_created_ts` int(30) default NULL,
  `mu_deleted_ts` int(30) default NULL,
  PRIMARY KEY  (`mu_id_pk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for x_packages
-- ----------------------------
DROP TABLE IF EXISTS `x_packages`;
CREATE TABLE `x_packages` (
  `pk_id_pk` int(6) unsigned NOT NULL auto_increment,
  `pk_name_vc` varchar(30) character set latin1 collate latin1_general_ci default NULL,
  `pk_reseller_fk` int(6) default NULL,
  `pk_enablephp_in` int(1) default '0',
  `pk_enablecgi_in` int(1) default '0',
  `pk_created_ts` int(30) default NULL,
  `pk_deleted_ts` int(30) default NULL,
  PRIMARY KEY  (`pk_id_pk`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for x_permissions
-- ----------------------------
DROP TABLE IF EXISTS `x_permissions`;
CREATE TABLE `x_permissions` (
  `pe_id_pk` int(6) unsigned NOT NULL auto_increment,
  `pe_group_fk` int(6) default NULL,
  `pe_module_fk` int(6) default NULL,
  PRIMARY KEY  (`pe_id_pk`)
) ENGINE=MyISAM AUTO_INCREMENT=281 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for x_profiles
-- ----------------------------
DROP TABLE IF EXISTS `x_profiles`;
CREATE TABLE `x_profiles` (
  `ud_id_pk` int(6) unsigned NOT NULL auto_increment,
  `ud_user_fk` int(6) default NULL,
  `ud_fullname_vc` varchar(100) default NULL,
  `ud_email_vc` varchar(255) default NULL,
  `ud_language_vc` varchar(10) default 'en',
  `ud_group_fk` int(6) default NULL,
  `ud_package_fk` int(6) default NULL,
  `ud_address_tx` text,
  `ud_postcode_vc` varchar(20) default NULL,
  `ud_phone_vc` varchar(20) default NULL,
  `ud_created_ts` int(30) default NULL,
  PRIMARY KEY  (`ud_id_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for x_quotas
-- ----------------------------
DROP TABLE IF EXISTS `x_quotas`;
CREATE TABLE `x_quotas` (
  `qt_id_pk` int(6) unsigned NOT NULL auto_increment,
  `qt_package_fk` int(6) default NULL,
  `qt_domains_in` int(6) default '0',
  `qt_subdomains_in` int(6) default '0',
  `qt_parkeddomains_in` int(6) default '0',
  `qt_mailboxes_in` int(6) default '0',
  `qt_fowarders_in` int(6) default '0',
  `qt_distlists_in` int(6) default '0',
  `qt_ftpaccounts_in` int(6) default '0',
  `qt_mysql_in` int(6) default '0',
  `qt_diskspace_bi` bigint(20) default '0',
  `qt_bandwidth_bi` bigint(20) default '0',
  `qt_bwenabled_in` int(1) default '0',
  `qt_dlenabled_in` int(1) default '0',
  `qt_totalbw_fk` int(30) default NULL,
  `qt_minbw_fk` int(30) default NULL,
  `qt_maxcon_fk` int(30) default NULL,
  `qt_filesize_fk` int(30) default NULL,
  `qt_filespeed_fk` int(30) default NULL,
  `qt_filetype_vc` varchar(30) NOT NULL default '*',
  `qt_modified_in` int(1) default '0',
  PRIMARY KEY  (`qt_id_pk`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for x_settings
-- ----------------------------
DROP TABLE IF EXISTS `x_settings`;
CREATE TABLE `x_settings` (
  `so_id_pk` int(6) unsigned NOT NULL auto_increment,
  `so_name_vc` varchar(50) default NULL,
  `so_cleanname_vc` varchar(50) default NULL,
  `so_value_tx` text,
  `so_defvalues_tx` text,
  `so_desc_tx` text,
  `so_module_vc` varchar(50) default NULL,
  `so_usereditable_en` enum('true','false') default 'false',
  PRIMARY KEY  (`so_id_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for x_translations
-- ----------------------------
DROP TABLE IF EXISTS `x_translations`;
CREATE TABLE `x_translations` (
  `tr_id_pk` int(11) NOT NULL auto_increment,
  `tr_en_tx` text,
  `tr_de_tx` text,
  PRIMARY KEY  (`tr_id_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for x_vhosts
-- ----------------------------
DROP TABLE IF EXISTS `x_vhosts`;
CREATE TABLE `x_vhosts` (
  `vh_id_pk` int(6) unsigned NOT NULL auto_increment,
  `vh_acc_fk` int(6) default NULL,
  `vh_name_vc` varchar(255) character set latin1 collate latin1_general_ci default NULL,
  `vh_directory_vc` varchar(255) character set latin1 collate latin1_general_ci default NULL,
  `vh_type_in` int(1) default '1',
  `vh_active_in` int(1) default '0',
  `vh_suhosin_in` int(1) default '1',
  `vh_obasedir_in` int(1) default '1',
  `vh_custom_tx` text,
  `vh_enabled_in` int(1) default '1',
  `vh_created_ts` int(30) default NULL,
  `vh_deleted_ts` int(30) default NULL,
  PRIMARY KEY  (`vh_id_pk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `x_accounts` VALUES ('1', 'zadmin', '5f4dcc3b5aa765d61d8327deb882cf99', 'bobbyallen.uk@gmail.com', '1', '1', '1', 'zpanelx', 'default', '1', '1329762673', 'Welcome to your new ZPanel installation! You can remove this message from the Client Notice Manager module. This module allows you to notify your clients of service outages upgrades and new features etc :-)', 'ca583113e8ca1180e73ddf7dad64651a0a83ee9d', '1324511063', null);
INSERT INTO `x_faqs` VALUES ('1', '1', 'How can I update my personal contact details?', 'From the control panel homepage please click on the \'My Account\' icon to enable you to update your personal details.', '1', null, null);
INSERT INTO `x_faqs` VALUES ('2', '1', 'I need to change my password!', 'Your ZPanel and MySQL password can be easily changed using the \'Password assistant\' icon on the control panel.', '1', null, null);
INSERT INTO `x_groups` VALUES ('1', 'Administrators', 'The main administration group, this group allows access to all areas of ZPanel.', '1');
INSERT INTO `x_groups` VALUES ('2', 'Resellers', 'Resellers have the ability to manage, create and maintain user accounts within ZPanel.', '1');
INSERT INTO `x_groups` VALUES ('3', 'Users', 'Users have basic access to ZPanel.', '1');
INSERT INTO `x_modcats` VALUES ('1', 'Account Information');
INSERT INTO `x_modcats` VALUES ('2', 'Server Admin');
INSERT INTO `x_modcats` VALUES ('3', 'Advanced');
INSERT INTO `x_modcats` VALUES ('4', 'Database Management');
INSERT INTO `x_modcats` VALUES ('5', 'Domain Management');
INSERT INTO `x_modcats` VALUES ('6', 'Mail');
INSERT INTO `x_modcats` VALUES ('7', 'Reseller');
INSERT INTO `x_modcats` VALUES ('8', 'File Management');
INSERT INTO `x_modules` VALUES ('1', '2', 'PHPInfo', '100', 'phpinfo', 'user', 'PHPInfo provides you with infomation regarding the version of PHP running on this system as well as installed PHP extentsions and configuration details.', '0', 'true', '', '');
INSERT INTO `x_modules` VALUES ('3', '2', 'Shadowing', '100', 'shadowing', 'user', 'From here you can shadow any of your client\'s accounts, this enables you to automatically login as the user which enables you to offer remote help by seeing what they see!', '0', 'true', '', '');
INSERT INTO `x_modules` VALUES ('4', '2', 'ZPanel Config', '100', 'zpanelconfig', 'user', 'Changes made here affect the entire ZPanel configuration, please double check everything before saving changes.', '0', 'true', '', '');
INSERT INTO `x_modules` VALUES ('5', '2', 'ZPanel News', '100', 'news', 'user', 'Find out all the latest news and infomation from the ZPanel project.', '0', 'true', '', '');
INSERT INTO `x_modules` VALUES ('6', '2', 'Updates', '100', 'updates', 'user', 'Check to see if there are any avaliable updates to your version of the ZPanel software.', '0', 'true', '', '');
INSERT INTO `x_modules` VALUES ('8', '4', 'phpMyAdmin', '100', 'phpmyadmin', 'user', 'phpMyAdmin is a web based tool that enables you to manage your ZPanel MySQL databases via. the web.', '0', 'true', '', '');
INSERT INTO `x_modules` VALUES ('9', '1', 'My Account', '100', 'my_account', 'user', 'Current personal details that you have provided us with, We ask that you keep these upto date in case we require to contact you regarding your hosting package.\r\n', '0', 'true', '', '');
INSERT INTO `x_modules` VALUES ('10', '6', 'WebMail', '100', 'webmail', 'user', 'Webmail is a convienient way for you to check your email accounts online without the need to configure an email client.', '0', 'true', '', '');
INSERT INTO `x_modules` VALUES ('11', '1', 'Change Password', '100', 'password_assistant', 'user', 'Change your current control panel or MySQL password.', '0', 'true', '', '');
INSERT INTO `x_modules` VALUES ('12', '3', 'Backup', '100', 'backupmgr', 'user', 'The backup manager module enables you to backup your entire hosting account including all your MySQL® databases.', '0', 'true', '', '');
INSERT INTO `x_modules` VALUES ('13', '3', 'Network Tools', '100', 'nettools', 'user', 'You can use the tools below to diagnose issues or to simply test connectivity to other servers or sites around the globe.', '0', 'true', '', '');
INSERT INTO `x_modules` VALUES ('14', '3', 'Service Status', '100', 'services', 'user', 'Here you can check the current status of our services and see what services are up and running and which are down and not.', '0', 'true', '198', 'http://www.ballen.co.uk/dwonload.zip');
INSERT INTO `x_modules` VALUES ('15', '5', 'Domains', '100', 'domains', 'user', 'This module enables you to add or configure domain web hosting on your account.', '0', 'true', '', '');
INSERT INTO `x_modules` VALUES ('16', '5', 'Parked Domains', '100', 'parked_domains', 'user', 'Domain parking refers to the registration of an Internet domain name without that domain being used to provide services such as e-mail or a website. If you have any domains that you are not using, then simply park them!', '0', 'true', '', '');
INSERT INTO `x_modules` VALUES ('17', '5', 'Sub Domains', '100', 'sub_domains', 'user', 'This module enables you to add or configure domain web hosting on your account.', '0', 'true', '', '');
INSERT INTO `x_modules` VALUES ('18', '2', 'Module Admin', '100', 'moduleadmin', 'user', 'Administer or configure modules registered with module admin', '0', 'true', '', '');
INSERT INTO `x_modules` VALUES ('19', '7', 'Manage Clients', '100', 'manage_clients', 'user', 'The account manager enables you to view, update and create client accounts.', '0', 'true', '', '');
INSERT INTO `x_modules` VALUES ('20', '7', 'Package Manager', '100', 'packages', 'user', 'Welcome to the Package Manager, using this module enables you to create and manage existing reseller packages on your ZPanel hosting account.', '0', 'true', '', '');
INSERT INTO `x_modules` VALUES ('22', '3', 'Cron Manager', '100', 'cron', 'user', 'Here you can configure PHP scripts to run automatically at different time intervals.', '0', 'true', '', '');
INSERT INTO `x_modules` VALUES ('23', '2', 'phpSysInfo', '100', 'phpsysinfo', 'user', 'phpSysInfo is a web-based server hardware monitoring tool which enables you to see detailed hardware statistics of your server.', '0', 'true', '', '');
INSERT INTO `x_modules` VALUES ('24', '4', 'MySQL Database', '100', 'mysql_databases', 'user', 'MySQL&reg databases are used by many PHP applications such as forums and ecommerce systems, below you can manage and create MySQL&reg databases.', '0', 'true', '', '');
INSERT INTO `x_modules` VALUES ('25', '1', 'Usage Viewer', '100', 'usage_viewer', 'user', 'The account usage screen enables you to see exactly what you are currently using on your hosting package.', '0', 'true', '', '');
INSERT INTO `x_modules` VALUES ('26', '8', 'FTP Accounts', '100', 'ftp_management', 'user', 'Using this module you can create FTP accounts which will enable you and any other accounts you create have the ability to upload and manage files on your hosting space.', '0', 'true', '', '');
INSERT INTO `x_modules` VALUES ('27', '3', 'FAQ\'s', '100', 'faqs', 'user', 'Please find a list of the most common questons from users, if you are unable to find a solution to your problem below please then contact your hosting provider. Simply click on the FAQ below to view the solution.', null, 'true', '', '');
INSERT INTO `x_modules` VALUES ('28', '0', 'Apache Config', '100', 'apache_admin', 'modadmin', 'This module enables you to configure Apache Vhost settings for your hosting accounts.', '0', 'true', '', '');
INSERT INTO `x_modules` VALUES ('29', '5', 'DNS Manager', '100', 'dns_manager', 'user', null, '0', 'true', '', '');
INSERT INTO `x_modules` VALUES ('30', '0', 'DNS Config', '100', 'dns_admin', 'modadmin', 'This module enables you to configure DNS settings for the DNS Manager', null, 'true', '', '');
INSERT INTO `x_modules` VALUES ('31', '7', 'Manage Groups', '100', 'manage_groups', 'user', 'Manage user groups to enable greater control over module permission.', '0', 'true', '', '');
INSERT INTO `x_modules` VALUES ('32', '6', 'Mailboxes', '100', 'mailboxes', 'user', 'Using this module you have the ability to create IMAP and POP3 Mailboxes.', '0', 'true', '', '');
INSERT INTO `x_modules` VALUES ('33', '6', 'Forwards', '100', 'forwarders', 'user', 'Using this module you have the ability to create mail forwarders.', '0', 'true', '', '');
INSERT INTO `x_modules` VALUES ('34', '6', 'Distrubution Lists', '100', 'distlists', 'user', 'This module enables you to create and manage email distrubution groups.', '0', 'true', '', '');
INSERT INTO `x_modules` VALUES ('35', '6', 'Aliases', '100', 'aliases', 'user', 'Using this module you have the ability to create alias mailboxes to existing accounts.', '0', 'true', '', '');
INSERT INTO `x_modules` VALUES ('36', '0', 'Mail Config', '100', 'mail_admin', 'modadmin', 'This module enables you to configure your mail options', null, 'true', '', '');
INSERT INTO `x_modules` VALUES ('39', '4', 'MySQL Users', '100', 'mysql_users', 'user', 'MySQL® Users allows you to add users and permissions to your MySQL® databases.', null, 'true', '', '');
INSERT INTO `x_modules` VALUES ('40', '0', 'FTP Config', '100', 'ftp_admin', 'modadmin', 'This module enables you to configure FTP settings for your hosting accounts.', null, 'true', '', '');
INSERT INTO `x_modules` VALUES ('41', '0', 'Backup Config', '100', 'backup_admin', 'modadmin', 'This module enables you to configure Backup settings for your hosting accounts.', null, 'true', '', '');
INSERT INTO `x_modules` VALUES ('42', '7', 'Client Notice Manager', '100', 'client_notices', 'user', 'Enables resellers to set global notices for their clients.', null, 'true', null, null);
INSERT INTO `x_modules` VALUES ('43', '3', 'Protect Directories', '100', 'htpasswd', 'user', 'This module enables you to configure .htaccess files and users to protect your web directories.', '0', 'true', null, null);
INSERT INTO `x_modules` VALUES ('46', '7', 'Theme Manager', '100', 'theme_manager', 'user', 'Enables the reseller to set themes configurations for their clients.', '0', 'true', '', null);
INSERT INTO `x_packages` VALUES ('1', 'Administration', '1', '1', '1', null, null);
INSERT INTO `x_packages` VALUES ('2', 'Demo', '1', '0', '0', null, null);
INSERT INTO `x_permissions` VALUES ('221', '2', '22');
INSERT INTO `x_permissions` VALUES ('195', '3', '10');
INSERT INTO `x_permissions` VALUES ('179', '2', '1');
INSERT INTO `x_permissions` VALUES ('239', '3', '22');
INSERT INTO `x_permissions` VALUES ('238', '3', '29');
INSERT INTO `x_permissions` VALUES ('237', '2', '29');
INSERT INTO `x_permissions` VALUES ('236', '1', '29');
INSERT INTO `x_permissions` VALUES ('227', '1', '25');
INSERT INTO `x_permissions` VALUES ('220', '1', '22');
INSERT INTO `x_permissions` VALUES ('214', '2', '17');
INSERT INTO `x_permissions` VALUES ('181', '1', '3');
INSERT INTO `x_permissions` VALUES ('183', '1', '4');
INSERT INTO `x_permissions` VALUES ('185', '1', '6');
INSERT INTO `x_permissions` VALUES ('189', '3', '8');
INSERT INTO `x_permissions` VALUES ('184', '1', '5');
INSERT INTO `x_permissions` VALUES ('197', '2', '11');
INSERT INTO `x_permissions` VALUES ('194', '2', '10');
INSERT INTO `x_permissions` VALUES ('193', '1', '10');
INSERT INTO `x_permissions` VALUES ('246', '4', '27');
INSERT INTO `x_permissions` VALUES ('235', '3', '27');
INSERT INTO `x_permissions` VALUES ('245', '4', '25');
INSERT INTO `x_permissions` VALUES ('234', '2', '27');
INSERT INTO `x_permissions` VALUES ('244', '4', '17');
INSERT INTO `x_permissions` VALUES ('233', '1', '27');
INSERT INTO `x_permissions` VALUES ('213', '1', '17');
INSERT INTO `x_permissions` VALUES ('226', '3', '24');
INSERT INTO `x_permissions` VALUES ('219', '2', '20');
INSERT INTO `x_permissions` VALUES ('212', '3', '16');
INSERT INTO `x_permissions` VALUES ('196', '1', '11');
INSERT INTO `x_permissions` VALUES ('205', '2', '14');
INSERT INTO `x_permissions` VALUES ('204', '1', '14');
INSERT INTO `x_permissions` VALUES ('201', '3', '12');
INSERT INTO `x_permissions` VALUES ('243', '4', '16');
INSERT INTO `x_permissions` VALUES ('232', '3', '26');
INSERT INTO `x_permissions` VALUES ('218', '1', '20');
INSERT INTO `x_permissions` VALUES ('225', '2', '24');
INSERT INTO `x_permissions` VALUES ('217', '2', '19');
INSERT INTO `x_permissions` VALUES ('211', '2', '16');
INSERT INTO `x_permissions` VALUES ('200', '2', '12');
INSERT INTO `x_permissions` VALUES ('199', '1', '12');
INSERT INTO `x_permissions` VALUES ('242', '4', '15');
INSERT INTO `x_permissions` VALUES ('231', '2', '26');
INSERT INTO `x_permissions` VALUES ('224', '1', '24');
INSERT INTO `x_permissions` VALUES ('223', '2', '23');
INSERT INTO `x_permissions` VALUES ('216', '1', '19');
INSERT INTO `x_permissions` VALUES ('210', '1', '16');
INSERT INTO `x_permissions` VALUES ('203', '2', '13');
INSERT INTO `x_permissions` VALUES ('202', '1', '13');
INSERT INTO `x_permissions` VALUES ('198', '3', '11');
INSERT INTO `x_permissions` VALUES ('241', '4', '11');
INSERT INTO `x_permissions` VALUES ('230', '1', '26');
INSERT INTO `x_permissions` VALUES ('228', '2', '25');
INSERT INTO `x_permissions` VALUES ('222', '1', '23');
INSERT INTO `x_permissions` VALUES ('215', '3', '17');
INSERT INTO `x_permissions` VALUES ('209', '3', '15');
INSERT INTO `x_permissions` VALUES ('208', '2', '15');
INSERT INTO `x_permissions` VALUES ('206', '3', '14');
INSERT INTO `x_permissions` VALUES ('240', '4', '9');
INSERT INTO `x_permissions` VALUES ('229', '3', '25');
INSERT INTO `x_permissions` VALUES ('207', '1', '15');
INSERT INTO `x_permissions` VALUES ('192', '3', '9');
INSERT INTO `x_permissions` VALUES ('191', '2', '9');
INSERT INTO `x_permissions` VALUES ('190', '1', '9');
INSERT INTO `x_permissions` VALUES ('178', '1', '1');
INSERT INTO `x_permissions` VALUES ('180', '3', '1');
INSERT INTO `x_permissions` VALUES ('182', '2', '3');
INSERT INTO `x_permissions` VALUES ('187', '1', '8');
INSERT INTO `x_permissions` VALUES ('188', '2', '8');
INSERT INTO `x_permissions` VALUES ('186', '1', '7');
INSERT INTO `x_permissions` VALUES ('248', '1', '30');
INSERT INTO `x_permissions` VALUES ('249', '1', '28');
INSERT INTO `x_permissions` VALUES ('250', '1', '2');
INSERT INTO `x_permissions` VALUES ('251', '1', '31');
INSERT INTO `x_permissions` VALUES ('252', '1', '32');
INSERT INTO `x_permissions` VALUES ('253', '1', '33');
INSERT INTO `x_permissions` VALUES ('254', '1', '34');
INSERT INTO `x_permissions` VALUES ('255', '1', '35');
INSERT INTO `x_permissions` VALUES ('256', '2', '35');
INSERT INTO `x_permissions` VALUES ('257', '3', '35');
INSERT INTO `x_permissions` VALUES ('258', '2', '34');
INSERT INTO `x_permissions` VALUES ('259', '3', '34');
INSERT INTO `x_permissions` VALUES ('260', '2', '33');
INSERT INTO `x_permissions` VALUES ('261', '3', '33');
INSERT INTO `x_permissions` VALUES ('262', '2', '32');
INSERT INTO `x_permissions` VALUES ('263', '3', '32');
INSERT INTO `x_permissions` VALUES ('264', '1', '36');
INSERT INTO `x_permissions` VALUES ('265', '3', '38');
INSERT INTO `x_permissions` VALUES ('266', '3', '37');
INSERT INTO `x_permissions` VALUES ('267', '1', '38');
INSERT INTO `x_permissions` VALUES ('268', '2', '38');
INSERT INTO `x_permissions` VALUES ('269', '1', '37');
INSERT INTO `x_permissions` VALUES ('270', '2', '37');
INSERT INTO `x_permissions` VALUES ('271', '1', '39');
INSERT INTO `x_permissions` VALUES ('272', '2', '39');
INSERT INTO `x_permissions` VALUES ('273', '3', '39');
INSERT INTO `x_permissions` VALUES ('274', '1', '41');
INSERT INTO `x_permissions` VALUES ('275', '1', '40');
INSERT INTO `x_permissions` VALUES ('277', '1', '18');
INSERT INTO `x_permissions` VALUES ('278', '1', '42');
INSERT INTO `x_permissions` VALUES ('279', '1', '43');
INSERT INTO `x_permissions` VALUES ('280', '1', '46');
INSERT INTO `x_profiles` VALUES ('1', '1', 'Test user 1', null, 'en', '1', '1', '1 Example house,\r\nTest street,\r\nSimple town,\r\nTestshire', 'C011 7RT', '+44(1206) 457169', null);
INSERT INTO `x_quotas` VALUES ('1', '1', '5', '10', '5', '10', '100', '5', '10', '10', '2048000000', '10240000000', '0', '0', null, null, null, null, null, '*', '1');
INSERT INTO `x_settings` (`so_id_pk`, `so_name_vc`, `so_cleanname_vc`, `so_value_tx`, `so_defvalues_tx`, `so_desc_tx`, `so_module_vc`, `so_usereditable_en`) VALUES
(6, 'dbversion', NULL, '10.0.0.0', NULL, 'Database Version', 'ZPanel Config', 'false'),
(7, 'zpanel_root', 'ZPanel Root', '/etc/zpanel/panel/', NULL, 'Zpanel Web Root', 'ZPanel Config', 'true'),
(8, 'module_icons_pr', 'Icons per Row', '8', NULL, 'Set the number of icons to display before beginning a new line.', 'ZPanel Config', 'true'),
(9, 'zpanel_template', NULL, '', NULL, 'Template', 'ZPanel Config', 'false'),
(10, 'zpanel_df', 'Date Format', 'H:i jS M Y T', NULL, 'Set the date format used by modules.', 'ZPanel Config', 'true'),
(11, 'server_email', 'Server Email', '', NULL, 'Server Email', 'ZPanel Config', 'true'),
(13, 'servicechk_to', 'Service Check Timeout', '10', NULL, 'Service Check Timeout', 'ZPanel Config', 'true'),
(14, 'root_drive', 'Root Drive', '/', NULL, 'The root drive where ZPanel is installed.', 'ZPanel Config', 'true'),
(16, 'php_exer', NULL, 'php', NULL, 'PHP Executable', 'ZPanel Config', 'false'),
(17, 'temp_dir', 'Temp Directory', '/var/zpanel/temp/', NULL, 'Global temp directory.', 'ZPanel Config', 'true'),
(18, 'news_url', '', 'http://api.zpanelcp.com/api/news.php', NULL, 'Zpanel News URL', 'ZPanel Config', 'false'),
(19, 'update_url', '', 'http://www.ballen.co.uk/zpxapi/latestversion/', NULL, 'Zpanel Update URL', 'ZPanel Config', 'false'),
(20, 'bugreport_url', '', 'http://api.zpanelcp.com/api/bugapi.php', NULL, 'Bug report URL', 'ZPanel Config', 'false'),
(21, 'server_ip', 'Server IP Address', '', NULL, 'If set this will use this manually entered server IP address which is the prefered method for use behind a firewall.', 'ZPanel Config', 'true'),
(22, 'zip_exe', 'ZIP Exe', 'zip', NULL, 'Path to the ZIP Executable', 'ZPanel Config', 'true'),
(24, 'disable_hostsen', '', 'false', 'true|false', 'Disable Host Entries', 'ZPanel Config', 'false'),
(25, 'latestzpversion', '', '10.0.0.0', NULL, 'This is used for caching the latest version of ZPanel.', 'ZPanel Config', 'false'),
(26, 'logmode', NULL, 'db', 'db|file|email', 'The default mode to log all errors in.', 'ZPanel Config', 'true'),
(27, 'logfile', NULL, '/etc/zpanel/logs/zpanel.log', NULL, 'If loggging is set to ''file'' mode this is the path to the log file that is to be used by ZPanel.', 'ZPanel Config', 'false'),
(28, 'apikey', NULL, 'ee8795c8c53bfdb3b2cc595186b68912', NULL, 'The secret API key for the server.', 'ZPanel Config', 'false'),
(29, 'email_from_address', 'From Address', 'zpanel@localhost', NULL, 'The email address to appear in the From field of emails sent by ZPanel.', 'ZPanel Config', 'true'),
(30, 'email_from_name', 'From Name', 'ZPanel Server', NULL, 'The name to appear in the From field of emails sent by ZPanel.', 'ZPanel Config', 'true'),
(31, 'email_smtp', 'Use SMTP', 'false', 'true|false', 'Use SMTP server to end emails from. (true/false)', 'ZPanel Config', 'true'),
(32, 'smtp_auth', 'Use AUTH', 'false', 'true|false', 'SMTP requires authentication. (true/false)', 'ZPanel Config', 'true'),
(33, 'smtp_server', 'SMTP Server', '', NULL, 'The address of the SMTP server.', 'ZPanel Config', 'true'),
(34, 'smtp_port', 'SMTP Port', '465', NULL, 'The port address of the SMTP server (usually 25)', 'ZPanel Config', 'true'),
(35, 'smtp_username', 'SMTP User', '', NULL, 'Username for authentication on the SMTP server.', 'ZPanel Config', 'true'),
(36, 'smtp_password', 'SMTP Pass', '', NULL, 'Password for authentication on the SMTP server.', 'ZPanel Config', 'true'),
(37, 'smtp_secure', 'SMTP Auth method', 'false', 'false|ssl|tls', 'If specified will attempt to use encryption to connect to the server, if ''false'' this is disabled. Avaliable options: false, ssl, tls', 'ZPanel Config', 'true'),
(38, 'daemon_lastrun', NULL, '0', NULL, 'Timestamp of when the daemon last ran.', NULL, 'false'),
(39, 'daemon_dayrun', NULL, '0', NULL, NULL, NULL, 'false'),
(40, 'daemon_weekrun', NULL, '0', NULL, NULL, NULL, 'false'),
(41, 'daemon_monthrun', NULL, '0', NULL, NULL, NULL, 'false'),
(42, 'purge_bu', 'Purge Backups', 'true', 'true|false', 'Delete client backups after alloted time has elapsed to help save diskspace (true/false)', 'Backup Config', 'true'),
(43, 'purge_date', 'Purge Date', '30', NULL, 'Time in days backups are safe from being deleted. After days have elapsed, older backups will be deleted on Daemon Day Run', 'Backup Config', 'true'),
(44, 'disk_bu', 'Disk Backups', 'true', 'true|false', 'Allow users to create and save backups of their home directories to disk. (true/false)', 'Backup Config', 'true'),
(45, 'schedule_bu', 'Daily Backups', 'true', 'true|false', 'Maks a daily backup of each clients data, including MySQL databases to their backup folder. Backups will still be created if Disk Backups are set to false. (true/false)', 'Backup Config', 'true'),
(46, 'ftp_db', 'FTP Database', 'zpanelx_proftpd', NULL, 'The name of the ftp server database', 'FTP Config', 'true'),
(47, 'ftp_php', 'FTP PHP', 'proftpd.php', NULL, 'Name of PHP to include when adding FTP data.', 'FTP Config', 'true'),
(48, 'ftp_service', 'FTP Service Name', 'proftpd', NULL, 'The name of the FTP service', 'FTP Config', 'true'),
(49, 'ftp_service_root', 'FTP Service Root', '/etc/init.d/', NULL, 'The path to the service executable if applicable.', 'FTP Config', 'true'),
(50, 'ftp_config_file', 'FTP Config File', '', NULL, 'The path to the configuration file if applicable.', 'FTP Config', 'true'),
(51, 'mailserver_db', 'Mailserver Database', 'zpanelx_postfix', NULL, 'The name of the mail server database', 'Mail Config', 'true'),
(52, 'hmailserver_et', 'Hmail Encryption Type', '2', NULL, 'Type of encryption uses for hMailServer passwords', 'Mail Config', 'false'),
(53, 'max_mail_size', 'Max Mailbox Size', '200', NULL, 'Maximum size in megabytes allowed for mailboxes. Default = 200', 'Mail Config', 'true'),
(54, 'mailserver_php', 'Mailserver PHP', 'postfix.php', NULL, 'Name of PHP to include when adding mailbox data.', 'Mail Config', 'true'),
(55, 'remove_orphan', 'Remove Orphans', 'true', 'true|false', 'When domains are deleted, also delete all mailboxes for that domain when the daemon runs. (true/false)', 'Mail Config', 'true'),
(56, 'named_dir', 'Named Directory', '/etc/zpanel/configs/bind/etc/', NULL, 'Path to the directory where named.conf is stored', 'DNS Config', 'true'),
(57, 'named_conf', 'Named Config', 'named.conf', NULL, 'Named configuration file', 'DNS Config', 'true'),
(58, 'zone_dir', 'Zone Directory', '/etc/zpanel/configs/bind/zones/', NULL, 'Path to where DNS zone files are stored', 'DNS Config', 'true'),
(59, 'refresh_ttl', 'SOA Refesh TTL', '21600', NULL, 'Global refresh TTL.  Default = 21600 (6 hours)', 'DNS Config', 'true'),
(60, 'retry_ttl', 'SOA Retry TTL', '3600', NULL, 'Global retry TTL. Default = 3600 (1 hour)', 'DNS Config', 'true'),
(61, 'expire_ttl', 'SOA Expire TTL', '604800', NULL, 'Global expire TTL. Default = 604800 (1 week)', 'DNS Config', 'true'),
(62, 'minimum_ttl', 'SOA Minimum TTL', '86400', NULL, 'Global minimum TTL. Default = 86400 (1 day)', 'DNS Config', 'true'),
(63, 'custom_ip', 'Allow Custom IP', 'true', 'true|false', 'Allow users to change IP settings in A records. If set to false, IP is locked to server IP setting in ZPanel Config', 'DNS Config', 'true'),
(64, 'bind_dir', 'Path to BIND Root', '/etc/named/', NULL, 'Path to the root directory where BIND is installed.', 'DNS Config', 'true'),
(65, 'bind_service', 'BIND Service Name', 'named', NULL, 'Name of the BIND service', 'DNS Config', 'true'),
(66, 'allow_xfer', 'Allow Zone Transfers', 'any', NULL, 'Setting to restrict zone transfers in setting: allow-transfer {}; Default = all', 'DNS Config', 'true'),
(67, 'allowed_types', 'Allowed Record Types', 'A AAAA CNAME MX TXT SRV SPF NS', NULL, 'Types of records allowed seperated by a space. Default = A AAAA CNAME MX TXT SRV SPF NS', 'DNS Config', 'true'),
(68, 'bind_log', 'Bind Log', '/var/named/data/named.run', NULL, 'Path and name of the Bind Log', 'DNS Config', 'true'),
(69, 'hosted_dir', 'Vhosts Directory', '/var/zpanel/hostdata/', NULL, 'Virtual host directory', 'Apache Config', 'true'),
(70, 'disable_hostsen', 'Disable HOSTS file entries', 'false', 'true|false', 'Disable host entries', 'Apache Config', 'true'),
(71, 'apache_vhost', 'Apache VHOST Conf', '/etc/zpanel/configs/apache/httpd-vhosts.conf', NULL, 'The full system patch and filename of the Apache VHOST configuration name.', 'Apache Config', 'true'),
(72, 'php_handler', 'PHP Handler', 'AddType application/x-httpd-php .php3 .php', NULL, 'The PHP Handler.', 'Apache Config', 'false'),
(73, 'cgi_handler', 'CGI Handler', 'ScriptAlias /cgi-bin/ "/_cgi-bin/"\r\n<location /cgi-bin>\r\nAddHandler cgi-script .cgi .pl\r\nOptions ExecCGI -Indexes\r\n</location>', NULL, 'The CGI Handler.', 'Apache Config', 'false'),
(74, 'global_vhcustom', 'Global VHost Entry', NULL, NULL, 'Extra directives for all apache vhost''s.', 'Apache Config', 'true'),
(75, 'static_dir', 'Static Pages Directory', '/etc/zpanel/panel/etc/static/', NULL, 'The ZPanel static directory, used for storing welcome pages etc. etc.', 'Apache Config', 'true'),
(76, 'parking_path', 'Vhost Parking Path', '/etc/zpanel/panel/etc/static/parking/', NULL, 'The path to the parking website, this will be used by all clients.', 'Apache Config', 'true'),
(78, 'shared_domains', 'Shared Domains', 'no-ip,dydns', NULL, 'Domains entered here can be shared across multiple accounts. Seperate domains with , example: no-ip,dydns,test', 'Apache Config', 'true'),
(79, 'upload_temp_dir', 'Upload Temp Directory', '/var/zpanel/temp/', NULL, 'The path to the Apache Upload directory (with trailing slash)', 'Apache Config', 'true'),
(80, 'apache_port', 'Apache Port', '80', NULL, 'Apache service port', 'Apache Config', 'true'),
(81, 'dir_index', 'Directory Indexes', 'DirectoryIndex index.html index.htm index.php index.asp index.aspx index.jsp index.jspa index.shtml index.shtm', NULL, 'Directory Index', 'Apache Config', 'true'),
(82, 'suhosin_value', 'Suhosin Value', 'php_admin_value suhosin.executor.func.blacklist "passthru, show_source, shell_exec, system, pcntl_exec, popen, pclose, proc_open, proc_nice, proc_terminate, proc_get_status, proc_close, leak, apache_child_terminate, posix_kill, posix_mkfifo, posix_setpgid, posix_setsid, posix_setuid, escapeshellcmd, escapeshellarg"', NULL, 'Suhosin configuration for virtual host  blacklisting commands', 'Apache Config', 'true'),
(83, 'openbase_seperator', 'Open Base Seperator', ':', NULL, 'Seperator flag used in open_base_directory setting', 'Apache Config', 'false'),
(84, 'openbase_temp', 'Open Base Temp Directory', '/var/zpanel/temp/', NULL, 'Temp directory used in open_base_directory setting', 'Apache Config', 'true'),
(85, 'access_log_format', 'Access Log Format', 'combined', 'combined|common', 'Log format for the Apache access log', 'Apache Config', 'true'),
(86, 'bandwidth_log_format', 'Bandwidth Log Format', 'common', 'combined|common', 'Log format for the Apache bandwidth log', 'Apache Config', 'true'),
(87, 'global_zpcustom', 'Global ZPanel Entry', NULL, NULL, 'Extra directives for Zpanel default vhost.', 'Apache Config', 'true'),
(88, 'use_openbase', 'Use Open Base Dir', 'true', 'true|false', 'Enable openbase directory for all vhosts', 'Apache Config', 'true'),
(89, 'use_suhosin', 'Use Suhosin', 'true', 'true|false', 'Enable Suhosin for all vhosts', 'Apache Config', 'true'),
(90, 'zpanel_domain', 'ZPanel Domain', 'zpanel.ztest.com', NULL, 'Domain that the control panel is installed under.', 'ZPanel Config', 'false'),
(91, 'log_dir', 'Log Directory', '/var/zpanel/logs/', NULL, 'Root path to directory log folders', 'ZPanel Config', 'true'),
(92, 'apache_changed', 'Apache Changed', '1330054619', 'true|false', 'If set, Apache Config daemon hook will write the vhost config file changes.', 'Apache Config', 'false'),
(94, 'apache_allow_disabled', 'Allow Disabled', 'true', 'true|false', 'Allow webhosts to remain active even if a user has been disabled.', 'Apache Config', 'true'),
(95, 'apache_budir', 'VHost Backup Dir', '/var/zpanel/backups/', NULL, 'Directory that vhost.conf backups are stored.', 'Apache Config', 'true'),
(96, 'apache_purgebu', 'Purge Backups', 'true', 'true|false', 'Old backups are deleted after the date set in Puge Date', 'Apache Config', 'true'),
(97, 'apache_purge_date', 'Purge Date', '7', NULL, 'Time in days that vhost backups are safe from deletion', 'Apache Config', 'true'),
(98, 'apache_backup', 'VHost Backup', 'true', 'true|false', 'Backup vhost file before a new one is written', 'Apache Config', 'true'),
(99, 'zsudo', 'zsudo path', '/etc/zpanel/panel/bin/zsudo', NULL, 'Path to the zsudo binary used by Apache to run system commands.', 'ZPanel Config', 'true'),
(100, 'apache_restart', 'Apache Restart Cmd', 'reload', NULL, 'Command line arguements used after the restart service request when reloading Apache.', 'Apache Config', 'true'),
(101, 'httpd_exe', 'Apache Binary', 'httpd', NULL, 'Path to the Apache binary', 'Apache Config', 'true'),
(102, 'apache_sn', 'Apache Service Name', 'httpd', NULL, 'Service name used to handle Apache service control', 'Apache Config', 'true'),
(103, 'daemon_exer', NULL, '/etc/zpanel/panel/bin/daemon.php', NULL, 'Path to the ZPanel daemon', 'ZPanel Config', 'false'),
(104, 'daemon_timing', NULL, '0 * * * *', NULL, 'Cron time for when to run the ZPanel daemon', 'ZPanel Config', 'false'),
(105, 'cron_file', 'Cron File', '/etc/crontab.d', NULL, 'Path to the user cron file', 'Cron Config', 'true'),
(106, 'htpasswd_exe', 'htpassword Exe', 'htpasswd', NULL, 'Path to htpasswd.exe for potecting directories with .htaccess', 'Apache Config', 'false'),
(107, 'mysqldump_exe', 'MySQL Dump', 'mysqldump', NULL, 'Path to MySQL dump', 'ZPanel Config', 'false'),
(108, 'dns_hasupdates', 'DNS Updated', NULL, NULL, NULL, NULL, 'false');
INSERT INTO `x_settings` VALUES ('109', 'named_checkconf', 'Named CheckConfig', 'named-checkconf', null, 'Path to named-checkconf bind utility.', 'DNS Config', 'true');
INSERT INTO `x_settings` VALUES ('110', 'named_checkzone', 'Named CheckZone', 'named-checkzone', null, 'Path to named-checkzone bind utility.', 'DNS Config', 'true');
INSERT INTO `x_settings` VALUES ('111', 'named_compilezone', 'Named CompileZone', 'named-compilezone', null, '	Path to named-compilezone bind utility.', 'DNS Config', 'true');
INSERT INTO `x_settings` VALUES ('112', 'mailer_type', 'Mail method', 'mail', 'mail|smtp|sendmail', 'Method to use when sending emails out. (mail = PHP Mail())', 'ZPanel Config', 'true');
INSERT INTO `x_settings` VALUES ('113', 'daemon_run_interval', 'Number of seconds between each daemon execution', '300', null, 'The total number of seconds between each daemon run (default 300 = 5 mins)', 'ZPanel Config', 'false');
INSERT INTO `x_translations` VALUES ('44', 'Webmail is a convienient way for you to check your email accounts online without the need to configure an email client.', 'Webmail ist ein bequemer Weg fÃ¼r Sie, Ihre E-Mail-Konten online zu Ã¼berprÃ¼fen, ohne dass eine E-Mail-Client zu konfigurieren.');
INSERT INTO `x_translations` VALUES ('45', 'Launch Webmail', 'Starten Sie WebMail');
INSERT INTO `x_translations` VALUES ('56', 'PHPInfo provides you with infomation regarding the version of PHP running on this system as well as installed PHP extentsions and configuration details.', 'PHPInfo bietet Ihnen Informationen über die PHP-Version auf dem System, sowie PHP installiert extentsions und Konfigurationsmöglichkeiten.');
INSERT INTO `x_translations` VALUES ('67', 'From here you can shadow any of your client\'s accounts, this enables you to automatically login as the user which enables you to offer remote help by seeing what they see!', 'Von hier aus können alle Ihre Kunden-Accounts können Schatten, ermöglicht Ihnen dies automatisch, wenn der Benutzer mit dem Sie remote helfen zu sehen, was sie sehen, anbieten zu können login!');
INSERT INTO `x_translations` VALUES ('68', 'My Account', 'Meine Konto');
INSERT INTO `x_translations` VALUES ('69', 'Change Password', 'Kennwort ändern');
INSERT INTO `x_translations` VALUES ('70', 'Shadowing', 'Schatten');
INSERT INTO `x_translations` VALUES ('71', 'ZPanel Config', 'Config ZPanel');
INSERT INTO `x_translations` VALUES ('72', 'ZPanel News', 'ZPanel Aktuelles');
INSERT INTO `x_translations` VALUES ('73', 'Updates', 'Aktualisierung');
INSERT INTO `x_translations` VALUES ('74', 'Report Bug', 'Fehler melden');
INSERT INTO `x_translations` VALUES ('75', 'Account', 'Konto');
INSERT INTO `x_translations` VALUES ('76', 'Module Admin', 'Modul Admin');
INSERT INTO `x_translations` VALUES ('77', 'Backup', 'Sicherungskopie');
INSERT INTO `x_translations` VALUES ('78', 'Network Tools', 'Netzwerk-Tools');
INSERT INTO `x_translations` VALUES ('79', 'Service Status', 'Service Status');
INSERT INTO `x_translations` VALUES ('80', 'PHPInfo', 'PHPInfo');
INSERT INTO `x_translations` VALUES ('81', 'phpMyAdmin', 'phpMyAdmin');
INSERT INTO `x_translations` VALUES ('82', 'Domains', 'Domains');
INSERT INTO `x_translations` VALUES ('83', 'Sub Domains', 'Sub Domains');
INSERT INTO `x_translations` VALUES ('84', 'Parked Domains', 'geparkte Domains');
INSERT INTO `x_translations` VALUES ('85', 'Manage Clients', 'Verwalten Kunden');
INSERT INTO `x_translations` VALUES ('86', 'Package Manager', 'Paket Manager');
INSERT INTO `x_translations` VALUES ('87', 'Server', 'Server');
INSERT INTO `x_translations` VALUES ('88', 'Database', 'Datenbank');
INSERT INTO `x_translations` VALUES ('89', 'Advanced', 'Fortgeschritten');
INSERT INTO `x_translations` VALUES ('90', 'Mail', 'Post');
INSERT INTO `x_translations` VALUES ('91', 'Reseller', 'Wiederverkäufer');
INSERT INTO `x_translations` VALUES ('92', 'Account Information', 'Account Informationen');
INSERT INTO `x_translations` VALUES ('93', 'Server Admin', 'Server Admin');
INSERT INTO `x_translations` VALUES ('94', 'Database Management', 'Datenbank Verwalten');
INSERT INTO `x_translations` VALUES ('95', 'Domain Management', 'Verwalten von Domains');
INSERT INTO `x_translations` VALUES ('96', 'Find out all the latest news and infomation from the ZPanel project.', 'Finden Sie heraus, alle Neuigkeiten und Informationen aus dem ZPanel Projekt.');
INSERT INTO `x_translations` VALUES ('97', 'Check to see if there are any avaliable updates to your version of the ZPanel software.', 'Prüfen Sie, ob es irgendwelche verfügbaren Aktualisierungen für Ihre Version des ZPanel Software.');
INSERT INTO `x_translations` VALUES ('98', 'If you have found a bug with ZPanel you can report it here.', 'Did you mean: If you have found a bug with CPanel you can report it here.\r\nWenn Sie einen Fehler mit ZPanel gefunden haben, können Sie ihn hier melden.');
INSERT INTO `x_translations` VALUES ('99', 'phpMyAdmin is a web based tool that enables you to manage your ZPanel MySQL databases via. the web.', 'phpMyAdmin ist ein webbasiertes Tool, das Sie zu Ihrem ZPanel MySQL-Datenbanken via verwalten können. im Internet.');
INSERT INTO `x_translations` VALUES ('100', 'Current personal details that you have provided us with, We ask that you keep these upto date in case we require to contact you regarding your hosting package.', 'Aktuelle persönlichen Daten, die Sie uns mit vorgesehen ist, bitten wir Sie, diese zu halten bis zu Datum, falls wir mit Ihnen Kontakt aufnehmen über Ihre Hosting-Paket erfordern.');
INSERT INTO `x_translations` VALUES ('101', 'Webmail is a convienient way for you to check your email accounts online without the need to configure an email client.', 'Webmail ist ein bequemer Weg für Sie, Ihre E-Mail-Konten online zu überprüfen, ohne dass eine E-Mail-Client zu konfigurieren.');
INSERT INTO `x_translations` VALUES ('102', 'Change your current control panel or MySQL password.', 'Ändern Sie Ihre aktuelle Bedienfeld oder MySQL-Kennwort.');
INSERT INTO `x_translations` VALUES ('103', 'The backup manager module enables you to backup your entire hosting account including all your MySQL® databases.', 'Der Backup-Manager-Modul ermöglicht es Ihnen, Ihre gesamte Hosting-Account inklusive aller Ihrer MySQL ® Datenbank-Backup.');
INSERT INTO `x_translations` VALUES ('104', 'You can use the tools below to diagnose issues or to simply test connectivity to other servers or sites around the globe.', 'Sie können die folgenden Tools verwenden, um Probleme zu diagnostizieren oder einfach testen Verbindung mit anderen Servern oder Websites rund um den Globus.');
INSERT INTO `x_translations` VALUES ('105', 'Here you can check the current status of our services and see what services are up and running and which are down and not.', 'Hier können Sie den aktuellen Status unserer Dienstleistungen und sehen, welche Dienste vorhanden sind und laufen, und die nach unten und es nicht sind.');
INSERT INTO `x_translations` VALUES ('106', 'This module enables you to add or configure domain web hosting on your account.', 'Dieses Modul ermöglicht es Ihnen, hinzuzufügen oder zu konfigurieren Domain Hosting auf Ihrem Konto.');
INSERT INTO `x_translations` VALUES ('107', 'Domain parking refers to the registration of an Internet domain name without that domain being used to provide services such as e-mail or a website. If you have any domains that you are not using, then simply park them!', 'Domain-Parking bezieht sich auf die Registrierung von Internet Domain-Namen ohne diese Domäne verwendet, um Dienste wie E-Mail oder eine Webseite bereitzustellen. Wenn Sie alle Domains, die Sie nicht haben, dann einfach parken sie!');
INSERT INTO `x_translations` VALUES ('108', 'This module enables you to add or configure domain web hosting on your account.', 'Dieses Modul ermöglicht es Ihnen, hinzuzufügen oder zu konfigurieren Domain Hosting auf Ihrem Konto.');
INSERT INTO `x_translations` VALUES ('109', 'Administer or configure modules registered with module admin', 'Verwalten oder zu konfigurieren Module mit Modul admin registriert');
INSERT INTO `x_translations` VALUES ('110', 'The account manager enables you to view, update and create client accounts.', 'Die Account-Manager ermöglicht es Ihnen, anzuzeigen, zu aktualisieren und erstellen Kundenkonten.');
INSERT INTO `x_translations` VALUES ('111', 'Welcome to the Package Manager, using this module enables you to create and manage existing reseller packages on your ZPanel hosting account.', 'Willkommen auf der Paket-Manager, mit diesem Modul ermöglicht Ihnen die Erstellung und Verwaltung von bestehenden Reseller-Pakete auf Ihrem ZPanel Hosting-Account.');
INSERT INTO `x_translations` VALUES ('112', 'Gives you access to your files with drag-and-drop, multiple file uploading, text editing, zip support.', 'Ermöglicht den Zugriff auf Ihre Dateien mit Drag-and-drop, multiple Datei-Upload, Textbearbeitung, zip unterstützen.');
INSERT INTO `x_translations` VALUES ('113', 'Secure FTP Applet is a JAVA based FTP client component that runs within your web browser. It is designed to let non-technical users exchange data secureiy with an FTP server.', 'Secure FTP Applet ist eine Java-basierte FTP-Client-Komponente, die in Ihrem Web-Browser läuft. Es wurde entwickelt, um nicht-technische Anwender den Datenaustausch secureiy lassen mit einem FTP-Server.');
INSERT INTO `x_translations` VALUES ('114', 'Full name', 'Vollständiger Name');
INSERT INTO `x_translations` VALUES ('115', 'Email Address', 'E-Mail Adresse');
INSERT INTO `x_translations` VALUES ('116', 'Phone Number', 'Telefonnummer');
INSERT INTO `x_translations` VALUES ('117', 'Choose Language', 'Sprache wählen');
INSERT INTO `x_translations` VALUES ('118', 'Postal Address', 'Postanschrift');
INSERT INTO `x_translations` VALUES ('119', 'Postal Code', 'Postleitzahl');
INSERT INTO `x_translations` VALUES ('120', 'Current personal details that you have provided us with, We ask that you keep these upto date in case we require to contact you regarding your hosting package.', 'Aktuelle persönlichen Daten, die Sie uns mit vorgesehen ist, bitten wir Sie, diese zu halten bis zu Datum, falls wir mit Ihnen Kontakt aufnehmen über Ihre Hosting-Paket erfordern.');
INSERT INTO `x_translations` VALUES ('121', 'Changes to your account settings have been saved successfully!', 'Änderungen an Ihrem Konto-Einstellungen wurden erfolgreich gespeichert!');
INSERT INTO `x_translations` VALUES ('122', 'Update Account', 'Aktualisierung Konto');
INSERT INTO `x_translations` VALUES ('123', 'Enter your account details', 'Geben Sie Ihre Kontodaten');
