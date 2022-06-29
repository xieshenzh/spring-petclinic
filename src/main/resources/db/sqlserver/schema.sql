DROP DATABASE IF EXISTS petclinic;
CREATE DATABASE petclinic;
ALTER DATABASE petclinic SET AUTO_CLOSE OFF;
USE petclinic;

CREATE table vets (
  id         INTEGER NOT NULL PRIMARY KEY,
  first_name VARCHAR(80),
  last_name  VARCHAR(80)
);
CREATE INDEX vets_last_name ON vets(last_name);

CREATE table specialties (
  id   INTEGER NOT NULL PRIMARY KEY,
  name VARCHAR(80)
);
CREATE INDEX specialties_name ON specialties (name);

CREATE table vet_specialties (
  vet_id       INTEGER NOT NULL,
  specialty_id INTEGER NOT NULL
);
CREATE CLUSTERED INDEX vet_specialties_PK ON vet_specialties(vet_id, specialty_id);

CREATE table types (
  id   INTEGER NOT NULL PRIMARY KEY,
  name VARCHAR(80)
);
CREATE INDEX types_name ON types (name);

CREATE table owners (
  id         INTEGER NOT NULL PRIMARY KEY,
  first_name VARCHAR(255),
  last_name  VARCHAR(255),
  address    VARCHAR(255),
  city       VARCHAR(255),
  telephone  VARCHAR(255)
);
CREATE INDEX owners_last_name ON owners (last_name);

CREATE table pets (
  id         INTEGER NOT NULL PRIMARY KEY,
  name       VARCHAR(255),
  birth_date DATE,
  type_id    INTEGER NOT NULL,
  owner_id   INTEGER
);
CREATE INDEX pets_name ON pets (name);

CREATE table visits (
  id          INTEGER NOT NULL PRIMARY KEY,
  pet_id      INTEGER NOT NULL,
  visit_date  DATE,
  description VARCHAR(255)
);
CREATE INDEX visits_pet_id ON visits (pet_id);


ALTER TABLE vet_specialties
  ADD CONSTRAINT fk_vet_specialties_vets FOREIGN KEY (vet_id) REFERENCES vets(id);
ALTER TABLE vet_specialties
  ADD CONSTRAINT fk_vet_specialties_specialties FOREIGN KEY (specialty_id) REFERENCES specialties(id);
ALTER TABLE pets
  ADD CONSTRAINT fk_pets_owners FOREIGN KEY (owner_id) REFERENCES owners(id);
ALTER TABLE pets
  ADD CONSTRAINT fk_pets_types FOREIGN KEY (type_id) REFERENCES types(id);
ALTER TABLE visits
  ADD CONSTRAINT fk_visits_pets FOREIGN KEY (pet_id) REFERENCES pets(id);
