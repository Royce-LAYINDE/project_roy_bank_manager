use roy_bank;

INSERT INTO historique_pret (id_client, montant_pret, duree_pret, date_emprunt, statut_pret) VALUES
(1, ROUND(RAND() * 500000, 2), FLOOR(RAND() * 48) + 1, DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0'))), 'O'),
(2, ROUND(RAND() * 500000, 2), FLOOR(RAND() * 48) + 1, DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0'))), 'N'),
(3, ROUND(RAND() * 500000, 2), FLOOR(RAND() * 48) + 1, DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0'))), 'O'),
(4, ROUND(RAND() * 500000, 2), FLOOR(RAND() * 48) + 1, DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0'))), 'N'),
(5, ROUND(RAND() * 500000, 2), FLOOR(RAND() * 48) + 1, DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0'))), 'O'),
(6, ROUND(RAND() * 500000, 2), FLOOR(RAND() * 48) + 1, DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0'))), 'N'),
(7, ROUND(RAND() * 500000, 2), FLOOR(RAND() * 48) + 1, DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0'))), 'O'),
(8, ROUND(RAND() * 500000, 2), FLOOR(RAND() * 48) + 1, DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0'))), 'N'),
(9, ROUND(RAND() * 500000, 2), FLOOR(RAND() * 48) + 1, DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0'))), 'O'),
(10, ROUND(RAND() * 500000, 2), FLOOR(RAND() * 48) + 1, DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0'))), 'N'),
(11, ROUND(RAND() * 500000, 2), FLOOR(RAND() * 48) + 1, DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0'))), 'O'),
(12, ROUND(RAND() * 500000, 2), FLOOR(RAND() * 48) + 1, DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0'))), 'N'),
(13, ROUND(RAND() * 500000, 2), FLOOR(RAND() * 48) + 1, DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0'))), 'O'),
(14, ROUND(RAND() * 500000, 2), FLOOR(RAND() * 48) + 1, DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0'))), 'N'),
(15, ROUND(RAND() * 500000, 2), FLOOR(RAND() * 48) + 1, DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0'))), 'O');


