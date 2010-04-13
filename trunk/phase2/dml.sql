Rem     Expo-science.SQL Hiver 2010
Rem     Version complète remise à la phase 2                                                          
Rem     Créer les tables et séquences nécessaires pour «Projet Expo-science».
Rem 
Rem     S.Rondeau 2010      -  à compléter
set feedback off

prompt Destruction des tables et séquences existantes
DROP TABLE p_evaluation CASCADE CONSTRAINTS;
DROP TABLE p_atelier CASCADE CONSTRAINTS;
DROP TABLE p_auditeur CASCADE CONSTRAINTS;
DROP TABLE p_ecole CASCADE CONSTRAINTS;
DROP TABLE p_exposant CASCADE CONSTRAINTS;
DROP TABLE p_local CASCADE CONSTRAINTS;
DROP TABLE p_region CASCADE CONSTRAINTS;
DROP TABLE p_type CASCADE CONSTRAINTS;
DROP TABLE p_categorie CASCADE CONSTRAINTS;
DROP TABLE p_inscription CASCADE CONSTRAINTS;
DROP TABLE p_critere CASCADE CONSTRAINTS;
DROP TABLE p_expo CASCADE CONSTRAINT;
DROP TABLE p_inscription_archive CASCADE CONSTRAINTS;
DROP TABLE p_exposant_archive CASCADE CONSTRAINTS;
DROP TABLE p_suivi_atelier CASCADE CONSTRAINTS;

DROP SEQUENCE p_SEQ_ATEL;
DROP SEQUENCE p_SEQ_AUD;
DROP SEQUENCE p_SEQ_CATEGORIE;
DROP SEQUENCE p_SEQ_CRITERE;
DROP SEQUENCE p_SEQ_ECOLE;
DROP SEQUENCE p_SEQ_EVALUATION;
DROP SEQUENCE p_SEQ_EXPO;
DROP SEQUENCE p_SEQ_EXPOSANT;
DROP SEQUENCE p_SEQ_TYPE;
DROP SEQUENCE SEQ_SUIVI_ATEL;
DROP SEQUENCE SEQ_INSC_ARCH;
DROP SEQUENCE SEQ_EXP_ARCH;
DROP SEQUENCE SEQ_CRITERE;
DROP SEQUENCE SEQ_CATEGORIE;
DROP SEQUENCE SEQ_AUDIT;
DROP SEQUENCE SEQ_ATEL;

prompt Création des séquences
CREATE SEQUENCE p_SEQ_ATEL
  increment by 10
  START WITH 10;
CREATE SEQUENCE p_SEQ_AUD
  increment by 1
  START WITH 10;
CREATE SEQUENCE p_SEQ_CATEGORIE
  increment by 1
  START WITH 10;
CREATE SEQUENCE p_SEQ_CRITERE
  increment by 1
  START WITH 10;
CREATE SEQUENCE p_SEQ_ECOLE
  increment by 1
  START WITH 10;
CREATE SEQUENCE p_SEQ_EVALUATION
  increment by 1
  START WITH 10;
CREATE SEQUENCE p_SEQ_EXPO
  increment by 1
  START WITH 10;
CREATE SEQUENCE p_SEQ_EXPOSANT
  increment by 1
  START WITH 10;
CREATE SEQUENCE p_SEQ_TYPE
  increment by 1
  START WITH 10; 
  
CREATE SEQUENCE SEQ_SUIVI_ATEL INCREMENT BY 1 START WITH 10;
CREATE SEQUENCE SEQ_INSC_ARCH INCREMENT BY 1 START WITH 10;
CREATE SEQUENCE SEQ_EXP_ARCH INCREMENT BY 1 START WITH 10;
CREATE SEQUENCE SEQ_CRITERE INCREMENT BY 1 START WITH 10;
CREATE SEQUENCE SEQ_CATEGORIE INCREMENT BY 1 START WITH 10;
CREATE SEQUENCE SEQ_AUDIT INCREMENT BY 1 START WITH 10;
CREATE SEQUENCE SEQ_ATEL INCREMENT BY 1 START WITH 10;

prompt fin creation des sequences  

-- creation p_atelier
prompt Création table p_atelier

 CREATE TABLE p_ATELIER
  (
  noatel                NUMBER(4), 
  noexpo                NUMBER(4),
  titre                 VARCHAR2(30),
  langue		CHAR(1),-- F: francais, A: anglais
  acetate_elec       	NUMBER(1),-- 0: non, 1:oui 
  portable           	NUMBER(1),--0:  non, 1:oui
  duree                 NUMBER(3),-- minutes
  nbmaximum            	NUMBER(3),
  noexposant            NUMBER(4), -- voir table exposant
  noecole               NUMBER(4),
  nocategorie          	NUMBER(5),   -- voir table p_categorie 
  notype                 NUMBER(1),  -- voir table p_type 1: intéractif, 2:séminaire, 3: plénière
  nolocal               VARCHAR2(10),
  dateatel		DATE,
  creepar           VARCHAR2(30),  -- nom de l'usager qui a crée l'atelier 
  datecreation         DATE,     -- date entrée dans le système
  coutetudiant          NUMBER(5,2),
  coutregulier           	NUMBER(5,2),
	CONSTRAINT p_ateliers_no_pk PRIMARY KEY (NOATEL));
	

CREATE TABLE p_auditeur
  (
  noauditeur            NUMBER(4),
  codeauditeur          VARCHAR2(7),
  motdepasse            VARCHAR2(7),
  nom                   VARCHAR2(60),
  prenom                VARCHAR2(40),
  juge		  DATE,
  rue                   VARCHAR2(25),
  ville                 VARCHAR2(20),
  code_postal           VARCHAR2(6),
  noregion		NUMBER(3),
  telephone             VARCHAR2(13),
  courriel		VARCHAR2(25),
  statut                VARCHAR2(1),  --R: régulier, E:étudiant:
  candidatjuge	DATE,
	CONSTRAINT p_auditeur_no_pk PRIMARY KEY (noauditeur));
        
-- Représente la liste des catégories deS ateliers 
-- Une catégorie classifie les ateliers par catégorie.

prompt  Création table p_categorie

CREATE TABLE p_categorie(
  nocategorie			NUMBER(5),
  nom			VARCHAR2(25),
  description		VARCHAR2(40),
	CONSTRAINT p_categorie_pk PRIMARY KEY (nocategorie));
	
insert into p_categorie values (1,'Science de la nature',null);
insert into p_categorie  values (2,'Biologie', null);
insert into p_categorie values (3,'Astronomie', null);
insert into p_categorie values (4,'Alimentation',null);
insert into p_categorie values (5,'Aliments naturels', null);
insert into p_categorie values (6,'Chimie', null);
insert into p_categorie values (7,'Biologie humaine', null);
insert into p_categorie values (8,'Chimie organique', null);
commit;	

prompt Création de la table p_critere

-- Décrit la liste des critères d'évaluation des ateliers
CREATE TABLE p_critere
  (
  nocritere		 NUMBER(2),
  nomcritere		 VARCHAR2(25),
 	CONSTRAINT p_critere_PK PRIMARY KEY (nocritere));  

INSERT INTO p_critere VALUES (1,'prestation orale');
INSERT INTO p_critere VALUES (2,'contenu scientifique');
INSERT INTO p_critere VALUES (3,'documentation écrite');
INSERT INTO p_critere VALUES (4,'originalité');
INSERT INTO p_critere VALUES (5,'sujet d''actualité');

prompt Création table p_region
CREATE TABLE p_region
  (
  noregion              NUMBER(3),
  nomregion             VARCHAR2(100),
	CONSTRAINT p_region_pk PRIMARY KEY (Noregion));

insert into p_REGION (NOREGION, NOMREGION)
values (1, 'Abitibi-Témiscamingue');
insert into p_REGION (NOREGION, NOMREGION)
values (2, 'Bas-Saint-Laurent');
insert into p_REGION (NOREGION, NOMREGION)
values (3, 'Centre-du-Québec');
insert into p_REGION (NOREGION, NOMREGION)
values (4, 'Chaudière-Appalaches');
insert into p_REGION (NOREGION, NOMREGION)
values (5, 'Côte-Nord');
insert into p_REGION (NOREGION, NOMREGION)
values (6, 'Estrie');
insert into p_REGION (NOREGION, NOMREGION)
values (7, 'Gaspésie');
insert into p_REGION (NOREGION, NOMREGION)
values (8, 'Îles-de-la-Madeleine');
insert into p_REGION (NOREGION, NOMREGION)
values (9, 'Lanaudière');
insert into p_REGION (NOREGION, NOMREGION)
values (10, 'Laurentides');
insert into p_REGION (NOREGION, NOMREGION)
values (11, 'Laval');
insert into p_REGION (NOREGION, NOMREGION)
values (12, 'Mauricie');
insert into p_REGION (NOREGION, NOMREGION)
values (13, 'Montérégie');
insert into p_REGION (NOREGION, NOMREGION)
values (14, 'Montréal');
insert into p_REGION (NOREGION, NOMREGION)
values (15, 'Nord-du-Québec');
insert into p_REGION (NOREGION, NOMREGION)
values (16, 'Outaouais');
insert into p_REGION (NOREGION, NOMREGION)
values (17, 'Saguenay');
insert into p_REGION (NOREGION, NOMREGION)
values (18, 'Lac-Saint-Jean');
commit;

prompt Création table p_ecole
CREATE TABLE p_ECOLE
  (
  noecole              	NUMBER(4),
  nomecole              VARCHAR2(100),
  noregion 		NUMBER(3),
  tuteur                VARCHAR2(50), ---nom de l'enseignant de science dédié par l'école
  rue                   VARCHAR2(25),
  ville                 VARCHAR2(20),
  code_postal           VARCHAR2(6),
  telephone             NUMBER(10),
  courriel		VARCHAR2(25),
	CONSTRAINT p_Ecole_noecole_pk PRIMARY KEY (Noecole));

prompt Création de la table p_expo

CREATE TABLE p_EXPO
  (
  noexpo            	 NUMBER(4),
  date_debut             DATE,
  date_fin            	 DATE,
  nomhotel		 VARCHAR2(30),
  rue                    VARCHAR2(25),
  ville                  VARCHAR2(20),
  code_postal            VARCHAR2(6),
  telephone              NUMBER(10),
  courriel		 VARCHAR2(30),
  creepar    VARCHAR2(30),
	CONSTRAINT p_EXPO_NOEXPO_pk PRIMARY KEY (NOEXPO));
	
prompt Insertion dans la p_EXPO
insert into p_EXPO (NOEXPO, DATE_DEBUT, DATE_FIN, NOMHOTEL, RUE, VILLE, CODE_POSTAL, TELEPHONE, COURRIEL, CREEPAR)
values (1, to_date('07-05-2009', 'dd-mm-yyyy'), to_date('09-05-2009', 'dd-mm-yyyy'), 'Hôtel Delta', 'Principale', 'Québec', 'H7PQ4D', 4185897425, 'expoSciences@gouv.qc.ca', 'Cécile Cyr');
insert into p_EXPO (NOEXPO, DATE_DEBUT, DATE_FIN, NOMHOTEL, RUE, VILLE, CODE_POSTAL, TELEPHONE, COURRIEL, CREEPAR)
values (2, to_date('05-05-2010', 'dd-mm-yyyy'), to_date('07-05-2010', 'dd-mm-yyyy'), 'Hôtel Delta', 'Principale', 'Québec', 'H7PQ4D', 4185897425, 'expoSciences@gouv.qc.ca', 'Cécile Cyr');
commit;

CREATE TABLE p_EXPOSANT
  (
  noexposant             NUMBER(4),
  nom                    VARCHAR2(60),
  prenom                 VARCHAR(30),
  codeetu                VARCHAR(15),
  nocoequipier           NUMBER(3),
  noecole		 NUMBER(3),
  rue                    VARCHAR2(25),
  ville                  VARCHAR2(20),
  code_postal            VARCHAR2(6),
  telephone              NUMBER(10),
  courriel		 VARCHAR2(20),
  creepar
      VARCHAR2(30),
	CONSTRAINT p_EXPOSANT_noEXPOSANT_pk PRIMARY KEY (NOEXPOSANT));
		
prompt creation table p_inscription
CREATE TABLE p_inscription
  (
  noauditeur         NUMBER(4),
  noatel                NUMBER(4),
  dateinscription  DATE,
  mode_paiement        CHAR(1), 
  no_carte              VARCHAR2(20),
  no_cheque             NUMBER(7),
  date_expire           DATE,
  acquitter		NUMBER(1),
  confirmationenvoyee	NUMBER(1),
  creepar  VARCHAR2(60),
	CONSTRAINT p_inscription_pk PRIMARY KEY (noauditeur,noatel));
 

prompt Création de la table p_evaluation

CREATE TABLE p_evaluation
  (
  noeval		 NUMBER(4),
  noauditeur		 NUMBER(4),
  noatel                 NUMBER(3),
  nocritere		 NUMBER(1),-- no. critere d'évaluation
  cote              	 NUMBER(1), -- 1 à 5 dont 5:cote la plus haute et 1: moins haute
 	CONSTRAINT p_evaluation_PK PRIMARY KEY (noeval)); 
   
prompt Création table p_local
CREATE TABLE p_local
  (
  nolocal                VARCHAR2(10), 
  capacite              NUMBER(3),
	CONSTRAINT p_local_numero_pk PRIMARY KEY (nolocal));


prompt Création table p_type
CREATE TABLE p_type
  (
  notype     NUMBER(2), 
  nomtype    VARCHAR2(10),
	CONSTRAINT p_type_type_pk PRIMARY KEY (notype));

INSERT INTO p_type VALUES (1,'intéractif');
INSERT INTO p_type VALUES (2,'séminaire');
INSERT INTO p_type VALUES (3,'plénière');

COMMIT;

prompt Création des contraintes de référence

ALTER TABLE p_inscription
	ADD CONSTRAINT p_inscription_atelier_fk
	FOREIGN KEY (noatel) REFERENCES p_atelier (noatel);
  
ALTER TABLE p_inscription
	ADD CONSTRAINT p_inscription_auditeur_fk
	FOREIGN KEY (noauditeur) REFERENCES p_auditeur (noauditeur);  
	
ALTER TABLE p_atelier 
	ADD CONSTRAINT p_atelier_expo_fk
	FOREIGN KEY (noexpo) REFERENCES p_expo (noexpo);	
  
ALTER TABLE p_atelier 
	ADD CONSTRAINT p_atelier_categorie_fk
	FOREIGN KEY (nocategorie) REFERENCES p_categorie (nocategorie);	

ALTER TABLE p_atelier 
	ADD CONSTRAINT p_atelier_local_fk
	FOREIGN KEY (nolocal) REFERENCES p_local (nolocal);	

ALTER TABLE p_atelier 
	ADD CONSTRAINT p_atelier_NOEXPOSANT_fk
	FOREIGN KEY (NOEXPOSANT) REFERENCES p_EXPOSANT (noexposant);

ALTER TABLE p_atelier 
	ADD CONSTRAINT p_atelier_type_fk
	FOREIGN KEY(notype) REFERENCES p_type (notype);

ALTER TABLE p_atelier 
	ADD CONSTRAINT p_atelier_ecole_fk
	FOREIGN KEY(noecole) REFERENCES p_ecole (noecole);
  
ALTER TABLE p_exposant
	ADD CONSTRAINT p_exposant_ecole_fk
	FOREIGN KEY (noecole) REFERENCES p_ecole (noecole);

ALTER TABLE p_ecole
	ADD CONSTRAINT p_ecole_region_fk
	FOREIGN KEY (Noregion) REFERENCES p_region (noregion);

ALTER TABLE p_evaluation
	ADD CONSTRAINT p_evaluation_audjuge_fk
	FOREIGN KEY (noauditeur) REFERENCES p_auditeur (noauditeur);

ALTER TABLE p_evaluation
	ADD CONSTRAINT p_evaluation_critere_fk
	FOREIGN KEY (Nocritere) REFERENCES p_critere(nocritere);

ALTER TABLE p_evaluation
	ADD CONSTRAINT p_evaluation_atelier_fk
	FOREIGN KEY (Noatel) REFERENCES p_atelier (noatel);

COMMIT;

CREATE TABLE P_INSCRIPTION_ARCHIVE
(
  NO_INS_ARCH NUMBER(8, 0) NOT NULL,
  NOAUDITEUR NUMBER(4, 0),
  NOATEL NUMBER(4, 0),
  DATEINSCRIPTION DATE,
  MODE_PAIEMENT VARCHAR2(1),
  NO_CARTE VARCHAR2(20),
  NO_CHEQUE NUMBER(7, 0),
  "evenement " VARCHAR2(15),
  DATEMODIF DATE
, CONSTRAINT P_INSCRIPTION_ARCHIVE_PK PRIMARY KEY
  (
    NO_INS_ARCH
  )
  ENABLE
)
;

CREATE TABLE P_EXPOSANT_ARCHIVE
(
  NO_EXP_ARCH NUMBER(8, 0) NOT NULL,
  NOEXPOSANT NUMBER(4, 0),
  NOM VARCHAR2(60),
  COURRIEL VARCHAR2(20),
  DATESUPPRESSION DATE
, CONSTRAINT P_EXPOSANT_ARCHIVE_PK PRIMARY KEY
  (
    NO_EXP_ARCH
  )
  ENABLE
)
;

CREATE TABLE P_SUIVI_ATELIER
(
  NO_SUIVI_ATEL NUMBER NOT NULL,
  NO_ATEL NUMBER(4),
  NO_ANCIEN_LOC VARCHAR2(10)
, CONSTRAINT P_SUIVI_ATELIER_PK PRIMARY KEY
  (
    NO_SUIVI_ATEL
  )
  ENABLE
)
;

prompt Les tables et séquences ont été créées.
/
create or replace trigger p_expo_trg
before insert on p_expo 
for each row 
begin 
select p_seq_expo.nextval into :new.noexpo from dual; 
end;
/
create or replace trigger p_atelier_trg
before insert on p_atelier
for each row 
begin 
select p_seq_atel.nextval into :new.noatel from dual; 
end;
/
create or replace trigger p_auditeur_trg
before insert on p_auditeur
for each row 
begin 
select p_seq_aud.nextval into :new.noauditeur from dual; 
end;
/
create or replace trigger p_categorie_trg
before insert on p_categorie
for each row 
begin 
select p_seq_categorie.nextval into :new.nocategorie from dual; 
end;
/
create or replace trigger p_critere_trg
before insert on p_critere
for each row 
begin 
select p_seq_critere.nextval into :new.nocritere from dual; 
end;
/
create or replace trigger p_ecole_trg
before insert on p_ecole
for each row 
begin 
select p_seq_ecole.nextval into :new.noecole from dual; 
end;
/
create or replace trigger p_evaluation_trg
before insert on p_evaluation
for each row 
begin 
select p_seq_evaluation.nextval into :new.noeval from dual; 
end;
/
create or replace trigger p_exposant_trg
before insert on p_exposant
for each row 
begin 
select p_seq_exposant.nextval into :new.noexposant from dual; 
end;
/
create or replace trigger p_type_trg
before insert on p_type
for each row 
begin 
select p_seq_type.nextval into :new.notype from dual; 
end;
/

CREATE OR REPLACE
TRIGGER TRG_CODE_EXPOSANT
BEFORE INSERT ON P_EXPOSANT
FOR EACH ROW
	DECLARE
	  vCode varchar2(16) := 'UNKNOWN';
	BEGIN
	<<COLUMN_SEQUENCES>>
	BEGIN    
    vCode := RPAD(:NEW.NOM, 4, 'x') || RPAD(:NEW.PRENOM, 4, 'x');
    SELECT vCode || COUNT(*) INTO vCode FROM P_EXPOSANT WHERE SUBSTR(CODEETUDIANT, 0, 8) = vCode;
    SELECT vCode INTO :NEW.CODEETUDIANT FROM DUAL;
  END COLUMN_SEQUENCES;
END;
/

CREATE OR REPLACE
TRIGGER P_SUIVI_INSCRIPTION
BEFORE INSERT OR DELETE OR UPDATE ON P_INSCRIPTION
FOR EACH ROW
  BEGIN
    IF INSERTING THEN
        INSERT INTO P_INSCRIPTION_ARCHIVE VALUES (SEQ_INSC_ARCH.NEXTVAL, :NEW.NOAUDITEUR, :NEW.NOATEL, :NEW.DATEINSCRIPTION, :NEW.MODE_PAIEMENT, :NEW.NO_CARTE, :NEW.NO_CHEQUE,'INSERTED',sysdate);
    ELSIF UPDATING THEN
         INSERT INTO P_INSCRIPTION_ARCHIVE VALUES (SEQ_INSC_ARCH.NEXTVAL, :OLD.NOAUDITEUR, :OLD.NOATEL, :OLD.DATEINSCRIPTION, :OLD.MODE_PAIEMENT, :OLD.NO_CARTE, :OLD.NO_CHEQUE,'UPDATED',sysdate);
    ELSIF DELETING THEN
         INSERT INTO P_INSCRIPTION_ARCHIVE VALUES (SEQ_INSC_ARCH.NEXTVAL, :OLD.NOAUDITEUR, :OLD.NOATEL, :OLD.DATEINSCRIPTION, :OLD.MODE_PAIEMENT, :OLD.NO_CARTE, :OLD.NO_CHEQUE,'DELETED',sysdate);
    END IF;
END;
/

CREATE OR REPLACE
TRIGGER P_SUIVI_ATELIER_TRG
BEFORE INSERT ON P_SUIVI_ATELIER
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF :NEW.NO_SUIVI_ATEL IS NULL THEN
      SELECT SEQ_SUIVI_ATEL.NEXTVAL INTO :NEW.NO_SUIVI_ATEL FROM DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/

CREATE OR REPLACE
TRIGGER P_INSCRIPTION_ARCHIVE_TRG
BEFORE INSERT ON P_INSCRIPTION_ARCHIVE
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF :NEW.NO_INS_ARCH IS NULL THEN
      SELECT SEQ_EXP_ARCH.NEXTVAL INTO :NEW.NO_INS_ARCH FROM DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/

CREATE OR REPLACE
TRIGGER P_EXPOSANT_ARCHIVE_TRG
BEFORE INSERT ON P_EXPOSANT_ARCHIVE
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF :NEW.NO_EXP_ARCH IS NULL THEN
      SELECT SEQ_EXP_ARCH.NEXTVAL INTO :NEW.NO_EXP_ARCH FROM DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/

CREATE OR REPLACE
TRIGGER P_CRITERE_TRG
BEFORE INSERT ON P_CRITERE
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF :NEW.NOCRITERE IS NULL THEN
      SELECT SEQ_CRITERE.NEXTVAL INTO :NEW.NOCRITERE FROM DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/

CREATE OR REPLACE
TRIGGER P_CATEGORIE_TRG
BEFORE INSERT ON P_CATEGORIE
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF :NEW.NOCATEGORIE IS NULL THEN
      SELECT SEQ_CATEGORIE.NEXTVAL INTO :NEW.NOCATEGORIE FROM DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/

CREATE OR REPLACE
TRIGGER P_AUDITEUR_TRG
BEFORE INSERT ON P_AUDITEUR
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF :NEW.NOAUDITEUR IS NULL THEN
      SELECT SEQ_AUDIT.NEXTVAL INTO :NEW.NOAUDITEUR FROM DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/

CREATE OR REPLACE
TRIGGER P_ATELIER_TRG
BEFORE INSERT ON P_ATELIER
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF :NEW.NOATEL IS NULL THEN
      SELECT SEQ_ATEL.NEXTVAL INTO :NEW.NOATEL FROM DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/

CREATE OR REPLACE
TRIGGER P_ATELIER_NOLOCAL_TRG
  BEFORE UPDATE OF NOLOCAL ON P_ATELIER
    FOR EACH ROW
      BEGIN
        INSERT INTO p_suivi_atelier VALUES (SEQ_SUIVI_ATEL.NEXTVAL,:OLD.NOATEL,:OLD.NOLOCAL);
      END;
/

prompt Les triggers ont été créés.
set feedback on