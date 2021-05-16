USE spring_petclinic;

DROP TABLE IF EXISTS reference_lists;
DROP TABLE IF EXISTS vets_by_specialties;
DROP TABLE IF EXISTS vets;
DROP TABLE IF EXISTS visits_by_pets;
DROP TABLE IF EXISTS pets_by_owners;
DROP TABLE IF EXISTS owners;


CREATE TABLE reference_lists (
  list_name text,
  values set<text>,
  PRIMARY KEY ((list_name))
);

CREATE TABLE vets (
  vet_id      uuid,
  first_name  text,
  last_name   text,
  specialties set<text>,
  PRIMARY KEY ((vet_id))
);
CREATE INDEX vets_last_name ON vets (last_name);

--TODO: Table not yet used in the application
CREATE TABLE vets_by_specialties (
 specialty   text,
 vet_id      uuid,
 first_name  text,
 last_name   text,
 PRIMARY KEY ((specialty), vet_id)
);

CREATE TABLE owners (
  owner_id   uuid,
  first_name text,
  last_name  text,
  address    text,
  city       text,
  telephone  text,
  PRIMARY KEY ((owner_id))
);
CREATE INDEX owners_last_name ON owners (last_name);

CREATE TABLE pets_by_owners (
  pet_id     uuid,
  owner_id   uuid,
  name       text,
  birth_date date,
  pet_type   text,
  PRIMARY KEY ((owner_id), pet_id)
);

CREATE TABLE visits_by_pets (
  visit_id     uuid,
  pet_id      uuid,
  visit_date  date,
  description text,
  PRIMARY KEY ((pet_id), visit_id)
);
