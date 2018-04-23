-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema superherodb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `superherodb` ;

-- -----------------------------------------------------
-- Schema superherodb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `superherodb` DEFAULT CHARACTER SET utf8 ;
USE `superherodb` ;

-- -----------------------------------------------------
-- Table `superhero`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `superhero` ;

CREATE TABLE IF NOT EXISTS `superhero` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(250) NOT NULL,
  `power` VARCHAR(200) NULL,
  `weakness` VARCHAR(200) NULL,
  `active` ENUM('ACTIVE', 'NONACTIVE', 'DECEASED') NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `nemesis`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `nemesis` ;

CREATE TABLE IF NOT EXISTS `nemesis` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `power` VARCHAR(100) NULL,
  `weakness` VARCHAR(100) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `superhero_nemesis`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `superhero_nemesis` ;

CREATE TABLE IF NOT EXISTS `superhero_nemesis` (
  `superhero_id` INT NOT NULL,
  `nemesis_id` INT NOT NULL,
  PRIMARY KEY (`superhero_id`, `nemesis_id`),
  INDEX `fk_nemesis_id_nemesis_idx` (`nemesis_id` ASC),
  CONSTRAINT `fk_superhero_id_superhero`
    FOREIGN KEY (`superhero_id`)
    REFERENCES `superhero` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_nemesis_id_nemesis`
    FOREIGN KEY (`nemesis_id`)
    REFERENCES `nemesis` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SET SQL_MODE = '';
GRANT USAGE ON *.* TO superman@localhost;
 DROP USER superman@localhost;
SET SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';
CREATE USER 'superman'@'localhost' IDENTIFIED BY 'superman';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'superman'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `superhero`
-- -----------------------------------------------------
START TRANSACTION;
USE `superherodb`;
INSERT INTO `superhero` (`id`, `name`, `power`, `weakness`, `active`) VALUES (1, 'Snake Man', 'Can summon snakes', 'Ophidiophobia (fear of snakes)', 'ACTIVE');
INSERT INTO `superhero` (`id`, `name`, `power`, `weakness`, `active`) VALUES (2, 'Stone Girl', 'Can turn into stone', 'Can’t move, talk, or even breath because everything is stone', 'ACTIVE');
INSERT INTO `superhero` (`id`, `name`, `power`, `weakness`, `active`) VALUES (3, 'Head-Roll-Off-Dude', 'Can detach head', 'Can’t control power and his head rolls off by itself randomly', 'NONACTIVE');
INSERT INTO `superhero` (`id`, `name`, `power`, `weakness`, `active`) VALUES (4, 'Hindsight', 'His hindsight is truly 20/20', 'Nothing out of the ordinary', 'ACTIVE');
INSERT INTO `superhero` (`id`, `name`, `power`, `weakness`, `active`) VALUES (5, 'Sparkles', 'Can create sparkly sparkles', 'Epilepsy ', 'NONACTIVE');
INSERT INTO `superhero` (`id`, `name`, `power`, `weakness`, `active`) VALUES (6, 'Window Man', 'Can turn into a window', 'Doors', 'ACTIVE');
INSERT INTO `superhero` (`id`, `name`, `power`, `weakness`, `active`) VALUES (7, 'Believe-it’s-not-Butter Lady', 'Can actually believe it’s not butter', 'Butter', 'DECEASED');
INSERT INTO `superhero` (`id`, `name`, `power`, `weakness`, `active`) VALUES (8, 'The Teleporter', 'Can teleport himself', 'Can only teleport to the exact same location he is currently at', 'DECEASED');
INSERT INTO `superhero` (`id`, `name`, `power`, `weakness`, `active`) VALUES (9, 'Breather', 'Can hold his breath underwater indefinitely ', 'Only can use this power when he is not wet', 'ACTIVE');
INSERT INTO `superhero` (`id`, `name`, `power`, `weakness`, `active`) VALUES (10, 'Backwards Boy', 'Can write and talk backwards', 'People who write and talk forwards', 'NONACTIVE');
INSERT INTO `superhero` (`id`, `name`, `power`, `weakness`, `active`) VALUES (11, 'Invis-i-man', 'Can turn invisible', 'Power only works when people aren’t looking', 'ACTIVE');
INSERT INTO `superhero` (`id`, `name`, `power`, `weakness`, `active`) VALUES (12, 'The Sneeza', 'Can sneeze with his eyes open', 'Can’t close his eyes… ever', 'ACTIVE');
INSERT INTO `superhero` (`id`, `name`, `power`, `weakness`, `active`) VALUES (13, 'Wing-Ding', 'Can speak in wingdings', 'Nothing out of the ordinary', 'DECEASED');
INSERT INTO `superhero` (`id`, `name`, `power`, `weakness`, `active`) VALUES (14, 'Can-Touch-That', 'Can touch MC Hammer', 'Has a restraining order from MC Hammer', 'ACTIVE');
INSERT INTO `superhero` (`id`, `name`, `power`, `weakness`, `active`) VALUES (15, 'Bookworm', 'Can read incredibly fast', 'Power doesn’t work on term’s of service and movie credits', 'ACTIVE');
INSERT INTO `superhero` (`id`, `name`, `power`, `weakness`, `active`) VALUES (16, 'Strong Man', 'Has super strength, can lift up to 1,000 tons', 'Can’t lift anything less than 10 ton', 'NONACTIVE');
INSERT INTO `superhero` (`id`, `name`, `power`, `weakness`, `active`) VALUES (17, 'Hiccup', 'Can give himself hiccups at any time', 'Can’t get rid of hiccups for a week', 'DECEASED');
INSERT INTO `superhero` (`id`, `name`, `power`, `weakness`, `active`) VALUES (18, 'Hand-Gun Man', 'Can shoot things out of his fingers when he makes a gun shape with his hand', 'The object that shoots out of his fingers is completely random and he has no control over what it is', 'NONACTIVE');
INSERT INTO `superhero` (`id`, `name`, `power`, `weakness`, `active`) VALUES (19, 'Tootsie Pop', 'Can lick to the center of a tootsie pop without biting into it', 'Can’t count', 'ACTIVE');
INSERT INTO `superhero` (`id`, `name`, `power`, `weakness`, `active`) VALUES (20, 'Magento', 'Can turn anything and everything magenta colored', 'Bright, lime green', 'ACTIVE');
INSERT INTO `superhero` (`id`, `name`, `power`, `weakness`, `active`) VALUES (21, 'Mr. Muscles', 'Strongest being in the universe', 'Paralyzed', 'ACTIVE');
INSERT INTO `superhero` (`id`, `name`, `power`, `weakness`, `active`) VALUES (22, 'Really super stupid long name for no general reason except to annoy the newspapers when they have to print stories about him, but he has actually never been in the newspaper because he’s useless Man', 'His name causes enemies to say it which distracts them', 'He has to say his name when he announces himself', 'ACTIVE');
INSERT INTO `superhero` (`id`, `name`, `power`, `weakness`, `active`) VALUES (23, 'Taco Man', 'Dispenses Tacos', 'Meat', 'ACTIVE');
INSERT INTO `superhero` (`id`, `name`, `power`, `weakness`, `active`) VALUES (24, 'Molecule', 'Super tiny', 'Feet', 'DECEASED');
INSERT INTO `superhero` (`id`, `name`, `power`, `weakness`, `active`) VALUES (25, 'TiVo Man', 'can fast forward through any commercial on any tv channel', 'Netflix, can\'t skip youtube ads', 'NONACTIVE');
INSERT INTO `superhero` (`id`, `name`, `power`, `weakness`, `active`) VALUES (26, 'Chalkzo', 'harnesses the power of sidewalk chalk, adds personality to bland sidewalks', 'a light afternoon rainshower', 'DECEASED');

COMMIT;


-- -----------------------------------------------------
-- Data for table `nemesis`
-- -----------------------------------------------------
START TRANSACTION;
USE `superherodb`;
INSERT INTO `nemesis` (`id`, `name`, `power`, `weakness`) VALUES (1, 'The Rat', 'Is an actual man sized rat', 'Nothing out of the ordinary');
INSERT INTO `nemesis` (`id`, `name`, `power`, `weakness`) VALUES (2, 'Gemini', 'Twins that dance in together in a deadly fashion', 'Nothing out of the ordinary');
INSERT INTO `nemesis` (`id`, `name`, `power`, `weakness`) VALUES (3, 'Bright-Lime-Green Lady', 'Can turn anything and everything a bright, lime green color', 'Magenta');
INSERT INTO `nemesis` (`id`, `name`, `power`, `weakness`) VALUES (4, 'The Sloth', 'Moves at the speed of a sloth', 'Anything that moves faster than him');
INSERT INTO `nemesis` (`id`, `name`, `power`, `weakness`) VALUES (5, 'The Golfer', 'Is super good at golfing', 'Nothing out of the ordinary');

COMMIT;


-- -----------------------------------------------------
-- Data for table `superhero_nemesis`
-- -----------------------------------------------------
START TRANSACTION;
USE `superherodb`;
INSERT INTO `superhero_nemesis` (`superhero_id`, `nemesis_id`) VALUES (1, 1);
INSERT INTO `superhero_nemesis` (`superhero_id`, `nemesis_id`) VALUES (2, 1);
INSERT INTO `superhero_nemesis` (`superhero_id`, `nemesis_id`) VALUES (3, 3);
INSERT INTO `superhero_nemesis` (`superhero_id`, `nemesis_id`) VALUES (4, 1);
INSERT INTO `superhero_nemesis` (`superhero_id`, `nemesis_id`) VALUES (5, 1);
INSERT INTO `superhero_nemesis` (`superhero_id`, `nemesis_id`) VALUES (6, 2);
INSERT INTO `superhero_nemesis` (`superhero_id`, `nemesis_id`) VALUES (7, 5);
INSERT INTO `superhero_nemesis` (`superhero_id`, `nemesis_id`) VALUES (8, 2);
INSERT INTO `superhero_nemesis` (`superhero_id`, `nemesis_id`) VALUES (9, 3);
INSERT INTO `superhero_nemesis` (`superhero_id`, `nemesis_id`) VALUES (10, 4);
INSERT INTO `superhero_nemesis` (`superhero_id`, `nemesis_id`) VALUES (11, 2);
INSERT INTO `superhero_nemesis` (`superhero_id`, `nemesis_id`) VALUES (12, 4);
INSERT INTO `superhero_nemesis` (`superhero_id`, `nemesis_id`) VALUES (13, 2);
INSERT INTO `superhero_nemesis` (`superhero_id`, `nemesis_id`) VALUES (14, 1);
INSERT INTO `superhero_nemesis` (`superhero_id`, `nemesis_id`) VALUES (15, 3);
INSERT INTO `superhero_nemesis` (`superhero_id`, `nemesis_id`) VALUES (16, 5);
INSERT INTO `superhero_nemesis` (`superhero_id`, `nemesis_id`) VALUES (17, 2);
INSERT INTO `superhero_nemesis` (`superhero_id`, `nemesis_id`) VALUES (18, 3);
INSERT INTO `superhero_nemesis` (`superhero_id`, `nemesis_id`) VALUES (19, 1);
INSERT INTO `superhero_nemesis` (`superhero_id`, `nemesis_id`) VALUES (20, 5);
INSERT INTO `superhero_nemesis` (`superhero_id`, `nemesis_id`) VALUES (21, 5);
INSERT INTO `superhero_nemesis` (`superhero_id`, `nemesis_id`) VALUES (22, 4);
INSERT INTO `superhero_nemesis` (`superhero_id`, `nemesis_id`) VALUES (23, 2);
INSERT INTO `superhero_nemesis` (`superhero_id`, `nemesis_id`) VALUES (24, 2);

COMMIT;
