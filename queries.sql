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
