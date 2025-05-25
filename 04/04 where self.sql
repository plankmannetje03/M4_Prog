-- Tabel aanmaken
CREATE TABLE `games` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `naam` VARCHAR(100) NOT NULL,
  `platform` VARCHAR(50) NOT NULL,
  `releasejaar` INT NOT NULL,
  `verkrijgbaar` TINYINT(1) NOT NULL, -- 1 = ja, 0 = nee
  `prijs` DECIMAL(6,2) NOT NULL,
  `genre` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`)
);

-- Data invoegen
INSERT INTO `games` (`naam`, `platform`, `releasejaar`, `verkrijgbaar`, `prijs`, `genre`) VALUES
('Rocket league', 'PC', 2022, 1, 59.99, 'Action'),
('mario oddysey', 'Switch', 2023, 1, 49,99, 'Adventure'),
('F1 2025', 'PS5', 2024, 0, 69.99, 'Racing'),
('Dead by daylight', 'PC', 2021, 1, 29.99, 'Horror'),
('fortnite', 'Xbox', 2023, 1, 69.99, 'Shooter'),
('BluePrints', 'Pc', 2020, 1, 0.00, 'Puzzle'),
('Zelda World', 'Switch', 2025, 0, 59.99, 'Adventure');

    SELECT * FROM games
WHERE platform = 'PC' AND prijs < 40.00;


    SELECT * FROM games
WHERE (genre = 'Simulation' OR genre = 'Shooter') AND verkrijgbaar = 1;

    SELECT * FROM games
WHERE prijs = 69.99 AND genre = 'Racing' AND verkrijgbaar = 0;
