/* Database schema to keep the structure of entire database. */
CREATE DATABASE vet_clinic;
postgres=# \c vet_clinic
CREATE TABLE animals2(
    id serial PRIMARY KEY,
    name VARCHAR(50),
    date_of_birth DATE,
    escape_attempts INT,
    neutered BIT,
    weight_kg REAL);

ALTER TABLE animals ADD COLUMN species VARCHAR(30);

CREATE TABLE owners (
    id INT PRIMARY KEY,
    full_name varchar(50) NOT NULL,
    age INT);

CREATE TABLE species (
 id INT PRIMARY KEY,
 name varchar(50) NOT NULL);

ALTER TABLE animals DROP column species;
ALTER TABLE animals ADD COLUMN species_id INT;
ALTER TABLE animals ADD COLUMN owner_id INT;
ALTER TABLE animals ADD CONSTRAINT fk_species_animal FOREIGN KEY (species_id) REFERENCES species (id);
ALTER TABLE animals ADD CONSTRAINT fk_owner_animal FOREIGN KEY (owner_id) REFERENCES owners (id);

