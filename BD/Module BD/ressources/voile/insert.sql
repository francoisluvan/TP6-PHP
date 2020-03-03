SET datestyle TO european;

-- insertion dans ADHERENT 
-- (numadh, nom,prenom,fonction,adresse,telephone,skipper,anneeadh)
insert into ADHERENT values
		(1,'aflau','jean','président','grenoble','0476441250','oui',2016); 
insert into ADHERENT values
		(2,'maire','pierre','vice-président','grenoble','0476501265','oui',2016); 
insert into ADHERENT values
		(3,'boucher','anne','vice-président','merlan','0476152360','non',2016); 
insert into ADHERENT values
		(4,'michal','véronique','secrétaire','grenoble','0476451252','non',2017); 
insert into ADHERENT values
		(5,'guy','fabien','trésorier','meylan','0476441250','oui',2017); 
insert into ADHERENT values
		(6,'rousseau','julien','membre actif','veurey','0476531256','non',2017); 
insert into ADHERENT values
		(7,'frantz','paul','membre actif','st-egreve','0476531278','non',2017); 
insert into ADHERENT values
		(8,'colin','serge','membre actif','st-ismier','0476531237','non',2017); 
insert into ADHERENT values
		(9,'boulle','yves','membre actif','merlan','0476531586','non',2017); 
insert into ADHERENT values
		(10,'rondet','audrey','membre actif','grenoble','0476527130','oui',2018); 
insert into ADHERENT values
		(11,'garnier','christophe','autre','echirolles','0476852130','non',2018); 
insert into ADHERENT values
		(12,'bar','thierry','autre','st-egreve','0476535678','non',2018); 
insert into ADHERENT values
		(13,'merlu','christian','autre','veurey','0476371852','oui',2018); 
insert into ADHERENT values
		(14,'crevette','sylvie','autre','st-ismier','0476458293','non',2018); 

-- insertion dans BATEAU (numbat,nombat,taille,typebat,nbplaces)
insert into BATEAU values(1,'le renard',11.80,'pouvreau',6); 
insert into BATEAU values(2,'imagine',11.30,'selection',6); 
insert into BATEAU values(3,'reve des iles',14.50,'sun fast',8); 
insert into BATEAU values(4,'intermede',11.80,'sun magic',10); 
insert into BATEAU values(5,'evasion',12.10,'gyps 402',7); 

-- insertion dans ACTIVITE (numact, typeact,depart,arrivee,datedebut,datefin)
insert into ACTIVITE values(1,'sortie','Hyeres','Hyeres','08/04/2019','10/04/2019'); 
insert into ACTIVITE values(2,'sortie','Hyeres','Hyeres','06/05/2019','08/05/2019'); 
insert into ACTIVITE values(3,'sortie','Saint Tropez','Saint Tropez','08/06/2019','10/06/2019'); 
insert into ACTIVITE values(4,'sortie','Saint Tropez','Hyeres','11/06/2019','13/06/2019'); 
insert into ACTIVITE values(5,'rallye','Hyeres','Saint Tropez','16/06/2019','16/06/2019'); 

-- insertion dans COTISATION (numadh, anneecot,montant, paye)
insert into COTISATION values(1,2016, 100, 'oui'); 
insert into COTISATION values(1,2017, 110, 'oui'); 
insert into COTISATION values(1,2018, 120, 'non'); 
insert into COTISATION values(1,2019, 140, 'non'); 
insert into COTISATION values(2,2016, 100, 'oui'); 
insert into COTISATION values(2,2017, 110, 'oui'); 
insert into COTISATION values(2,2018, 120, 'oui'); 
insert into COTISATION values(2,2019, 140, 'oui'); 
insert into COTISATION values(3,2016, 100, 'oui'); 
insert into COTISATION values(3,2017, 120, 'oui'); 
insert into COTISATION values(3,2018, 120, 'non');
insert into COTISATION values(3,2019, 140, 'non'); 
insert into COTISATION values(4,2017, 110, 'non'); 
insert into COTISATION values(4,2018, 120, 'non');
insert into COTISATION values(4,2019, 140, 'non');  
insert into COTISATION values(5,2017, 110, 'oui'); 
insert into COTISATION values(5,2018, 120, 'oui'); 
insert into COTISATION values(5,2019, 140, 'oui'); 
insert into COTISATION values(6,2017, 110, 'oui'); 
insert into COTISATION values(6,2018, 120, 'oui'); 
insert into COTISATION values(6,2019, 140, 'oui'); 
insert into COTISATION values(7,2017, 110, 'oui');
insert into COTISATION values(7,2018, 120, 'non'); 
insert into COTISATION values(7,2019, 140, 'non'); 
insert into COTISATION values(8,2017, 110, 'oui'); 
insert into COTISATION values(8,2018, 120, 'oui'); 
insert into COTISATION values(8,2019, 140, 'non'); 
insert into COTISATION values(9,2017, 110, 'oui'); 
insert into COTISATION values(9,2018, 120, 'non');
insert into COTISATION values(9,2019, 140, 'non'); 
insert into COTISATION values(10,2018, 130, 'oui'); 
insert into COTISATION values(10,2019, 140, 'oui'); 
insert into COTISATION values(11,2018, 130, 'oui'); 
insert into COTISATION values(11,2019, 140, 'non'); 
insert into COTISATION values(12,2018, 130, 'non'); 
insert into COTISATION values(12,2019, 140, 'non'); 
insert into COTISATION values(13,2018, 130, 'non'); 
insert into COTISATION values(13,2019, 140, 'non'); 
insert into COTISATION values(14,2018, 130, 'oui'); 
insert into COTISATION values(14,2019, 140, 'non'); 

-- insertion dans AGENCE (nomagence,telephone,fax,adresse)
insert into  AGENCE values('plaisance','0494952013',null,'Hyeres'); 
insert into  AGENCE values('nautiloc','0494526412',null,'Toulon'); 
insert into  AGENCE values ('capitaine','0494526411',null,'Marseille');

-- insertion dans PROPRIETAIRE (numadh, numbat)
insert into PROPRIETAIRE values(13,1); 

-- insertion dans LOUEUR (nomagence,numbat)
insert into LOUEUR values('nautiloc',4); 
insert into LOUEUR values('plaisance',2); 
insert into LOUEUR values('plaisance',3); 
insert into LOUEUR values('nautiloc',5); 

-- insertion dans CHEFDEBORD (numact,numadh, numbat)
insert into CHEFDEBORD values(1,1,2); 
insert into CHEFDEBORD values(1,10,1); 
insert into CHEFDEBORD values(2,10,3); 
insert into CHEFDEBORD values(2,1,2);
insert into CHEFDEBORD values(3,13,1); 
insert into CHEFDEBORD values(4,5,5); 
insert into CHEFDEBORD values(5,1,5); 
insert into CHEFDEBORD values(5,13,4); 
insert into CHEFDEBORD values(5,10,2);
insert into CHEFDEBORD values(3,10,4);
insert into CHEFDEBORD values(4,10,4);

-- insertion dans EQUIPAGE (numact,numadh, numbat)
insert into EQUIPAGE values(1,2,2); 
insert into EQUIPAGE values(1,3,2); 
insert into EQUIPAGE values(1,4,2); 
insert into EQUIPAGE values(1,5,2); 
insert into EQUIPAGE values(1,6,1); 
insert into EQUIPAGE values(1,7,1); 
insert into EQUIPAGE values(1,8,1); 
insert into EQUIPAGE values(1,9,1); 
insert into EQUIPAGE values(2,3,3); 
insert into EQUIPAGE values(2,8,3); 
insert into EQUIPAGE values(2,5,3); 
insert into EQUIPAGE values(2,9,3); 
insert into EQUIPAGE values(2,11,3); 
insert into EQUIPAGE values(2,7,3); 
insert into EQUIPAGE values(2,2,2);
insert into EQUIPAGE values(2,4,2);
insert into EQUIPAGE values(2,6,2);
insert into EQUIPAGE values(3,2,1); 
insert into EQUIPAGE values(3,12,1); 
insert into EQUIPAGE values(3,14,1); 
insert into EQUIPAGE values(3,8,1); 
insert into EQUIPAGE values(3,6,1); 
insert into EQUIPAGE values(4,3,5); 
insert into EQUIPAGE values(4,4,5); 
insert into EQUIPAGE values(4,7,5); 
insert into EQUIPAGE values(4,9,5); 
insert into EQUIPAGE values(4,1,5); 
insert into EQUIPAGE values(4,11,5); 
insert into EQUIPAGE values(5,3,5); 
insert into EQUIPAGE values(5,4,5); 
insert into EQUIPAGE values(5,5,5); 
insert into EQUIPAGE values(5,6,5); 
insert into EQUIPAGE values(5,8,4); 
insert into EQUIPAGE values(5,9,4); 
insert into EQUIPAGE values(5,11,4); 
insert into EQUIPAGE values(5,12,4); 
insert into EQUIPAGE values(5,2,2);
insert into EQUIPAGE values(5,14,2);
insert into EQUIPAGE values(5,7,2);

-- insertion dans REGATE (numact,numregate, forcevent)
insert into REGATE values(5,1,5); 
insert into REGATE values(5,2,3); 
insert into REGATE values(5,3,4); 

-- insertion dans RESULTAT (numbat, numact,numregate, classement,points)
insert into RESULTAT values(4,5,1,1,2); 
insert into RESULTAT values(4,5,2,2,0); 
insert into RESULTAT values(4,5,3,1,2); 
insert into RESULTAT values(5,5,1,2,0); 
insert into RESULTAT values(5,5,2,1,2); 
insert into RESULTAT values(5,5,3,2,0);
insert into RESULTAT values(2,5,1,3,0);
insert into RESULTAT values(2,5,2,3,0);
insert into RESULTAT values(2,5,3,3,0);
