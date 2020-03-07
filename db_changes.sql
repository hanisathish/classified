-- Sathish 06 Jan 2020

ALTER TABLE `items` ADD `show_price` TINYINT(1) NOT NULL DEFAULT '1' COMMENT '1=Show,2=Hide' AFTER `s3key`; 

ALTER TABLE `items` ADD `isfeatured` TINYINT(1) NOT NULL DEFAULT '2' COMMENT '1=Featured,2=Not featured' AFTER `show_price`; 

-- Sathish 16 Jan 2020
ALTER TABLE `categories` ADD `fa_icons` VARCHAR( 255 ) NULL DEFAULT NULL AFTER `logo` ;


UPDATE `categories` SET `fa_icons` = 'fa fa-car', `updated_at` = NULL WHERE `categories`.`id` = 1; 
UPDATE `categories` SET `fa_icons` = 'fa fa-mobile', `updated_at` = NULL WHERE `categories`.`id` = 7; 
UPDATE `categories` SET `fa_icons` = 'fa fa-certificate', `updated_at` = NULL WHERE `categories`.`id` = 13; 
UPDATE `categories` SET `fa_icons` = 'fa fa-home', `updated_at` = NULL WHERE `categories`.`id` = 23; 
UPDATE `categories` SET `fa_icons` = 'fa fa-users', `updated_at` = NULL WHERE `categories`.`id` = 29; 
UPDATE `categories` SET `fa_icons` = 'fa fa-paw', `updated_at` = NULL WHERE `categories`.`id` = 46; 
UPDATE `categories` SET `fa_icons` = 'fa fa-list-ol', `updated_at` = NULL WHERE `categories`.`id` = 53;


-- Santhosh 29 Jan 2020

ALTER TABLE `users` ADD `createdBy` INT(11) NULL AFTER `created_at`, ADD `updatedBy` INT(11) NULL AFTER `updated_at`, ADD `deletedBy` INT(11) NULL AFTER `updatedBy`, ADD `deleted_at` DATETIME NULL AFTER `deletedBy`;


-- Santhosh 06 Mar 2020

-- ALTER TABLE `advt` ADD `published` TINYINT(4) NULL DEFAULT NULL AFTER `advt_url`;


-- Sathish 07 Mar 2020
--
-- Table structure for table `advt`
--

CREATE TABLE IF NOT EXISTS `advt` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `advt_name` varchar(255) DEFAULT NULL,
  `advt_desc` text,
  `advt_image` text,
  `advt_url` text,
  `published` tinyint(4) DEFAULT NULL,
  `createdBy` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedBy` text,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `deletedBy` text,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;