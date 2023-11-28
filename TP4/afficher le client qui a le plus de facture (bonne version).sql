SELECT TOP 1
       c.id AS client_id,
       c.nom AS client_nom,
       COUNT(f.id) AS nombre_de_factures
FROM client c
LEFT JOIN projet p ON c.id = p.client_id
LEFT JOIN devis d ON p.id = d.projet_id
LEFT JOIN facture f ON d.id = f.devis_id
GROUP BY c.id, c.nom
ORDER BY COUNT(f.id) DESC;
