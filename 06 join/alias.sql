SELECT * FROM huisdieren;

SELECT naam, leeftijd FROM huisdieren;

SELECT naam, leeftijd, SUM(leeftijd) FROM huisdieren;

SELECT naam, leeftijd, SUM(leeftijd) OVER() AS totale_leeftijd FROM huisdieren;

SELECT naam AS name, leeftijd AS age, SUM(leeftijd) OVER() AS total_age FROM huisdieren;

SELECT huisdieren.naam AS name, huisdier.leeftijd AS age, SUM(huisdier.leeftijd) OVER() AS total_age
FROM huisdieren AS huisdier;

SELECT Huisdier.naam AS name, huisdier.leeftijd AS age, SUM(Huisdier.leeftijd) OVER() AS total_age
FROM huisdieren AS huisdier
WHERE Huisdier.leeftijd > 5;

SELECT 
  h.hobbyid, 
  h.hobby, 
  p.id AS persoonid, 
  p.naam
FROM hobby h
JOIN persoon p ON h.hobbyid = p.hobbyid;

