CREATE TRIGGER maj_salaire_professeurs --creation du trigger
BEFORE UPDATE ON PROFESSEURS --implation du trigger avant|apres l'insertion|modification|suppression
FOR EACH ROW
WHEN (:new.SALAIRE_ACTUEL < :old.SALAIRE_BASE) --condition d'erreur
DECLARE e EXCEPTION
BEGIN 
RAISE e 
EXCEPTION
WHEN e THEN RAISE_APPLICATION (2003,"message d'erreur") --erreur
END;



CREATE TRIGGER maj_auto
AFTER UPDATE OR INSERT OR DELETE ON PROFESSEURS
FOR EACH ROW
BEGIN

IF INSERTING THEN
INSERT INTO PROFESSEURS_spe VALUES(:new.NOM,:new.SPECIALITE,:new.DATE_ENTREE,:new.DER_PROM,:new.SALAIRE_BASE,:new.SALAIRE_ACTUEL);
END IF;

IF UPDATING THEN
UPDATE INTO PROFESSEURS
SET NOM = :new.NOM, SPECIALITE = :new.SPECIALITE, DATE_ENTREE = :new.DATE_ENTREE, DER_PROM = :new.DER_PROM, SALAIRE_BASE = :new.SALAIRE_BASE, SALAIRE_ACTUEL = :new.SALAIRE_ACTUEL;
END IF;

IF DELETING THEN
DELETE FROM PROFESSEURS
END IF;

END;


CREATE TRIGGER autoMAj
AFTER UPDATE OR DELETE ON PROFESSEURS
FOR EACH ROW
BEGIN

IF UPDATING THEN
UPDATE CHARGE
SET NUM_PROF = :new.NUM_PROF WHERE NUM_PROF = :old.NUM_PROF;
END  IF; 

IF DELETING THEN
DELETE FROM CHARGE WHERE NUM_PROF = :old.NUM_PROF; 
END IF;

END;
/

CREATE TRIGGER majAuditResultat
AFTER UPDATE ON RESULTATS
FOR EACH ROW
BEGIN
INSERT INTO AUDIT_RESULTATS VALUES (USER, SYSDATE, 'NOUVEAU', :new.NUM_ELEVE, :new.NUM_COURS, :new.POINTS ) ;
END;
/  

CREATE TRIGGER maj_patient --creation du trigger maj_patient qui va mettre a nour tous les patients qui sont atteint du covid avec leur medecin
AFTER UPDATE OR DELETE ON DOCTEURS --on decide d'appliquer un trigger si il y a une mofification au sein des medecins, pour que chaque medecin est un patient
FOR EACH ROW

DECLARE 

e EXCEPTION; -- on declare une erreur si le medecin n'est pas avec un dans le secteur covid

BEGIN
    
IF UPDATING THEN --On modifie l'affectation d'un patient à un medecin
UPDATE PATIENT
SET PATIENT_DOC = :new.PATIENT_DOC WHERE ID_PATIENT = :old.ID_PATIENT;
END  IF; 

IF DELETING THEN
DELETE FROM PATIENT WHERE ID_PATIENT = :old.ID_PATIENT; --on supprime le patient si il n'est plus affecté à un medecin et donc guerrit
END IF;

IF (SECTEUR_COVID = 'N') THEN --condition pour l'erreur, ici si le medecin n'est pas dans le secteur covid 
RAISE e;
END IF;

EXCEPTION

WHEN e THEN RAISE_APPLICATION_ERROR (2003,"pas dans le secteur covid"); --message d'erreur pour annoncer que le medecin ne travaille pas dans le secteur covid
END;
/


-- revoir le typz objzt

















