---------------------------------------------------------------------------
-- A COMPLETER EN PRENANT EN COMPTE LES CONTRAINTES D'INTEGRITE CI1 à CI24
---------------------------------------------------------------------------

SET datestyle TO european;

CREATE TABLE adherent (
	numadh numeric(4),
	nom varchar(10),
	prenom varchar(10),
	fonction varchar(15),
	adresse varchar(40),
	telephone varchar(10),
	skipper char(3),
	anneeadh numeric(4)
);

CREATE TABLE cotisation (
	numadh numeric(4),
	anneecot numeric(4),
	montant numeric,
	paye char(3)
);

CREATE TABLE bateau (
	numbat smallint,
	nombat varchar(20),
	taille numeric(4,2),
	typebat varchar(10),
	nbplaces numeric(4)
);

CREATE TABLE agence (
	nomagence varchar(20),
	telephone varchar(10),
	fax varchar(10),
	adresse varchar(20)
);

CREATE TABLE proprietaire (
	numadh numeric(4),
	numbat smallint
);
	
CREATE TABLE loueur (
	numbat smallint,
	nomagence varchar(20)
);

CREATE TABLE activite (
	numact numeric(4),
	typeact varchar(6),
	depart varchar(10),
	arrivee varchar(10),
	datedebut date,
	datefin date
);

CREATE TABLE chefdebord (
	numact numeric(4),
	numadh numeric(4),
	numbat smallint
);

CREATE TABLE equipage (
	numact numeric(4),
	numadh numeric(4),
	numbat smallint
);

CREATE TABLE regate (
	numact numeric(4),
	numregate smallint,
	forcevent smallint
);

CREATE TABLE resultat (
	numbat smallint,
	numact numeric(4),
	numregate smallint,
	classement smallint,
	points numeric(4)
);
