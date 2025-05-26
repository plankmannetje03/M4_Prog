CREATE TABLE `huisdiereigenaar` (
`id` INT NOT NULL AUTO_INCREMENT,
`voornaam` VARCHAR(120) NOT NULL,
  `achternaam` VARCHAR(120) NOT NULL,
`leeftijd` INT NOT NULL,
 PRIMARY KEY (`id`)
);


    INSERT INTO `huisdiereigenaar` (`voornaam`, `achternaam`, `leeftijd`) VALUES
('Daan', 'Plankman', 28),
('Joris', 'de Vries', 32);
