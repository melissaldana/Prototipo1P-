-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema sic
-- -----------------------------------------------------
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Clientes` (
  `codigo_cliente` INT NOT NULL,
  `nombre_cliente` VARCHAR(60) NULL,
  `direccion_cliente` VARCHAR(60) NULL,
  `nit_cliente` VARCHAR(60) NULL,
  `telefono_cliente` VARCHAR(60) NULL,
  PRIMARY KEY (`codigo_cliente`))
ENGINE = InnoDB;

INSERT INTO `mydb`.`Clientes` (`codigo_cliente`, `nombre_cliente`, `direccion_cliente`,`nit_cliente`,`telefono_cliente`) VALUES
(1, 'Melissa', '33 Calle 8-39 Zona 10', '4987608', '35698745' ),
(2, 'Armando', '37 Calle 8-39 Zona 10', '4987878', '48952654' ),
(3, 'Odilia', '39 Calle 8-39 Zona 10', '7897608', '4568465' ),
(4, 'Gerson', '40 Calle 8-39 Zona 10', '4789608', '78945654' );
-- -----------------------------------------------------
-- Table `mydb`.`Proveedores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Proveedores` (
  `codigo_proveedor` INT NOT NULL,
  `nombre_proveedor` VARCHAR(60) NULL,
  `direccion_proveedor` VARCHAR(60) NULL,
  `telefono_proveedor` VARCHAR(60) NULL,
  `nit_proveedor` VARCHAR(60) NULL,
  `estatus_proveedor` VARCHAR(60) NULL,
  PRIMARY KEY (`codigo_proveedor`))
ENGINE = InnoDB;

INSERT INTO `mydb`.`Proveedores` (`codigo_proveedor`, `nombre_proveedor`, `direccion_proveedor`,`telefono_proveedor`,`nit_proveedor`,`estatus_proveedor`) VALUES
(1, 'Melissa', '33 Calle 8-39 Zona 10', '4987608', '35698745','activo' ),
(2, 'Armando', '37 Calle 8-39 Zona 10', '4987878', '48952654' ,'activo'),
(3, 'Odilia', '39 Calle 8-39 Zona 10', '7897608', '4568465', 'cerrado' ),
(4, 'Gerson', '40 Calle 8-39 Zona 10', '4789608', '78945654', 'activo' );

-- -----------------------------------------------------
-- Table `mydb`.`Cuenta Corriente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cuenta Corriente` (
  `idCuenta Corriente` INT NOT NULL,
  `cuentas_por_cobrar` VARCHAR(60) NULL,
  `recibo_de_pago` VARCHAR(60) NULL,
  `cuentas_por_pagar`  INT NOT NULL,
  `Proveedores_codigo_proveedor` INT NOT NULL,
  `Clientes_codigo_cliente` INT NOT NULL,
  PRIMARY KEY (`idCuenta Corriente`),
  CONSTRAINT `fk_Cuenta Corriente_Proveedores`
    FOREIGN KEY (`Proveedores_codigo_proveedor`)
    REFERENCES `mydb`.`Proveedores` (`codigo_proveedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cuenta Corriente_Clientes1`
    FOREIGN KEY (`Clientes_codigo_cliente`)
    REFERENCES `mydb`.`Clientes` (`codigo_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `mydb`.`Cuenta Corriente` (`idCuenta Corriente`, `cuentas_por_cobrar`, `recibo_de_pago`,`cuentas_por_pagar`,`Proveedores_codigo_proveedor`,`Clientes_codigo_cliente`) VALUES
(1, '2', '15654', '1', '1', '1' ),
(2, '3', '12345', '4',  '8', '2'),
(3, '0', '154898', '7', '7', '3' ),
(4, '2', '15489', '4',  '9', '4' );

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
