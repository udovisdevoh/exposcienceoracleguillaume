<?xml version = '1.0' encoding = 'UTF-8'?>
<trigger xmlns="http://xmlns.oracle.com/jdeveloper/1111/offlinedb">
  <ID class="oracle.javatools.db.IdentifierBasedID">
    <name>P_ATELIER_TRG</name>
    <identifier class="java.lang.String">5fb0ed85-bf65-46b7-9c12-55202eb154d3</identifier>
    <schemaName>R3LACASGU</schemaName>
    <type>TRIGGER</type>
  </ID>
  <name>P_ATELIER_TRG</name>
  <baseType>TABLE</baseType>
  <code>BEGIN
  &lt;&lt;COLUMN_SEQUENCES&gt;&gt;
  BEGIN
    IF :NEW.NOATEL IS NULL THEN
      SELECT SEQ_ATEL.NEXTVAL INTO :NEW.NOATEL FROM DUAL;
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
  <source>CREATE TRIGGER P_ATELIER_TRG
BEFORE INSERT ON P_ATELIER
FOR EACH ROW 
BEGIN
  &lt;&lt;COLUMN_SEQUENCES&gt;&gt;
  BEGIN
    IF :NEW.NOATEL IS NULL THEN
      SELECT SEQ_ATEL.NEXTVAL INTO :NEW.NOATEL FROM DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;</source>
  <statementLevel>false</statementLevel>
  <tableID class="oracle.javatools.db.IdentifierBasedID">
    <name>P_ATELIER</name>
    <identifier class="java.lang.String">c4a809d1-48e6-4925-9fb6-cd1ef521d7ce</identifier>
    <schemaName>R3LACASGU</schemaName>
    <type>TABLE</type>
  </tableID>
  <timing>BEFORE</timing>
</trigger>
