
SELECT 
    k.naam AS klant_naam,
    SUM(CAST(dv.MBs AS DECIMAL(10,2))) AS totaal_verbruikte_MBs
FROM 
    klant k
JOIN 
    dataverbruik dv ON k.id = dv.klant_id
GROUP BY 
    k.naam;
SELECT 
    k.naam AS klant_naam,
    SUM(sms.aantalpaginas) AS totaal_smsjes
FROM 
    klant k
JOIN 
    smsverbruik sms ON k.id = sms.klant_id
GROUP BY 
    k.naam;


SELECT 
    k.naam AS klant_naam,
    SUM(TIMESTAMPDIFF(SECOND, g.startdatum, g.einddatum)) AS totaal_seconden_gesprekken
FROM 
    klant k
JOIN 
    gesprekken g ON k.id = g.klant_id
GROUP BY 
    k.naam;
SELECT 
    k.naam AS klant_naam,
    SUM(CAST(dv.MBs AS DECIMAL(10,2))) AS totaal_verbruikte_MBs_feb2024
FROM 
    klant k
JOIN 
    dataverbruik dv ON k.id = dv.klant_id
WHERE 
    dv.datum >= '2024-02-01' AND dv.datum < '2024-03-01'
GROUP BY 
    k.naam;

SELECT 
    k.naam AS klant_naam,
    c.id AS contract_id,
    c.ingangsdatum,
    c.einddatum,
    a.abonnementtype,
    a.kostenPerMaand
FROM 
    klant k
JOIN 
    klant_has_contract khc ON k.id = khc.klant_id
JOIN 
    contract c ON khc.contract_id = c.id
JOIN 
    abonnement a ON c.abonnement_id = a.id;
SELECT 
    k.naam AS klant_naam,
    c.id AS contract_id,
    a.abonnementtype,
    a.kostenPerMaand,
    t.tariefnaam,
    t.perunit,
    dc.dienstnaam
FROM 
    klant k
JOIN 
    klant_has_contract khc ON k.id = khc.klant_id
JOIN 
    contract c ON khc.contract_id = c.id
JOIN 
    abonnement a ON c.abonnement_id = a.id
JOIN 
    abonnement_has_tarief aht ON a.id = aht.abonnement_id
JOIN 
    tarief t ON aht.tarief_id = t.id
JOIN 
    dienstcodes dc ON t.dienstcodes_id = dc.id;
