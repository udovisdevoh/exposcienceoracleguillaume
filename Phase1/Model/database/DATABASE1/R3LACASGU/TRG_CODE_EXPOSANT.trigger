<?xml version = '1.0' encoding = 'UTF-8'?>
<trigger xmlns="http://xmlns.oracle.com/jdeveloper/1111/offlinedb">
  <ID class="oracle.javatools.db.IdentifierBasedID">
    <name>TRG_CODE_EXPOSANT</name>
    <identifier class="java.lang.String">e8219dbd-799a-4912-81f5-6ec0d6f687cf</identifier>
    <schemaName>R3LACASGU</schemaName>
    <type>TRIGGER</type>
  </ID>
  <name>TRG_CODE_EXPOSANT</name>
  <baseType>TABLE</baseType>
  <code>DECLARE
	  vCode varchar2(16) := &apos;UNKNOWN&apos;;
	BEGIN
	&lt;&lt;COLUMN_SEQUENCES&gt;&gt;
	BEGIN    
    vCode := RPAD(:NEW.NOM, 4, &apos;x&apos;) || RPAD(:NEW.PRENOM, 4, &apos;x&apos;);
    SELECT vCode || COUNT(*) INTO vCode FROM P_EXPOSANT WHERE SUBSTR(CODEETUDIANT, 0, 8) = vCode;
    SELECT vCode INTO :NEW.CODEETUDIANT FROM DUAL;
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
  <source>CREATE OR REPLACE
TRIGGER TRG_CODE_EXPOSANT
BEFORE INSERT ON P_EXPOSANT
FOR EACH ROW
	DECLARE
	  vCode varchar2(16) := &apos;UNKNOWN&apos;;
	BEGIN
	&lt;&lt;COLUMN_SEQUENCES&gt;&gt;
	BEGIN    
    vCode := RPAD(:NEW.NOM, 4, &apos;x&apos;) || RPAD(:NEW.PRENOM, 4, &apos;x&apos;);
    SELECT vCode || COUNT(*) INTO vCode FROM P_EXPOSANT WHERE SUBSTR(CODEETUDIANT, 0, 8) = vCode;
    SELECT vCode INTO :NEW.CODEETUDIANT FROM DUAL;
  END COLUMN_SEQUENCES;
END;</source>
  <statementLevel>false</statementLevel>
  <tableID class="oracle.javatools.db.IdentifierBasedID">
    <name>P_EXPOSANT</name>
    <identifier class="java.lang.String">2a20e4b3-8452-4df7-905e-54804863ecf9</identifier>
    <schemaName>R3LACASGU</schemaName>
    <type>TABLE</type>
  </tableID>
  <timing>BEFORE</timing>
</trigger>
