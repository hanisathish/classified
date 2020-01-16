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