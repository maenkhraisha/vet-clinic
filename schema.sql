/* Database schema to keep the structure of entire database. */
CREATE DATABASE vet_clinic;
postgres=# \c vet_clinic
CREATE TABLE animals(
    id bigserial PRIMARY KEY,
    name VARCHAR(50),
    date_of_birth DATE,
    escape_attempts INT,
    neutered BIT,
    weight_kg REAL,
    owner_id INT,
    species_id INT);


CREATE TABLE owners (
    id bigserial PRIMARY KEY,
    full_name varchar(50) NOT NULL,
    age INT);

CREATE TABLE species (
 id INT PRIMARY KEY,
 name varchar(50) NOT NULL);


ALTER TABLE animals ADD CONSTRAINT fk_species_animal FOREIGN KEY (species_id) REFERENCES species (id);
ALTER TABLE animals ADD CONSTRAINT fk_owner_animal FOREIGN KEY (owner_id) REFERENCES owners (id);

CREATE TABLE vets (
    id bigserial primary key,
    name varchar(50) NOT NULL,
    age INT,
    date_of_graduation DATE);

CREATE TABLE specializations (
    vet_id INT,
    species_id INT);
    
ALTER TABLE specializations ADD CONSTRAINT fk_species_animal FOREIGN KEY (species_id) REFERENCES species (id);
ALTER TABLE specializations ADD CONSTRAINT fk_owner_animal FOREIGN KEY (vet_id) REFERENCES vets (id);

CREATE TABLE visits (
    animal_id INT,
    vet_id INT,
    date_of_visit DATE);
ALTER TABLE visits ADD CONSTRAINT fk_species_visits FOREIGN KEY (animal_id) REFERENCES animals (id);
ALTER TABLE visits ADD CONSTRAINT fk_owner_visits FOREIGN KEY (vet_id) REFERENCES vets (id);

-- Performance Audit
ALTER TABLE owners ADD COLUMN email VARCHAR(120);

-- explain analyze SELECT COUNT(*) FROM visits where animal_id = 4; explain analyze SELECT * FROM visits where vet_id = 2;
-- explain analyze SELECT * FROM owners where email = 'owner_18327@mail.com';

CREATE INDEX idx_visits_animal_id ON visits(animal_id DESC);CREATE INDEX idx_visits_vet_id ON visits(vet_id);

