/* Étape 4 - Mise à jour des données de la BD Tourmentin */

-- 1-a) Création de cette nouvelle activité pour le Réveille 2017
--  (le numéro d’activité doit être calculé automatiquement)

-- TODO ...

/* Résultat attendu :
	INSERT 0 1
*/


-- 1-b) Création de 6 régates pour ce rallye
-- (Laisser à null la force du vent)

-- TODO ...

/* Résultat attendu :
	INSERT 0 6
*/


-- 1-c) Inscription de de 'aflau' comme chef de bord de ce rallye sur le bateau 1
-- & Inscription de de maire comme chef de bord de ce rallye sur le bateau 2

-- TODO ...

/* Résultat attendu :
	INSERT 0 1
	INSERT 0 1
*/


-- 1-d) Inscription en une seule instruction des adhérents de numéro 3 à 6 sur le bateau de 'aflau'

-- TODO ...

/* Résultat attendu :
	INSERT 0 4
*/


-- 1-e) Inscription en une seule instruction des adhérents de numéro 7 à 10 sur le bateau de 'maire'

-- TODO ...

/* Résultat attendu :
	INSERT 0 4
*/


-- 1-f) Vérification : Affichage de la table equipage pour ce rallye
--  (Résultats ordonnés par bateau)

-- TODO ...

/* Résultat attendu :
	 numact | numadh | numbat 
	--------+--------+--------
	     14 |      3 |      1
	     14 |      4 |      1
	     14 |      5 |      1
	     14 |      6 |      1
	     14 |      7 |      2
	     14 |      8 |      2
	     14 |      9 |      2
	     14 |     10 |      2
	(8 rows)
*/


-- 1-g) Insertion en une seule instruction des lignes nécessaires pour que
-- les résultats des concurrents puissent être enregistrés
-- (les points et le classement des bateaux ne doit pas être renseigné)

-- TODO ...

/* Résultat attendu :
	INSERT 0 12
*/


-- 1-h) Vérification : Affichage de la table resultat pour ce nouveau rallye
--  (Résultats ordonnés par bateau)

-- TODO ...

/* Résultat attendu :
	 numbat | numact | numregate | classement | points 
	--------+--------+-----------+------------+--------
	      1 |     14 |         1 |            |       
	      2 |     14 |         1 |            |       
	      1 |     14 |         2 |            |       
	      2 |     14 |         2 |            |       
	      1 |     14 |         3 |            |       
	      2 |     14 |         3 |            |       
	      1 |     14 |         4 |            |       
	      2 |     14 |         4 |            |       
	      1 |     14 |         5 |            |       
	      2 |     14 |         5 |            |       
	      1 |     14 |         6 |            |       
	      2 |     14 |         6 |            |       
	(12 rows)
*/


-- 2-a) Écrivez toutes les instructions permettant de prendre en compte l'annulation du Rallye du Réveillon 2017

-- TODO ...

/* Résultat attendu :
	DELETE 12
	DELETE 6
	DELETE 8
	DELETE 2
	DELETE 1
*/


-- 2-b) Vérifiez que ce rallye ne figure plus parmi les activités commençant en 2017

-- TODO ...

/* Résultat attendu :
	 numact | typeact |   depart   |  arrivee   | datedebut  |  datefin   
	--------+---------+------------+------------+------------+------------
	      8 | rallye  | Toulon     | Toulon     | 2017-02-05 | 2017-02-05
	     13 | rallye  | Monaco     | Monaco     | 2017-07-01 | 2017-07-01
	     12 | rallye  | Nice       | Cannes     | 2017-08-01 | 2017-08-01
	     11 | sortie  | Bastia     | Ajaccio    | 2017-08-10 | 2017-08-15
	      6 | sortie  | Toulon     | Toulon     | 2017-09-02 | 2017-09-12
	     10 | sortie  | Macinaggio | Centuri    | 2017-09-14 | 2017-09-14
	      9 | sortie  | Brest      | Concarneau | 2017-09-14 | 2017-09-14
	      7 | sortie  | Toulon     | Toulon     | 2017-09-14 | 2017-09-14
	(8 rows)
*/


-- 3-a) Affichez le numéro, le nom et le prénom des équipiers de 'merlu' pour l’activité 13.

-- TODO ...

/* Résultat attendu :
	 numadh |   nom    |  prenom   
	--------+----------+-----------
	     14 | crevette | sylvie
	     15 | morue    | dominique
	     16 | saumon   | claude
	     17 | limande  | thierry
	(4 rows)
*/


-- 3-b) Inscription de 'rondet' comme chef de bord du bateau 'évasion' pour  l'activité 13

-- TODO ...

/* Résultat attendu :
	INSERT 0 1
*/


-- 3-c) Remplacement dans la table resultat du bateau 'rêve des iles' par le  bateau 'évasion' pour l'activité 13

-- TODO ...

/* Résultat attendu :
	UPDATE 2
*/


-- 3-d) Remplacement dans la table equipage du bateau 'rêve des iles' par le  bateau 'évasion' pour l'activité 13

-- TODO ...

/* Résultat attendu :
	UPDATE 4
*/


-- 3-e) Annulation de la participation de 'merlu' comme chef de bord pour l'activité 13

-- TODO ...

/* Résultat attendu :
	DELETE 1
*/


-- 3-f) Vérification : nom et prénom des équipiers de 'rondet' pour l'activité 13

-- TODO ...

/* Résultat attendu :
	   nom    |  prenom   
	----------+-----------
	 crevette | sylvie
	 morue    | dominique
	 saumon   | claude
	 limande  | thierry
	(4 rows)
*/

