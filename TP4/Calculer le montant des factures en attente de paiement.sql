SELECT
    c.id AS client_id,
    c.nom AS client_nom,
    SUM(CASE WHEN f.date_paiement IS NULL OR f.date_paiement > GETDATE() THEN f.total ELSE 0 END) AS montant_en_attente
FROM client c
LEFT JOIN projet p ON c.id = p.client_id
LEFT JOIN devis d ON p.id = d.projet_id
LEFT JOIN facture f ON d.id = f.devis_id
GROUP BY c.id, c.nom;

