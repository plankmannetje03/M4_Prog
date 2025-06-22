SELECT 
  product,
  SUM(aantal) AS totaal_verkocht,
  SUM(aantal * verkoopprijs) AS totale_omzet
FROM verkochtproduct
WHERE product = 'mario wonder';

SELECT 
  product,
  SUM(aantal) AS totaal_verkocht,
  SUM(aantal * verkoopprijs) AS totale_omzet
FROM verkochtproduct;

SELECT 
  product,
  SUM(aantal) AS totaal_verkocht,
  SUM(aantal * verkoopprijs) AS totale_omzet
FROM verkochtproduct
GROUP BY product;

SELECT COUNT(*) AS totaal_huisdieren FROM huisdieren;
SELECT COUNT(*) AS aantal_katten FROM kat;
SELECT COUNT(*) AS aantal_verkochte_producten FROM verkochtproduct;

SELECT eigenaar_id, COUNT(*) AS aantal_huisdieren
FROM huisdieren
GROUP BY eigenaar_id;
