USE spring_petclinic;

INSERT INTO reference_lists(list_name, values) VALUES ('vet_specialty', {'radiology', 'dentistry', 'surgery'});
INSERT INTO reference_lists(list_name, values) VALUES ('pet_type', {'bird', 'cat', 'dog', 'lizard','hamster','snake'});

INSERT INTO vets (vet_id, first_name, last_name, specialties) VALUES (4482a345-9be1-4807-acc7-b138d7966287, 'James', 'Carter', {});
INSERT INTO vets (vet_id, first_name, last_name, specialties) VALUES (4f297bac-4253-44a0-8f21-0528eb46bbd6, 'Helen', 'Leary', {'radiology'});
INSERT INTO vets (vet_id, first_name, last_name, specialties) VALUES (c9c64585-0400-4e00-b693-842ecd692859, 'Linda', 'Douglas', {'surgery', 'dentistry'});
INSERT INTO vets (vet_id, first_name, last_name, specialties) VALUES (4eb28c1e-d228-4f35-9a08-48b0916b5a34, 'Rafael', 'Ortega', {'surgery'});
INSERT INTO vets (vet_id, first_name, last_name, specialties) VALUES (f629c4d6-9b2c-4ca3-b975-b275496ddd86, 'Henry', 'Stevens', {'radiology'});
INSERT INTO vets (vet_id, first_name, last_name, specialties) VALUES (66360ff2-c261-4f01-9b45-ea8d97ced1b3, 'Sharon', 'Jenkins', {});

INSERT INTO vets_by_specialties (specialty, vet_id, first_name, last_name) VALUES ('radiology', 4f297bac-4253-44a0-8f21-0528eb46bbd6, 'Helen', 'Leary');
INSERT INTO vets_by_specialties (specialty, vet_id, first_name, last_name) VALUES ('surgery', c9c64585-0400-4e00-b693-842ecd692859, 'Linda', 'Douglas');
INSERT INTO vets_by_specialties (specialty, vet_id, first_name, last_name) VALUES ('dentistry', c9c64585-0400-4e00-b693-842ecd692859, 'Linda', 'Douglas');
INSERT INTO vets_by_specialties (specialty, vet_id, first_name, last_name) VALUES ('surgery', 4eb28c1e-d228-4f35-9a08-48b0916b5a34, 'Rafael', 'Ortega');
INSERT INTO vets_by_specialties (specialty, vet_id, first_name, last_name) VALUES ('radiology', f629c4d6-9b2c-4ca3-b975-b275496ddd86, 'Henry', 'Stevens');

INSERT INTO owners (owner_id, first_name, last_name, address, city, telephone) VALUES (81e34527-7527-4650-b98a-b346558c3959, 'George', 'Franklin', '110 W. Liberty St.', 'Madison', '6085551023');
INSERT INTO owners (owner_id, first_name, last_name, address, city, telephone) VALUES (76000447-637f-4fde-94dc-659f6e0b7286, 'Betty', 'Davis', '638 Cardinal Ave.', 'Sun Prairie', '6085551749');
INSERT INTO owners (owner_id, first_name, last_name, address, city, telephone) VALUES (48af98dd-bf7c-44ba-bae1-3ebf2fb0809e, 'Eduardo', 'Rodriquez', '2693 Commerce St.', 'McFarland', '6085558763');
INSERT INTO owners (owner_id, first_name, last_name, address, city, telephone) VALUES (436ac053-7a04-446e-9578-0bb895737dd6, 'Harold', 'Davis', '563 Friendly St.', 'Windsor', '6085553198');
INSERT INTO owners (owner_id, first_name, last_name, address, city, telephone) VALUES (72e36650-cf83-4fb2-a2ec-6a50ba7342bf, 'Peter', 'McTavish', '2387 S. Fair Way', 'Madison', '6085552765');
INSERT INTO owners (owner_id, first_name, last_name, address, city, telephone) VALUES (0dfeb2b2-2452-417f-b82b-1fb21394ef94, 'Jean', 'Coleman', '105 N. Lake St.', 'Monona', '6085552654');
INSERT INTO owners (owner_id, first_name, last_name, address, city, telephone) VALUES (60705b67-2ae1-4dae-88e6-3c3ae0ce7e98, 'Jeff', 'Black', '1450 Oak Blvd.', 'Monona', '6085555387');
INSERT INTO owners (owner_id, first_name, last_name, address, city, telephone) VALUES (1f0fe70d-506d-4196-a9e4-ab4c0cca3574, 'Maria', 'Escobito', '345 Maple St.', 'Madison', '6085557683');
INSERT INTO owners (owner_id, first_name, last_name, address, city, telephone) VALUES (b499d467-7082-4657-ae80-fcb8e0d2b717, 'David', 'Schroeder', '2749 Blackhawk Trail', 'Madison', '6085559435');
INSERT INTO owners (owner_id, first_name, last_name, address, city, telephone) VALUES (dfcea739-0ad2-43ce-809f-1bad3db7cfe0, 'Carlos', 'Estaban', '2335 Independence La.', 'Waunakee', '6085555487');

INSERT INTO pets_by_owners (pet_id, name, birth_date, pet_type, owner_id) VALUES (5c62751b-babc-40f5-8d0f-cd09c67e786e, 'Leo', '2010-09-07', 'cat', 81e34527-7527-4650-b98a-b346558c3959);
INSERT INTO pets_by_owners (pet_id, name, birth_date, pet_type, owner_id) VALUES (d7062d03-0a73-404b-883a-0e40251cd963, 'Basil', '2012-08-06', 'hamster', 76000447-637f-4fde-94dc-659f6e0b7286);
INSERT INTO pets_by_owners (pet_id, name, birth_date, pet_type, owner_id) VALUES (c4332c4f-2662-4e02-bfdd-fb5309035815, 'Rosy', '2011-04-17', 'dog', 48af98dd-bf7c-44ba-bae1-3ebf2fb0809e);
INSERT INTO pets_by_owners (pet_id, name, birth_date, pet_type, owner_id) VALUES (33b74178-223f-456a-98b9-53460156d71e, 'Jewel', '2010-03-07', 'dog', 48af98dd-bf7c-44ba-bae1-3ebf2fb0809e);
INSERT INTO pets_by_owners (pet_id, name, birth_date, pet_type, owner_id) VALUES (546ee328-547a-4cca-bb2a-c7fdae3b9d8b, 'Iggy', '2010-11-30', 'lizard', 436ac053-7a04-446e-9578-0bb895737dd6);
INSERT INTO pets_by_owners (pet_id, name, birth_date, pet_type, owner_id) VALUES (07934332-9d4b-4b67-aa20-dbfebade502f, 'George', '2010-01-20', 'snake', 72e36650-cf83-4fb2-a2ec-6a50ba7342bf);
INSERT INTO pets_by_owners (pet_id, name, birth_date, pet_type, owner_id) VALUES (b010ad7a-6507-4d84-b255-e3ccd110ed0b, 'Samantha', '2012-09-04', 'cat', 0dfeb2b2-2452-417f-b82b-1fb21394ef94);
INSERT INTO pets_by_owners (pet_id, name, birth_date, pet_type, owner_id) VALUES (079a9e32-e1d2-46dc-8d0b-cfa1532edbc1, 'Max', '2012-09-04', 'cat', 0dfeb2b2-2452-417f-b82b-1fb21394ef94);
INSERT INTO pets_by_owners (pet_id, name, birth_date, pet_type, owner_id) VALUES (2d08efad-5efe-4652-a99d-86b9a1c610f2, 'Lucky', '2011-08-06', 'bird', 60705b67-2ae1-4dae-88e6-3c3ae0ce7e98);
INSERT INTO pets_by_owners (pet_id, name, birth_date, pet_type, owner_id) VALUES (af5aad02-56d4-4105-be12-fe0e4d63b1bf, 'Mulligan', '2007-02-24', 'dog', 1f0fe70d-506d-4196-a9e4-ab4c0cca3574);
INSERT INTO pets_by_owners (pet_id, name, birth_date, pet_type, owner_id) VALUES (68b19c18-1085-4ef8-85e4-eddc7f9f596a, 'Freddy', '2010-03-09', 'bird', b499d467-7082-4657-ae80-fcb8e0d2b717);
INSERT INTO pets_by_owners (pet_id, name, birth_date, pet_type, owner_id) VALUES (50bb61ae-8c9b-4cb7-a036-83cea8c8dd60, 'Lucky', '2010-06-24', 'dog', dfcea739-0ad2-43ce-809f-1bad3db7cfe0);
INSERT INTO pets_by_owners (pet_id, name, birth_date, pet_type, owner_id) VALUES (f8545522-8f1f-46ff-b617-a89355bef5c8, 'Sly', '2012-06-08', 'cat', dfcea739-0ad2-43ce-809f-1bad3db7cfe0);

INSERT INTO visits_by_pets (visit_id, pet_id, visit_date, description) VALUES (uuid(), b010ad7a-6507-4d84-b255-e3ccd110ed0b, '2013-01-01', 'rabies shot');
INSERT INTO visits_by_pets (visit_id, pet_id, visit_date, description) VALUES (uuid(), 079a9e32-e1d2-46dc-8d0b-cfa1532edbc1, '2013-01-02', 'rabies shot');
INSERT INTO visits_by_pets (visit_id, pet_id, visit_date, description) VALUES (uuid(), 079a9e32-e1d2-46dc-8d0b-cfa1532edbc1, '2013-01-03', 'neutered');
INSERT INTO visits_by_pets (visit_id, pet_id, visit_date, description) VALUES (uuid(), b010ad7a-6507-4d84-b255-e3ccd110ed0b, '2013-01-04', 'spayed');
