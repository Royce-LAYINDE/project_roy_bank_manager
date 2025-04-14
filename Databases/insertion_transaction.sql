USE roy_bank;

INSERT INTO transactions (id_client, nature, montant_transaction, date_transaction) VALUES
(1, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(1, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(1, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(1, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(1, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(1, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(1, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0'))));

INSERT INTO transactions (id_client, nature, montant_transaction, date_transaction) VALUES
(2, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(2, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(2, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(2, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(2, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(2, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(2, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0'))));

INSERT INTO transactions (id_client, nature, montant_transaction, date_transaction) VALUES
(3, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(3, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(3, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(3, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(3, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(3, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(3, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0'))));

INSERT INTO transactions (id_client, nature, montant_transaction, date_transaction) VALUES
(4, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(4, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(4, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(4, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(4, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(4, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(4, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0'))));

INSERT INTO transactions (id_client, nature, montant_transaction, date_transaction) VALUES
(5, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(5, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(5, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(5, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(5, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(5, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(5, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0'))));


INSERT INTO transactions (id_client, nature, montant_transaction, date_transaction) VALUES
(6, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(6, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(6, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(6, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(6, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(6, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(6, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0'))));

INSERT INTO transactions (id_client, nature, montant_transaction, date_transaction) VALUES
(7, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(7, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(7, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(7, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(7, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(7, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(7, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0'))));

INSERT INTO transactions (id_client, nature, montant_transaction, date_transaction) VALUES
(8, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(8, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(8, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(8, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(8, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(8, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(8, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0'))));

INSERT INTO transactions (id_client, nature, montant_transaction, date_transaction) VALUES
(9, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(9, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(9, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(9, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(9, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(9, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(9, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0'))));

INSERT INTO transactions (id_client, nature, montant_transaction, date_transaction) VALUES
(11, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(11, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(11, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(11, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(11, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(11, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(11, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0'))));

INSERT INTO transactions (id_client, nature, montant_transaction, date_transaction) VALUES
(12, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(12, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(12, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(12, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(12, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(12, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(12, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0'))));

INSERT INTO transactions (id_client, nature, montant_transaction, date_transaction) VALUES
(13, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(13, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(13, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(13, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(13, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(13, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(13, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0'))));

INSERT INTO transactions (id_client, nature, montant_transaction, date_transaction) VALUES
(14, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(14, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(14, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(14, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(14, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(14, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(14, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0'))));

INSERT INTO transactions (id_client, nature, montant_transaction, date_transaction) VALUES
(15, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(15, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(15, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(15, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(15, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(15, 'actif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0')))),
(15, 'passif', ROUND(RAND() * 500000, 2), DATE(CONCAT('2024-', LPAD(FLOOR(1 + RAND() * 12), 2, '0'), '-', LPAD(FLOOR(1 + RAND() * 28), 2, '0'))));
