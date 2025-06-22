CREATE TABLE ingredient (
    id INT AUTO_INCREMENT PRIMARY KEY,
    naam VARCHAR(250) NOT NULL
);


CREATE TABLE voedselProduct (
    id INT AUTO_INCREMENT PRIMARY KEY,
    hoofdIngredientId INT,
    naam VARCHAR(250) NOT NULL,
    FOREIGN KEY (hoofdIngredientId) REFERENCES ingredient(id)
);
INSERT INTO ingredient (id, naam) VALUES 
(1, 'pindas');

INSERT INTO voedselProduct (hoofdIngredientId, naam) VALUES 
(1, 'pindakaas');

CREATE TABLE ingredient (
    id INT AUTO_INCREMENT PRIMARY KEY,
    naam VARCHAR(250) NOT NULL
);


CREATE TABLE voedselProduct (
    id INT AUTO_INCREMENT PRIMARY KEY,
    hoofdIngredientId INT,
    naam VARCHAR(250) NOT NULL
);


ALTER TABLE voedselProduct
ADD CONSTRAINT FK_voedselProduct_ingredient
    FOREIGN KEY (hoofdIngredientId) REFERENCES ingredient(id);


INSERT INTO ingredient (id, naam) VALUES 
(1, 'pindas'),
(2, 'honing'),
(3, 'bosbessen');

INSERT INTO voedselProduct (hoofdIngredientId, naam) VALUES 
(1, 'pindakaas'),
(2, 'honingkoek'),
(3, 'bosbessenkwark');

CREATE TABLE kat (
    id INT AUTO_INCREMENT PRIMARY KEY,
    naam VARCHAR(250) NOT NULL
);
CREATE TABLE kitten (
    id INT AUTO_INCREMENT PRIMARY KEY,
    mamaId INT,
    papaId INT,
    naam VARCHAR(250) NOT NULL
);
ALTER TABLE kitten
ADD CONSTRAINT FK_kitten_mama
FOREIGN KEY (mamaId) REFERENCES kat(id);

    ALTER TABLE kitten
ADD CONSTRAINT FK_kitten_papa
FOREIGN KEY (papaId) REFERENCES kat(id);


    INSERT INTO kat (id, naam) VALUES 
(1, 'spinner'),
(2, 'pluisje');

INSERT INTO kitten (mamaId, papaId, naam) VALUES 
(1, 2, 'minicat');


SELECT 
    k.naam AS kitten_naam,
    mama.naam AS mama_naam,
    papa.naam AS papa_naam
FROM 
    kitten k
JOIN kat mama ON k.mamaId = mama.id
JOIN kat papa ON k.papaId = papa.id;

ALTER TABLE kitten
DROP FOREIGN KEY FK_kitten_mama;

ALTER TABLE kitten
ADD CONSTRAINT FK_kitten_mama
FOREIGN KEY (mamaId) REFERENCES kat(id)
ON DELETE CASCADE;


        ALTER TABLE kitten
DROP FOREIGN KEY FK_kitten_papa;

ALTER TABLE kitten
    ADD CONSTRAINT FK_kitten_papa
FOREIGN KEY (papaId) REFERENCES kat(id)
ON DELETE CASCADE;
