/* Populate database with sample data. */

INSERT INTO animals 
(name,date_of_birth,escape_attempts,neutered,weight_kg)
VALUES ( 'Agumon', '2/3/2020', 0, '1', 10.23);

INSERT INTO animals 
(name,date_of_birth,escape_attempts,neutered,weight_kg)
VALUES ('Gabumon','11/15/2018', 2, '1', 8);

INSERT INTO animals 
(name,date_of_birth,escape_attempts,neutered,weight_kg)
VALUES ('Pikachu','7/1/2021', 1, '0', 15.04);

INSERT INTO animals
(name,date_of_birth,escape_attempts,neutered,weight_kg)
 VALUES ('Devimon','5/12/2018', 5, '1', 11);

-- add new data
INSERT INTO animals
(name,date_of_birth,escape_attempts,neutered,weight_kg)
 VALUES ('Charmander','2/8/2020', 5, '0', 11);

INSERT INTO animals
(name,date_of_birth,escape_attempts,neutered,weight_kg)
 VALUES ('Plantmon','11/15/2021', 2, '1', 5.7);
 
INSERT INTO animals
(name,date_of_birth,escape_attempts,neutered,weight_kg)
 VALUES ('Squirtle','4/2/1993', 3, '0', 12.13);

 INSERT INTO animals
(name,date_of_birth,escape_attempts,neutered,weight_kg)
 VALUES ('Angemon','6/12/2005', 1, '1', 45);
 
 INSERT INTO animals
(name,date_of_birth,escape_attempts,neutered,weight_kg)
 VALUES ('Boarmon','6/7/2005', 7, '1', 20.4);
 
 INSERT INTO animals
(name,date_of_birth,escape_attempts,neutered,weight_kg)
 VALUES ('Blossom','10/13/1998', 3, '1', 17);
 
 INSERT INTO animals
(name,date_of_birth,escape_attempts,neutered,weight_kg)
 VALUES ('Ditto','5/14/2022', 4, '1', 22);

begin
update animals set species = 'unspecified';
select * from animals;
 ROLLBACK;
 select * from animals;

 begin;
 update animals set species = 'digimon' where name like '%mon';
update animals set species = 'pokemon' where species = '';
commit;
select * from animals;

insert INTO owners (full_name,age) VALUES ('Sam Smith',34);
insert INTO owners (full_name,age) VALUES ('Jennifer Orwell',19);
insert INTO owners (full_name,age) VALUES ('Bob',45);
insert INTO owners (full_name,age) VALUES ('Melofy Pond',77);
insert INTO owners (full_name,age) VALUES ('Dean Winchester',14);
insert INTO owners (full_name,age) VALUES ('Jodie Whittaker',38);

insert INTO species (name) VALUES ('Pokemin');
insert INTO species (name) VALUES ('Digimon');

update animals set species_id = 2 where name like '%mon';
update animals set species_id = 1 where species_id is null;

update animals set owner_id = 1 where id = 3;
update animals set owner_id = 2 where id = 5;
update animals set owner_id = 3 where id = 6 OR id = 8;
update animals set owner_id = 4 where id = 7 OR id = 9 OR id = 12; 
update animals set owner_id = 5 where id = 3 OR id=11;
 
-- insert into vets table

insert INTO vets (name,age,date_of_graduation) VALUES ('William Tatcher',45,'5/23/2000');
insert INTO vets (name,age,date_of_graduation) VALUES ('Maisy Smith',26,'6/17/2019');
insert INTO vets (name,age,date_of_graduation) VALUES ('Stephanie Mendez',64,'4/5/1981');
insert INTO vets (name,age,date_of_graduation) VALUES ('Jack Harkness',38,'6/8/2008');

-- insert into specializations 
insert INTO  specializations (vet_id,species_id) VALUES (1,1);
insert INTO  specializations (vet_id,species_id) VALUES (3,1);
insert INTO  specializations (vet_id,species_id) VALUES (3,2);
insert INTO  specializations (vet_id,species_id) VALUES (4,2);


