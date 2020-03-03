SET datestyle TO european;

/*____________________________________________________________________________

				A) Test des contraintes d'intégrité 1 à 5
___________________________________________________________________________________*/

/*---------------------------------------------------------------------------------
	Test de la contrainte d'intégrité CI1 :
	Dans ADHERENT, l'attribut fonction prend ses valeurs dans l'ensemble
	{'president','vice-president','tresorier','secretaire','membre actif','autre}
----------------------------------------------------------------------------------*/
INSERT INTO adherent VALUES (1,'toto','jules','baroudeur');
/* Résultat attendu :
	ERROR:  new row for relation "adherent" violates check constraint ...
*/

/*---------------------------------------------------------------------------------
	Test de la contrainte d'intégrité CI2 :
	Dans ADHERENT, l'attribut skipper prend ses valeurs dans l'ensemble 
	{'oui','non'}
----------------------------------------------------------------------------------*/
INSERT INTO adherent VALUES (1,'toto','jules','president','grenoble',null,'not');
/* Résultat attendu :
	ERROR:  new row for relation "adherent" violates check constraint ...
*/

/*---------------------------------------------------------------------------------
	Test de la contrainte d'intégrité CI3 :
	Dans ACTIVITE, l'attribut typeact prend ses valeurs dans l'ensemble
	{'sortie','rallye'}
----------------------------------------------------------------------------------*/
INSERT INTO activite VALUES (1,'dodo');
/* Résultat attendu :
	ERROR:  new row for relation "activite" violates check constraint ...
*/

/*---------------------------------------------------------------------------------
	Test de la contrainte d'intégrité CI4 :
	Dans COTISATION, l'attribut paye prend ses valeurs dans l'ensemble
	{'oui','non'}
----------------------------------------------------------------------------------*/
INSERT INTO cotisation VALUES (1,2017,100,'not');
/* Résultat attendu :
	ERROR:  new row for relation "cotisation" violates check constraint ...
*/

/*---------------------------------------------------------------------------------
	Test de la contrainte d'intégrité CI5 :
	Dans BATEAU, l'attribut nbplaces doit être >= 5
----------------------------------------------------------------------------------*/
INSERT INTO BATEAU VALUES (1,'a flot',2,'barque',3);
/* Résultat attendu :
	ERROR:  new row for relation "bateau" violates check constraint ...
*/

/*--------------------------------------------------------------------------------------
	SI VOUS N'AVEZ PAS PASSÉ AVEC SUCCÈS LES TESTS PRÉCÉDENTS :
	Corrigez puis regénérez votre schéma, et recommencez ensuite à partir du début du A) 
----------------------------------------------------------------------------------------*/


/*_________________________________________________________________________________

				B) Test des contraintes d'intégrité 6 à 8
___________________________________________________________________________________*/
  
/*---------------------------------------------------------------------------------
	TODO => Exécution du fichier testsEtapeB.sql (\i testsEtapeB.sql)
		qui régénère le schéma et ajoute quelques données de test
----------------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------------
	Test de la contrainte d'intégrité test CI6 :
	Dans CHEFDEBORD, l'attribut numadh prend ses valeurs parmi celles
	de l'attribut numadh de ADHERENT
----------------------------------------------------------------------------------*/
INSERT INTO chefdebord VALUES (1,3,1);
/* Résultat attendu :
	ERROR:  insert or update on table "chefdebord" violates foreign key constraint ...
	DETAIL:  Key (numadh)=(3) is not present in table "adherent
	
/!\ ATTENTION : Si vous avez "DETAIL:  Key (numact)=(1) is not present in table "activite".", 
c'est que les instructions de testsEtapeB.sql n'ont pas été exécutés correctement ! (voir un peu plus haut)
*/

/*---------------------------------------------------------------------------------
	Test de la contrainte d'intégrité CI7 :
	Dans CHEFDEBORD, l'attribut numact prend ses valeurs parmi celles
	de l'attribut numact de ACTIVITE
----------------------------------------------------------------------------------*/
INSERT INTO chefdebord VALUES (2,1,1);
/* Résultat attendu :
	ERROR:  insert or update on table "chefdebord" violates foreign key constraint ...
	DETAIL:  Key (numact)=(2) is not present in table "activite".
*/

/*---------------------------------------------------------------------------------
	Test de la contrainte d'intégrité CI8 :
	Dans CHEFDEBORD, l'attribut numbat prend ses valeurs parmi celles
	de l'attribut numbat de BATEAU
----------------------------------------------------------------------------------*/
INSERT INTO chefdebord VALUES (1,1,2);
/* Résultat attendu :
	ERROR:  insert or update on table "chefdebord" violates foreign key constraint ...
	DETAIL:  Key (numbat)=(2) is not present in table "bateau".
*/

/*--------------------------------------------------------------------------------------
	SI VOUS N'AVEZ PAS PASSÉ AVEC SUCCÈS LES TESTS PRÉCÉDENTS :
	Corrigez puis regénérez votre schéma, et recommencez ensuite à partir du début du B) 
----------------------------------------------------------------------------------------*/


/*_________________________________________________________________________________

				C) Test des contraintes d'intégrité 9 à 10
___________________________________________________________________________________*/

/*------------------------------------------------------------------------
	TODO => Exécution du fichier testsEtapeC.sql (\i testsEtapeC.sql)
		qui régénère le schéma et ajoute quelques données de test
----------------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------------
	Test de la contrainte d'intégrité CI9 :
	Dans CHEFDEBORD, (numact, numadh) détermine numbat
----------------------------------------------------------------------------------*/
INSERT INTO chefdebord VALUES (1,1,2);
/* Résultat attendu :
	ERROR:  duplicate key value violates unique constraint 'chefdebord_pkey'
	DETAIL:  Key (numact, numadh)=(1, 1) already exists.
*/

/*---------------------------------------------------------------------------------
	Test de la contrainte d'intégrité CI10 :
	Dans CHEFDEBORD, (numact, numbat) est unique
---------------------------------------------------------------------------------*/
INSERT INTO chefdebord VALUES (1,2,1);
/* Résultat attendu :
	ERROR:  duplicate key value violates unique constraint 'chefdebord_numbat_numact_key'
	DETAIL:  Key (numact, numbat)=(1, 1) already exists.
*/

/*--------------------------------------------------------------------------------------
	SI VOUS N'AVEZ PAS PASSÉ AVEC SUCCÈS LES TESTS PRÉCÉDENTS :
	Corrigez puis regénérez votre schéma, et recommencez ensuite à partir du début du C) 
----------------------------------------------------------------------------------------*/


/*_________________________________________________________________________________

				D) Test des contraintes d'intégrité 11 à 13
___________________________________________________________________________________*/

/*---------------------------------------------------------------------------------
	TODO => Exécution du fichier testsEtapeD.sql (\i testsEtapeD.sql)
		qui régénère le schéma et ajoute quelques données de test
----------------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------------
	Test de la contrainte d'intégrité CI11 :
	Dans EQUIPAGE, l'attribut numadh prend ses valeurs parmi celles
	de l'attribut numadh de ADHERENT
----------------------------------------------------------------------------------*/
INSERT INTO equipage VALUES (1,16,1);
/* Résultat attendu :
	ERROR:  insert or update on table "equipage" violates foreign key constraint ...
	DETAIL:  Key (numadh)=(16) is not present in table "adherent".
*/

/*---------------------------------------------------------------------------------
	Test de la contrainte d'intégrité CI12 :
	Dans EQUIPAGE, (numact, numbat) prend ses valeurs parmi celles
	du couple (numacat, numbat) de CHEFDEBORD
----------------------------------------------------------------------------------*/
INSERT INTO equipage VALUES (1,4,2);
/* Résultat attendu :
	ERROR:  insert or update on table "equipage" violates foreign key constraint ...
	DETAIL:  Key (numact, numbat)=(1, 2) is not present in table "chefdebord".
*/

/*---------------------------------------------------------------------------------
	Test de la contrainte d'intégrité CI13 :
	Dans EQUIPAGE, (numact, numadh) détermine numbat
----------------------------------------------------------------------------------*/
INSERT INTO equipage VALUES (1,5,1);
/* Résultat attendu :
	ERROR:  duplicate key value violates unique constraint ...
	DETAIL:  Key (numact, numadh)=(1, 5) already exists.
*/

/*--------------------------------------------------------------------------------------
	SI VOUS N'AVEZ PAS PASSÉ AVEC SUCCÈS LES TESTS PRÉCÉDENTS :
	Corrigez puis regénérez votre schéma, et recommencez ensuite à partir du début du D) 
----------------------------------------------------------------------------------------*/


/*_________________________________________________________________________________

				E) Test des contraintes d'intégrité 14 à 24
___________________________________________________________________________________*/

/*------------------------------------------------------------------------
	TODO => Exécution du fichier testsEtapeE.sql (\i testsEtapeE.sql)
		qui régénère le schéma et ajoute quelques données de test
		
	Puis au fur et à mesure des tests : dès que vous avez une erreur sur
	un test, corrigez votre schéma et réexecutez le fichier testsEtapeE.sql
	et vérifiez que les tests se déroulent comme prévu.
----------------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------------
	Test de la contrainte d'intégrité CI14 :
	Dans PROPRIETAIRE, l'attribut numbat prend ses valeurs parmi celles
	de l'attribut numbat de BATEAU
----------------------------------------------------------------------------------*/
INSERT INTO proprietaire VALUES (3, 3);
/* Résultat attendu :
	ERROR:  insert or update on table "proprietaire" violates foreign key constraint ...
	DETAIL:  Key (numbat)=(3) is not present in table "bateau".
*/

/*---------------------------------------------------------------------------------
	Test de la contrainte d'intégrité CI15 :
	Dans LOCATION, l'attribut numbat prend ses valeurs parmi celles
	de l'attribut numbat de BATEAU
----------------------------------------------------------------------------------*/
INSERT INTO loueur VALUES (3, 'plaisance');
/* Résultat attendu :
	ERROR:  insert or update on table "loueur" violates foreign key constraint ...
	DETAIL:  Key (numbat)=(3) is not present in table "bateau".
*/

/*---------------------------------------------------------------------------------
	Test de la contrainte d'intégrité CI16 :
	Dans COTISATION, l'attribut numadh prend ses valeurs parmi celles
	de l'attribut numadh de ADHERENT
----------------------------------------------------------------------------------*/
INSERT INTO cotisation VALUES (15, 2017, 300, 'non');
/* Résultat attendu :
	ERROR:  insert or update on table "cotisation" violates foreign key constraint ...
	DETAIL:  Key (numadh)=(15) is not present in table "adherent".
*/

/*---------------------------------------------------------------------------------
	Test de la contrainte d'intégrité CI17 :
	Dans REGATE, l'attribut numact prend ses valeurs parmi celles
	de l'attribut numact de ACTIVITE
----------------------------------------------------------------------------------*/
INSERT INTO regate VALUES (5, 1, null);
/* Résultat attendu :
	ERROR:  insert or update on table "regate" violates foreign key constraint ...
	DETAIL:  Key (numact)=(5) is not present in table "activite".
*/

/*---------------------------------------------------------------------------------
	Test de la contrainte d'intégrité CI18 :
	Dans RESULTAT, (numact, numregate) prend ses valeurs parmi celles
	du couple (numact, numregate) de REGATE
----------------------------------------------------------------------------------*/
INSERT INTO resultat(numbat,numact,numregate) VALUES (2, 2, 3);
/* Résultat attendu :
	ERROR:  insert or update on table "resultat" violates foreign key constraint ...
	DETAIL:  Key (numact, numregate)=(2, 3) is not present in table "regate".
*/

/*---------------------------------------------------------------------------------
	Test de la contrainte d'intégrité CI19 :
	Dans RESULTAT, (numact, numbat) prend ses valeurs parmi celles
	du couple (numact, numbat) de CHEFDEBORD
----------------------------------------------------------------------------------*/
INSERT INTO resultat(numbat,numact,numregate) VALUES (3, 2, 1);
/* Résultat attendu :
	ERROR:  insert or update on table "resultat" violates foreign key constraint ...
	DETAIL:  Key (numact, numbat)=(2, 3) is not present in table "chefdebord".
*/

/*---------------------------------------------------------------------------------
	Test de la contrainte d'intégrité CI20 :
	Dans ACTIVITE, la valeur de l'attribut datedebutt doit être inférieure ou
	égale à celle de l'attribut datefin
----------------------------------------------------------------------------------*/
INSERT INTO activite VALUES (30, 'sortie', 'Nantes', 'Nantes', '01/08/2013', '01/08/2012');
/* Résultat attendu :
	ERROR:  new row for relation "activite" violates check constraint ...
	DETAIL:  Failing row contains (30, sortie, Nantes, Nantes, 2013-08-01, 2012-08-01).
*/

/*---------------------------------------------------------------------------------
	Test de la contrainte d'intégrité CI21 :
	Dans CHEFDEBORD, l'attribut numbat ne peut pas être NULL
----------------------------------------------------------------------------------*/
INSERT INTO chefdebord VALUES (2, 1);
/* Résultat attendu :
	ERROR:  null value in column "numbat" violates not-null constraint
	DETAIL:  Failing row contains (2, 1, null).
*/

/*---------------------------------------------------------------------------------
	Test de la contrainte d'intégrité CI22 :
	Dans EQUIPAGE, l'attribut numbat ne peut pas être NULL
----------------------------------------------------------------------------------*/
INSERT INTO equipage VALUES (2, 3);
/* Résultat attendu :
	ERROR:  null value in column "numbat" violates not-null constraint
	DETAIL:  Failing row contains (2, 3, null).
*/

/*---------------------------------------------------------------------------------
	Test de la contrainte d'intégrité CI23 :
	Dans ADHERENT, l'attribut skipper a pour valeur par défaut 'non' et
	l'attribut anneeadh a pour valeur par défaut l'année en cours
----------------------------------------------------------------------------------*/
INSERT INTO adherent (numadh, nom, prenom, fonction) VALUES
((SELECT max(numadh)+1 FROM adherent), 'duras', 'marguerite', 'vice-president');
/* Résultat attendu :
	INSERT 0 1
*/

SELECT * FROM adherent WHERE numadh = (SELECT max(numadh) FROM adherent);
/* Résultat attendu :
	 numadh |  nom  |   prenom   |    fonction    | adresse | telephone | skipper | anneeadh 
	--------+-------+------------+----------------+---------+-----------+---------+----------
	      9 | duras | marguerite | vice-president |         |           | non     |     2018
	(1 row)
*/

/*---------------------------------------------------------------------------------
	Test de la contrainte d'intégrité CI24 :
	Dans COTISATION, l'attribut paye a pour valeur par défaut 'non'
----------------------------------------------------------------------------------*/
INSERT INTO cotisation VALUES (1, 2017);
/* Résultat attendu :
	INSERT 0 1
*/

SELECT * FROM cotisation where numadh = 1;
/* Résultat attendu :
	 numadh | anneecot | montant | paye 
	--------+----------+---------+------
	      1 |     2017 |         | non
	(1 row)
*/

/*--------------------------------------------------------------------------------------
	SI VOUS N'AVEZ PAS PASSÉ AVEC SUCCÈS LES TESTS PRÉCÉDENTS :
	Corrigez puis regénérez votre schéma, et recommencez ensuite à partir du début du E) 
----------------------------------------------------------------------------------------*/

