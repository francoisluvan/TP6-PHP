create table adherent(
numadh numeric(4),
nom varchar(10),
prenom varchar(10),
fonction varchar(15),
adresse varchar(40),
telephone varchar(10),
skipper char(3),
anneeadh numeric(4));

create table bateau(
numbat numeric(4),
nombat varchar(20),
taille numeric(4,2),
typebat  varchar(10),
nbplaces numeric(2));

create table activite(
numact numeric(4),
typeact varchar(6),
depart varchar(20) ,
arrivee varchar(20) ,
datedebut date,
datefin date);

create table cotisation (
numadh numeric(4),
anneecot numeric(4),
montant numeric(3),
paye char(3));

create table  agence(
nomagence varchar(10),
telephone varchar(10),
fax varchar(10),
adresse varchar(40));

create table proprietaire(
numadh numeric(4),
numbat numeric(4));

create table loueur(
nomagence varchar(10),
numbat numeric(4));

create table chefdebord(
numact numeric(4),
numadh numeric(4),
numbat numeric(4));

create table equipage(
numact numeric(4),
numadh numeric(4),
numbat numeric(4));

create table regate(
numact numeric(4),
numregate numeric(2),
forcevent numeric(2));

create table resultat(
numbat numeric(4),
numact numeric(4),
numregate numeric(2),
classement numeric(2),
points numeric(4));
