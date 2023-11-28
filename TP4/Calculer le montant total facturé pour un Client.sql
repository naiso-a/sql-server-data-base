SELECT
    c.id AS client_id,
    c.nom AS client_nom,
    SUM(f.total) AS montant_total_facture
FROM client c
LEFT JOIN projet p ON c.id = p.client_id
LEFT JOIN devis d ON p.id = d.projet_id
LEFT JOIN facture f ON d.id = f.devis_id
WHERE c.id = 1
GROUP BY c.id, c.nom; -- Ajout de la clause GROUP BY
