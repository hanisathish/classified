-- Sathish 06 Jan 2020

ALTER TABLE `items` ADD `show_price` TINYINT(1) NOT NULL DEFAULT '1' COMMENT '1=Show,2=Hide' AFTER `s3key`; 

ALTER TABLE `items` ADD `isfeatured` TINYINT(1) NOT NULL DEFAULT '2' COMMENT '1=Featured,2=Not featured' AFTER `show_price`; 