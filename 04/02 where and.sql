
CREATE TABLE `planten` (
  `id` int(11) NOT NULL,
  `naam` text NOT NULL,
  `bloeitInSeisoen` int(11) NOT NULL,
  `heeftBloemen` tinyint(1) NOT NULL,
  `maxHoogte` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

ALTER TABLE `planten`
ADD PRIMARY KEY (`id`);

ALTER TABLE `planten`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

COMMIT;


INSERT INTO `planten` (`id`, `naam`, `bloeitInSeisoen`, `heeftBloemen`, `maxHoogte`) VALUES 
(NULL, 'bosje met bloemen', '1', '1', '100'),
(NULL, 'bosje zonder bloemen', '1', '0', '60'),
(NULL, 'boompje', '4', '0', '460'),
(NULL, 'zonnebloem', '2', '1', '260');


SELECT * FROM planten
WHERE heeftBloemen = 0;


SELECT * FROM planten
WHERE heeftBloemen = 0 AND maxHoogte < 100;


INSERT INTO `huisdieren` (`id`, `naam`, `eigenaar`, `typedier`, `leeftijd`, `geboortedatum`) 
VALUES 
(NULL, 'koning hamster', 'joep', 'hamster', '1', '2024-02-01'),
(NULL, 'miss fluffy', 'marije', 'hamster', '2', '2024-02-01'),
(NULL, 'knager', 'joep', 'hamster', '2', '2021-02-21'),
(NULL, 'minizebra', 'marije', 'hamster', '1', '2014-02-21');




SELECT * FROM huisdieren
WHERE eigenaar = 'Daan' AND leeftijd > 1;


SELECT * FROM huisdieren
WHERE (eigenaar = 'Daan' OR eigenaar = 'marije') AND leeftijd = 1;

SELECT * FROM huisdieren
WHERE typedier = 'hamster' AND leeftijd = 1;




SELECT * FROM huisdieren
WHERE typedier = 'Kat' AND leeftijd > 5;


SELECT * FROM huisdieren
WHERE eigenaar = 'Daan' AND geboortedatum > '2020-01-01';
