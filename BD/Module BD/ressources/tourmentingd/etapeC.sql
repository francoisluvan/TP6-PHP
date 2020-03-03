\i drop.sql
\i create.sql

INSERT INTO adherent(numadh,nom,prenom,fonction,skipper) values(1,'toto','jules','autre','oui');
INSERT INTO adherent(numadh,nom,prenom,fonction,skipper) values(2,'asterix','obelix','president','oui');
--------------------
INSERT INTO activite values(1,'sortie','Toulon','Ajaccio','10/08/2016','15/08/2016');
--------------------
INSERT INTO bateau values(1,'l''étoile des mers',15,null,10);
INSERT into bateau values(2,'flying blue',15,'voilier',6);
--------------------
INSERT into chefdebord values(1,1,1);
