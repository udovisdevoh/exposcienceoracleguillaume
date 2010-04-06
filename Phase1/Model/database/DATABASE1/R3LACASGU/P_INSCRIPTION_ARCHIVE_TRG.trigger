<?xml version = '1.0' encoding = 'UTF-8'?>
<trigger xmlns="http://xmlns.oracle.com/jdeveloper/1111/offlinedb">
  <ID class="oracle.javatools.db.IdentifierBasedID">
    <name>P_INSCRIPTION_ARCHIVE_TRG</name>
    <identifier class="java.lang.String">a19cba2c-31f7-4f6e-9cf5-8e1c151c4828</identifier>
    <schemaName>R3LACASGU</schemaName>
    <type>TRIGGER</type>
  </ID>
  <name>P_INSCRIPTION_ARCHIVE_TRG</name>
  <baseType>TABLE</baseType>
  <code>BEGIN
  &lt;&lt;COLUMN_SEQUENCES&gt;&gt;
  BEGIN
    IF :NEW.NO_INS_ARCH IS NULL THEN
      SELECT SEQ_EXP_ARCH.NEXTVAL INTO :NEW.NO_INS_ARCH FROM DUAL;
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
  <source>CREATE TRIGGER P_INSCRIPTION_ARCHIVE_TRG
BEFORE INSERT ON P_INSCRIPTION_ARCHIVE
FOR EACH ROW 
BEGIN
  &lt;&lt;COLUMN_SEQUENCES&gt;&gt;
  BEGIN
    IF :NEW.NO_INS_ARCH IS NULL THEN
      SELECT SEQ_EXP_ARCH.NEXTVAL INTO :NEW.NO_INS_ARCH FROM DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;</source>
  <statementLevel>false</statementLevel>
  <tableID class="oracle.javatools.db.IdentifierBasedID">
    <name>P_INSCRIPTION_ARCHIVE</name>
    <identifier class="java.lang.String">4f008363-8b98-4e01-9f8d-737916c5ae1e</identifier>
    <schemaName>R3LACASGU</schemaName>
    <type>TABLE</type>
  </tableID>
  <timing>BEFORE</timing>
</trigger>
