SELECT
    c.id AS client_id,
    c.nom AS client_nom,
    COUNT(d.id) AS nombre_de_devis
FROM client c
LEFT JOIN projet p ON c.id = p.client_id
LEFT JOIN devis d ON p.id = d.projet_id
GROUP BY c.id, c.nom;
