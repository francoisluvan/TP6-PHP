\i drop.sql
\i create.sql

INSERT INTO adherent (numadh,nom,prenom,fonction,skipper) VALUES (1,'toto','jules','autre','oui'),
	(2,'asterix','obelix','president','oui'),
	(3,'spirou','fantasio','tresorier','non'),
	(4,'corto','maltese','autre','oui'),
	(5,'michel','vaillant','membre actif','non');
--------------------
INSERT INTO activite VALUES (1,'sortie','Toulon','Ajaccio','10/08/2016','15/08/2016');
--------------------
INSERT INTO bateau VALUES (1,'l''étoile des mers',15,null,10);
INSERT INTO bateau VALUES (2,'flying blue',15,'voilier',6);
--------------------
INSERT INTO chefdebord VALUES (1,1,1);
--------------------
INSERT INTO equipage VALUES (1,2,1);
INSERT INTO equipage VALUES (1,5,1);
