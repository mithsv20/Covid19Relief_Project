create database demo;

use demo;

create table users (
 id  int(3) NOT NULL AUTO_INCREMENT,
 name varchar(120) NOT NULL,
 email varchar(220) NOT NULL,
 country varchar(120),
 PRIMARY KEY (id)
);



ALTER TABLE users
DROP COLUMN country;

ALTER TABLE users
ADD   `aadhar` varchar(45) DEFAULT NULL,
ADD   `mobile` varchar(45) DEFAULT NULL,
ADD   `pAddress` varchar(45) DEFAULT NULL,
ADD   `cAddress` varchar(45) DEFAULT NULL,
ADD   `employer` varchar(45) DEFAULT NULL;


ALTER TABLE `demo`.`users` 
CHANGE COLUMN `aadhar` `aadhar` VARCHAR(20) NULL DEFAULT NULL ,
CHANGE COLUMN `mobile` `mobile` VARCHAR(20) NULL DEFAULT NULL ,
CHANGE COLUMN `pAddress` `pAddress` VARCHAR(220) NULL DEFAULT NULL ,
CHANGE COLUMN `cAddress` `cAddress` VARCHAR(220) NULL DEFAULT NULL ;



CREATE TABLE `login` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;


INSERT INTO `login` (`username`, `password`) VALUES ("Mith", "Mith");
