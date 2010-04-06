<?xml version = '1.0' encoding = 'UTF-8'?>
<trigger xmlns="http://xmlns.oracle.com/jdeveloper/1111/offlinedb">
  <ID class="oracle.javatools.db.IdentifierBasedID">
    <name>P_SUIVI_ATELIER_TRG</name>
    <identifier class="java.lang.String">edca0317-7f6b-490a-b5fb-731502c77391</identifier>
    <schemaName>R3LACASGU</schemaName>
    <type>TRIGGER</type>
  </ID>
  <name>P_SUIVI_ATELIER_TRG</name>
  <baseType>TABLE</baseType>
  <code>BEGIN
  &lt;&lt;COLUMN_SEQUENCES&gt;&gt;
  BEGIN
    IF :NEW.NO_SUIVI_ATEL IS NULL THEN
      SELECT SEQ_SUIVI_ATEL.NEXTVAL INTO :NEW.NO_SUIVI_ATEL FROM DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;</code>
  <enabled>true</enabled>
  <events>
    <event>INSERT</event>
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
  <source>CREATE TRIGGER P_SUIVI_ATELIER_TRG
BEFORE INSERT ON P_SUIVI_ATELIER
FOR EACH ROW 
BEGIN
  &lt;&lt;COLUMN_SEQUENCES&gt;&gt;
  BEGIN
    IF :NEW.NO_SUIVI_ATEL IS NULL THEN
      SELECT SEQ_SUIVI_ATEL.NEXTVAL INTO :NEW.NO_SUIVI_ATEL FROM DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;</source>
  <statementLevel>false</statementLevel>
  <tableID class="oracle.javatools.db.IdentifierBasedID">
    <name>P_SUIVI_ATELIER</name>
    <identifier class="java.lang.String">987b8358-9173-43ce-a3da-d13fcfe309a3</identifier>
    <schemaName>R3LACASGU</schemaName>
    <type>TABLE</type>
  </tableID>
  <timing>BEFORE</timing>
</trigger>
