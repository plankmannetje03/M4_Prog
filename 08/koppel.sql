CREATE TABLE teamv2 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    teamnaam VARCHAR(250) NOT NULL
);

CREATE TABLE teamlidv2 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    voornaam VARCHAR(100) NOT NULL,
    achternaam VARCHAR(100) NOT NULL
);



CREATE TABLE teamlidv2_teamv2 (
    teamlidid INT,
    teamid INT,
    PRIMARY KEY (teamlidid, teamid),
    UNIQUE INDEX teamlid_team_UNIQUE (teamlidid ASC, teamid ASC) VISIBLE,
    FOREIGN KEY (teamlidid) REFERENCES teamlidv2(id),
    FOREIGN KEY (teamid) REFERENCES teamv2(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO teamv2 (id, teamnaam) VALUES 
(1, 'flowerpower'),
(2, 'poisonshroom'),
(3, 'goombas'),
(4, 'the toad army');



INSERT INTO teamlidv2 (id, voornaam, achternaam) VALUES 
(1, 'mario', 'mario'),
(2, 'luigi', 'mario'),
(3, 'peach', '?'),
(4, 'toad', 'the one and only'),
(5, 'kamek', 'the witch'),
(6, 'waluigi', 'waa'),
(7, 'wario', 'waa'),
(8, 'bowser', 'the great');

INSERT INTO teamlidv2_teamv2 (teamlidid, teamid) VALUES 
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 2),
(6, 2),
(7, 2),
(8, 2);

