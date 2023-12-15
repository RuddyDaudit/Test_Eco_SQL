INSERT INTO utilisateur (pseudo,mdp,nom,prenom,mail,tel,dateNaissance,sexe,pays,ville,dateInscription,dateFin) VALUES ('Nox', 'scepter4', 'Daudit', 'Ruddy', 'rd@gmail.com', '0612152515', '1996-01-01', 'H', 'France', 'Paris', '2019-07-01', '2022-01-02');
INSERT INTO utilisateur (pseudo, mdp, nom, prenom, mail, tel, dateNaissance, sexe, pays, ville, dateInscription) VALUES ('Valkyrie', 'jungle', 'Green', 'Ophelie', 'oped@gmail.com', '0786654356', '1995-05-06', 'F', 'France', 'Paris', '2014-06-03');
INSERT INTO utilisateur (pseudo, mdp, nom, prenom, mail, tel, dateNaissance, sexe, pays, ville, dateInscription) VALUES ('MrNice', 'homra', 'Dituala', 'Kellon', 'kd@gmail.com', '0787657687', '1996-04-05', 'H', 'France', 'Lyon', '2014-05-07');
INSERT INTO utilisateur (pseudo, mdp, nom, prenom, mail, tel, dateNaissance, sexe, pays, ville, dateInscription,dateFin) VALUES ('TenderMan', 'whiteBlood', 'LaFleur', 'Jean-Cristophe', 'jc@gmail.com', '0654768797', '1996-04-05', 'H', 'France', 'Marseille', '2012-04-09','2016-11-11');
INSERT INTO utilisateur (pseudo, mdp, nom, prenom, mail, tel, dateNaissance, sexe, pays, ville, dateInscription) VALUES ('Muza', 'BruceWayneEstBatman', 'Azul', 'Muzamil', 'azulMuea@gmail.com', '0708564386', '1995-08-012', 'H', 'France', 'Lyon', '2015-06-10');
INSERT INTO utilisateur (pseudo, mdp, nom, prenom, mail, tel, dateNaissance, sexe, pays, ville, dateInscription,dateFin) VALUES ('Bayoneta', 'IceQueen', 'Linvany', 'Natsy', 'Linvany@gmail.com', '0654873421', '1996-12-07', 'F', 'France', 'Aubrevilliers', '2015-07-12','2022-01-01');
INSERT INTO utilisateur (pseudo, mdp, nom, prenom, mail, tel, dateNaissance, sexe, pays, ville, dateInscription) VALUES ('Wolverine', 'razorSteven', 'Razor', 'Steven', 'Razor@gmail.com', '0786540908', '1999-01-01', 'H', 'Espagne', 'Madrid', '2012-04-09');
INSERT INTO utilisateur (pseudo, mdp, nom, prenom, mail, tel, dateNaissance, sexe, pays, ville, dateInscription) VALUES ('SuperMandDeVilletaneuse', 'Venom', 'Maluiki', 'Jeremi', 'MaluikiJeremi@gmail.com', '0790765437', '2000-07-05', 'H', 'France', 'Villetaneuse', '2021-12-12');

INSERT INTO ami (amiPseudo,etreAmiPseudo,dateAmitie) VALUES ('Muza', 'Wolverine', '2018-07-02');
INSERT INTO ami (amiPseudo,etreAmiPseudo,dateAmitie) VALUES ('Bayoneta', 'Valkyrie', '2016-03-02');
INSERT INTO ami (amiPseudo,etreAmiPseudo,dateAmitie) VALUES ('TenderMan', 'MrNice', '2017-09-10');
INSERT INTO ami (amiPseudo,etreAmiPseudo,dateAmitie) VALUES ('Nox', 'TenderMan', '2018-06-09');
INSERT INTO ami (amiPseudo,etreAmiPseudo,dateAmitie) VALUES ('Nox', 'Valkyrie', '2019-05-03');

INSERT INTO amour (amourPseudo, etreAmourPseudo, dateAmour) VALUES ('Nox', 'Valkyrie', '2020-05-05'), ('Wolverine', 'Bayoneta', '2019-08-15');
INSERT INTO amour (amourPseudo, etreAmourPseudo, dateAmour) VALUES ('Nox', 'Valkyrie', '2020-05-05'), ('Wolverine', 'Bayoneta', '2019-08-15');

INSERT INTO aimerpages(idPage,pseudo) VALUES (1,'Nox');
INSERT INTO aimerpages(idPage,pseudo) VALUES (1,'Muza');
INSERT INTO aimerpages(idPage,pseudo) VALUES (2,'Wolverine');
INSERT INTO aimerpages(idPage,pseudo) VALUES (2,'Valkyrie');
INSERT INTO aimerpages(idPage,pseudo) VALUES (3,'Valkyrie');
INSERT INTO aimerpages(idPage,pseudo) VALUES (3,'Nox');
INSERT INTO aimerpages(idPage,pseudo) VALUES (3,'Bayoneta');
INSERT INTO aimerpages(idPage,pseudo) VALUES (4,'Bayoneta');
INSERT INTO aimerpages(idPage,pseudo) VALUES (4,'Nox');
INSERT INTO aimerpages(idPage,pseudo) VALUES (4,'TenderMan');

INSERT INTO aimerpublication(titrePublication,pseudo) VALUES ('anniversaire','Nox');
INSERT INTO aimerpublication(titrePublication,pseudo) VALUES ('anniversaire','Muza');
INSERT INTO aimerpublication(titrePublication,pseudo) VALUES ('mariage','Wolverine');
INSERT INTO aimerpublication(titrePublication,pseudo) VALUES ('permis','Valkyrie');
INSERT INTO aimerpublication(titrePublication,pseudo) VALUES ('anniversaire','Valkyrie');
INSERT INTO aimerpublication(titrePublication,pseudo) VALUES ('vacances','Nox');
INSERT INTO aimerpublication(titrePublication,pseudo) VALUES ('vacances','Bayoneta');
INSERT INTO aimerpublication(titrePublication,pseudo) VALUES ('soiree','Bayoneta');
INSERT INTO aimerpublication(titrePublication,pseudo) VALUES ('partiels','Nox');
INSERT INTO aimerpublication(titrePublication,pseudo) VALUES ('partiels','TenderMan');
INSERT INTO aimerpublication(titrePublication,pseudo) VALUES ('anniversaire','TenderMan');


INSERT INTO groupe(numeroGroupe,groupePseudoUtilisateur,groupePublicationtUtilisateur) VALUES (1,'Nox','anniversaire');
INSERT INTO groupe(numeroGroupe,groupePseudoUtilisateur,groupePublicationtUtilisateur) VALUES (1,'Muza','anniversaire');
INSERT INTO groupe(numeroGroupe,groupePseudoUtilisateur,groupePublicationtUtilisateur) VALUES (1,'Valkyrie','anniversaire'); 
INSERT INTO groupe(numeroGroupe,groupePseudoUtilisateur,groupePublicationtUtilisateur) VALUES (2,'Nox','vacances');
INSERT INTO groupe(numeroGroupe,groupePseudoUtilisateur,groupePublicationtUtilisateur) VALUES (2,'Bayoneta','vacances');
INSERT INTO groupe(numeroGroupe,groupePseudoUtilisateur,groupePublicationtUtilisateur) VALUES (3,'Nox','partiels');
INSERT INTO groupe(numeroGroupe,groupePseudoUtilisateur,groupePublicationtUtilisateur) VALUES (3,'TenderMan','partiels');

INSERT INTO message(dateMessage,texte,destinaitaire,expediteur) VALUES('2017-12-12','rdv a 20h','Valkyrie','Nox');
INSERT INTO message(dateMessage,texte,destinaitaire,expediteur) VALUES('2017-12-12','rdv a 20h','Muza','Nox');
INSERT INTO message(dateMessage,texte,destinaitaire,expediteur) VALUES('2016-07-05','revisiosn a 16h','Nox','TenderMan');

INSERT INTO pages(numPages,pagePseudo,statut,likes) VALUES(1,'Nox','privee',250);
INSERT INTO pages(numPages,pagePseudo,statut,likes) VALUES(1,'Valkyrie','privee',123);
INSERT INTO pages(numPages,pagePseudo,statut,likes) VALUES(2,'TenderMan','public',342);
INSERT INTO pages(numPages,pagePseudo,statut,likes) VALUES(3,'Muza','public',11);
INSERT INTO pages(numPages,pagePseudo,statut,likes) VALUES(3,'MrNice','privee',234);
INSERT INTO pages(numPages,pagePseudo,statut,likes) VALUES(4,'Nox','public',45);
INSERT INTO pages(numPages,pagePseudo,statut,likes) VALUES(4,'MrNice','public',56);
INSERT INTO pages(numPages,pagePseudo,statut,likes) VALUES(5,'Bayoneta','public',34);
INSERT INTO pages(numPages,pagePseudo,statut,likes) VALUES(1,'Wolverine','privee',250);

INSERT INTO publication(titrePublication,datePublication,texte,likes) VALUES('anniversaire','2017-12-01','anniversaire surprise le 12',253);
INSERT INTO publication(titrePublication,datePublication,texte,likes) VALUES('anniversaire','2017-12-01','quel heure le 12',6);
INSERT INTO publication(titrePublication,datePublication,texte,likes) VALUES('partiels','2017-11-23','partiels au mois de decembre',45);

INSERT INTO tchat(pseudoEmeteur,idGroupeEmeteur,pseudoRecepteur,idGroupeRecepteur) VALUES('Nox',1,'Muza',1);
INSERT INTO tchat(pseudoEmeteur,idGroupeEmeteur,pseudoRecepteur,idGroupeRecepteur) VALUES('Nox',1,'Valkyrie',1);
INSERT INTO tchat(pseudoEmeteur,idGroupeEmeteur,pseudoRecepteur,idGroupeRecepteur) VALUES('Valkyrie',1,'Muza',1);
INSERT INTO tchat(pseudoEmeteur,idGroupeEmeteur,pseudoRecepteur,idGroupeRecepteur) VALUES('Wolverine',0,'Muza',0);
INSERT INTO tchat(pseudoEmeteur,idGroupeEmeteur,pseudoRecepteur,idGroupeRecepteur) VALUES('MrNice',0,'Nox',0);

INSERT INTO repondre(repondreTitrePublication,repondreTypePages,repondreAmiPseudo,repondreEtreAmi) VALUES('anniversaire','privee','Nox','Valkyrie');