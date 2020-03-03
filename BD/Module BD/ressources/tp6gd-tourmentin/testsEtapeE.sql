\i drop.sql
\i create.sql

INSERT INTO adherent (numadh,nom,prenom,fonction,skipper) VALUES (1,'toto','jules','autre','oui'),
	(2,'asterix','obelix','president','oui'),
	(3,'spirou','fantasio','tresorier','non'),
	(4,'corto','maltese','autre','oui'),
	(5,'michel','vaillant','membre actif','non'),
	(6,'titi','grominet','autre','non'),
	(7,'boule','bill','autre','non'),
	(8,'achille','talon','membre actif','non');
--------------------
INSERT INTO activite VALUES (1,'sortie','Toulon','Ajaccio','10/08/2016','15/08/2016');
INSERT INTO activite VALUES (2,'rallye','Bastia','Bastia','15/09/2016','15/09/2016');
--------------------
INSERT INTO bateau VALUES (1,'l''étoile des mers',15,null,10);
INSERT into bateau VALUES (2,'flying blue',15,'voilier',6);
--------------------
INSERT INTO chefdebord VALUES (1,1,1);
INSERT INTO chefdebord VALUES (2,1,1);
INSERT INTO chefdebord VALUES (2,4,2);
--------------------
INSERT INTO equipage VALUES (1,2,1);
INSERT INTO equipage VALUES (1,5,1);
INSERT INTO equipage VALUES (2,2,1);
INSERT INTO equipage VALUES (2,3,1);
INSERT INTO equipage VALUES (2,5,2);
INSERT INTO equipage VALUES (2,6,2);
--------------------
INSERT INTO agence VALUES ('plaisance','0494952014',null,'Marseille');
--------------------
INSERT INTO regate VALUES (2,1,null);
INSERT INTO regate VALUES (2,2,null);


