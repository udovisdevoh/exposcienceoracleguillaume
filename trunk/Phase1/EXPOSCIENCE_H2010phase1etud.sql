Rem     Expo-science.SQL Hiver 2010
Rem     Version partielle remise à la phase 1                                                          
Rem     Créer les tables et séquences nécessaires pour «Projet Expo-science».
Rem     S.Beaudoin 1999
Rem     S.Rondeau 2010       -  à compléter
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

DROP SEQUENCE p_SEQ_ATEL;
DROP SEQUENCE p_SEQ_AUD;
DROP SEQUENCE p_SEQ_CATEGORIE;
DROP SEQUENCE p_SEQ_CRITERE;
DROP SEQUENCE p_SEQ_ECOLE;
DROP SEQUENCE p_SEQ_EVALUATION;
DROP SEQUENCE p_SEQ_EXPO;
DROP SEQUENCE p_SEQ_EXPOSANT;
DROP SEQUENCE p_SEQ_TYPE;


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
  noecole               NUMBER(4),
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
  juge		             NUMBER(1),
  rue                   VARCHAR2(25),
  ville                 VARCHAR2(20),
  code_postal           VARCHAR2(6),
  noregion		NUMBER(3),
  telephone             VARCHAR2(13),
  courriel		VARCHAR2(25),
  statut                VARCHAR2(1),  --R: régulier, E:étudiant:
 	CONSTRAINT p_auditeur_no_pk PRIMARY KEY (noauditeur));
        
-- Représente la liste des catégories deS ateliers 
-- Une catégorie classifie les ateliers par catégorie.

prompt  Création table p_categorie

CREATE TABLE p_categorie(
  nocategorie			NUMBER(5),
  nom			VARCHAR2(25),
  description		VARCHAR2(40),
	CONSTRAINT p_categorie_pk PRIMARY KEY (nocategorie));

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
  dateinscription  DATE,
  mode_paiement        CHAR(1), 
  no_carte              VARCHAR2(20),
  no_cheque             NUMBER(7),
  date_expire           DATE,
  acquitter		NUMBER(1),
  confirmationenvoyee	NUMBER(1));
 	
 

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
	
INSERT INTO p_local VALUES ('A5.30', 20);
INSERT INTO p_local VALUES ('A5.31', 10);
INSERT INTO p_local VALUES ('A5.32', 15);
INSERT INTO p_local VALUES ('A5.33', 25);
INSERT INTO p_local VALUES ('A5.34', 25);
INSERT INTO p_local VALUES ('A5.35', 30);
INSERT INTO p_local VALUES ('A9.01', 20);
INSERT INTO p_local VALUES ('A9.02', 25);
INSERT INTO p_local VALUES ('A9.03', 55);
INSERT INTO p_local VALUES ('A9.40', 30);
INSERT INTO p_local VALUES ('A9.45', 10);
INSERT INTO p_local VALUES ('A9.58', 20);
INSERT INTO p_local VALUES ('A8.03', 50);
INSERT INTO p_local VALUES ('A8.30', 20);
INSERT INTO p_local VALUES ('A10.32', 20);
INSERT INTO p_local VALUES ('A10.47', 35);
	


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

ALTER TABLE p_atelier 
	ADD CONSTRAINT p_atelier_expo_fk
	FOREIGN KEY (noexpo) REFERENCES p_expo (noexpo);	
  
ALTER TABLE p_atelier 
	ADD CONSTRAINT p_atelier_local_fk
	FOREIGN KEY (nolocal) REFERENCES p_local (nolocal);	

ALTER TABLE p_atelier 
	ADD CONSTRAINT p_atelier_ecole_fk
	FOREIGN KEY(noecole) REFERENCES p_ecole (noecole);
  
ALTER TABLE p_exposant
	ADD CONSTRAINT p_exposant_ecole_fk
	FOREIGN KEY (noecole) REFERENCES p_ecole (noecole);

ALTER TABLE p_ecole
	ADD CONSTRAINT p_ecole_region_fk
	FOREIGN KEY (Noregion) REFERENCES p_region (noregion);

COMMIT;
prompt Les tables et séquences ont été créées.


set feedback on