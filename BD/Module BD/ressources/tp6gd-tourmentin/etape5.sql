/* Étape 5 – Modification du schéma de la base */

-- 3) Instruction permettant de modifier le schéma de la BD sans modification du fichier create.sql

-- TODO ...

/* Résultat attendu :
	ALTER TABLE
*/


-- 4-a) Fixer à 100€ par jour le prix de location des bateaux de moins
--  de 7 places et à 120€ par jour le prix des bateaux de 7 places et plus

-- TODO ...

/* Résultat attendu :
	UPDATE 1
	UPDATE 3
*/


-- 4-b) Affichage du coût généré par la location pour les activités commençant après le 1er juin 2016
--  et finissant avant le 1er septembre 2016, et où au moins un bateau a été loué
--  (Résultats triés du coût de location le plus cher à celui le moins cher)

-- TODO ...

/* Résultat attendu :
 numact | cout_loc 
--------+----------
      2 |      720
      4 |      600
      1 |      300
      5 |      240
(4 rows)
*/

