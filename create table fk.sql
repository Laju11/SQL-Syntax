CREATE TABLE `fbco`.`worker` (
  `member_id` INT NOT NULL,
  `Occupation_id` INT NOT NULL,
  `Organisation` VARCHAR(45) NOT NULL COMMENT 'Place of work',
  `Designation` VARCHAR(45) NOT NULL COMMENT 'Job role',
  PRIMARY KEY (`member_id`, `Occupation_id`),
  INDEX `Occupation_id2_idx` (`Occupation_id` ASC) VISIBLE,
  CONSTRAINT `member_id2`
    FOREIGN KEY (`member_id`)
    REFERENCES `fbco`.`member` (`Member_id`)
    ON DELETE CASCADE
    ON UPDATE RESTRICT,
  CONSTRAINT `Occupation_id2`
    FOREIGN KEY (`Occupation_id`)
    REFERENCES `fbco`.`occupation` (`Occupation_id`)
    ON DELETE CASCADE
    ON UPDATE RESTRICT);
