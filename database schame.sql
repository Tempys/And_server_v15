use andr_spring;
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE role;
DROP TABLE reg_f;
DROP TABLE  image_save;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE role (
  id BIGINT(10)                     NOT NULL AUTO_INCREMENT,
  role   CHAR(30)                   UNIQUE NOT NULL,
  PRIMARY KEY(id)
)
  ENGINE =InnoDB
  DEFAULT CHARSET =utf8;

CREATE TABLE reg_f (
  id BIGINT(10) NOT NULL AUTO_INCREMENT,
  name  CHAR(30)                    NOT NULL,
  surname  CHAR(30)                 NOT NULL,
  login   CHAR(30)                  UNIQUE NOT NULL,
  password  CHAR (30)               NOT NULL,
  role      BIGINT(10)              NOT NULL,
  email     CHAR (30)               NOT NULL,
  sex       CHAR (30)               NOT NULL,
  userImage LONGBLOB                NOT NULL,
  PRIMARY KEY(id),
  CONSTRAINT `fk_reg_f` FOREIGN KEY (`role`) REFERENCES `role` (`id`)
)

ENGINE =InnoDB
DEFAULT CHARSET =utf8;



CREATE TABLE image_save (
  id BIGINT(10) NOT NULL AUTO_INCREMENT,
  name  CHAR(30)                    NOT NULL,
  image_path  CHAR(30)                 NOT NULL,
  date                   DATETIME NULL DEFAULT NULL,
  login CHAR(30)                    NOT NULL ,
  PRIMARY KEY(id),
  CONSTRAINT `fk_image_user` FOREIGN KEY (`login`) REFERENCES `reg_f` (`login`)
)
  ENGINE =InnoDB
  DEFAULT CHARSET =utf8;