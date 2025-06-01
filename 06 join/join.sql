SELECT * 
FROM hobby h
JOIN persoon p ON h.hobbyid = p.hobbyid;

SELECT 
  k.klantid, 
  k.naam, 
  k.email, 
  g.datum, 
  g.onderwerp
FROM klant k
JOIN gesprek g ON k.klantid = g.klantid;
