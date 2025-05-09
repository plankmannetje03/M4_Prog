CREATE TABLE `m4_prog`.`huisdieren` (
  `idHuisdieren` INT NOT NULL,
  `Naam` VARCHAR(150) NOT NULL,
  `eigenaar` VARCHAR(150) NOT NULL,
  `typedier` VARCHAR(80) NOT NULL,
  `leeftijd` INT NOT NULL,
  `geboortedatum` DATE NOT NULL,
  PRIMARY KEY (`idHuisdieren`));