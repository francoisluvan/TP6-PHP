/* Étape 3 – Vues et manipulations de ces vues */

-- 1-a) Création de la vue VParticipations(id, nom, nbfois_cdb, nfois_equ)

-- TODO ...

/* Résultat attendu :
	CREATE VIEW
*/


-- 1-b) Affichage de son contenu

-- TODO ...

/* Résultat attendu :
	 id |   nom    | nbfois_cdb | nbfois_equ 
	----+----------+------------+------------
	  1 | aflau    |          8 |          1
	  2 | maire    |          3 |          6
	  3 | boucher  |          0 |          9
	  4 | michal   |          0 |          9
	  5 | guy      |          3 |          7
	  6 | rousseau |          0 |          8
	  7 | frantz   |          0 |          7
	  8 | colin    |          0 |          8
	  9 | boulle   |          0 |          7
	 10 | rondet   |          3 |          4
	 11 | garnier  |          0 |          6
	 12 | bar      |          0 |          5
	 13 | merlu    |          7 |          1
	 14 | crevette |          0 |          7
	 15 | morue    |          0 |          6
	 16 | saumon   |          0 |          3
	 17 | limande  |          0 |          4
	 18 | turbot   |          0 |          4
	 19 | crabe    |          0 |          3
	(19 rows)
*/

-- 1-c) A partir de cette vue, nom de l'adhérent qui a participé au plus grand nombre d'activités

-- TODO ...

/* Résultat attendu :
	 nom 
	-----
	 guy
	(1 row)
*/

-- 1-d) En s'aidant de la vue VParticipations, nom des skippers qui ont participé 
--  à au moins 4 activités passées, soit comme chef de bord, soit comme équipier

-- TODO ...

/* Résultat attendu :
	  nom   
	--------
	 aflau
	 maire
	 guy
	 rondet
	 merlu
	(5 rows)
*/

-- 2-a) Création de la vue VSuiviCotisation2017(nom, adresse, montant, paye)

-- TODO ...

/* Résultat attendu :
	CREATE VIEW
*/

-- 2-b) Affichez les informations données par cette vue seulement pour les adhérents
--  qui n'ont pas réglé leur cotisation en 2017

-- TODO ...

/* Résultat attendu :
	  nom   |  adresse  | montant | paye 
	--------+-----------+---------+------
	 frantz | st-égrève |     115 | non
	 rondet | grenoble  |     125 | non
	 morue  | grenoble  |     132 | non
	 turbot | vif       |     132 | non
	(4 rows)
*/

