CREATE TABLE cartas.carta (
	id SERIAL NOT NULL,
	id_carta varchar(255),
	nombre_carta varchar(255) NOT NULL,
	numero varchar(255),
	valor_estimado float,
	id_edicion int NOT NULL,
	url_img_small text,
	id_rareza int,
	id_supertipo int,
	url_img_large text,
	created_at timestamp NULL,
	updated_at timestamp NULL,
	PRIMARY KEY (id)
);

CREATE TABLE cartas.carta_subtipo (id_carta int NOT NULL, id_subtipo int NOT NULL, PRIMARY KEY (id_carta, id_subtipo));
CREATE TABLE cartas.carta_tipo (id_carta int NOT NULL, id_tipo int NOT NULL, PRIMARY KEY (id_carta, id_tipo));
CREATE TABLE cartas.rareza (id SERIAL NOT NULL, nombre_rareza varchar(255), PRIMARY KEY (id));
CREATE TABLE cartas.set (id SERIAL NOT NULL, identificador_set varchar(255), nombre_set varchar(255), total_cartas int, PRIMARY KEY (id));
CREATE TABLE cartas.subtipo (id SERIAL NOT NULL, nombre_subtipo varchar(255), PRIMARY KEY (id));
CREATE TABLE cartas.supertipo (id SERIAL NOT NULL, nombre_supertipo varchar(255) NOT NULL, PRIMARY KEY (id));
CREATE TABLE cartas.tipo (id SERIAL NOT NULL, nombre_tipo varchar(255), PRIMARY KEY (id));

INSERT INTO cartas.carta (id, id_carta, nombre_carta, numero, valor_estimado, id_edicion, url_img_small, id_rareza, id_supertipo, url_img_large, created_at, updated_at) VALUES 
(1, 'swsh12pt5gg-GG45', 'Deoxys Vmax', 'GG45', 47.99, 150, 'https://images.pokemontcg.io/swsh12pt5gg/GG45.png', null, null, 'https://images.pokemontcg.io/swsh12pt5gg/GG45_hires.png', null, '2023-01-24 17:24:23'),
(2, 's12a-234', 'Hisuian Zoroark Vstar', '234', 33.8, 151, '/storage/s12a/s12a-234.bmp', null, null, null, null, null),
(3, 'swsh12tg-TG23', 'Friends in Galar', 'TG23', 21.0, 147, 'https://images.pokemontcg.io/swsh12tg/TG23.png', null, null, 'https://images.pokemontcg.io/swsh12tg/TG23_hires.png', null, '2023-01-24 17:24:24'),
(4, 'swshp-SWSH262', 'Charizard Vstar', 'SWSH262', 17.23, 114, 'https://images.pokemontcg.io/swshp/SWSH262.png', null, null, 'https://images.pokemontcg.io/swshp/SWSH262_hires.png', null, '2023-01-24 17:24:24'),
(5, 'swshp-SWSH261', 'Charizard Vmax', 'SWSH261', 15.75, 114, 'https://images.pokemontcg.io/swshp/SWSH261.png', null, null, 'https://images.pokemontcg.io/swshp/SWSH261_hires.png', null, '2023-01-24 17:24:24'),
(6, 'swshp-SWSH260', 'Charizard V', 'SWSH260', 11.0, 114, 'https://images.pokemontcg.io/swshp/SWSH260.png', null, null, 'https://images.pokemontcg.io/swshp/SWSH260_hires.png', null, '2023-01-24 17:24:25'),
(7, 'swsh11tg-TG29', 'Pikachu Vmax (Dorado)', 'TG29', 10.5, 145, 'https://images.pokemontcg.io/swsh11tg/TG29.png', null, null, 'https://images.pokemontcg.io/swsh11tg/TG29_hires.png', null, '2023-01-24 17:24:25'),
(8, 's12a-250', 'Boss''s Orders', '250', 10.0, 151, '/storage/s12a/s12a-250.bmp', null, null, null, null, null),
(9, 's12a-185', 'Deoxys', '185', 5.86, 151, '/storage/s12a/s12a-185.bmp', null, null, null, null, null),
(10, 'swshp-SWSH249', 'Kleavor Vstar', 'SWSH249', 5.63, 114, 'https://images.pokemontcg.io/swshp/SWSH249.png', null, null, 'https://images.pokemontcg.io/swshp/SWSH249_hires.png', null, '2023-01-24 17:24:26');
INSERT INTO cartas.carta (id, id_carta, nombre_carta, numero, valor_estimado, id_edicion, url_img_small, id_rareza, id_supertipo, url_img_large, created_at, updated_at) VALUES 
(11, 'swsh45-70', 'Poke Kid', '70', 5.5, 120, 'https://images.pokemontcg.io/swsh45/70.png', null, null, 'https://images.pokemontcg.io/swsh45/70_hires.png', null, '2023-01-24 17:24:26'),
(12, 's12a-175', 'Magmortar', '175', 5.34, 151, '/storage/s12a/s12a-175.bmp', null, null, null, null, null),
(13, 'swshp-SWSH152', 'Professor''s Research (Professor Juniper)', 'SWSH152', 5.12, 114, 'https://images.pokemontcg.io/swshp/SWSH152.png', null, null, 'https://images.pokemontcg.io/swshp/SWSH152_hires.png', null, '2023-01-24 17:24:27'),
(14, 'swsh45sv-SV118', 'Ditto V Shiny', 'SV118', 4.53, 122, 'https://images.pokemontcg.io/swsh45sv/SV118.png', null, null, 'https://images.pokemontcg.io/swsh45sv/SV118_hires.png', null, '2023-01-24 17:24:27'),
(15, 's12a-53', 'Mew V', '53', 3.63, 151, '/storage/s12a/s12a-53.bmp', null, null, null, null, null),
(16, 'swsh45sv-SV108', 'Centiskorch V Shiny', 'SV108', 3.55, 122, 'https://images.pokemontcg.io/swsh45sv/SV108.png', null, null, 'https://images.pokemontcg.io/swsh45sv/SV108_hires.png', null, '2023-01-24 17:24:28'),
(17, 'swshp-SWSH248', 'Kleavor V', 'SWSH248', 3.54, 114, 'https://images.pokemontcg.io/swshp/SWSH248.png', null, null, 'https://images.pokemontcg.io/swshp/SWSH248_hires.png', null, '2023-01-24 17:24:28'),
(18, 's12a-127', 'Arceus Vstar', '127', 3.47, 151, '/storage/s12a/s12a-127.bmp', null, null, null, null, null),
(19, 'swsh45-73', 'Alcreamie Vmax', '73', 3.38, 120, 'https://images.pokemontcg.io/swsh45/73.png', null, null, 'https://images.pokemontcg.io/swsh45/73_hires.png', null, '2023-01-24 17:24:29'),
(20, 'swshp-SWSH250', 'Lumineon V', 'SWSH250', 3.26, 114, 'https://images.pokemontcg.io/swshp/SWSH250.png', null, null, 'https://images.pokemontcg.io/swshp/SWSH250_hires.png', null, '2023-01-24 17:24:29');
INSERT INTO cartas.carta (id, id_carta, nombre_carta, numero, valor_estimado, id_edicion, url_img_small, id_rareza, id_supertipo, url_img_large, created_at, updated_at) VALUES 
(21, 's12a-188', 'Galarian Zapdos', '188', 3.11, 151, '/storage/s12a/s12a-188.bmp', null, null, null, null, null),
(22, 'swsh7-74', 'Sylveon V', '74', 2.91, 124, 'https://images.pokemontcg.io/swsh7/74.png', null, null, 'https://images.pokemontcg.io/swsh7/74_hires.png', null, '2023-01-24 17:24:30'),
(23, 'swsh10tg-TG05', 'Gardevoir', 'TG05', 2.72, 142, 'https://images.pokemontcg.io/swsh10tg/TG05.png', null, null, 'https://images.pokemontcg.io/swsh10tg/TG05_hires.png', null, '2023-01-24 17:24:30'),
(24, 's12a-124', 'Regigigas V', '124', 2.69, 151, '/storage/s12a/s12a-124.bmp', null, null, null, null, null),
(25, 'swsh11-57', 'Magnezone Vstar', '57', 2.67, 144, 'https://images.pokemontcg.io/swsh11/57.png', null, null, 'https://images.pokemontcg.io/swsh11/57_hires.png', null, '2023-01-24 17:24:30'),
(26, 's12a-50', 'Mewtwo V', '50', 2.43, 151, '/storage/s12a/s12a-50.bmp', null, null, null, null, null),
(27, 'swsh11-130', 'Giratina V', '130', 2.23, 144, 'https://images.pokemontcg.io/swsh11/130.png', null, null, 'https://images.pokemontcg.io/swsh11/130_hires.png', null, '2023-01-24 17:24:31'),
(28, 'swsh8-218', 'Greedent Vmax', '218', 2.2, 133, 'https://images.pokemontcg.io/swsh8/218.png', null, null, 'https://images.pokemontcg.io/swsh8/218_hires.png', null, '2023-01-24 17:24:31'),
(29, 'swshp-SWSH087', 'Eevee Vmax', 'SWSH087', 2.12, 114, 'https://images.pokemontcg.io/swshp/SWSH087.png', null, null, 'https://images.pokemontcg.io/swshp/SWSH087_hires.png', null, '2023-01-24 17:24:32'),
(30, 's12a-21', 'Simisear Vstar', '21', 2.07, 151, '/storage/s12a/s12a-21.bmp', null, null, null, null, null);
INSERT INTO cartas.carta (id, id_carta, nombre_carta, numero, valor_estimado, id_edicion, url_img_small, id_rareza, id_supertipo, url_img_large, created_at, updated_at) VALUES 
(31, 's12a-28', 'Origin Forme Palkia', '28', 2.03, 151, '/storage/s12a/s12a-28.bmp', null, null, null, null, null),
(32, 's12a-20', 'Simisear V', '20', 2.0, 151, '/storage/s12a/s12a-20.bmp', null, null, null, null, null),
(33, 'swsh12-128', 'Magearna V', '128', 1.95, 146, 'https://images.pokemontcg.io/swsh12/128.png', null, null, 'https://images.pokemontcg.io/swsh12/128_hires.png', null, '2023-01-24 17:24:33'),
(34, 'swsh10-133', 'Oranguru V', '133', 1.89, 141, 'https://images.pokemontcg.io/swsh10/133.png', null, null, 'https://images.pokemontcg.io/swsh10/133_hires.png', null, '2023-01-24 17:24:33'),
(35, 'swsh11tg-TG01', 'Parasect', 'TG01', 1.86, 145, 'https://images.pokemontcg.io/swsh11tg/TG01.png', null, null, 'https://images.pokemontcg.io/swsh11tg/TG01_hires.png', null, '2023-01-24 17:24:33'),
(36, 's12a-11', 'Leafeon V', '11', 1.79, 151, '/storage/s12a/s12a-11.bmp', null, null, null, null, null),
(37, 's12a-71', 'Machamp V', '71', 1.59, 151, '/storage/s12a/s12a-71.bmp', null, null, null, null, null),
(38, 'swsh12tg-TG08', 'Passimian', 'TG08', 1.47, 147, 'https://images.pokemontcg.io/swsh12tg/TG08.png', null, null, 'https://images.pokemontcg.io/swsh12tg/TG08_hires.png', null, '2023-01-24 17:24:34'),
(39, 'swsh45-54', 'Cramotant V', '54', 1.35, 120, 'https://images.pokemontcg.io/swsh45/54.png', null, null, 'https://images.pokemontcg.io/swsh45/54_hires.png', null, '2023-01-24 17:24:35'),
(40, 'swsh12pt5-45', 'Rotom V', '45', 2.49, 149, 'https://images.pokemontcg.io/swsh12pt5/45.png', null, null, 'https://images.pokemontcg.io/swsh12pt5/45_hires.png', null, '2023-01-24 17:24:35');
INSERT INTO cartas.carta (id, id_carta, nombre_carta, numero, valor_estimado, id_edicion, url_img_small, id_rareza, id_supertipo, url_img_large, created_at, updated_at) VALUES 
(41, 'swsh12pt5gg-GG27', 'Swablu', 'GG27', 3.99, 150, 'https://images.pokemontcg.io/swsh12pt5gg/GG27.png', null, null, 'https://images.pokemontcg.io/swsh12pt5gg/GG27_hires.png', null, '2023-01-24 17:24:35'),
(42, 'swsh12pt5gg-GG26', 'Riolu', 'GG26', 2.99, 150, 'https://images.pokemontcg.io/swsh12pt5gg/GG26.png', null, null, 'https://images.pokemontcg.io/swsh12pt5gg/GG26_hires.png', null, '2023-01-24 17:24:36'),
(43, 'swshp-SWSH291', 'Lucario Vstar', 'SWSH291', 3.99, 114, 'https://images.pokemontcg.io/swshp/SWSH291.png', null, null, 'https://images.pokemontcg.io/swshp/SWSH291_hires.png', null, '2023-01-24 17:24:36'),
(44, 'swsh12pt5gg-GG25', 'Bibarel', 'GG25', 4.49, 150, 'https://images.pokemontcg.io/swsh12pt5gg/GG25.png', null, null, 'https://images.pokemontcg.io/swsh12pt5gg/GG25_hires.png', null, '2023-01-24 17:24:36'),
(45, 'swsh12pt5-96', 'Zacian Vstar', '96', 10.99, 149, 'https://images.pokemontcg.io/swsh12pt5/96.png', null, null, 'https://images.pokemontcg.io/swsh12pt5/96_hires.png', null, '2023-01-24 17:24:36'),
(46, 'swsh12pt5gg-GG01', 'Hisuian Voltorb', 'GG01', 4.99, 150, 'https://images.pokemontcg.io/swsh12pt5gg/GG01.png', null, null, 'https://images.pokemontcg.io/swsh12pt5gg/GG01_hires.png', null, '2023-01-24 17:24:37'),
(47, 'swsh12pt5gg-GG68', 'Origin Forme Dialga', 'GG68', 99.99, 150, 'https://images.pokemontcg.io/swsh12pt5gg/GG68.png', null, null, 'https://images.pokemontcg.io/swsh12pt5gg/GG68_hires.png', null, '2023-01-24 17:24:37'),
(48, 'sm7-177a', 'Rayquaza GX Shiny', '177a', 42.99, 103, 'https://images.pokemontcg.io/sm7/177a.png', null, null, 'https://images.pokemontcg.io/sm7/177a_hires.png', null, '2023-01-24 17:24:37'),
(49, 'swsh12pt5-65', 'Hatterene V', '65', 2.49, 149, 'https://images.pokemontcg.io/swsh12pt5/65.png', null, null, 'https://images.pokemontcg.io/swsh12pt5/65_hires.png', null, '2023-01-24 17:24:38'),
(50, 'swsh12pt5-53', 'Zeraora V', '53', 2.49, 149, 'https://images.pokemontcg.io/swsh12pt5/53.png', null, null, 'https://images.pokemontcg.io/swsh12pt5/53_hires.png', null, '2023-01-24 17:24:38');

INSERT INTO cartas.rareza (id, nombre_rareza) VALUES 
(1, 'Amazing Rare'),
(2, 'Classic Collection'),
(3, 'Common'),
(4, 'LEGEND'),
(5, 'Promo'),
(6, 'Radiant Rare'),
(7, 'Rare'),
(8, 'Rare ACE'),
(9, 'Rare BREAK'),
(10, 'Rare Holo');
INSERT INTO cartas.rareza (id, nombre_rareza) VALUES 
(11, 'Rare Holo EX'),
(12, 'Rare Holo GX'),
(13, 'Rare Holo LV.X'),
(14, 'Rare Holo Star'),
(15, 'Rare Holo V'),
(16, 'Rare Holo VMAX'),
(17, 'Rare Holo VSTAR'),
(18, 'Rare Prime'),
(19, 'Rare Prism Star'),
(20, 'Rare Rainbow');
INSERT INTO cartas.rareza (id, nombre_rareza) VALUES 
(21, 'Rare Secret'),
(22, 'Rare Shining'),
(23, 'Rare Shiny'),
(24, 'Rare Shiny GX'),
(25, 'Rare Ultra'),
(26, 'Trainer Gallery Rare Holo'),
(27, 'Trainer Gallery Rare Holo V'),
(28, 'Trainer Gallery Rare Secret'),
(29, 'Trainer Gallery Rare Ultra'),
(30, 'Uncommon');
INSERT INTO cartas.rareza (id, nombre_rareza) VALUES 
(31, 'V'),
(32, 'VM');


INSERT INTO cartas.set (id, identificador_set, nombre_set, total_cartas) VALUES 
(1, 'base1', 'Base', 102),
(2, 'base2', 'Jungle', 64),
(3, 'basep', 'Wizards Black Star Promos', 53),
(4, 'base3', 'Fossil', 62),
(5, 'base4', 'Base Set 2', 130),
(6, 'base5', 'Team Rocket', 83),
(7, 'gym1', 'Gym Heroes', 132),
(8, 'gym2', 'Gym Challenge', 132),
(9, 'neo1', 'Neo Genesis', 111),
(10, 'neo2', 'Neo Discovery', 75);
INSERT INTO cartas.set (id, identificador_set, nombre_set, total_cartas) VALUES 
(11, 'si1', 'Southern Islands', 18),
(12, 'neo3', 'Neo Revelation', 66),
(13, 'neo4', 'Neo Destiny', 113),
(14, 'base6', 'Legendary Collection', 110),
(15, 'ecard1', 'Expedition Base Set', 165),
(16, 'ecard2', 'Aquapolis', 182),
(17, 'ecard3', 'Skyridge', 182),
(18, 'ex1', 'Ruby & Sapphire', 109),
(19, 'ex2', 'Sandstorm', 100),
(20, 'ex3', 'Dragon', 100);
INSERT INTO cartas.set (id, identificador_set, nombre_set, total_cartas) VALUES 
(21, 'np', 'Nintendo Black Star Promos', 40),
(22, 'ex4', 'Team Magma vs Team Aqua', 97),
(23, 'ex5', 'Hidden Legends', 102),
(24, 'ex6', 'FireRed & LeafGreen', 116),
(25, 'pop1', 'POP Series 1', 17),
(26, 'ex7', 'Team Rocket Returns', 111),
(27, 'ex8', 'Deoxys', 108),
(28, 'ex9', 'Emerald', 107),
(29, 'ex10', 'Unseen Forces', 145),
(30, 'pop2', 'POP Series 2', 17);
INSERT INTO cartas.set (id, identificador_set, nombre_set, total_cartas) VALUES 
(31, 'ex11', 'Delta Species', 114),
(32, 'ex12', 'Legend Maker', 93),
(33, 'pop3', 'POP Series 3', 17),
(34, 'ex13', 'Holon Phantoms', 111),
(35, 'ex14', 'Crystal Guardians', 100),
(36, 'pop4', 'POP Series 4', 17),
(37, 'ex15', 'Dragon Frontiers', 101),
(38, 'pop5', 'POP Series 5', 17),
(39, 'ex16', 'Power Keepers', 108),
(40, 'dp1', 'Diamond & Pearl', 130);
INSERT INTO cartas.set (id, identificador_set, nombre_set, total_cartas) VALUES 
(41, 'dpp', 'DP Black Star Promos', 56),
(42, 'dp2', 'Mysterious Treasures', 124),
(43, 'pop6', 'POP Series 6', 17),
(44, 'dp3', 'Secret Wonders', 132),
(45, 'dp4', 'Great Encounters', 106),
(46, 'pop7', 'POP Series 7', 17),
(47, 'dp5', 'Majestic Dawn', 100),
(48, 'dp6', 'Legends Awakened', 146),
(49, 'pop8', 'POP Series 8', 17),
(50, 'dp7', 'Stormfront', 106);
INSERT INTO cartas.set (id, identificador_set, nombre_set, total_cartas) VALUES 
(51, 'pl1', 'Platinum', 133),
(52, 'pop9', 'POP Series 9', 17),
(53, 'pl2', 'Rising Rivals', 120),
(54, 'pl3', 'Supreme Victors', 153),
(55, 'pl4', 'Arceus', 111),
(56, 'ru1', 'Pokémon Rumble', 16),
(57, 'hgss1', 'HeartGold & SoulSilver', 124),
(58, 'hsp', 'HGSS Black Star Promos', 25),
(59, 'hgss2', 'HS?Unleashed', 96),
(60, 'hgss3', 'HS?Undaunted', 91);
INSERT INTO cartas.set (id, identificador_set, nombre_set, total_cartas) VALUES 
(61, 'hgss4', 'HS?Triumphant', 103),
(62, 'col1', 'Call of Legends', 106),
(63, 'bwp', 'BW Black Star Promos', 101),
(64, 'bw1', 'Black & White', 115),
(65, 'mcd11', 'McDonald''s Collection 2011', 12),
(66, 'bw2', 'Emerging Powers', 98),
(67, 'bw3', 'Noble Victories', 102),
(68, 'bw4', 'Next Destinies', 103),
(69, 'bw5', 'Dark Explorers', 111),
(70, 'mcd12', 'McDonald''s Collection 2012', 12);
INSERT INTO cartas.set (id, identificador_set, nombre_set, total_cartas) VALUES 
(71, 'bw6', 'Dragons Exalted', 128),
(72, 'dv1', 'Dragon Vault', 21),
(73, 'bw7', 'Boundaries Crossed', 153),
(74, 'bw8', 'Plasma Storm', 138),
(75, 'bw9', 'Plasma Freeze', 122),
(76, 'bw10', 'Plasma Blast', 105),
(77, 'xyp', 'XY Black Star Promos', 216),
(78, 'bw11', 'Legendary Treasures', 140),
(79, 'xy0', 'Kalos Starter Set', 39),
(80, 'xy1', 'XY', 146);
INSERT INTO cartas.set (id, identificador_set, nombre_set, total_cartas) VALUES 
(81, 'xy2', 'Flashfire', 110),
(82, 'xy3', 'Furious Fists', 114),
(83, 'xy4', 'Phantom Forces', 124),
(84, 'xy5', 'Primal Clash', 164),
(85, 'dc1', 'Double Crisis', 34),
(86, 'xy6', 'Roaring Skies', 112),
(87, 'xy7', 'Ancient Origins', 100),
(88, 'xy8', 'BREAKthrough', 165),
(89, 'xy9', 'BREAKpoint', 126),
(90, 'g1', 'Generations', 117);
INSERT INTO cartas.set (id, identificador_set, nombre_set, total_cartas) VALUES 
(91, 'xy10', 'Fates Collide', 129),
(92, 'xy11', 'Steam Siege', 116),
(93, 'mcd16', 'McDonald''s Collection 2016', 12),
(94, 'xy12', 'Evolutions', 113),
(95, 'sm1', 'Sun & Moon', 173),
(96, 'smp', 'SM Black Star Promos', 250),
(97, 'sm2', 'Guardians Rising', 180),
(98, 'sm3', 'Burning Shadows', 177),
(99, 'sm35', 'Shining Legends', 81),
(100, 'sm4', 'Crimson Invasion', 126);
INSERT INTO cartas.set (id, identificador_set, nombre_set, total_cartas) VALUES 
(101, 'sm5', 'Ultra Prism', 178),
(102, 'sm6', 'Forbidden Light', 150),
(103, 'sm7', 'Celestial Storm', 187),
(104, 'sm75', 'Dragon Majesty', 80),
(105, 'sm8', 'Lost Thunder', 240),
(106, 'sm9', 'Team Up', 198),
(107, 'det1', 'Detective Pikachu', 18),
(108, 'sm10', 'Unbroken Bonds', 235),
(109, 'sm11', 'Unified Minds', 260),
(110, 'sm115', 'Hidden Fates', 69);
INSERT INTO cartas.set (id, identificador_set, nombre_set, total_cartas) VALUES 
(111, 'sma', 'Shiny Vault', 94),
(112, 'mcd19', 'McDonald''s Collection 2019', 12),
(113, 'sm12', 'Cosmic Eclipse', 272),
(114, 'swshp', 'SWSH Black Star Promos', 181),
(115, 'swsh1', 'Sword & Shield', 216),
(116, 'swsh2', 'Rebel Clash', 209),
(117, 'swsh3', 'Darkness Ablaze', 201),
(118, 'swsh35', 'Champion''s Path', 80),
(119, 'swsh4', 'Vivid Voltage', 203),
(120, 'swsh45', 'Shining Fates', 73);
INSERT INTO cartas.set (id, identificador_set, nombre_set, total_cartas) VALUES 
(121, 'swsh45sv', 'Shiny Vault', 122),
(122, 'swsh5', 'Battle Styles', 183),
(123, 'swsh6', 'Chilling Reign', 233),
(124, 'swsh7', 'Evolving Skies', 237),
(125, 'cel25', 'Celebrations', 25),
(126, 'cel25c', 'Celebrations: Classic Collection', 25),
(127, 'mcd14', 'McDonald''s Collection 2014', 12),
(128, 'mcd15', 'McDonald''s Collection 2015', 12),
(129, 'mcd18', 'McDonald''s Collection 2018', 12),
(130, 'mcd17', 'McDonald''s Collection 2017', 12);
INSERT INTO cartas.set (id, identificador_set, nombre_set, total_cartas) VALUES 
(131, 'mcd21', 'McDonald''s Collection 2021', 25),
(132, 'bp', 'Best of Game', 9),
(133, 'swsh8', 'Fusion Strike', 284),
(134, 'fut20', 'Pokémon Futsal Collection', 5),
(135, 'tk1a', 'EX Trainer Kit Latias', 10),
(136, 'tk1b', 'EX Trainer Kit Latios', 10),
(137, 'tk2a', 'EX Trainer Kit 2 Plusle', 12),
(138, 'tk2b', 'EX Trainer Kit 2 Minun', 12),
(139, 'swsh9', 'Brilliant Stars', 186),
(140, 'swsh9tg', 'Brilliant Stars Trainer Gallery', 30);
INSERT INTO cartas.set (id, identificador_set, nombre_set, total_cartas) VALUES 
(141, 'swsh10', 'Astral Radiance', 216),
(142, 'swsh10tg', 'Astral Radiance Trainer Gallery', 30),
(143, 'pgo', 'Pokémon GO', 88),
(144, 'swsh11', 'Lost Origin', 217),
(145, 'swsh11tg', 'Lost Origin Trainer Gallery', 30),
(146, 'swsh12', 'Silver Tempest', 215),
(147, 'swsh12tg', 'Silver Tempest Trainer Gallery', 30),
(148, 'mcd22', 'McDonald''s Collection 2022', 15),
(149, 'swsh12pt5', 'Crown Zenith', 160),
(150, 'swsh12pt5gg', 'Crown Zenith Galarian Gallery', 70);
INSERT INTO cartas.set (id, identificador_set, nombre_set, total_cartas) VALUES 
(151, 's12a', 'Vstar Universe', 172);


INSERT INTO cartas.subtipo (id, nombre_subtipo) VALUES 
(1, 'BREAK'),
(2, 'Baby'),
(3, 'Basic'),
(4, 'EX'),
(5, 'Eternamax'),
(6, 'Fusion Strike'),
(7, 'GX'),
(8, 'Goldenrod Game Corner'),
(9, 'Item'),
(10, 'LEGEND');
INSERT INTO cartas.subtipo (id, nombre_subtipo) VALUES 
(11, 'Level-Up'),
(12, 'MEGA'),
(13, 'Pokémon Tool'),
(14, 'Pokémon Tool F'),
(15, 'Prime'),
(16, 'Prism Star'),
(17, 'Radiant'),
(18, 'Rapid Strike'),
(19, 'Restored'),
(20, 'Rocket''s Secret Machine');
INSERT INTO cartas.subtipo (id, nombre_subtipo) VALUES 
(21, 'SP'),
(22, 'Single Strike'),
(23, 'Special'),
(24, 'Stadium'),
(25, 'Stage 1'),
(26, 'Stage 2'),
(27, 'Star'),
(28, 'Supporter'),
(29, 'TAG TEAM'),
(30, 'Technical Machine');
INSERT INTO cartas.subtipo (id, nombre_subtipo) VALUES 
(31, 'V'),
(32, 'V-UNION'),
(33, 'VMAX'),
(34, 'VSTAR');



INSERT INTO cartas.supertipo (id, nombre_supertipo) VALUES 
(1, 'Energía'),
(2, 'Pokémon'),
(3, 'Entrenador');

INSERT INTO cartas.tipo (id, nombre_tipo) VALUES 
(1, 'Colorless'),
(2, 'Darkness'),
(3, 'Dragon'),
(4, 'Fairy'),
(5, 'Fighting'),
(6, 'Fire'),
(7, 'Grass'),
(8, 'Lightning'),
(9, 'Metal'),
(10, 'Psychic');
INSERT INTO cartas.tipo (id, nombre_tipo) VALUES 
(11, 'Water');


ALTER TABLE cartas.carta ADD CONSTRAINT carta_fk1 FOREIGN KEY (id_edicion) REFERENCES cartas.set (id) ;
ALTER TABLE cartas.carta ADD CONSTRAINT carta_fk2 FOREIGN KEY (id_rareza) REFERENCES cartas.rareza (id) ;
ALTER TABLE cartas.carta ADD CONSTRAINT carta_fk3 FOREIGN KEY (id_supertipo) REFERENCES cartas.supertipo (id);
ALTER TABLE cartas.carta_subtipo ADD CONSTRAINT cartasubtipo_fk1 FOREIGN KEY (id_carta) REFERENCES cartas.carta (id) ;
ALTER TABLE cartas.carta_subtipo ADD CONSTRAINT cartasubtipo_fk2 FOREIGN KEY (id_subtipo) REFERENCES cartas.subtipo (id);
ALTER TABLE cartas.carta_tipo ADD CONSTRAINT cartatipo_fk1 FOREIGN KEY (id_carta) REFERENCES cartas.carta (id) ;
ALTER TABLE cartas.carta_tipo ADD CONSTRAINT cartatipo_fk2 FOREIGN KEY (id_tipo) REFERENCES cartas.tipo (id);
