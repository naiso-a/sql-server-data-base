SELECT f.*
FROM facture f
JOIN devis d ON f.devis_id = d.id
JOIN projet p ON d.projet_id = p.id
WHERE p.client_id = 1; 