SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `kleren` (
  `id` int(11) NOT NULL,
  `beschrijving` varchar(100) NOT NULL,
  `kledingtype` varchar(100) NOT NULL,
  `kleur` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

ALTER TABLE `kleren`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `kleren`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;


SELECT * FROM kleren
WHERE kleur = 'zwart' OR kleur = 'blauw';


    SELECT * FROM kleren
WHERE kleur = 'zwart' OR kleur = 'wit';


SELECT * FROM kleren
    WHERE kledingtype = 'broek' OR kledingtype = 'tshirt';

SELECT * FROM kleren
WHERE kledingtype = 'broek' AND (kleur = 'zwart' OR kleur = 'wit');


    SELECT * FROM kleren
    WHERE (kledingtype = 'broek' OR kledingtype = 'overhemd') 
AND (kleur = 'zwart' OR kleur = 'wit');


SELECT * FROM kleren
    WHERE (kledingtype = 'tshirt' OR kledingtype = 'overhemd') 
    AND (kleur = 'rood' OR kleur = 'blauw');

   
SELECT * FROM huisdieren
    WHERE typedier = 'Kat' OR typedier = 'kat';

        SELECT * FROM huisdieren
WHERE eigenaar = 'Daan' AND (typedier = 'hamster' OR typedier = 'kat');


