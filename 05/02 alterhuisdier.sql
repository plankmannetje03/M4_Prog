ALTER TABLE huidieren DROP COLUMN eigenaar;
ALTER TABLE huidieren ADD eigennaarid INT NOT NULL;

ALTER TABLE huisdieren ADD COLUMN eigenaarid INT;

UPDATE huisdieren SET eigenaarid = 1 WHERE naam IN ('hammie', 'koning hamster');

UPDATE huisdieren SET eigenaarid = 2 WHERE naam IN ('jack', 'zebra');
UPDATE huisdieren SET eigenaarid = 3 WHERE naam = 'Flurf';

SELECT * FROM huisdieren WHERE naam = 'knager';
SELECT * FROM huisdiereigenaar WHERE id = 1;

