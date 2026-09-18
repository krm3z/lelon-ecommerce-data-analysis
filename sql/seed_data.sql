INSERT INTO products (product_name, min_target_age, max_target_age, product_description, product_category)
VALUES
('ELEA', 18, 35, 'Sac porté épaule structuré', 'Handbag'),
('MIRA', 18, 35, 'Sac plissé compact', 'Handbag'),
('NOVA', 20, 40, 'Grand tote quotidien', 'Handbag'),
('SOLEA', 20, 40, 'Sac estival tressé', 'Handbag'),
('LYRA', 22, 40, 'Sac structuré élégant', 'Handbag'),
('LUNA', 18, 30, 'Mini sac arrondi', 'Handbag'),
('ALYA', 18, 35, 'Sac cylindrique souple', 'Handbag'),
('LILA', 18, 30, 'Micro-sac compact', 'Handbag'),
('VERA', 20, 40, 'Sac rétro-chic', 'Handbag'),
('NAYA', 20, 40, 'Sac souple quotidien', 'Handbag');

INSERT INTO colors (color_name)
VALUES
('Cognac'),
('Noir'),
('Ivoire'),
('Sable'),
('Taupe'),
('Chocolat'),
('Bordeaux'),
('Camel'),
('Beige');

INSERT INTO product_variants (product_id, color_id, size, material, current_price, purchase_price, stock)
VALUES
(1, 1, 'Standard', 'PU', 40.00, 16.00, 35),
(1, 2, 'Standard', 'PU', 40.00, 16.00, 30),
(1, 3, 'Standard', 'PU', 40.00, 16.00, 25),
(2, 3, 'Standard', 'PU', 40.00, 15.50, 30),
(2, 5, 'Standard', 'PU', 40.00, 15.50, 25),
(2, 2, 'Standard', 'PU', 40.00, 15.50, 30),
(3, 6, 'Standard', 'Effet suède', 40.00, 18.00, 25),
(3, 7, 'Standard', 'Effet suède', 40.00, 18.00, 20),
(3, 2, 'Standard', 'Effet suède', 40.00, 18.00, 25),
(3, 8, 'Standard', 'Effet suède', 40.00, 18.00, 20),
(4, 9, 'Standard', 'Tressage', 40.00, 17.00, 20),
(4, 2, 'Standard', 'Tressage', 40.00, 17.00, 18),
(5, 6, 'Standard', 'PU', 40.00, 17.50, 25),
(5, 3, 'Standard', 'PU', 40.00, 17.50, 20),
(5, 2, 'Standard', 'PU', 40.00, 17.50, 25),
(5, 5, 'Standard', 'PU', 40.00, 17.50, 20),
(6, 3, 'Standard', 'PU', 40.00, 14.00, 30),
(6, 2, 'Standard', 'PU', 40.00, 14.00, 25),
(6, 6, 'Standard', 'PU', 40.00, 14.00, 25),
(7, 1, 'Standard', 'PU', 40.00, 16.50, 25),
(7, 3, 'Standard', 'PU', 40.00, 16.50, 25),
(7, 2, 'Standard', 'PU', 40.00, 16.50, 25),
(8, 6, 'Standard', 'PU', 40.00, 12.50, 20),
(8, 3, 'Standard', 'PU', 40.00, 12.50, 20),
(8, 2, 'Standard', 'PU', 40.00, 12.50, 20),
(9, 1, 'Standard', 'PVC', 40.00, 15.00, 25),
(9, 2, 'Standard', 'PVC', 40.00, 15.00, 25),
(9, 7, 'Standard', 'PVC', 40.00, 15.00, 20),
(10, 6, 'Standard', 'PU', 40.00, 16.00, 30),
(10, 2, 'Standard', 'PU', 40.00, 16.00, 25),
(10, 3, 'Standard', 'PU', 40.00, 16.00, 25),
(10, 4, 'Standard', 'PU', 40.00, 16.00, 20);

INSERT INTO seasons (season_name)
VALUES
('Spring'),
('Summer'),
('Autumn'),
('Winter'),
('All Season');

INSERT INTO product_seasons (season_id, product_id)
VALUES
(5, 1),
(5, 2),
(3, 3),
(2, 4),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(3, 9),
(5, 10);

INSERT INTO marketing_campaigns (campaign_name, platform, start_date, end_date, budget, amount_spent, likes, shares, impressions, clicks)
VALUES
('Launch Instagram', 'Instagram', '2026-10-01', '2026-10-07', 350.00, 332.00, 1240, 186, 48000, 2950),
('Launch TikTok', 'TikTok', '2026-10-01', '2026-10-07', 350.00, 347.00, 2650, 510, 72000, 4100),
('Meta Retargeting', 'Facebook', '2026-10-04', '2026-10-12', 220.00, 211.00, 540, 72, 26000, 1520),
('Autumn Collection', 'Instagram', '2026-10-10', '2026-10-20', 300.00, 289.00, 980, 133, 39000, 2380);

INSERT INTO website_traffic (campaign_id, traffic_date, visitors, sessions, page_views)
VALUES
(1, '2026-10-01', 310, 390, 1080),
(1, '2026-10-02', 355, 440, 1260),
(1, '2026-10-03', 390, 485, 1390),
(1, '2026-10-04', 420, 525, 1510),
(1, '2026-10-05', 465, 580, 1690),
(1, '2026-10-06', 410, 505, 1470),
(1, '2026-10-07', 370, 460, 1310),
(2, '2026-10-01', 420, 510, 1260),
(2, '2026-10-02', 510, 625, 1590),
(2, '2026-10-03', 590, 720, 1870),
(2, '2026-10-04', 650, 790, 2110),
(2, '2026-10-05', 720, 875, 2390),
(2, '2026-10-06', 680, 820, 2210),
(2, '2026-10-07', 610, 745, 1960),
(3, '2026-10-04', 180, 230, 710),
(3, '2026-10-05', 215, 270, 840),
(3, '2026-10-06', 240, 305, 960),
(3, '2026-10-07', 260, 330, 1040),
(3, '2026-10-08', 245, 310, 990),
(4, '2026-10-10', 280, 350, 1010),
(4, '2026-10-12', 330, 415, 1190),
(4, '2026-10-14', 365, 455, 1320),
(4, '2026-10-16', 410, 510, 1490),
(4, '2026-10-18', 390, 485, 1410),
(NULL, '2026-10-01', 120, 155, 430),
(NULL, '2026-10-05', 175, 220, 620),
(NULL, '2026-10-10', 210, 265, 760),
(NULL, '2026-10-15', 245, 310, 880),
(NULL, '2026-10-20', 280, 350, 1010);

INSERT INTO promotions (promotion_name, start_date, end_date, discount_percentage)
VALUES
('Launch Offer', '2026-10-01', '2026-10-07', 12.50);

INSERT INTO product_promotions (promotion_id, product_id)
VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10);

INSERT INTO customers (first_name, last_name, email, phone, city, country, date_of_birth, gender, occupation)
VALUES
('Emma', 'Martin', 'emma.martin@example.com', '0600000001', 'Lyon', 'France', '2001-04-12', 'Female', 'Student'),
('Lea', 'Bernard', 'lea.bernard@example.com', '0600000002', 'Paris', 'France', '1998-08-23', 'Female', 'Marketing Assistant'),
('Chloe', 'Robert', 'chloe.robert@example.com', '0600000003', 'Bordeaux', 'France', '2003-02-14', 'Female', 'Student'),
('Manon', 'Richard', 'manon.richard@example.com', '0600000004', 'Lille', 'France', '1996-11-05', 'Female', 'Consultant'),
('Camille', 'Petit', 'camille.petit@example.com', '0600000005', 'Toulouse', 'France', '2000-06-19', 'Female', 'Designer'),
('Sarah', 'Durand', 'sarah.durand@example.com', '0600000006', 'Lyon', 'France', '1995-09-30', 'Female', 'Accountant'),
('Ines', 'Leroy', 'ines.leroy@example.com', '0600000007', 'Marseille', 'France', '2002-01-18', 'Female', 'Student'),
('Clara', 'Moreau', 'clara.moreau@example.com', '0600000008', 'Nantes', 'France', '1999-05-07', 'Female', 'HR Assistant'),
('Jade', 'Simon', 'jade.simon@example.com', '0600000009', 'Paris', 'France', '2004-03-21', 'Female', 'Student'),
('Louise', 'Laurent', 'louise.laurent@example.com', '0600000010', 'Nice', 'France', '1997-12-09', 'Female', 'Sales Representative'),
('Alice', 'Michel', 'alice.michel@example.com', '0600000011', 'Lyon', 'France', '2001-07-17', 'Female', 'Student'),
('Eva', 'Garcia', 'eva.garcia@example.com', '0600000012', 'Grenoble', 'France', '1998-10-11', 'Female', 'Engineer'),
('Lina', 'David', 'lina.david@example.com', '0600000013', 'Paris', 'France', '2000-03-04', 'Female', 'Community Manager'),
('Nina', 'Bertrand', 'nina.bertrand@example.com', '0600000014', 'Montpellier', 'France', '1996-05-28', 'Female', 'Teacher'),
('Rose', 'Roux', 'rose.roux@example.com', '0600000015', 'Strasbourg', 'France', '2003-09-13', 'Female', 'Student'),
('Anna', 'Vincent', 'anna.vincent@example.com', '0600000016', 'Lyon', 'France', '1999-01-25', 'Female', 'Recruiter'),
('Mila', 'Fournier', 'mila.fournier@example.com', '0600000017', 'Paris', 'France', '2002-12-02', 'Female', 'Student'),
('Lola', 'Morel', 'lola.morel@example.com', '0600000018', 'Rennes', 'France', '1997-04-16', 'Female', 'Project Manager'),
('Ambre', 'Girard', 'ambre.girard@example.com', '0600000019', 'Dijon', 'France', '2001-08-08', 'Female', 'Student'),
('Julia', 'Andre', 'julia.andre@example.com', '0600000020', 'Paris', 'France', '1995-02-27', 'Female', 'Business Analyst');

INSERT INTO orders (customer_id, campaign_id, order_date, status)
VALUES
(1, 1, '2026-10-01 10:14:00', 'Delivered'),
(2, 2, '2026-10-01 13:32:00', 'Delivered'),
(3, 2, '2026-10-02 09:21:00', 'Delivered'),
(4, 1, '2026-10-02 17:44:00', 'Delivered'),
(5, NULL, '2026-10-03 11:05:00', 'Delivered'),
(6, 2, '2026-10-03 14:38:00', 'Delivered'),
(7, 2, '2026-10-04 16:11:00', 'Delivered'),
(8, 1, '2026-10-04 19:26:00', 'Delivered'),
(9, 3, '2026-10-05 08:52:00', 'Delivered'),
(10, 2, '2026-10-05 12:47:00', 'Delivered'),
(11, 3, '2026-10-06 15:03:00', 'Delivered'),
(12, 1, '2026-10-06 18:29:00', 'Delivered'),
(13, NULL, '2026-10-07 10:42:00', 'Delivered'),
(14, 2, '2026-10-07 20:15:00', 'Delivered'),
(15, 3, '2026-10-08 14:17:00', 'Delivered'),
(16, NULL, '2026-10-09 11:33:00', 'Delivered'),
(17, 4, '2026-10-10 09:48:00', 'Delivered'),
(18, 4, '2026-10-11 16:06:00', 'Delivered'),
(19, NULL, '2026-10-12 13:55:00', 'Delivered'),
(20, 4, '2026-10-13 18:22:00', 'Delivered'),
(1, 4, '2026-10-14 12:14:00', 'Delivered'),
(3, NULL, '2026-10-15 17:39:00', 'Delivered'),
(5, 4, '2026-10-16 10:28:00', 'Delivered'),
(7, NULL, '2026-10-17 15:51:00', 'Delivered'),
(9, 4, '2026-10-18 19:02:00', 'Delivered'),
(11, NULL, '2026-10-19 09:43:00', 'Delivered'),
(13, 4, '2026-10-20 14:36:00', 'Delivered'),
(15, NULL, '2026-10-21 11:57:00', 'Delivered'),
(17, NULL, '2026-10-22 16:45:00', 'Delivered'),
(20, NULL, '2026-10-23 13:18:00', 'Delivered');

INSERT INTO order_items (order_id, variant_id, quantity, sold_price)
VALUES
(1, 1, 1, 35.00),
(2, 7, 1, 35.00),
(3, 17, 1, 35.00),
(4, 4, 1, 35.00),
(5, 29, 1, 35.00),
(6, 2, 1, 35.00),
(7, 8, 1, 35.00),
(8, 20, 1, 35.00),
(9, 13, 1, 35.00),
(10, 23, 1, 35.00),
(11, 30, 1, 35.00),
(12, 5, 1, 35.00),
(13, 18, 1, 35.00),
(14, 26, 1, 35.00),
(15, 14, 1, 40.00),
(16, 31, 1, 40.00),
(17, 11, 1, 40.00),
(18, 27, 1, 40.00),
(19, 15, 1, 40.00),
(20, 9, 1, 40.00),
(21, 3, 1, 40.00),
(22, 24, 1, 40.00),
(23, 6, 1, 40.00),
(24, 32, 1, 40.00),
(25, 10, 1, 40.00),
(26, 19, 1, 40.00),
(27, 28, 1, 40.00),
(28, 21, 1, 40.00),
(29, 25, 1, 40.00),
(30, 12, 1, 40.00),
(2, 3, 1, 35.00),
(7, 21, 1, 35.00),
(10, 30, 1, 35.00),
(18, 16, 1, 40.00),
(23, 29, 1, 40.00);