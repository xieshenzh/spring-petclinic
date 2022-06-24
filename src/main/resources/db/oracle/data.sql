INSERT INTO vets(first_name,last_name) VALUES ('James', 'Carter');
INSERT INTO vets(first_name,last_name) VALUES ('Helen', 'Leary');
INSERT INTO vets(first_name,last_name) VALUES ('Linda', 'Douglas');
INSERT INTO vets(first_name,last_name) VALUES ('Rafael', 'Ortega');
INSERT INTO vets(first_name,last_name) VALUES ('Henry', 'Stevens');
INSERT INTO vets(first_name,last_name) VALUES ('Sharon', 'Jenkins');

INSERT INTO specialties(name) VALUES ('radiology');
INSERT INTO specialties(name) VALUES ('surgery');
INSERT INTO specialties(name) VALUES ('dentistry');

INSERT INTO types(name) VALUES ('cat');
INSERT INTO types(name) VALUES ('dog');
INSERT INTO types(name) VALUES ('lizard');
INSERT INTO types(name) VALUES ('snake');
INSERT INTO types(name) VALUES ('bird');
INSERT INTO types(name) VALUES ('hamster');

INSERT INTO owners(first_name,last_name,address,city,telephone) VALUES ('George', 'Franklin', '110 W. Liberty St.', 'Madison', '6085551023');
INSERT INTO owners(first_name,last_name,address,city,telephone) VALUES ('Betty', 'Davis', '638 Cardinal Ave.', 'Sun Prairie', '6085551749');
INSERT INTO owners(first_name,last_name,address,city,telephone) VALUES ('Eduardo', 'Rodriquez', '2693 Commerce St.', 'McFarland', '6085558763');
INSERT INTO owners(first_name,last_name,address,city,telephone) VALUES ('Harold', 'Davis', '563 Friendly St.', 'Windsor', '6085553198');
INSERT INTO owners(first_name,last_name,address,city,telephone) VALUES ('Peter', 'McTavish', '2387 S. Fair Way', 'Madison', '6085552765');
INSERT INTO owners(first_name,last_name,address,city,telephone) VALUES ('Jean', 'Coleman', '105 N. Lake St.', 'Monona', '6085552654');
INSERT INTO owners(first_name,last_name,address,city,telephone) VALUES ('Jeff', 'Black', '1450 Oak Blvd.', 'Monona', '6085555387');
INSERT INTO owners(first_name,last_name,address,city,telephone) VALUES ('Maria', 'Escobito', '345 Maple St.', 'Madison', '6085557683');
INSERT INTO owners(first_name,last_name,address,city,telephone) VALUES ('David', 'Schroeder', '2749 Blackhawk Trail', 'Madison', '6085559435');
INSERT INTO owners(first_name,last_name,address,city,telephone) VALUES ('Carlos', 'Estaban', '2335 Independence La.', 'Waunakee', '6085555487');

INSERT INTO vet_specialties(vet_id,specialty_id) VALUES (2, 1);
INSERT INTO vet_specialties(vet_id,specialty_id) VALUES (3, 2);
INSERT INTO vet_specialties(vet_id,specialty_id) VALUES (3, 3);
INSERT INTO vet_specialties(vet_id,specialty_id) VALUES (4, 2);
INSERT INTO vet_specialties(vet_id,specialty_id) VALUES (5, 1);

INSERT INTO pets(name,birth_date,type_id,owner_id) VALUES ('Leo', to_date('2010-09-07', 'yyyy-mm-dd'), 1, 1);
INSERT INTO pets(name,birth_date,type_id,owner_id) VALUES ('Basil', to_date('2012-08-06', 'yyyy-mm-dd'), 6, 2);
INSERT INTO pets(name,birth_date,type_id,owner_id) VALUES ('Rosy', to_date('2011-04-17', 'yyyy-mm-dd'), 2, 3);
INSERT INTO pets(name,birth_date,type_id,owner_id) VALUES ('Jewel', to_date('2010-03-07', 'yyyy-mm-dd'), 2, 3);
INSERT INTO pets(name,birth_date,type_id,owner_id) VALUES ('Iggy', to_date('2010-11-30', 'yyyy-mm-dd'), 3, 4);
INSERT INTO pets(name,birth_date,type_id,owner_id) VALUES ('George', to_date('2010-01-20', 'yyyy-mm-dd'), 4, 5);
INSERT INTO pets(name,birth_date,type_id,owner_id) VALUES ('Samantha', to_date('2012-09-04', 'yyyy-mm-dd'), 1, 6);
INSERT INTO pets(name,birth_date,type_id,owner_id) VALUES ('Max', to_date('2012-09-04', 'yyyy-mm-dd'), 1, 6);
INSERT INTO pets(name,birth_date,type_id,owner_id) VALUES ('Lucky', to_date('2011-08-06', 'yyyy-mm-dd'), 5, 7);
INSERT INTO pets(name,birth_date,type_id,owner_id) VALUES ('Mulligan', to_date('2007-02-24', 'yyyy-mm-dd'), 2, 8);
INSERT INTO pets(name,birth_date,type_id,owner_id) VALUES ('Freddy', to_date('2010-03-09', 'yyyy-mm-dd'), 5, 9);
INSERT INTO pets(name,birth_date,type_id,owner_id) VALUES ('Lucky', to_date('2010-06-24', 'yyyy-mm-dd'), 2, 10);
INSERT INTO pets(name,birth_date,type_id,owner_id) VALUES ('Sly', to_date('2012-06-08', 'yyyy-mm-dd'), 1, 10);

INSERT INTO visits(pet_id,visit_date,description) VALUES (7, to_date('2013-01-01', 'yyyy-mm-dd'), 'rabies shot');
INSERT INTO visits(pet_id,visit_date,description) VALUES (8, to_date('2013-01-02', 'yyyy-mm-dd'), 'rabies shot');
INSERT INTO visits(pet_id,visit_date,description) VALUES (8, to_date('2013-01-03', 'yyyy-mm-dd'), 'neutered');
INSERT INTO visits(pet_id,visit_date,description) VALUES (7, to_date('2013-01-04', 'yyyy-mm-dd'), 'spayed');
