INSERT INTO places (city_name, state_name, zip_code, lat, longitude) VALUES('Zurich','Switzerland',36070, 46.9841339480512, 7.4272311693535205);
INSERT INTO places (city_name, state_name, zip_code, lat, longitude) VALUES('Bern','Switzerland',36340, 46.94289620182541, 7.460190154304473);
INSERT INTO places (city_name, state_name, zip_code, lat, longitude) VALUES('Zlatibor','Serbia',10012, 43.71449, 19.691799);
INSERT INTO places (city_name, state_name, zip_code, lat, longitude) VALUES('Bologna','Italia',99240, 44.665148632742365, 11.180746573942837);
INSERT INTO places (city_name, state_name, zip_code, lat, longitude) VALUES('Salzbirg','Austria',10232, 47.91900764229461, 13.023376060183036);
INSERT INTO places (city_name, state_name, zip_code, lat, longitude) VALUES('St.Galen','Switzerland',13421, 47.45866529469612, 9.376109793535933);
INSERT INTO places (city_name, state_name, zip_code, lat, longitude) VALUES('Zermatt','Switzerland',09102, 46.04663034518585, 7.737688925997243);
INSERT INTO places (city_name, state_name, zip_code, lat, longitude) VALUES('Innsbruck','Austria',12332, 47.270490070064476, 11.39920293382487);
INSERT INTO places (city_name, state_name, zip_code, lat, longitude) VALUES('Como','Italia',11111, 45.76574421923807, 9.079294180770777);
INSERT INTO places (city_name, state_name, zip_code, lat, longitude) VALUES('Milan','Italia',12333, 45.566502691942446, 9.20605890402746);
INSERT INTO places (city_name, state_name, zip_code, lat, longitude) VALUES('Genoa','Italia',11112, 44.47318473088836, 9.008918841658872);
INSERT INTO places (city_name, state_name, zip_code, lat, longitude) VALUES('Rome','Italia',19909, 41.908744838588945, 12.511946182659438);
INSERT INTO places (city_name, state_name, zip_code, lat, longitude) VALUES('Florence','Italia',78734, 43.77652281377678, 11.268447327719134);
INSERT INTO places (city_name, state_name, zip_code, lat, longitude) VALUES('Carpi','Italia',34563, 44.80229630330964, 10.870376156715311);
INSERT INTO places (city_name, state_name, zip_code, lat, longitude) VALUES('Rimini','Italia',66666, 44.064072243965974, 12.568953996273821);
INSERT INTO places (city_name, state_name, zip_code, lat, longitude) VALUES('Nice','France',77777, 43.732732029812965, 7.283390920425107);
INSERT INTO places (city_name, state_name, zip_code, lat, longitude) VALUES('Cannes','France',77757, 43.57421375040898, 7.001675555705612);
INSERT INTO places (city_name, state_name, zip_code, lat, longitude) VALUES('Saint-Tropez','France',54675, 43.29043984628935, 6.644260637204382);
INSERT INTO places (city_name, state_name, zip_code, lat, longitude) VALUES('Lyon','France',87799, 45.79313556431911, 4.842889202039135);
INSERT INTO places (city_name, state_name, zip_code, lat, longitude) VALUES('Limoges','France',09098, 45.892729585704764, 1.3163953394936736);
INSERT INTO places (city_name, state_name, zip_code, lat, longitude) VALUES('Vichy','France',78879, 46.15083974482203, 3.403698463540852);
INSERT INTO places (city_name, state_name, zip_code, lat, longitude) VALUES('Narbonne','France',44535, 43.161959962701275, 3.04151801279294);
INSERT INTO places (city_name, state_name, zip_code, lat, longitude) VALUES('Sorrento','Italia',34244, 40.6259293334678, 14.376501436859794);
INSERT INTO places (city_name, state_name, zip_code, lat, longitude) VALUES('Praiano','Italia',67577, 40.61237811241369, 14.535116537700722);
INSERT INTO places (city_name, state_name, zip_code, lat, longitude) VALUES('Malaga','Spain',54544, 36.839602679647264, -4.436482515258499);
INSERT INTO places (city_name, state_name, zip_code, lat, longitude) VALUES('Barcelona','Spain',34321, 41.53693389895783, 2.1992591926493827);
INSERT INTO places (city_name, state_name, zip_code, lat, longitude) VALUES('Madrid','Spain',12322, 40.47576391160711, -3.755330220738153);
INSERT INTO places (city_name, state_name, zip_code, lat, longitude) VALUES('Tarragona','Spain',16762, 41.27324422699833, 1.342325660833464);
INSERT INTO places (city_name, state_name, zip_code, lat, longitude) VALUES('Sheffield','United Kingdom',12345, 53.41020831278511, -1.4586726816673037);
INSERT INTO places (city_name, state_name, zip_code, lat, longitude) VALUES('Cambridge','United Kingdom',45321, 52.26885187180306, 0.1453311086547997);
INSERT INTO places (city_name, state_name, zip_code, lat, longitude) VALUES('Brighton','United Kingdom',86657, 50.90374854186306, -0.18425871127439752);
INSERT INTO places (city_name, state_name, zip_code, lat, longitude) VALUES('Falun','Sweden',87859, 60.61912080629553, 15.654232870064643);
INSERT INTO places (city_name, state_name, zip_code, lat, longitude) VALUES('Yukta','Russia',08766, 63.411201785510535, 105.67147703559688);
INSERT INTO places (city_name, state_name, zip_code, lat, longitude) VALUES('Montreal','Canada',79800, 46.05882221120269, -73.14737703164697);
INSERT INTO places (city_name, state_name, zip_code, lat, longitude) VALUES('Fortaleza','Brasil',08543, -3.6291125756539007, -38.56846442755877);

INSERT INTO ROLE (name) VALUES ('ROLE_ADMIN');
INSERT INTO ROLE (name) VALUES ('ROLE_CLIENT');
INSERT INTO ROLE (name) VALUES ('ROLE_COTTAGE_OWNER');
INSERT INTO ROLE (name) VALUES ('ROLE_SHIP_OWNER');
INSERT INTO ROLE (name) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO ROLE (name) VALUES ('ROLE_SUPER_ADMIN');

INSERT INTO fishing_equipments(equipment_name) VALUES ('Fishing rod');
INSERT INTO fishing_equipments(equipment_name) VALUES ('Bait');
INSERT INTO fishing_equipments(equipment_name) VALUES ('Fishing nets');
INSERT INTO fishing_equipments(equipment_name) VALUES ('First aid kit');
INSERT INTO fishing_equipments(equipment_name) VALUES ('Bucket');
INSERT INTO fishing_equipments(equipment_name) VALUES ('Rope');

INSERT INTO cottage_owners (id, not_yet_activated,address,date_of_birth,email,first_name,last_name,loyalty_points,password,phone_number, place_id, deleted, role_id, version)
VALUES
(nextval('users_id_gen'), 'False','Ap #225-738 At, Rd.','1979-03-13','bookingapp05mzr++virgina@gmail.com','Virginia','Calhoun',65,'$2a$04$Vbug2lwwJGrvUXTj6z7ff.97IzVBkrJ1XfApfGNl.Z695zqcnPYra','052-38-778-82',1, 'False', 3, 0),
(nextval('users_id_gen'), 'False','4502 Semper Ave','2001-01-22','bookingapp05mzr++dolan@gmail.com','Dolan','Grimes',2,'$2a$04$Vbug2lwwJGrvUXTj6z7ff.97IzVBkrJ1XfApfGNl.Z695zqcnPYra','088-26-823-77',5, 'False', 3, 0),
(nextval('users_id_gen'), 'False','4502 Semper Ave','2001-01-22','bookingapp05mzr++mikic@gmail.com','Mikic','Grimes',2,'$2a$04$Vbug2lwwJGrvUXTj6z7ff.97IzVBkrJ1XfApfGNl.Z695zqcnPYra','088-26-823-77',8, 'False', 3, 0);

INSERT INTO ship_owners (id, not_yet_activated,address,date_of_birth,email,first_name,last_name,loyalty_points,password,phone_number,place_id, deleted, role_id, captain, version)
VALUES
(nextval('users_id_gen'), 'False','Ap #392-5411 Ac, St.','2005-03-15','bookingapp05mzr++kristen@gmail.com','Kristen','Banks',8,'$2a$04$Vbug2lwwJGrvUXTj6z7ff.97IzVBkrJ1XfApfGNl.Z695zqcnPYra','057-62-242-87',1, 'False', 4, true, 0),
(nextval('users_id_gen'), 'False','3598 Ut, St.','1994-12-09','bookingapp05mzr++annNew@gmail.com','Ann','Newton',37,'$2a$04$Vbug2lwwJGrvUXTj6z7ff.97IzVBkrJ1XfApfGNl.Z695zqcnPYra','035-98-372-38',2, 'False', 4, true, 0),
(nextval('users_id_gen'), 'False','Ap #181-605 Est. St.','1987-04-08','bookingapp05mzr++stuartKnight@gmail.com','Stuart','Knight',69,'$2a$04$Vbug2lwwJGrvUXTj6z7ff.97IzVBkrJ1XfApfGNl.Z695zqcnPYra','016-17-140-44',2, 'False', 4, false, 0);


INSERT INTO clients (id, not_yet_activated,address,date_of_birth,email,first_name,last_name,loyalty_points,password,phone_number,place_id,penalties, deleted, role_id, version)
VALUES
(nextval('users_id_gen'), 'False','Ap #769-2030 Mauris. Rd.','1971-12-20','bookingapp05mzr++jescieMullins@gmail.com','Jescie','Mullins',20,'$2a$04$Vbug2lwwJGrvUXTj6z7ff.97IzVBkrJ1XfApfGNl.Z695zqcnPYra','034-33-356-88',4,0, 'False', 2, 0),
(nextval('users_id_gen'), 'False','Ap #497-6239 Interdum Road','2004-05-21','bookingapp05mzr++carolynGutie@gmail.com','Carolyn','Gutierrez',1,'$2a$04$Vbug2lwwJGrvUXTj6z7ff.97IzVBkrJ1XfApfGNl.Z695zqcnPYra','083-34-238-21',7,0, 'False', 2, 0),
(nextval('users_id_gen'), 'False','Ap #497-623 Interdum Road','2004-05-21','bookingapp05mzr++minaMinic@gmail.com','Mina','Minic',90,'$2a$04$Vbug2lwwJGrvUXTj6z7ff.97IzVBkrJ1XfApfGNl.Z695zqcnPYra','083-342-238-21',10,0, 'False', 2, 0);


INSERT INTO admins(id, not_yet_activated, address, date_of_birth, email, first_name, last_name, last_password_reset_date, loyalty_points, password, phone_number, place_id, deleted, role_id, password_changed, version)
VALUES
(nextval('users_id_gen'), 'False', 'adresa1', '1971-12-20', 'bookingapp05mzr++admin1@gmail.com', 'Admin1', 'Admin1', null, 0, '$2a$04$Vbug2lwwJGrvUXTj6z7ff.97IzVBkrJ1XfApfGNl.Z695zqcnPYra', '065-43-432-34', 1, 'False', 1, true, 0),
(nextval('users_id_gen'), 'False', 'adresa2', '1971-12-20', 'bookingapp05mzr++admin2@gmail.com', 'Admin2', 'Admin2', null, 0, '$2a$04$Vbug2lwwJGrvUXTj6z7ff.97IzVBkrJ1XfApfGNl.Z695zqcnPYra', '065-43-432-34', 1, 'False', 1, true, 0),
(nextval('users_id_gen'), 'False', 'adresa3', '1971-12-20', 'bookingapp05mzr++admin3@gmail.com', 'Admin3', 'Admin3', null, 0, '$2a$04$Vbug2lwwJGrvUXTj6z7ff.97IzVBkrJ1XfApfGNl.Z695zqcnPYra', '065-43-432-34', 23, 'False', 1, true, 0);


INSERT INTO instructors(id, not_yet_activated, address, date_of_birth, email, first_name, last_name, last_password_reset_date, loyalty_points, password, phone_number, place_id, deleted, role_id, version)
VALUES
(nextval('users_id_gen'), 'False', 'adresa1', '1971-12-20', 'bookingapp05mzr++mika@gmail.com', 'Mika', 'Mikic', null, 5, '$2a$04$Vbug2lwwJGrvUXTj6z7ff.97IzVBkrJ1XfApfGNl.Z695zqcnPYra', '043-42-432-23', 5, 'False', 5, 0),
(nextval('users_id_gen'), 'False', 'adresa2', '1971-12-20', 'bookingapp05mzr++zika@gmail.com', 'Zika', 'Zikic', null, 40, '$2a$04$Vbug2lwwJGrvUXTj6z7ff.97IzVBkrJ1XfApfGNl.Z695zqcnPYra', '043-42-432-23', 5,'False', 5, 0),
(nextval('users_id_gen'), 'False', 'adresa3', '1971-12-20', 'bookingapp05mzr++rika@gmail.com', 'Rika', 'Rikic', null, 90, '$2a$04$Vbug2lwwJGrvUXTj6z7ff.97IzVBkrJ1XfApfGNl.Z695zqcnPYra', '043-42-432-23', 6,'False', 5, 0);


INSERT INTO cottages (id, address,entity_cancelation_rate,entity_type,name,promo_description,place_id,cottage_owner_id, deleted, version, locked)
VALUES
(nextval('entities_id_gen'), 'Ap #977-2514 Sed Street',19,'COTTAGE','Ultrices Limited','est, mollis non, cursus non, egestas a,',1,1, false, 0, false),
(nextval('entities_id_gen'), '4369 Mauris St.',45,'COTTAGE','Sollicitudin Commodo Ipsum Limited','lacus. Mauris non dui',1,1, true, 0, false),
(nextval('entities_id_gen'), 'P.O. Box 469, 2916 Consectetuer Street',6,'COTTAGE','Dis Parturient PC','non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames',1,1, false, 0, false),
(nextval('entities_id_gen'), 'Ap #119-6987 Sed St.',33,'COTTAGE','Nunc Pulvinar Corporation','congue, elit sed consequat auctor, nunc',2,1, false, 0, false),
(nextval('entities_id_gen'), '411-1777 Nunc Av.',45,'COTTAGE','Parturient Montes Nascetur LLP','mauris. Suspendisse aliquet molestie tellus.',5,2, false, 0, false);


INSERT INTO ships (id, address,entity_cancelation_rate,entity_type,name,promo_description,place_id,engine_num,engine_power,length,max_num_of_persons,max_speed,ship_type,ship_owner_id, deleted, version, locked)
VALUES
(nextval('entities_id_gen'), 'Ap #379-679 Enim, St.',26,'SHIP','Gretchen','Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum',7,'N1N 1F5',2002,24,10,51,'BAY_BOAT',4, false, 0, false),
(nextval('entities_id_gen'), '368-5360 In Ave',47,'SHIP','Molly','Nulla aliquet. Proin',16,'U5F 2U3',1806,30,14,24,'BAY_BOAT',4, false, 0, false),
(nextval('entities_id_gen'), '3885 Lacus Road',44,'SHIP','Yeo','magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt',18,'U9K 1M2',1171,8,12,45,'INFLATABLE_BOAT',4, false, 0, false),
(nextval('entities_id_gen'), 'Ap #650-8877 Nibh Avenue',45,'SHIP','Madison','Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem',17,'W4T 5A6',469,23,19,88,'FLAT_BOAT',5, false, 0, false),
(nextval('entities_id_gen'), 'Ap #650-8877 Nibh Avenue',45,'SHIP','Madison','Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem',23,'W4T 5A6',469,23,19,88,'FLAT_BOAT',6, false, 0, false);

INSERT INTO adventures(id, address, entity_cancelation_rate, entity_type, name, promo_description, place_id, max_num_of_persons, short_bio, instructor_id, deleted, version, locked)
VALUES
(nextval('entities_id_gen'), 'adresa adv 1', 20, 'ADVENTURE', 'fishing adventure1', 'promo desc adv 1', 24, 3, 'short bio adv 1', 13, false, 0, false),
(nextval('entities_id_gen'), 'adresa adv 2', 20, 'ADVENTURE', 'fishing adventure2', 'promo desc adv 2', 24, 4, 'short bio adv 2', 13, false, 0, false),
(nextval('entities_id_gen'), 'adresa adv 3', 20, 'ADVENTURE', 'fishing adventure3', 'promo desc adv 3', 24, 2, 'short bio adv 3', 13, false, 0, false),
(nextval('entities_id_gen'), 'adresa adv 4', 20, 'ADVENTURE', 'fishing adventure4', 'promo desc adv 4', 25, 2, 'short bio adv 4', 13, false, 0, false),
(nextval('entities_id_gen'), 'adresa adv 5', 20, 'ADVENTURE', 'fishing adventure5', 'promo desc adv 5', 9, 2, 'short bio adv 5', 13, false, 0, false);

INSERT INTO admins(id, not_yet_activated, address, date_of_birth, email, first_name, last_name, last_password_reset_date, loyalty_points, password, phone_number, place_id, deleted, role_id, password_changed, version)
VALUES
(nextval('users_id_gen'), 'False', 'adresa1', '1971-12-20', 'bookingapp05mzr++superadmin@gmail.com', 'SuperA', 'SuperA', null, 0, '$2a$04$Vbug2lwwJGrvUXTj6z7ff.97IzVBkrJ1XfApfGNl.Z695zqcnPYra', '065-43-432-34', 1, 'False', 6, true, 0);

INSERT INTO instructors(id, not_yet_activated, address, date_of_birth, email, first_name, last_name, last_password_reset_date, loyalty_points, password, phone_number, place_id, deleted, role_id, version)
VALUES
(nextval('users_id_gen'), 'False','fdgvfdb gf fd', '1971-12-20', 'bookingapp05mzr++dzoni@gmail.com', 'Dzoni', 'Dzonic', null, 1, '$2a$04$Vbug2lwwJGrvUXTj6z7ff.97IzVBkrJ1XfApfGNl.Z695zqcnPYra', '043-42-432-23', 5, 'False', 5, 0),
(nextval('users_id_gen'), 'False', 'fdsaf ds f', '1971-12-20', 'bookingapp05mzr++roni@gmail.com', 'Roni', 'Ronic', null, 0, '$2a$04$Vbug2lwwJGrvUXTj6z7ff.97IzVBkrJ1XfApfGNl.Z695zqcnPYra', '043-42-432-23', 5, 'False', 5, 0),
(nextval('users_id_gen'), 'False', 'afddffd ', '1971-12-20', 'bookingapp05mzr++gogi@gmail.com', 'Gogi', 'Gogic', null, 88, '$2a$04$Vbug2lwwJGrvUXTj6z7ff.97IzVBkrJ1XfApfGNl.Z695zqcnPYra', '043-42-432-23', 5, 'False', 5, 0),
(nextval('users_id_gen'), 'False', 'miifds', '1971-12-20', 'bookingapp05mzr++moki@gmail.com', 'Moki', 'Mokic', null, 2, '$2a$04$Vbug2lwwJGrvUXTj6z7ff.97IzVBkrJ1XfApfGNl.Z695zqcnPYra', '043-42-432-23', 5, 'False', 5, 0),
(nextval('users_id_gen'), 'False', 'f dsafd s44', '1971-12-20', 'bookingapp05mzr+toki@gmail.com', 'Toki', 'Tokic', null, 4, '$2a$04$Vbug2lwwJGrvUXTj6z7ff.97IzVBkrJ1XfApfGNl.Z695zqcnPYra', '043-42-432-23', 5, 'False', 5, 0);


---------------zahtevi novih korisnika na cekanju----------------------------
INSERT INTO instructors(id, not_yet_activated, address, date_of_birth, email, first_name, last_name, last_password_reset_date, loyalty_points, password, phone_number, place_id, deleted, role_id, reason, version)
VALUES
(nextval('users_id_gen'), 'True','fdgvfdb gf fd', '1971-12-20', 'bookingapp05mzr++noviInst1@gmail.com', 'Baki', 'Bakic', null, 0, '$2a$04$Vbug2lwwJGrvUXTj6z7ff.97IzVBkrJ1XfApfGNl.Z695zqcnPYra', '043-42-432-23', 5, 'False', 5, 'i want to create account1', 0),
(nextval('users_id_gen'), 'True', 'fdsaf ds f', '1971-12-20', 'bookingapp05mzr++noviInst2@gmail.com', 'Daki', 'Dakic', null, 0, '$2a$04$Vbug2lwwJGrvUXTj6z7ff.97IzVBkrJ1XfApfGNl.Z695zqcnPYra', '043-42-432-23', 5, 'False', 5, 'i want to create account2', 0);

INSERT INTO ship_owners (id, not_yet_activated,address,date_of_birth,email,first_name,last_name,loyalty_points,password,phone_number,place_id, deleted, role_id, captain, reason, version)
VALUES
(nextval('users_id_gen'), 'True','Ap #392-5411 Ac, St.','2005-03-15','bookingapp05mzr++noviShipOwner1@gmail.com','Dana','Danic',8,'$2a$04$Vbug2lwwJGrvUXTj6z7ff.97IzVBkrJ1XfApfGNl.Z695zqcnPYra','057-62-242-87',1, 'False', 4, true, 'i want to create account3', 0),
(nextval('users_id_gen'), 'True','3598 Ut, St.','1994-12-09','bookingapp05mzr++noviShipOwner2@gmail.com','Ratko','Rakic',37,'$2a$04$Vbug2lwwJGrvUXTj6z7ff.97IzVBkrJ1XfApfGNl.Z695zqcnPYra','035-98-372-38',2, 'False', 4, false, 'i want to create account4', 0);

INSERT INTO cottage_owners (id, not_yet_activated,address,date_of_birth,email,first_name,last_name,loyalty_points,password,phone_number, place_id, deleted, role_id, reason, version)
VALUES
(nextval('users_id_gen'), 'True','Ap #225-738 At, Rd.','1979-03-13','bookingapp05mzr++noviCottageOwner1@gmail.com','Bagi','Bagic',65,'$2a$04$Vbug2lwwJGrvUXTj6z7ff.97IzVBkrJ1XfApfGNl.Z695zqcnPYra','052-38-778-82',1, 'False', 3, 'i want to create account5', 0),
(nextval('users_id_gen'), 'True','4502 Semper Ave','2001-01-22','bookingapp05mzr++noviCottageOwner2@gmail.com','Dari','Daric',2,'$2a$04$Vbug2lwwJGrvUXTj6z7ff.97IzVBkrJ1XfApfGNl.Z695zqcnPYra','088-26-823-77',5, 'False', 3, 'i want to create account6', 0);
------------------------------------------------------------------------------------



-- rooms
INSERT INTO rooms (num_of_beds,room_num,cottage_id, deleted)
VALUES
    (5,90,1, false),
    (4,53,1, false),
    (2,35,1, true),
    (2,84,2, false),
    (3,70,2, false),
(1,12,3, false),
(2,73,4, false),
(3,14,5, false);

-- pricelists for cottages   1 - 7
INSERT INTO pricelists (entity_price_per_person,start_date,booking_entity_id)
VALUES
    (92,'2022-03-04',1),
    (98,'2022-04-10',1),
    (232,'2020-12-18',2),
    (200,'2022-04-04',2),
    (250,'2020-12-18',3),
    (250,'2020-12-18',4),
    (250,'2020-12-18',5);

INSERT INTO additional_services (price,service_name,price_list_id)
VALUES
(13,'food bar',1),
(59,'drink bar',2),
(65,'jacuzzi',2),
(33,'air condition',4),
(50,'add service',4);



INSERT INTO rules_of_conduct(allowed, rule_name, entity_id)
VALUES
('False','Age restrictions',1),
('True','Alcohol',1),
('False','Pets',1),
('True','Parties',2),
('False','Calling owner',2),
('True','Alcohol',6),
('False','Pets',6),
('False','Parties',6),
('True','Calling owner',7),
('True','Weed',3),
('True','Children policies',3),
('False','Weed',3),
('True','Smoking',2),
('True','Parties',1),
('True','rule1',11),
('False','rule2',11),
('True','rule3',11);



INSERT INTO adventure_fishing_equipment(adventure_entity_id, fishing_equipment_id) VALUES (11, 1);
INSERT INTO adventure_fishing_equipment(adventure_entity_id, fishing_equipment_id) VALUES (11, 2);


INSERT INTO ship_fishing_equipment(ship_entity_id, fishing_equipment_id) VALUES (6, 1);
INSERT INTO ship_fishing_equipment(ship_entity_id, fishing_equipment_id) VALUES (6, 2);
INSERT INTO ship_fishing_equipment(ship_entity_id, fishing_equipment_id) VALUES (6, 3);
INSERT INTO ship_fishing_equipment(ship_entity_id, fishing_equipment_id) VALUES (7, 3);

-- pricelists for adventures  8 - 14
INSERT INTO pricelists (entity_price_per_person,start_date,booking_entity_id)
VALUES
    (92,'2022-03-04',11),
    (98,'2022-02-24',12),
    (232,'2020-12-18',13),
    (232,'2020-12-18',14),
    (232,'2020-12-18',15),
    (232,'2020-12-18',11),
    (232,'2020-12-18',12);

INSERT INTO additional_services (price,service_name,price_list_id)
VALUES
(13,'food bar',8),
(32,'add serv2',8),
(50,'add serv3',8),
(59,'drink bar',9),
(65,'add 1',10),
(33,'air condition',11);



-- pricelist for ships 15 - 21
INSERT INTO pricelists (entity_price_per_person,start_date,booking_entity_id)
VALUES
(92,'2022-03-04',6),
(98,'2022-02-24',7),
(232,'2020-12-18',8),
(232,'2020-12-18',9),
(232,'2020-12-18',10),
(232,'2020-12-18',8),
(232,'2020-12-18',9);

INSERT INTO additional_services (price,service_name,price_list_id)
VALUES
(13,'food bar',15),
(59,'drink bar',15),
(65,'add 1',16),
(33,'air condition',17);



--cotages res
INSERT INTO reservations (start_date,num_of_days,num_of_persons,entity_id,client_id,fast_reservation,canceled, version, cost, client_discount_value, owner_bonus, system_takes)
VALUES
    ('2022-04-20 5:00 am',8,17,1,8,'False','False', 1, 255, 5, 5, 50),
    ('2022-05-01 7:00 pm',26,3,1,7,'False','True', 1, 780, 10, 10, 200),
    ('2022-05-29 7:00 pm',1,5,1,7,'False','False', 1, 120, 5, 5, 60);

INSERT INTO reservations (start_date,num_of_days,num_of_persons,entity_id,client_id,fast_reservation,canceled, version, cost, client_discount_value, owner_bonus, system_takes)
VALUES
    ('2022-01-10 5:00 am',2,2,11,8,'False','False', 1, 45, 5, 5, 30),
    ('2022-03-03 7:00 am',2,3,11,7,'False','True', 1, 66, 5, 5, 40),
    ('2022-04-19 7:00 am',2,3,11,9,'False','False', 1, 80, 5, 5, 30),


    ('2022-01-15 7:00 am',1,3,12,8,'False','False',1,100, 5, 5, 30),
    ('2022-01-20 7:00 am',4,3,12,7,'False','False',1,120, 5, 5, 40),

    ('2022-01-20 7:00 am',2,1,13,8,'False','False',1,200, 5, 5, 30),
    ('2022-01-25 7:00 am',4,3,13,7,'False','False',1,120, 5, 5, 60),

    ('2022-01-25 7:00 am',1,3,14,8,'False','False',1,350, 5, 5, 100),
    ('2022-02-10 7:00 am',4,1,14,7,'False','False',1,400, 5, 5, 100),

    ('2022-05-15 7:00 am',2,3,11,9,'False','False',1,170, 5, 5, 100),
    ('2022-05-20 7:00 am',1,3,11,8,'False','False',1,250, 5, 5, 100),
    ('2022-05-22 7:00 am',2,3,11,7,'False','False',1,600, 5, 5, 200),
    ('2022-04-22 7:00 am',2,3,11,9,'False','False',1,1500, 5, 5, 300),
    ('2022-05-25 8:00 am',2,3,11,null,'True','False',1,400, 5, 5, 100),
    ('2022-05-28 9:00 am',5,3,11,null,'True','False',1,85, 5, 5, 50),
    ('2022-04-25 9:00 am',5,3,11,null,'True','False',1,33, 5, 5, 20),

    ('2022-01-10 5:00 am',2,2,11,8,'False','False', 1, 33, 5, 5, 20),
    ('2022-03-03 7:00 pm',2,3,11,7,'False','True', 1, 99, 5, 5, 20),
    ('2022-04-19 7:00 pm',2,3,11,9,'False','False', 1, 102, 5, 5, 20),

    ('2022-01-15 7:00 pm',1,3,12,8,'False','False', 1, 345, 5, 5, 100),
    ('2022-01-20 7:00 pm',4,3,12,7,'False','False', 1, 245, 5, 5, 100),

    ('2022-01-20 7:00 pm',2,1,13,8,'False','False', 1, 230, 5, 5, 100),
    ('2022-01-25 7:00 pm',4,3,13,7,'False','False', 1, 333, 5, 5, 100),

    ('2022-01-25 7:00 pm',1,3,14,8,'False','False', 1, 222, 5, 10, 100),
    ('2022-02-10 7:00 pm',4,1,14,7,'False','False', 1, 111, 5, 5, 70);


INSERT INTO reports(
    admin_response, come_client, comment, penalize_client, processed, reservation_id, admin_penalize_client, version)
VALUES
    (null, true, 'commen1 fds fds fdsfdf d fdsfds fds fsd f ds fdfdf d', true, false, 1, false, 0),
    ('response1', true, 'commen2 fdfdfdfd fd d', true, true, 4, false, 0),
    ('response2', true, 'commen3 fd fd fdfddfgfjgflkdgjfdlkjg lg fd ', true, true, 20, true, 0),
    (null, true, 'commen5 flkdj flkds jflkd', true, false, 23, false, 0),
    (null, true, 'commen5', false, false, 7, false, 0),
    (null, true, 'commen6', false, false, 25, false, 0),

    (null, true, 'commen7fdslkfjds', false, false, 24, false, 0),
    (null, true, 'commen8', true, false, 8, false, 0),
    (null, true, 'commen9', true, false, 9, false, 0),
    (null, true, 'commen10', true, false, 10, false, 0),
    (null, true, 'commen11', true, false, 11, false, 0),
    (null, true, 'commen12', true, false, 27, false, 0),
    (null, true, 'commen13', true, false, 26, false, 0),
    (null, true, 'commen15', true, false, 16, false, 0),
    (null, true, 'commen15', true, false, 3, false, 0),
    (null, true, 'commen15', true, false, 22, false, 0);


INSERT INTO complaints(description, admin_response, processed, reservation_id, version)
VALUES
       ('complaint1',null, false, 1, 0),
       ('complaint2',null, false, 4, 0),
       ('complaint3',null, false, 20, 0),
       ('complaint4',null, false, 23, 0),
       ('complaint5',null, false, 7, 0),
       ('complaint6','111 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', true, 5, 0),
       ('complaint7','222 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', true, 24, 0),
       ('complaint8','333 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', true, 8, 0),
       ('complaint9','444 response4', true, 9, 0),
       ('complaint10','555 response5', true, 10, 0);

INSERT INTO deleted_accounts(
    accepted, admin_response, processed, reason, user_id, version)
VALUES
       (false, null, false, 'tako eto',17, 0),
       (false, null, false, 'mal nes nije ni bitno',18, 0),
       (false, null, false, 'fdsfsd df d',19, 0),
       (false, null, false, 'more mi se',20, 0),
       (false, null, false, 'brisi bre',21, 0);


INSERT INTO unavailable_dates (start_time, end_time, entity_id)
VALUES
    ('2022-06-04 9:00 pm', '2022-06-06 9:00 pm', 11),
    ('2022-06-10 9:00 pm', '2022-06-15 9:00 pm', 11),

    ('2022-06-15 6:00 am', '2022-06-25 6:00 am', 1),
    ('2022-06-01 9:00 pm', '2022-06-02 9:00 pm', 1);


--cotages res
INSERT INTO reservations (start_date,num_of_days,num_of_persons,entity_id,client_id,fast_reservation,canceled, version, cost, client_discount_value, owner_bonus, system_takes)
VALUES
    ('2022-05-14 8:00 am',2,2,1,8,'True','False', 1, 1234, 0, 0, 500),
    ('2022-05-04 1:00 pm',12,3,1,7,'True','False', 1, 123, 5, 7, 60),
    ('2022-05-05 1:00 pm',4,3,3,7,'True','False', 1, 1098, 0, 0, 400);

INSERT INTO ratings (comment, value, reservation_id, approved, processed, review_date, version)
VALUES
    ('commen1', 3.0, 4, true, true, '2022-05-14 8:00 am', 0),
    ('commen2', 2.5, 5, true, true, '2022-05-14 8:00 am', 0),
    ('commen3', 4.0, 6, false, false, '2022-05-14 8:00 am', 0),
    ('commen4', 4.5, 7, true, true, '2022-05-14 8:00 am', 0),
    ('commen5', 1.0, 8, false, false, '2022-05-14 8:00 am', 0),
    ('commen6', 0.5, 9, true, true,'2022-05-14 8:00 am', 0),
    ('commenA', 4.0, 1, true, true,'2022-05-14 8:00 am', 0),
    ('commenB', 3.5, 2, true, true,'2022-05-14 8:00 am', 0),
    ('commenC', 4.5, 3, true, true,'2022-05-14 8:00 am', 0),
    ('commen7', 5.0, 10, false, false,'2022-05-14 8:00 am', 0);


INSERT INTO reservations (start_date,num_of_days,num_of_persons,entity_id,client_id,fast_reservation,canceled, version, cost, client_discount_value, owner_bonus, system_takes)
VALUES
('2022-06-03 8:00 pm',2,3,1,7,'False','False', 1, 120, 5, 5, 60),
('2022-06-07 9:00 pm',4,4,1,8,'False','False', 1, 120, 5, 5, 60),
('2022-06-28 5:00 pm',7,2,1,9,'False','False', 1, 120, 5, 5, 60),

('2022-05-20 9:00 pm',2,5,2,7,'False','False', 1, 120, 5, 5, 60),
('2022-05-24 9:00 pm',4,1,2,8,'False','False', 1, 120, 5, 5, 60),
('2022-06-01 5:00 pm',10,2,2,8,'False','False', 1, 120, 5, 5, 60),
('2022-06-12 7:00 am',1,5,2,9,'False','False', 1, 120, 5, 5, 60),
('2022-06-20 7:00 am',2,7,2,9,'False','False', 1, 120, 5, 5, 60),

('2022-05-20 8:00 am',1,2,3,7,'False','False', 1, 120, 5, 5, 60),
('2022-05-22 8:00 am',2,1,3,8,'False','False', 1, 120, 5, 5, 60),
('2022-05-28 8:00 am',15,4,3,9,'False','False', 1, 120, 5, 5, 60),
('2022-06-25 9:00 am',5,2,3,8,'False','False', 1, 120, 5, 5, 60),

('2021-12-12 8:00 am',5,2,3,7,'False','False', 1, 120, 5, 5, 60),
('2021-12-30 8:00 am',7,1,3,8,'False','False', 1, 120, 5, 5, 60),
('2021-12-25 8:00 am',15,4,3,9,'False','False', 2, 120, 5, 5, 60),
('2021-12-10 9:00 am',5,2,3,8,'False','False', 2, 120, 5, 5, 60),
('2022-12-20 9:00 am',20,2,3,8,'False','False', 2, 120, 5, 5, 60);




INSERT INTO reservation_additional_service(reservation_id, additional_service_id)
VALUES
       (1, 2),
       (1,3),
       (2,3),
       (13, 2),
       (13, 3),
       (14, 1);

--- dodavanje slika za avanturu
INSERT INTO pictures (picture_path, entity_id) VALUES ('adventure1_1.jpg', 11);
INSERT INTO pictures (picture_path, entity_id) VALUES ('adventure1_2.jpg', 11);
INSERT INTO pictures (picture_path, entity_id) VALUES ('adventure1_3.jpg', 11);
INSERT INTO pictures (picture_path, entity_id) VALUES ('adventure2_1.jpg', 12);
INSERT INTO pictures (picture_path, entity_id) VALUES ('adventure2_2.jpg', 12);
INSERT INTO pictures (picture_path, entity_id) VALUES ('adventure3_1.jpg', 13);
INSERT INTO pictures (picture_path, entity_id) VALUES ('adventure4_1.jpg', 14);
INSERT INTO pictures (picture_path, entity_id) VALUES ('adventure5_1.jpg', 15);

--- dodavanje slika za vikendicu
INSERT INTO pictures (picture_path, entity_id) VALUES ('cottage1a.jpg', 1);
INSERT INTO pictures (picture_path, entity_id) VALUES ('cottage1b.jpg', 1);
INSERT INTO pictures (picture_path, entity_id) VALUES ('cottage1c.jpg', 1);
INSERT INTO pictures (picture_path, entity_id) VALUES ('cottage1d.jpg', 1);
INSERT INTO pictures (picture_path, entity_id) VALUES ('cottage2a.jpg', 2);
INSERT INTO pictures (picture_path, entity_id) VALUES ('cottage2b.jpg', 2);
INSERT INTO pictures (picture_path, entity_id) VALUES ('cottage2c.jpg', 2);
INSERT INTO pictures (picture_path, entity_id) VALUES ('cottage3a.jpg', 3);
INSERT INTO pictures (picture_path, entity_id) VALUES ('cottage3b.jpg', 3);
INSERT INTO pictures (picture_path, entity_id) VALUES ('cottage3c.jpg', 3);
INSERT INTO pictures (picture_path, entity_id) VALUES ('cottage3d.jpg', 3);
INSERT INTO pictures (picture_path, entity_id) VALUES ('cottage4a.jpg', 4);
INSERT INTO pictures (picture_path, entity_id) VALUES ('cottage4b.jpg', 4);
INSERT INTO pictures (picture_path, entity_id) VALUES ('cottage4c.jpg', 4);
INSERT INTO pictures (picture_path, entity_id) VALUES ('cottage4d.jpg', 4);

--- dodavanje slika za brod
INSERT INTO pictures (picture_path, entity_id) VALUES ('ship1a.jpg', 6);
INSERT INTO pictures (picture_path, entity_id) VALUES ('ship1b.jpg', 6);
INSERT INTO pictures (picture_path, entity_id) VALUES ('ship1c.jpg', 6);
INSERT INTO pictures (picture_path, entity_id) VALUES ('ship1d.jpg', 6);
INSERT INTO pictures (picture_path, entity_id) VALUES ('ship1e.jpg', 6);
INSERT INTO pictures (picture_path, entity_id) VALUES ('ship2a.jpg', 7);
INSERT INTO pictures (picture_path, entity_id) VALUES ('ship2b.jpg', 7);
INSERT INTO pictures (picture_path, entity_id) VALUES ('ship2c.jpg', 7);
INSERT INTO pictures (picture_path, entity_id) VALUES ('ship2d.jpg', 7);

--aditional services for adventures


--subsribers for cottage
INSERT INTO subscribers (booking_entity_id, client_id) VALUES (1, 7);
INSERT INTO subscribers (booking_entity_id, client_id) VALUES (1, 8);
INSERT INTO subscribers (booking_entity_id, client_id) VALUES (3, 7);



INSERT INTO navigation_equipments(name, ship_id) VALUES ('GPS', 6);
INSERT INTO navigation_equipments(name, ship_id) VALUES ('RADAR', 6);
INSERT INTO navigation_equipments(name, ship_id) VALUES ('VHF_RADIO', 6);
INSERT INTO navigation_equipments(name, ship_id) VALUES ('FISHFINDER', 7);
INSERT INTO navigation_equipments(name, ship_id) VALUES ('RADAR', 7);
INSERT INTO navigation_equipments(name, ship_id) VALUES ('VHF_RADIO', 8);
INSERT INTO navigation_equipments(name, ship_id) VALUES ('VHF_RADIO', 9);
INSERT INTO navigation_equipments(name, ship_id) VALUES ('RADAR', 8);


INSERT INTO loyalty_programs(
    client_points_per_reservation, owner_points_per_reservation,
    bronze_limit, silver_limit, gold_limit,
    client_bronze_discount,client_silver_discount, client_gold_discount,
    owner_bronze_bonus, owner_silver_bonus,owner_gold_bonus, start_date)
VALUES (1,2, 30,60,100, 1,5,10,2,6,11,'2022-03-04'),
       (2,3, 40,80,120, 1,6,12,2,7,11,'2022-05-05');

INSERT INTO system_revenue_percentages(percentage, start_date)
VALUES (10, '2022-03-04'),
       (20, '2022-05-05');



--cotages res
INSERT INTO reservations (start_date,num_of_days,num_of_persons,entity_id,client_id,fast_reservation,canceled, version, cost, client_discount_value, owner_bonus, system_takes)
VALUES ('2022-05-29 7:00 pm',5,3,1,9,'False','False', 1, 290, 5, 5, 30),
       ('2022-06-22 7:00 pm',5,3,1,7,'False','False', 1, 359, 5, 5, 30),
       ('2022-06-12 7:00 pm',9,3,1,7,'False','False', 1, 359, 5, 5, 30);

--fast cotages res
INSERT INTO reservations (start_date,num_of_days,num_of_persons,entity_id,client_id,fast_reservation,canceled, version, cost, client_discount_value, owner_bonus, system_takes)
VALUES ('2022-07-29 7:00 pm',5,3,1,null,'True','False', 1, 290, 5, 5, 30),
       ('2022-07-05 7:00 pm',3,4,1,null,'True','False', 1, 359, 5, 5, 30),
       ('2022-07-15 7:00 pm',2,2,1,null,'True','False', 1, 425, 5, 5, 30),
       ('2022-08-05 7:00 pm',10,5,1,null,'True','False', 1, 440, 5, 5, 30);


INSERT INTO reservations (start_date,num_of_days,num_of_persons,entity_id,client_id,fast_reservation,canceled, version, cost, client_discount_value, owner_bonus, system_takes)
VALUES
    ('2022-06-16 5:00 am',2,2,14,8,'False','False', 1, 45, 5, 5, 30),
    ('2022-06-17 7:00 am',1,3,14,7,'False','True', 1, 66, 5, 5, 40),
    ('2022-06-15 7:00 am',5,3,14,9,'False','False', 1, 80, 5, 5, 30);
