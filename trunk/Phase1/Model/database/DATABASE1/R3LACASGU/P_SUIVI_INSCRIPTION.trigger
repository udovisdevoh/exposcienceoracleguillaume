<?xml version = '1.0' encoding = 'UTF-8'?>
<trigger xmlns="http://xmlns.oracle.com/jdeveloper/1111/offlinedb">
  <ID class="oracle.javatools.db.IdentifierBasedID">
    <name>P_SUIVI_INSCRIPTION</name>
    <identifier class="java.lang.String">899c1133-1e17-400b-b6ea-a0c5884873f1</identifier>
    <schemaName>R3LACASGU</schemaName>
    <type>TRIGGER</type>
  </ID>
  <name>P_SUIVI_INSCRIPTION</name>
  <baseType>TABLE</baseType>
  <code>BEGIN
    IF INSERTING THEN
        INSERT INTO P_INSCRIPTION_ARCHIVE VALUES (SEQ_INSC_ARCH.NEXTVAL, :NEW.NOAUDITEUR, :NEW.NOATEL, :NEW.DATEINSCRIPTION, :NEW.MODE_PAIEMENT, :NEW.NO_CARTE, :NEW.NO_CHEQUE,&apos;INSERTED&apos;,sysdate);
    ELSIF UPDATING THEN
         INSERT INTO P_INSCRIPTION_ARCHIVE VALUES (SEQ_INSC_ARCH.NEXTVAL, :OLD.NOAUDITEUR, :OLD.NOATEL, :OLD.DATEINSCRIPTION, :OLD.MODE_PAIEMENT, :OLD.NO_CARTE, :OLD.NO_CHEQUE,&apos;UPDATED&apos;,sysdate);
    ELSIF DELETING THEN
         INSERT INTO P_INSCRIPTION_ARCHIVE VALUES (SEQ_INSC_ARCH.NEXTVAL, :OLD.NOAUDITEUR, :OLD.NOATEL, :OLD.DATEINSCRIPTION, :OLD.MODE_PAIEMENT, :OLD.NO_CARTE, :OLD.NO_CHEQUE,&apos;DELETED&apos;,sysdate);
    END IF;
END;</code>
  <enabled>true</enabled>
  <events>
    <event>INSERT</event>
    <event>DELETE</event>
    <event>UPDATE</event>
  </events>
  <schema>
    <ID class="oracle.javatools.db.IdentifierBasedID">
      <name>R3LACASGU</name>
      <identifier class="java.lang.String">6371cde2-006b-49f5-a070-08fe9059ac07</identifier>
      <schemaName>R3LACASGU</schemaName>
      <type>SCHEMA</type>
    </ID>
    <name>R3LACASGU</name>
  </schema>
  <source>create or replace
TRIGGER P_SUIVI_INSCRIPTION
BEFORE INSERT OR DELETE OR UPDATE ON P_INSCRIPTION
FOR EACH ROW
  BEGIN
    IF INSERTING THEN
        INSERT INTO P_INSCRIPTION_ARCHIVE VALUES (SEQ_INSC_ARCH.NEXTVAL, :NEW.NOAUDITEUR, :NEW.NOATEL, :NEW.DATEINSCRIPTION, :NEW.MODE_PAIEMENT, :NEW.NO_CARTE, :NEW.NO_CHEQUE,&apos;INSERTED&apos;,sysdate);
    ELSIF UPDATING THEN
         INSERT INTO P_INSCRIPTION_ARCHIVE VALUES (SEQ_INSC_ARCH.NEXTVAL, :OLD.NOAUDITEUR, :OLD.NOATEL, :OLD.DATEINSCRIPTION, :OLD.MODE_PAIEMENT, :OLD.NO_CARTE, :OLD.NO_CHEQUE,&apos;UPDATED&apos;,sysdate);
    ELSIF DELETING THEN
         INSERT INTO P_INSCRIPTION_ARCHIVE VALUES (SEQ_INSC_ARCH.NEXTVAL, :OLD.NOAUDITEUR, :OLD.NOATEL, :OLD.DATEINSCRIPTION, :OLD.MODE_PAIEMENT, :OLD.NO_CARTE, :OLD.NO_CHEQUE,&apos;DELETED&apos;,sysdate);
    END IF;
END;</source>
  <statementLevel>false</statementLevel>
  <tableID class="oracle.javatools.db.IdentifierBasedID">
    <name>P_INSCRIPTION</name>
    <identifier class="java.lang.String">cd85c9c6-c867-494b-8f15-47b66e89b317</identifier>
    <schemaName>R3LACASGU</schemaName>
    <type>TABLE</type>
  </tableID>
  <timing>BEFORE</timing>
</trigger>
