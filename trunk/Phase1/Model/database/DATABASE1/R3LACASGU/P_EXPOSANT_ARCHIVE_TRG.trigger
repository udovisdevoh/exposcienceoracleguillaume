<?xml version = '1.0' encoding = 'UTF-8'?>
<trigger xmlns="http://xmlns.oracle.com/jdeveloper/1111/offlinedb">
  <ID class="oracle.javatools.db.IdentifierBasedID">
    <name>P_EXPOSANT_ARCHIVE_TRG</name>
    <identifier class="java.lang.String">bf063db8-774e-43eb-83e2-057c1b0ba3ed</identifier>
    <schemaName>R3LACASGU</schemaName>
    <type>TRIGGER</type>
  </ID>
  <name>P_EXPOSANT_ARCHIVE_TRG</name>
  <baseType>TABLE</baseType>
  <code>BEGIN
  &lt;&lt;COLUMN_SEQUENCES&gt;&gt;
  BEGIN
    IF :NEW.NO_EXP_ARCH IS NULL THEN
      SELECT SEQ_EXP_ARCH.NEXTVAL INTO :NEW.NO_EXP_ARCH FROM DUAL;
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
  <source>CREATE TRIGGER P_EXPOSANT_ARCHIVE_TRG
BEFORE INSERT ON P_EXPOSANT_ARCHIVE
FOR EACH ROW 
BEGIN
  &lt;&lt;COLUMN_SEQUENCES&gt;&gt;
  BEGIN
    IF :NEW.NO_EXP_ARCH IS NULL THEN
      SELECT SEQ_EXP_ARCH.NEXTVAL INTO :NEW.NO_EXP_ARCH FROM DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;</source>
  <statementLevel>false</statementLevel>
  <tableID class="oracle.javatools.db.IdentifierBasedID">
    <name>P_EXPOSANT_ARCHIVE</name>
    <identifier class="java.lang.String">5cf595d5-09a5-4900-9b89-913dedc9e309</identifier>
    <schemaName>R3LACASGU</schemaName>
    <type>TABLE</type>
  </tableID>
  <timing>BEFORE</timing>
</trigger>
