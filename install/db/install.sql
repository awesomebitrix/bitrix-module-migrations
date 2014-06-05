CREATE TABLE IF NOT EXISTS `ws_migrations_apply_changes_log` (
  `ID` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `GROUP_LABEL` VARCHAR (128),
  `DATE` DATETIME NOT NULL,
  `PROCESS` VARCHAR (128),
  `SUBJECT` VARCHAR (128),
  `UPDATE_DATA` MEDIUMTEXT NOT NULL ,
  `ORIGINAL_DATA` MEDIUMTEXT DEFAULT NULL ,
  `SUCCESS` INT (1),
  `DESCRIPTION` TEXT NOT NULL ,
  INDEX (`type`)
);
CREATE TABLE IF NOT EXISTS `ws_migrations_setups_log` (
  `ID` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `USER_ID` INT,
  `DATE` DATETIME NOT NULL
);