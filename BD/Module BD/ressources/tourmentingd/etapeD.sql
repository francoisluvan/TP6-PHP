\i drop.sql
\i create.sql

INSERT INTO adherent(numadh,nom,prenom,fonction,skipper) values(1,'toto','jules','autre','oui');
INSERT INTO adherent(numadh,nom,prenom,fonction,skipper) values(2,'asterix','obelix','president','oui');
INSERT INTO adherent(numadh,nom,prenom,fonction,skipper) values(3,'spirou','fantasio','tresorier','non');
INSERT INTO adherent(numadh,nom,prenom,fonction,skipper) values(4,'corto','maltese','autre','oui');
INSERT INTO adherent(numadh,nom,prenom,fonction,skipper) values(5,'michel','vaillant','membre actif','non');
--------------------
INSERT INTO activite values(1,'sortie','Toulon','Ajaccio','10/08/2016','15/08/2016');
--------------------
INSERT INTO bateau values(1,'l''étoile des mers',15,null,10);
INSERT into bateau values(2,'flying blue',15,'voilier',6);
--------------------
INSERT INTO chefdebord values(1,1,1);
--------------------
INSERT INTO equipage values(1,2,1);
INSERT INTO equipage values(1,5,1);
