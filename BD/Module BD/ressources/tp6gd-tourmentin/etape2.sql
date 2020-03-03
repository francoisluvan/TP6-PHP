/* Étape 2 - Interrogation des données */

-- 1. Nom et prénom des adhérents n'ayant pas payé leur cotisation de 2017

-- TODO...

/* Résultat attendu :
	  nom   |  prenom   
	--------+-----------
	 frantz | paul
	 rondet | audrey
	 morue  | dominique
	 turbot | pascale
	(4 rows)
*/


-- 2. Pour chaque adhérent, donnez son nom et le montant moyen des
--  cotisations qu'il a payé depuis son adhésion.
-- (Résultats ordonnés sur le nom des adhérents malades)

-- TODO...

/* Résultat attendu :
	   nom    | cotis_moy 
	----------+-----------
	 aflau    |    113.75
	 bar      |    122.50
	 boucher  |    116.25
	 boulle   |    115.00
	 colin    |    121.67
	 crabe    |    131.00
	 crevette |    122.50
	 frantz   |    111.67
	 garnier  |    122.50
	 guy      |    118.33
	 limande  |    131.00
	 maire    |    113.75
	 merlu    |    122.50
	 michal   |    118.33
	 morue    |    131.00
	 rondet   |    122.50
	 rousseau |    111.67
	 saumon   |    131.00
	 turbot   |    131.00
	(19 rows)
*/


-- 3. Numéro et nom des adhérents pour lesquels le montant des cotisations est
--  le moins élevé pour l'année 2017

-- TODO...

/* Résultat attendu :
	 numadh |   nom    
	--------+----------
	      6 | rousseau
	      7 | frantz
	      9 | boulle
	(3 rows)
*/

-- 4. Pour chaque bateau, son nom et le nombre de skippers qui l'ont choisi
-- pour une activité

-- TODO...

/* Résultat attendu :
	 numbat |       nombat       | nbfois 
	--------+--------------------+--------
	      2 | imagine            |      5
	      5 | évasion            |      5
	      6 | cauchemar des mers |      3
	      4 | intermède          |      3
	      1 | le renard          |      5
	      3 | rêve des iles      |      3
	(6 rows)
*/

-- 5. Pour chaque type d'activité : nombre d'activité passées et nombre
--  d'adhérents qui y ont participé comme équipiers.

-- TODO...

/* Résultat attendu :
	 typeact | nbact | nbequ 
	---------+-------+-------
	 rallye  |     5 |    53
	 sortie  |     8 |    52
	(2 rows)
*/

-- 6. Pour chaque type d'activité : nombre d'activité passées et
--  nombre de bateaux qui y ont été engagés

-- TODO...

/* Résultat attendu :
	 typeact | nbact | nbbat 
	---------+-------+-------
	 rallye  |     5 |    12
	 sortie  |     8 |    12
	(2 rows)
*/

-- 7. Informations sur les activités passées où au moins trois chefs de bord
--  se sont inscrits
-- (Résultats ordonnés sur la date de début de ces activités)

-- TODO...

/* Résultat attendu :
	 numact | typeact | depart | arrivee | datedebut  |  datefin   
	--------+---------+--------+---------+------------+------------
	      2 | rallye  | Hyeres | Hyeres  | 2016-07-06 | 2016-07-08
	     12 | rallye  | Nice   | Cannes  | 2017-08-01 | 2017-08-01
	      6 | sortie  | Toulon | Toulon  | 2017-09-02 | 2017-09-12
	(3 rows)
*/

-- 8. Noms des skippers qui ont été membre d'équipage pour au moins trois
--  activités passées

-- TODO...

/* Résultat attendu :
	  nom   
	--------
	 maire
	 guy
	 rondet
	(3 rows)
*/


-- 9. Total des points obtenus par chaque bateau ayant participé au rallye n°2
-- (Résultats classés par numéro de bateau)

-- TODO...

/* Résultat attendu :
	 numbat | sum 
	--------+-----
	      4 |   8
	      5 |   8
	      6 |   8
	(3 rows)
*/


-- 10. Requête permettant d'afficher le résultat suivant :
/*
 numbat |       nombat       | agence_loc | proprio 
--------+--------------------+------------+---------
      1 | le renard          |            | merlu
      2 | imagine            | plaisance  | 
      3 | rêve des iles      | plaisance  | 
      4 | intermède          | nauticloc  | 
      5 | évasion            | nauticloc  | 
      6 | cauchemar des mers |            | limande
(6 rows)
*/

-- TODO...


