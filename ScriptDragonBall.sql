-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema bbdd_Dragonball
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema bbdd_Dragonball
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bbdd_Dragonball` DEFAULT CHARACTER SET utf8 ;
USE `bbdd_Dragonball` ;

-- -----------------------------------------------------
-- Table `bbdd_Dragonball`.`Universo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bbdd_Dragonball`.`Universo` (
  `idUniverso` INT NOT NULL,
  `NombreUniverso` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idUniverso`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bbdd_Dragonball`.`Angeles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bbdd_Dragonball`.`Angeles` (
  `NombreAngel` VARCHAR(40) NOT NULL,
  `Universo_idUniverso` INT NOT NULL,
  PRIMARY KEY (`NombreAngel`),
  INDEX `fk_Angeles_Universo1_idx` (`Universo_idUniverso` ASC) VISIBLE,
  CONSTRAINT `fk_Angeles_Universo1`
    FOREIGN KEY (`Universo_idUniverso`)
    REFERENCES `bbdd_Dragonball`.`Universo` (`idUniverso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bbdd_Dragonball`.`Dioses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bbdd_Dragonball`.`Dioses` (
  `NombreDios` VARCHAR(40) NOT NULL,
  `Universo_idUniverso` INT NOT NULL,
  `Angeles_NombreAngel` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`NombreDios`),
  INDEX `fk_Dioses_Universo_idx` (`Universo_idUniverso` ASC) VISIBLE,
  INDEX `fk_Dioses_Angeles1_idx` (`Angeles_NombreAngel` ASC) VISIBLE,
  CONSTRAINT `fk_Dioses_Universo`
    FOREIGN KEY (`Universo_idUniverso`)
    REFERENCES `bbdd_Dragonball`.`Universo` (`idUniverso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Dioses_Angeles1`
    FOREIGN KEY (`Angeles_NombreAngel`)
    REFERENCES `bbdd_Dragonball`.`Angeles` (`NombreAngel`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bbdd_Dragonball`.`Personajes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bbdd_Dragonball`.`Personajes` (
  `NombrePersonaje` VARCHAR(45) NOT NULL,
  `AlturaPersonaje` INT NOT NULL,
  `Personajescol` VARCHAR(45) NULL,
  `Universo_idUniverso` INT NOT NULL,
  `Edad` INT NULL,
  PRIMARY KEY (`NombrePersonaje`),
  INDEX `fk_Personajes_Universo1_idx` (`Universo_idUniverso` ASC) VISIBLE,
  CONSTRAINT `fk_Personajes_Universo1`
    FOREIGN KEY (`Universo_idUniverso`)
    REFERENCES `bbdd_Dragonball`.`Universo` (`idUniverso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bbdd_Dragonball`.`Tecnicas_Especiales`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bbdd_Dragonball`.`Tecnicas_Especiales` (
  `NombreTecnica` VARCHAR(45) NOT NULL,
  `Color` VARCHAR(45) NULL,
  PRIMARY KEY (`NombreTecnica`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bbdd_Dragonball`.`Personaje_Tecnica`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bbdd_Dragonball`.`Personaje_Tecnica` (
  `Personajes_NombrePersonaje` VARCHAR(45) NOT NULL,
  `Tecnicas_Especiales_NombreTecnica` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Personajes_NombrePersonaje`, `Tecnicas_Especiales_NombreTecnica`),
  INDEX `fk_Personajes_has_Tecnicas_Especiales_Tecnicas_Especiales1_idx` (`Tecnicas_Especiales_NombreTecnica` ASC) VISIBLE,
  INDEX `fk_Personajes_has_Tecnicas_Especiales_Personajes1_idx` (`Personajes_NombrePersonaje` ASC) VISIBLE,
  CONSTRAINT `fk_Personajes_has_Tecnicas_Especiales_Personajes1`
    FOREIGN KEY (`Personajes_NombrePersonaje`)
    REFERENCES `bbdd_Dragonball`.`Personajes` (`NombrePersonaje`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Personajes_has_Tecnicas_Especiales_Tecnicas_Especiales1`
    FOREIGN KEY (`Tecnicas_Especiales_NombreTecnica`)
    REFERENCES `bbdd_Dragonball`.`Tecnicas_Especiales` (`NombreTecnica`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bbdd_Dragonball`.`Transformaciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bbdd_Dragonball`.`Transformaciones` (
  `NombreTransformacion` VARCHAR(70) NOT NULL,
  `Color` VARCHAR(45) NULL,
  PRIMARY KEY (`NombreTransformacion`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bbdd_Dragonball`.`Personaje_Transformacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bbdd_Dragonball`.`Personaje_Transformacion` (
  `Personajes_NombrePersonaje` VARCHAR(45) NOT NULL,
  `Transformaciones_NombreTransformacion` VARCHAR(70) NOT NULL,
  PRIMARY KEY (`Personajes_NombrePersonaje`, `Transformaciones_NombreTransformacion`),
  INDEX `fk_Personajes_has_Transformaciones_Transformaciones1_idx` (`Transformaciones_NombreTransformacion` ASC) VISIBLE,
  INDEX `fk_Personajes_has_Transformaciones_Personajes1_idx` (`Personajes_NombrePersonaje` ASC) VISIBLE,
  CONSTRAINT `fk_Personajes_has_Transformaciones_Personajes1`
    FOREIGN KEY (`Personajes_NombrePersonaje`)
    REFERENCES `bbdd_Dragonball`.`Personajes` (`NombrePersonaje`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Personajes_has_Transformaciones_Transformaciones1`
    FOREIGN KEY (`Transformaciones_NombreTransformacion`)
    REFERENCES `bbdd_Dragonball`.`Transformaciones` (`NombreTransformacion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bbdd_Dragonball`.`Heroe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bbdd_Dragonball`.`Heroe` (
  `Nivel_Poder` INT NOT NULL,
  `Personajes_NombrePersonaje` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Nivel_Poder`),
  INDEX `fk_Heroe_Personajes1_idx` (`Personajes_NombrePersonaje` ASC) VISIBLE,
  CONSTRAINT `fk_Heroe_Personajes1`
    FOREIGN KEY (`Personajes_NombrePersonaje`)
    REFERENCES `bbdd_Dragonball`.`Personajes` (`NombrePersonaje`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bbdd_Dragonball`.`Villano`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bbdd_Dragonball`.`Villano` (
  `Nivel_Poder` INT NOT NULL,
  `Personajes_NombrePersonaje` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Nivel_Poder`),
  INDEX `fk_Villano_Personajes1_idx` (`Personajes_NombrePersonaje` ASC) VISIBLE,
  CONSTRAINT `fk_Villano_Personajes1`
    FOREIGN KEY (`Personajes_NombrePersonaje`)
    REFERENCES `bbdd_Dragonball`.`Personajes` (`NombrePersonaje`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bbdd_Dragonball`.`KaioShin`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bbdd_Dragonball`.`KaioShin` (
  `NombreKaioshin` VARCHAR(45) NOT NULL,
  `Universo_idUniverso` INT NOT NULL,
  PRIMARY KEY (`NombreKaioshin`),
  INDEX `fk_KaioShin_Universo1_idx` (`Universo_idUniverso` ASC) VISIBLE,
  CONSTRAINT `fk_KaioShin_Universo1`
    FOREIGN KEY (`Universo_idUniverso`)
    REFERENCES `bbdd_Dragonball`.`Universo` (`idUniverso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
