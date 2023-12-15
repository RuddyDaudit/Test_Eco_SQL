--EXERCICE 2--

CREATE OR REPLACE type adresse_type as OBJECT
(
 numero number(3),
 nom varchar2(64),
 ville varchar2(64),
 cp number(5)
) FINAL
/

CREATE OR REPLACE type personne_type as OBJECT
(
 id number(3),
 nom varchar2(50),
 prenom varchar2(50),
 adresse adresse_type,
 dNaissance DATE
)
NOT FINAL NOT INSTANTIABLE
/

CREATE OR REPLACE type maladie_type as OBJECT
(
id number(3),
nom varchar2(25)
) FINAL INSTANCIABLE
/
CREATE OR REPLACE type maladie_type as table of maladie_type
/

CREATE OR REPLACE type medecin_type UNDER personne_type
(
 SPECIALITE VARCHAR2(25),
 SERVICE VARCHAR2(25)
)
FINAL INSTANTIABLE
/

CREATE OR REPLACE type patient_type UNDER personne_type
(
 poids NUMBER,
 taille NUMBER,
 maladie maladie_type
)
FINAL INSTANTIABLE
/

CREATE table patients of patient_type(

Constraint pk_patient primary key (id)
)

CREATE TABLE MEDECIN of medecin_type
(
 Constraint pk_medecin primary key (id),
 
)