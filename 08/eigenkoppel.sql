
CREATE TABLE helpdeskmedewerker (
    id INT AUTO_INCREMENT PRIMARY KEY,
    voornaam VARCHAR(100),
    achternaam VARCHAR(100)
);


CREATE TABLE beller (
    id INT AUTO_INCREMENT PRIMARY KEY,
    voornaam VARCHAR(100),
    achternaam VARCHAR(100)
);


CREATE TABLE gesprek (
    id INT AUTO_INCREMENT PRIMARY KEY,
             bellerid INT,
    medewerkerid INT,
    datumtijd DATETIME,
    FOREIGN KEY (bellerid) REFERENCES beller(id),
    FOREIGN KEY (medewerkerid) REFERENCES helpdeskmedewerker(id)
);




INSERT INTO helpdeskmedewerker (id, voornaam, achternaam) VALUES
(1, 'Sanne', 'Jansen'),
(2, 'Kees',     'Peters');


INSERT INTO beller (id, voornaam, achternaam) VALUES
(1, 'Tom', 'de Boer'),
(2, 'Lena', 'Visser');


INSERT INTO gesprek (bellerid, medewerkerid, datumtijd) VALUES
(1, 1, '2025-06-21 10:15:00'),
(2, 2, '2025-06-21 11:45:00'),
(1, 2, '2025-06-22 09:30:00');


SELECT 
     g.id AS gesprek_id,
  b.voornaam AS beller_voornaam,
  b.achternaam AS beller_achternaam,
  h.voornaam AS medewerker_voornaam,
  h.achternaam AS medewerker_achternaam,
  g.datumtijd
FROM gesprek g
        JOIN beller b ON g.bellerid = b.id
JOIN helpdeskmedewerker h ON g.medewerkerid = h.id;
