CREATE DATABASE `agidb`;

CREATE TABLE IF NOT EXISTS `agidb`.`clientes` (
  `idclientes` INT NOT NULL AUTO_INCREMENT ,
  `cedula` VARCHAR(20) NULL ,
  `telefono` VARCHAR(20) NULL ,
  `nombre` VARCHAR(100) NULL ,
  `activo` INT NULL ,
  PRIMARY KEY (`idclientes`) ,
  UNIQUE INDEX `cedula_UNIQUE` (`cedula` ASC) )
ENGINE = InnoDB;

INSERT INTO `agidb`.`clientes` (`cedula`, `telefono`, `nombre`, `activo`) VALUES ('1234567', '500', 'Jaime Nieto', 0);
INSERT INTO `agidb`.`clientes` (`cedula`, `telefono`, `nombre`, `activo`) VALUES ('1234568', '500', 'Gonzalo Cárcamo', 1);
