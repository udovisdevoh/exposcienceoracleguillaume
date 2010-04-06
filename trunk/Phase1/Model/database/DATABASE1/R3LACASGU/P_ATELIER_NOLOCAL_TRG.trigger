<?xml version = '1.0' encoding = 'UTF-8'?>
<trigger xmlns="http://xmlns.oracle.com/jdeveloper/1111/offlinedb">
  <ID class="oracle.javatools.db.IdentifierBasedID">
    <name>P_ATELIER_NOLOCAL_TRG</name>
    <identifier class="java.lang.String">e1b83c6e-9615-41a3-a982-cb049136425d</identifier>
    <schemaName>R3LACASGU</schemaName>
    <type>TRIGGER</type>
  </ID>
  <name>P_ATELIER_NOLOCAL_TRG</name>
  <baseType>TABLE</baseType>
  <code>BEGIN
        INSERT INTO p_suivi_atelier VALUES (SEQ_SUIVI_ATEL.NEXTVAL,:OLD.NOATEL,:OLD.NOLOCAL);
      END;</code>
  <columnIDs>
    <columnID class="oracle.javatools.db.IdentifierBasedID">
      <name>NOLOCAL</name>
      <identifier class="java.lang.String">10fa399b-6c01-4f5a-903d-49916161a34b</identifier>
      <parent class="oracle.javatools.db.IdentifierBasedID">
        <name>P_ATELIER</name>
        <identifier class="java.lang.String">c4a809d1-48e6-4925-9fb6-cd1ef521d7ce</identifier>
        <schemaName>R3LACASGU</schemaName>
        <type>TABLE</type>
      </parent>
      <schemaName>R3LACASGU</schemaName>
      <type>COLUMN</type>
    </columnID>
  </columnIDs>
  <enabled>true</enabled>
  <events>
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
  <source>create or replace TRIGGER P_ATELIER_NOLOCAL_TRG
  BEFORE UPDATE OF NOLOCAL ON P_ATELIER
    FOR EACH ROW
      BEGIN
        INSERT INTO p_suivi_atelier VALUES (SEQ_SUIVI_ATEL.NEXTVAL,:OLD.NOATEL,:OLD.NOLOCAL);
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
