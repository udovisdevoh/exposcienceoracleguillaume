<?xml version = '1.0' encoding = 'UTF-8'?>
<trigger xmlns="http://xmlns.oracle.com/jdeveloper/1111/offlinedb">
  <ID class="oracle.javatools.db.IdentifierBasedID">
    <name>P_AUDITEUR_TRG</name>
    <identifier class="java.lang.String">770fc707-93d0-4948-950f-298e3d3fa78c</identifier>
    <schemaName>R3LACASGU</schemaName>
    <type>TRIGGER</type>
  </ID>
  <name>P_AUDITEUR_TRG</name>
  <baseType>TABLE</baseType>
  <code>BEGIN
  &lt;&lt;COLUMN_SEQUENCES&gt;&gt;
  BEGIN
    IF :NEW.NOAUDITEUR IS NULL THEN
      SELECT SEQ_AUDIT.NEXTVAL INTO :NEW.NOAUDITEUR FROM DUAL;
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
  <source>CREATE TRIGGER P_AUDITEUR_TRG
BEFORE INSERT ON P_AUDITEUR
FOR EACH ROW 
BEGIN
  &lt;&lt;COLUMN_SEQUENCES&gt;&gt;
  BEGIN
    IF :NEW.NOAUDITEUR IS NULL THEN
      SELECT SEQ_AUDIT.NEXTVAL INTO :NEW.NOAUDITEUR FROM DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;</source>
  <statementLevel>false</statementLevel>
  <tableID class="oracle.javatools.db.IdentifierBasedID">
    <name>P_AUDITEUR</name>
    <identifier class="java.lang.String">2f24fff0-6d58-4328-8196-6b44a212a162</identifier>
    <schemaName>R3LACASGU</schemaName>
    <type>TABLE</type>
  </tableID>
  <timing>BEFORE</timing>
</trigger>
