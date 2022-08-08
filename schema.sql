/* Database schema to keep the structure of entire database. */
CREATE DATABASE vet_clinic;
postgres=# \c vet_clinic
CREATE TABLE animals(
    id serial PRIMARY KEY,
    name VARCHAR(50),
    date_of_birth DATE,
    escape_attempts INT,
    neutered BIT,
    weight_kg REAL);




