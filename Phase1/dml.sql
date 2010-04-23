ALTER TABLE P_SUIVI_ATELIER DROP CONSTRAINT "P_SUIVI_ATELIER_P_ATELIER_FK1"
;

ALTER TABLE P_INSCRIPTION_ARCHIVE DROP CONSTRAINT "P_INSCRIPTION_ARCHIVE_P_A_FK1"
;

ALTER TABLE P_INSCRIPTION DROP CONSTRAINT "ATELIER_ID"
;

ALTER TABLE P_INSCRIPTION DROP CONSTRAINT "AUDITEUR_ID"
;

ALTER TABLE P_EXPOSANT_ARCHIVE DROP CONSTRAINT "P_EXPOSANT_ARCHIVE_FK"
;

ALTER TABLE P_EXPOSANT DROP CONSTRAINT "P_EXPOSANT_ECOLE_FK"
;

ALTER TABLE P_EXPOSANT DROP CONSTRAINT "P_EXPOSANT_P_ATELIER_FK"
;

ALTER TABLE P_EVALUATION DROP CONSTRAINT "P_EVALUATION_P_ATELIER_FK"
;

ALTER TABLE P_EVALUATION DROP CONSTRAINT "P_EVALUATION_P_AUDITEUR_FK"
;

ALTER TABLE P_EVALUATION DROP CONSTRAINT "P_EVALUATION_P_CRITERE_FK"
;

ALTER TABLE P_ECOLE DROP CONSTRAINT "P_ECOLE_REGION_FK"
;

ALTER TABLE P_ATELIER DROP CONSTRAINT "P_ATELIER_ECOLE_FK"
;

ALTER TABLE P_ATELIER DROP CONSTRAINT "P_ATELIER_EXPO_FK"
;

ALTER TABLE P_ATELIER DROP CONSTRAINT "P_ATELIER_LOCAL_FK"
;

ALTER TABLE P_ATELIER DROP CONSTRAINT "P_ATELIER_P_CATEGORIE_FK"
;

ALTER TABLE P_ATELIER DROP CONSTRAINT "P_ATELIER_P_TYPE_FK"
;

DROP TABLE P_TYPE CASCADE constraints;

DROP TABLE P_SUIVI_ATELIER CASCADE constraints;

DROP TABLE P_REGION CASCADE constraints;

DROP TABLE P_LOCAL CASCADE constraints;

DROP TABLE P_INSCRIPTION_ARCHIVE CASCADE constraints;

DROP TABLE P_INSCRIPTION CASCADE constraints;

DROP TABLE P_EXPOSANT_ARCHIVE CASCADE constraints;

DROP TABLE P_EXPOSANT CASCADE constraints;

DROP TABLE P_EXPO CASCADE constraints;

DROP TABLE P_EVALUATION CASCADE constraints;

DROP TABLE P_ECOLE CASCADE constraints;

DROP TABLE P_CRITERE CASCADE constraints;

DROP TABLE P_CATEGORIE CASCADE constraints;

DROP TABLE P_AUDITEUR CASCADE constraints;

DROP TABLE P_ATELIER CASCADE constraints;

DROP SEQUENCE SEQ_SUIVI_ATEL;

DROP SEQUENCE SEQ_INSC_ARCH;

DROP SEQUENCE SEQ_EXP_ARCH;

DROP SEQUENCE SEQ_CRITERE;

DROP SEQUENCE SEQ_CATEGORIE;

DROP SEQUENCE SEQ_AUDIT;

DROP SEQUENCE SEQ_ATEL;

CREATE TABLE P_TYPE
(
  NOTYPE NUMBER(2, 0) NOT NULL,
  NOMTYPE VARCHAR2(10 BYTE)
, CONSTRAINT P_TYPE_TYPE_PK PRIMARY KEY
  (
    NOTYPE
  )
  ENABLE
)
  TABLESPACE "R3"
  LOGGING 
  PCTFREE 10
  INITRANS 1
  MAXTRANS 255
  STORAGE
  (
    INITIAL 64K
    NEXT 1M
    MINEXTENTS 1
    MAXEXTENTS 2147483645
    BUFFER_POOL DEFAULT
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

CREATE TABLE P_REGION
(
  NOREGION NUMBER(3, 0) NOT NULL,
  NOMREGION VARCHAR2(100 BYTE)
, CONSTRAINT P_REGION_PK PRIMARY KEY
  (
    NOREGION
  )
  ENABLE
)
  TABLESPACE "R3"
  LOGGING 
  PCTFREE 10
  INITRANS 1
  MAXTRANS 255
  STORAGE
  (
    INITIAL 64K
    NEXT 1M
    MINEXTENTS 1
    MAXEXTENTS 2147483645
    BUFFER_POOL DEFAULT
  )
;

CREATE TABLE P_LOCAL
(
  NOLOCAL VARCHAR2(10 BYTE) NOT NULL,
  CAPACITE NUMBER(3, 0)
, CONSTRAINT P_LOCAL_NUMERO_PK PRIMARY KEY
  (
    NOLOCAL
  )
  ENABLE
)
  TABLESPACE "R3"
  LOGGING 
  PCTFREE 10
  INITRANS 1
  MAXTRANS 255
  STORAGE
  (
    INITIAL 64K
    NEXT 1M
    MINEXTENTS 1
    MAXEXTENTS 2147483645
    BUFFER_POOL DEFAULT
  )
;

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

CREATE TABLE P_INSCRIPTION
(
  DATEINSCRIPTION DATE,
  MODE_PAIEMENT CHAR(1 BYTE),
  NO_CARTE VARCHAR2(20 BYTE),
  NO_CHEQUE NUMBER(7, 0),
  DATE_EXPIRE DATE,
  ACQUITTER NUMBER(1, 0),
  CONFIRMATIONENVOYEE NUMBER(1, 0),
  NOATEL NUMBER(4, 0),
  NOAUDITEUR NUMBER(4, 0),
  CREEPAR VARCHAR2(30)
)
  TABLESPACE "R3"
  LOGGING 
  PCTFREE 10
  INITRANS 1
  MAXTRANS 255
  STORAGE
  (
    INITIAL 64K
    NEXT 1M
    MINEXTENTS 1
    MAXEXTENTS 2147483645
    BUFFER_POOL DEFAULT
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

CREATE TABLE P_EXPOSANT
(
  NOEXPOSANT NUMBER(4, 0) NOT NULL,
  NOATEL NUMBER(4),
  NOM VARCHAR2(60 BYTE),
  PRENOM VARCHAR2(30 BYTE),
  NOECOLE NUMBER(3, 0),
  RUE VARCHAR2(25 BYTE),
  VILLE VARCHAR2(20 BYTE),
  CODE_POSTAL VARCHAR2(6 BYTE),
  TELEPHONE NUMBER(10, 0),
  COURRIEL VARCHAR2(20 BYTE),
  CREEPAR VARCHAR2(30 BYTE),
  CODEETUDIANT VARCHAR2(15)
, CONSTRAINT P_EXPOSANT_NOEXPOSANT_PK PRIMARY KEY
  (
    NOEXPOSANT
  )
  ENABLE
)
  TABLESPACE "R3"
  LOGGING 
  PCTFREE 10
  INITRANS 1
  MAXTRANS 255
  STORAGE
  (
    INITIAL 64K
    NEXT 1M
    MINEXTENTS 1
    MAXEXTENTS 2147483645
    BUFFER_POOL DEFAULT
  )
;

CREATE TABLE P_EXPO
(
  NOEXPO NUMBER(4, 0) NOT NULL,
  DATE_DEBUT DATE,
  DATE_FIN DATE,
  NOMHOTEL VARCHAR2(30 BYTE),
  RUE VARCHAR2(25 BYTE),
  VILLE VARCHAR2(20 BYTE),
  CODE_POSTAL VARCHAR2(6 BYTE),
  TELEPHONE NUMBER(10, 0),
  COURRIEL VARCHAR2(30 BYTE),
  CREEPAR VARCHAR2(30 BYTE)
, CONSTRAINT P_EXPO_NOEXPO_PK PRIMARY KEY
  (
    NOEXPO
  )
  ENABLE
)
  TABLESPACE "R3"
  LOGGING 
  PCTFREE 10
  INITRANS 1
  MAXTRANS 255
  STORAGE
  (
    INITIAL 64K
    NEXT 1M
    MINEXTENTS 1
    MAXEXTENTS 2147483645
    BUFFER_POOL DEFAULT
  )
;

CREATE TABLE P_EVALUATION
(
  NOEVAL NUMBER(4, 0) NOT NULL,
  NOAUDITEUR NUMBER(4, 0),
  NOATEL NUMBER(3, 0),
  NOCRITERE NUMBER(1, 0),
  COTE NUMBER(1, 0)
, CONSTRAINT P_EVALUATION_PK PRIMARY KEY
  (
    NOEVAL
  )
  ENABLE
)
  TABLESPACE "R3"
  LOGGING 
  PCTFREE 10
  INITRANS 1
  MAXTRANS 255
  STORAGE
  (
    INITIAL 64K
    NEXT 1M
    MINEXTENTS 1
    MAXEXTENTS 2147483645
    BUFFER_POOL DEFAULT
  )
;

CREATE TABLE P_ECOLE
(
  NOECOLE NUMBER(4, 0) NOT NULL,
  NOMECOLE VARCHAR2(100 BYTE),
  NOREGION NUMBER(3, 0),
  TUTEUR VARCHAR2(50 BYTE),
  RUE VARCHAR2(25 BYTE),
  VILLE VARCHAR2(20 BYTE),
  CODE_POSTAL VARCHAR2(6 BYTE),
  TELEPHONE NUMBER(10, 0),
  COURRIEL VARCHAR2(25 BYTE)
, CONSTRAINT P_ECOLE_NOECOLE_PK PRIMARY KEY
  (
    NOECOLE
  )
  ENABLE
)
  TABLESPACE "R3"
  LOGGING 
  PCTFREE 10
  INITRANS 1
  MAXTRANS 255
  STORAGE
  (
    INITIAL 64K
    NEXT 1M
    MINEXTENTS 1
    MAXEXTENTS 2147483645
    BUFFER_POOL DEFAULT
  )
;

CREATE TABLE P_CRITERE
(
  NOMCRITERE VARCHAR2(25 BYTE),
  NOCRITERE NUMBER(2, 0) NOT NULL
, CONSTRAINT P_CRITERE_PK PRIMARY KEY
  (
    NOCRITERE
  )
  ENABLE
)
  TABLESPACE "R3"
  LOGGING 
  PCTFREE 10
  INITRANS 1
  MAXTRANS 255
  STORAGE
  (
    INITIAL 64K
    NEXT 1M
    MINEXTENTS 1
    MAXEXTENTS 2147483645
    BUFFER_POOL DEFAULT
  )
;

CREATE TABLE P_CATEGORIE
(
  NOCATEGORIE NUMBER(5, 0) NOT NULL,
  NOM VARCHAR2(25 BYTE),
  DESCRIPTION VARCHAR2(40 BYTE)
, CONSTRAINT P_CATEGORIE_PK PRIMARY KEY
  (
    NOCATEGORIE
  )
  ENABLE
)
  TABLESPACE "R3"
  LOGGING 
  PCTFREE 10
  INITRANS 1
  MAXTRANS 255
  STORAGE
  (
    INITIAL 64K
    NEXT 1M
    MINEXTENTS 1
    MAXEXTENTS 2147483645
    BUFFER_POOL DEFAULT
  )
;

CREATE TABLE P_AUDITEUR
(
  NOAUDITEUR NUMBER(4, 0) NOT NULL,
  CODEAUDITEUR VARCHAR2(7 BYTE),
  MOTDEPASSE VARCHAR2(7 BYTE),
  NOM VARCHAR2(60 BYTE),
  PRENOM VARCHAR2(40 BYTE),
  JUGE DATE,
  RUE VARCHAR2(25 BYTE),
  VILLE VARCHAR2(20 BYTE),
  CODE_POSTAL VARCHAR2(6 BYTE),
  NOREGION NUMBER(3, 0),
  TELEPHONE VARCHAR2(13 BYTE),
  COURRIEL VARCHAR2(25 BYTE),
  STATUT VARCHAR2(1 BYTE),
  CANDIDATJUGE DATE
, CONSTRAINT P_AUDITEUR_NO_PK PRIMARY KEY
  (
    NOAUDITEUR
  )
  ENABLE
)
  TABLESPACE "R3"
  LOGGING 
  PCTFREE 10
  INITRANS 1
  MAXTRANS 255
  STORAGE
  (
    INITIAL 64K
    NEXT 1M
    MINEXTENTS 1
    MAXEXTENTS 2147483645
    BUFFER_POOL DEFAULT
  )
;

CREATE TABLE P_ATELIER
(
  NOATEL NUMBER(4, 0) NOT NULL,
  NOEXPO NUMBER(4, 0),
  TITRE VARCHAR2(30 BYTE),
  LANGUE CHAR(1 BYTE),
  ACETATE_ELEC NUMBER(1, 0),
  PORTABLE NUMBER(1, 0),
  DUREE NUMBER(3, 0),
  NBMAXIMUM NUMBER(3, 0),
  NOECOLE NUMBER(4, 0),
  NOLOCAL VARCHAR2(10 BYTE),
  DATEATEL DATE,
  CREEPAR VARCHAR2(30 BYTE),
  DATECREATION DATE,
  COUTETUDIANT NUMBER(5, 2),
  COUTREGULIER NUMBER(5, 2),
  NOCATEGORIE NUMBER(5, 0),
  NOTYPE NUMBER(2, 0)
, CONSTRAINT P_ATELIERS_NO_PK PRIMARY KEY
  (
    NOATEL
  )
  ENABLE
)
  TABLESPACE "R3"
  LOGGING 
  PCTFREE 10
  INITRANS 1
  MAXTRANS 255
  STORAGE
  (
    INITIAL 64K
    NEXT 1M
    MINEXTENTS 1
    MAXEXTENTS 2147483645
    BUFFER_POOL DEFAULT
  )
;

ALTER TABLE P_SUIVI_ATELIER
ADD CONSTRAINT P_SUIVI_ATELIER_P_ATELIER_FK1 FOREIGN KEY
(
  NO_ATEL
)
REFERENCES P_ATELIER
(
  NOATEL
)
 ENABLE
;

ALTER TABLE P_INSCRIPTION_ARCHIVE
ADD CONSTRAINT P_INSCRIPTION_ARCHIVE_P_A_FK1 FOREIGN KEY
(
  NOAUDITEUR
)
REFERENCES P_AUDITEUR
(
  NOAUDITEUR
)
 ENABLE
;

ALTER TABLE P_INSCRIPTION
ADD CONSTRAINT ATELIER_ID FOREIGN KEY
(
  NOATEL
)
REFERENCES P_ATELIER
(
  NOATEL
)
 ENABLE
;

ALTER TABLE P_INSCRIPTION
ADD CONSTRAINT AUDITEUR_ID FOREIGN KEY
(
  NOAUDITEUR
)
REFERENCES P_AUDITEUR
(
  NOAUDITEUR
)
 ENABLE
;

ALTER TABLE P_EXPOSANT_ARCHIVE
ADD CONSTRAINT P_EXPOSANT_ARCHIVE_FK FOREIGN KEY
(
  NOEXPOSANT
)
REFERENCES P_EXPOSANT
(
  NOEXPOSANT
)
 ENABLE
;

ALTER TABLE P_EXPOSANT
ADD CONSTRAINT P_EXPOSANT_ECOLE_FK FOREIGN KEY
(
  NOECOLE
)
REFERENCES P_ECOLE
(
  NOECOLE
)
 ENABLE
;

ALTER TABLE P_EXPOSANT
ADD CONSTRAINT P_EXPOSANT_P_ATELIER_FK FOREIGN KEY
(
  NOATEL
)
REFERENCES P_ATELIER
(
  NOATEL
)
 ENABLE
;

ALTER TABLE P_EVALUATION
ADD CONSTRAINT P_EVALUATION_P_ATELIER_FK FOREIGN KEY
(
  NOATEL
)
REFERENCES P_ATELIER
(
  NOATEL
)
 ENABLE
;

ALTER TABLE P_EVALUATION
ADD CONSTRAINT P_EVALUATION_P_AUDITEUR_FK FOREIGN KEY
(
  NOAUDITEUR
)
REFERENCES P_AUDITEUR
(
  NOAUDITEUR
)
 ENABLE
;

ALTER TABLE P_EVALUATION
ADD CONSTRAINT P_EVALUATION_P_CRITERE_FK FOREIGN KEY
(
  NOCRITERE
)
REFERENCES P_CRITERE
(
  NOCRITERE
)
 ENABLE
;

ALTER TABLE P_ECOLE
ADD CONSTRAINT P_ECOLE_REGION_FK FOREIGN KEY
(
  NOREGION
)
REFERENCES P_REGION
(
  NOREGION
)
 ENABLE
;

ALTER TABLE P_ATELIER
ADD CONSTRAINT P_ATELIER_ECOLE_FK FOREIGN KEY
(
  NOECOLE
)
REFERENCES P_ECOLE
(
  NOECOLE
)
 ENABLE
;

ALTER TABLE P_ATELIER
ADD CONSTRAINT P_ATELIER_EXPO_FK FOREIGN KEY
(
  NOEXPO
)
REFERENCES P_EXPO
(
  NOEXPO
)
 ENABLE
;

ALTER TABLE P_ATELIER
ADD CONSTRAINT P_ATELIER_LOCAL_FK FOREIGN KEY
(
  NOLOCAL
)
REFERENCES P_LOCAL
(
  NOLOCAL
)
 ENABLE
;

ALTER TABLE P_ATELIER
ADD CONSTRAINT P_ATELIER_P_CATEGORIE_FK FOREIGN KEY
(
  NOCATEGORIE
)
REFERENCES P_CATEGORIE
(
  NOCATEGORIE
)
 ENABLE
;

ALTER TABLE P_ATELIER
ADD CONSTRAINT P_ATELIER_P_TYPE_FK FOREIGN KEY
(
  NOTYPE
)
REFERENCES P_TYPE
(
  NOTYPE
)
 ENABLE
;

ALTER TABLE P_AUDITEUR
ADD CONSTRAINT P_AUDITEUR_CHK_STATUT CHECK
(STATUT = 'R' OR STATUT = 'E')
 ENABLE
;

ALTER TABLE P_ATELIER
ADD CONSTRAINT P_ATELIER_CHK_ACETATE CHECK
(ACETATE_ELEC = 0 OR ACETATE_ELEC = 1)
 ENABLE
;

ALTER TABLE P_ATELIER
ADD CONSTRAINT P_ATELIER_CHK_DUREE CHECK
(DUREE = 30 OR DUREE = 45 OR DUREE = 60 OR DUREE = 90)
 ENABLE
;

ALTER TABLE P_ATELIER
ADD CONSTRAINT P_ATELIER_CHK_LANGUE CHECK
(LANGUE = 'F' OR LANGUE = 'A')
 ENABLE
;

ALTER TABLE P_ATELIER
ADD CONSTRAINT P_ATELIER_CHK_PORTABLE CHECK
(PORTABLE = 0 OR PORTABLE = 1)
 ENABLE
;

CREATE SEQUENCE SEQ_SUIVI_ATEL INCREMENT BY 1 START WITH 10;

CREATE SEQUENCE SEQ_INSC_ARCH INCREMENT BY 1 START WITH 10;

CREATE SEQUENCE SEQ_EXP_ARCH INCREMENT BY 1 START WITH 10;

CREATE SEQUENCE SEQ_CRITERE INCREMENT BY 1 START WITH 10;

CREATE SEQUENCE SEQ_CATEGORIE INCREMENT BY 1 START WITH 10;

CREATE SEQUENCE SEQ_AUDIT INCREMENT BY 1 START WITH 10;

CREATE SEQUENCE SEQ_ATEL INCREMENT BY 1 START WITH 10;

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