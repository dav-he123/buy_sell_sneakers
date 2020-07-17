-- Users table seeds here (Example)
INSERT INTO users (id, name, email) VALUES (1, 'Armand Hilll', 'lera_hahn@dickens.org');
INSERT INTO users (id, name, email) VALUES (2, 'Stephanie Wolff', 'darius.homenick@tod.ca');
INSERT INTO users (id, name, email) VALUES (3, 'Stan Miller', 'mcdermott.maxie@schoen.com');
INSERT INTO users (id, name, email) VALUES (4, 'Elliot Dickinson', 'derrick_pollich@gmail.com');
INSERT INTO users (id, name, email) VALUES (5, 'Lloyd Boehm', 'ebba.deckow@yahoo.com');
INSERT INTO users (id, name, email) VALUES (6, 'Erna Cassin', 'miguel.barrows@yahoo.com');
INSERT INTO users (id, name, email) VALUES (7, 'Edison Brown', 'alysha.daniel@boyer.tv');
INSERT INTO users (id, name, email) VALUES (8, 'Lionel Morar', 'bradtke.mallie@yahoo.com');
INSERT INTO users (id, name, email) VALUES (9, 'Donnie Lueilwitz', 'kattie_dibbert@winnifred.name');
INSERT INTO users (id, name, email) VALUES (10, 'Obie Howell', 'elisha_wisoky@gmail.com');
INSERT INTO users (id, name, email) VALUES (11, 'Hiram Veum', 'kristopher.shanahan@gmail.com');
INSERT INTO users (id, name, email) VALUES (12, 'Lynn Kilback', 'gaetano_cummerata@hotmail.com');
INSERT INTO users (id, name, email) VALUES (13, 'Brian Jones', 'percy_ratke@cornelius.biz');
INSERT INTO users (id, name, email) VALUES (14, 'Clint Cremin', 'everardo_kovacek@joshuah.net');
INSERT INTO users (id, name, email) VALUES (15, 'Maximillia Willms', 'destin_berge@toy.com');
INSERT INTO users (id, name, email) VALUES (16, 'Carmel Grant', 'marcelino_durgan@hotmail.com');
INSERT INTO users (id, name, email) VALUES (17, 'Colten Gutkowski', 'rollin_okuneva@jerde.org');
INSERT INTO users (id, name, email) VALUES (18, 'Pamela Runolfsson', 'david.ziemann@germaine.org');
INSERT INTO users (id, name, email) VALUES (19, 'Magdalena Rau', 'nedra.parisian@yahoo.com');
INSERT INTO users (id, name, email) VALUES (20, 'Sally Bayer', 'kuhic.opal@wuckert.tv');
INSERT INTO users (id, name, email) VALUES (21, 'Sadie Sanford', 'gutmann_deondre@yahoo.com');
INSERT INTO users (id, name, email) VALUES (22, 'Dax Schimmel', 'johnson_lenora@yahoo.com');
INSERT INTO users (id, name, email) VALUES (23, 'Janie Kihn', 'desmond_wehner@yahoo.com');
INSERT INTO users (id, name, email) VALUES (24, 'Giovanny Bradtke', 'leatha.lindgren@hotmail.com');
INSERT INTO users (id, name, email) VALUES (25, 'Kassandra Beahan', 'carter_jaskolski@yahoo.com');
INSERT INTO users (id, name, email) VALUES (26, 'Emmy Effertz', 'damien_bruen@yahoo.com');
INSERT INTO users (id, name, email) VALUES (27, 'Baylee Lueilwitz', 'pinkie.rogahn@yahoo.com');
INSERT INTO users (id, name, email) VALUES (28, 'Ellis Hickle', 'legros.judy@corrine.us');
INSERT INTO users (id, name, email) VALUES (29, 'Wanda Mante', 'felton.muller@grant.biz');
INSERT INTO users (id, name, email) VALUES (30, 'Okey Jaskolski', 'mcdermott.jack@yahoo.com');
INSERT INTO users (id, name, email) VALUES (31, 'Gene Carter', 'javonte_sauer@gregg.com');
INSERT INTO users (id, name, email) VALUES (32, 'Mabel Wunsch', 'marina.windler@rachael.io');
INSERT INTO users (id, name, email) VALUES (33, 'Adela Johns', 'pouros_dario@hotmail.com');
INSERT INTO users (id, name, email) VALUES (34, 'Noel Kling', 'emelia_hane@yahoo.com');
INSERT INTO users (id, name, email) VALUES (35, 'Della Dibbert', 'bailey_elinore@jeffrey.name');
INSERT INTO users (id, name, email) VALUES (36, 'Camilla Feest', 'dubuque_gregorio@hotmail.com');
INSERT INTO users (id, name, email) VALUES (37, 'Johan Halvorson', 'emmy.hilpert@walsh.name');
INSERT INTO users (id, name, email) VALUES (38, 'Ashly Koch', 'franecki.myah@shayne.net');
INSERT INTO users (id, name, email) VALUES (39, 'Bianka Spinka', 'jensen.ullrich@hotmail.com');
INSERT INTO users (id, name, email) VALUES (40, 'Dewitt Sipes', 'hildegard.gaylord@hotmail.com');

ALTER SEQUENCE users_id_seq RESTART WITH 41;

SELECT items.brand, items.title, items.price
FROM items
JOIN users ON users.id = admin_id
WHERE users.email = 'lera_hahn@dickens.org';
