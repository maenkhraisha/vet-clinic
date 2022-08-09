/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals  where name like '%mon';
select name from animals where date_of_birth between '1/1/2016' and '1/1/2019';
select name from animals where neutered = '1' and escape_attempts < 3;
select date_of_birth from animals where name = 'Agumon' or name = 'Pikachu';
select name,escape_attempts from animals where weight_kg > 10.5;
select * from animals where neutered = '1';
select * from animals where name != 'Gabumon';
select * from animals where weight_kg >= 10.4 and weight_kg <= 17.3;

select count(*) from animals;
select count(*) from animals where escape_attempts = 0;
select AVG(weight_kg) from animals;
select neutered,MAX(escape_attempts) from animals group by neutered;
select species,min(weight_kg), max(weight_kg) from animals group by species;
select species,avg(escape_attempts) from animals where date_of_birth between '/1/1/1990' and '1/1/2000' group by species;


-- What animals belong to Melody Pond?
SELECT a.name as dog_name,o.full_name as owner_name 
FROM animals a 
INNER JOIN  owners o ON a.owner_id = o.id;

-- List of all animals that are pokemon (their type is Pokemon).
SELECT a.name as dog_name,s.name as type 
FROM animals a 
INNER JOIN  species s ON a.species_id = s.id;

-- List all owners and their animals, remember to include those that don't own any animal.
SELECT a.name as dog_name,o.full_name as owner_name 
FROM animals a 
LEFT JOIN  owners o ON a.owner_id = o.id;

-- How many animals are there per species?
 SELECT count(*),s.name 
 FROM animals a 
 INNER JOIN  species s ON a.species_id = s.id group by s.id;
 
--  List all Digimon owned by Jennifer Orwell.
 SELECT a.name as dog_name,
        o.full_name as owner_name,
        s.name as dog_type
        FROM animals a
        INNER JOIN  owners o  ON a.owner_id = o.id 
        INNER JOIN  species s  ON a.species_id = s.id 
        where s.name = 'Digimon' 
        and o.full_name='Jennifer Orwell';

-- List all animals owned by Dean Winchester that haven't tried to escape.
SELECT a.name as dog_name, o.full_name as owner_name,a.escape_attempts
FROM animals a
INNER JOIN  owners o  ON a.owner_id = o.id 
WHERE a.escape_attempts = 0
AND o.full_name='Dean Winchester';

-- Who owns the most animals?
SELECT max(o.full_name) as owner_name 
FROM animals a 
INNER JOIN  owners o ON a.owner_id = o.id;