drop table if exists member;
CREATE TABLE `fbco`.`member` (
  `Member_id` INT NOT NULL AUTO_INCREMENT,
  `First_name` CHAR(30) NOT NULL,
  `Last_name` CHAR(30) NOT NULL,
  `birthday` DATE NULL,
  `Gender` CHAR(1) NULL COMMENT 'enter F for female and M for Male',
  `member_year` VARCHAR(4) NOT NULL COMMENT 'please state the year the individual became a member and enter NM if the individual is not yet amember',
  `phone` INT NULL,
  PRIMARY KEY (`Member_id`),
  UNIQUE INDEX `Member_id_UNIQUE` (`Member_id` ASC) VISIBLE,
  UNIQUE INDEX `phone_UNIQUE` (`phone` ASC) VISIBLE);