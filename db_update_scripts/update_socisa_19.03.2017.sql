--
-- Disable foreign keys
--
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

SET NAMES 'utf8';

USE socisa;


DELIMITER $$

--
-- Drop procedure "UTILIZATORIsp_ChainDelete"
--
DROP PROCEDURE IF EXISTS UTILIZATORIsp_ChainDelete$$

--
-- Drop procedure "PLATIsp_ChainDelete"
--
DROP PROCEDURE IF EXISTS PLATIsp_ChainDelete$$

--
-- Drop procedure "NOTIFICARIsp_IsImported"
--
DROP PROCEDURE IF EXISTS NOTIFICARIsp_IsImported$$

--
-- Drop procedure "NOTIFICARIsp_Import"
--
DROP PROCEDURE IF EXISTS NOTIFICARIsp_Import$$

--
-- Drop procedure "MESAJEsp_SelectByParams"
--
DROP PROCEDURE IF EXISTS MESAJEsp_SelectByParams$$

--
-- Drop procedure "MESAJE2sp_select"
--
DROP PROCEDURE IF EXISTS MESAJE2sp_select$$

--
-- Drop procedure "DYNAMICsp_insert"
--
DROP PROCEDURE IF EXISTS DYNAMICsp_insert$$

--
-- Drop procedure "DUMMYsp_update"
--
DROP PROCEDURE IF EXISTS DUMMYsp_update$$

--
-- Drop procedure "DOSARE_DOCUMENTE_SCANATEsp_update"
--
DROP PROCEDURE IF EXISTS DOSARE_DOCUMENTE_SCANATEsp_update$$

--
-- Drop procedure "DOSARE_DOCUMENTE_SCANATEsp_select"
--
DROP PROCEDURE IF EXISTS DOSARE_DOCUMENTE_SCANATEsp_select$$

--
-- Drop procedure "DOSARE_DOCUMENTE_SCANATEsp_insert"
--
DROP PROCEDURE IF EXISTS DOSARE_DOCUMENTE_SCANATEsp_insert$$

--
-- Drop procedure "DOSARE_DOCUMENTE_SCANATEsp_GetByIdDosar"
--
DROP PROCEDURE IF EXISTS DOSARE_DOCUMENTE_SCANATEsp_GetByIdDosar$$

--
-- Drop procedure "DOSARE_DOCUMENTE_SCANATEsp_GetByIdDocument"
--
DROP PROCEDURE IF EXISTS DOSARE_DOCUMENTE_SCANATEsp_GetByIdDocument$$

--
-- Drop procedure "DOSAREsp_selectSimple"
--
DROP PROCEDURE IF EXISTS DOSAREsp_selectSimple$$

--
-- Drop procedure "DOSAREsp_count_filtered"
--
DROP PROCEDURE IF EXISTS DOSAREsp_count_filtered$$

DELIMITER ;

--
-- Drop table "dosare_documente_scanate"
--
DROP TABLE dosare_documente_scanate;

--
-- Alter table "actions"
--
ALTER TABLE actions
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER `ORDER`;

--
-- Alter table "actions_log"
--
ALTER TABLE actions_log
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER ERRORS;

--
-- Alter table "asigurati"
--
ALTER TABLE asigurati
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER DETALII;

--
-- Alter table "auto"
--
ALTER TABLE auto
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER DETALII;

--
-- Alter table "complete"
--
ALTER TABLE complete
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER DETALII;

--
-- Alter table "contracte"
--
ALTER TABLE contracte
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER OBSERVATII;

--
-- Alter table "drepturi"
--
ALTER TABLE drepturi
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER DETALII;

--
-- Alter table "import_log"
--
ALTER TABLE import_log
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER ERRORS;

--
-- Alter table "instante"
--
ALTER TABLE instante
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER DETALII;

--
-- Alter table "intervenienti"
--
ALTER TABLE intervenienti
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER DETALII;

--
-- Alter table "pending_import_errors"
--
ALTER TABLE pending_import_errors
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER DATA_ULTIMEI_MODIFICARI;

--
-- Alter table "plati"
--
ALTER TABLE plati
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER OBSERVATII;

--
-- Alter table "plati_contracte"
--
ALTER TABLE plati_contracte
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER INCASAT_CONTRACT;

--
-- Alter table "plati_taxa_timbru"
--
ALTER TABLE plati_taxa_timbru
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER OBSERVATII;

--
-- Alter table "sentinte"
--
ALTER TABLE sentinte
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER SOLUTIE;

--
-- Alter table "setari"
--
ALTER TABLE setari
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER VALOARE;

--
-- Alter table "societati_asigurare"
--
ALTER TABLE societati_asigurare
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER DENUMIRE_SCURTA;

--
-- Alter table "stadii"
--
ALTER TABLE stadii
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER STADIU_CU_TERMEN;

--
-- Alter table "templates"
--
ALTER TABLE templates
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER DETALII;

--
-- Alter table "tip_caz"
--
ALTER TABLE tip_caz
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER DETALII;

--
-- Alter table "tip_document"
--
ALTER TABLE tip_document
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER QINFO;

--
-- Alter table "tip_dosare"
--
ALTER TABLE tip_dosare
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER DETALII;

--
-- Alter table "tip_mesaje"
--
ALTER TABLE tip_mesaje
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER DETALII;

--
-- Alter table "tip_procese"
--
ALTER TABLE tip_procese
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER DETALII;

--
-- Alter table "tip_utilizatori"
--
ALTER TABLE tip_utilizatori
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER DETALII;

--
-- Alter table "contracte_plati_contracte"
--
ALTER TABLE contracte_plati_contracte
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER ID_PLATA_CONTRACT;

--
-- Alter table "dosare"
--
ALTER TABLE dosare
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER CAZ;

--
-- Alter table "procese"
--
ALTER TABLE procese
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER ID_TIP_PROCES;

--
-- Alter table "stadii_scadente"
--
ALTER TABLE stadii_scadente
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER ID_SETARE;

--
-- Alter table "stadii_setari"
--
ALTER TABLE stadii_setari
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER WARNING;

--
-- Alter table "utilizatori"
--
ALTER TABLE utilizatori
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER ID_SOCIETATE;

--
-- Alter table "compensari"
--
ALTER TABLE compensari
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER PAS;

--
-- Alter table "documente_scanate"
--
ALTER TABLE documente_scanate
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER CALE_FISIER;

--
-- Alter table "dosare_plati"
--
ALTER TABLE dosare_plati
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER ID_PLATA;

--
-- Alter table "dosare_plati_contracte"
--
ALTER TABLE dosare_plati_contracte
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER ID_PLATA_CONTRACT;

--
-- Alter table "dosare_portal"
--
ALTER TABLE dosare_portal
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER MONITORIZARE;

--
-- Alter table "dosare_procese"
--
ALTER TABLE dosare_procese
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER ID_PROCES;

--
-- Alter table "dosare_stadii"
--
ALTER TABLE dosare_stadii
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER TERMEN_ADMINISTRATIV;

--
-- Alter table "log"
--
ALTER TABLE log
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER DETALII_AFTER;

--
-- Alter table "mesaje"
--
ALTER TABLE mesaje
  CHANGE COLUMN ID_TIP_MESAJ ID_TIP_MESAJ INT(10) UNSIGNED DEFAULT NULL COMMENT 'VALOARE DIN NOMENCLATOR: SOLICITARE DOCUMENTE, DIMINUARE SUMA, EXPIRARE ETC.',
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER ID_TIP_MESAJ;

--
-- Alter table "procese_plati_taxa_timbru"
--
ALTER TABLE procese_plati_taxa_timbru
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER ID_PLATA_TAXA_TIMBRU;

--
-- Alter table "utilizatori_actions"
--
ALTER TABLE utilizatori_actions
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER ID_ACTION;

--
-- Alter table "utilizatori_dosare"
--
ALTER TABLE utilizatori_dosare
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER ID_DOSAR;

--
-- Alter table "utilizatori_drepturi"
--
ALTER TABLE utilizatori_drepturi
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER ID_DREPT;

--
-- Alter table "utilizatori_setari"
--
ALTER TABLE utilizatori_setari
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER VALOARE;

--
-- Alter table "utilizatori_societati"
--
ALTER TABLE utilizatori_societati
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER ID_SOCIETATE;

--
-- Alter table "utilizatori_societati_administrate"
--
ALTER TABLE utilizatori_societati_administrate
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER ID_SOCIETATE;

--
-- Alter table "dosare_stadii_sentinte"
--
ALTER TABLE dosare_stadii_sentinte
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER ID_SENTINTA;

--
-- Alter table "mesaje_utilizatori"
--
ALTER TABLE mesaje_utilizatori
  ADD COLUMN deleted TINYINT(1) DEFAULT NULL AFTER DATA_CITIRE;

DELIMITER $$

--
-- Create procedure "ACTIONSsp_count"
--
CREATE PROCEDURE ACTIONSsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM ACTIONS;
END
$$

--
-- Alter procedure "ACTIONSsp_GetById"
--
DROP PROCEDURE ACTIONSsp_GetById$$
CREATE PROCEDURE ACTIONSsp_GetById(
        _AUTHENTICATED_USER_ID INT,
        _ID INT
)
BEGIN
        SELECT * FROM vACTIONS WHERE ID = _ID;
END
$$

--
-- Alter procedure "ACTIONSsp_GetByName"
--
DROP PROCEDURE ACTIONSsp_GetByName$$
CREATE PROCEDURE ACTIONSsp_GetByName(
        _AUTHENTICATED_USER_ID INT,
        _NAME VARCHAR(100)
)
BEGIN
        SELECT * FROM vACTIONS WHERE NAME = _NAME;
END
$$

--
-- Alter procedure "ACTIONSsp_select"
--
DROP PROCEDURE ACTIONSsp_select$$
CREATE PROCEDURE ACTIONSsp_select(
        _AUTHENTICATED_USER_ID INT,
        _SORT VARCHAR(100),
        _ORDER VARCHAR(5),
        _FILTER VARCHAR(4000),
        _LIMIT VARCHAR(100)
    )
BEGIN
        DECLARE _DEFAULT_FILTER VARCHAR(2000);

        DECLARE _QUERY VARCHAR(8000);
        
        SET @_DEFAULT_FILTER = '1=1';

        IF _ORDER IS NULL AND _SORT IS NULL THEN
                 SET _SORT = ' ACTIONS.NAME ';
        END IF;

        SET @_QUERY = 'SELECT ACTIONS.* ';

            SET @_QUERY = CONCAT(@_QUERY,
                'FROM vACTIONS ACTIONS '
                );

        CASE WHEN _FILTER IS NOT NULL THEN
                SET @_QUERY = CONCAT(@_QUERY, ' WHERE (', @_DEFAULT_FILTER, ') AND (', _FILTER, ') ');
        ELSE
                BEGIN
                 SET @_QUERY = CONCAT(@_QUERY, ' WHERE ', @_DEFAULT_FILTER, ' ');
                END;
        END CASE;

        CASE WHEN _SORT IS NOT NULL THEN
                BEGIN
                        SET @_QUERY = CONCAT(@_QUERY, ' ORDER BY ', _SORT);
                END;
        ELSE
                SET @_QUERY = @_QUERY;
        END CASE;

        CASE WHEN _ORDER IS NOT NULL THEN
                SET @_QUERY = CONCAT(@_QUERY, ' ', _ORDER);
        ELSE
                SET @_QUERY = @_QUERY; 
        END CASE;

        IF _LIMIT IS NOT NULL THEN
                SET @_QUERY = CONCAT(@_QUERY, _LIMIT, ';');
        END IF;

        

          PREPARE stmt1 FROM @_QUERY;
          EXECUTE stmt1;
          DEALLOCATE PREPARE stmt1;
          


END
$$

--
-- Create procedure "ACTIONSsp_soft_delete"
--
CREATE PROCEDURE ACTIONSsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE ACTIONS SET deleted=true WHERE ID = _ID;
END
$$

--
-- Create procedure "ACTIONS_LOGsp_count"
--
CREATE PROCEDURE ACTIONS_LOGsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM actions_log;
 END
$$

--
-- Create procedure "ACTIONS_LOGsp_soft_delete"
--
CREATE PROCEDURE ACTIONS_LOGsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE actions_log SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Alter procedure "ASIGURATIsp_Combo"
--
DROP PROCEDURE ASIGURATIsp_Combo$$
CREATE PROCEDURE ASIGURATIsp_Combo(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT ID, DENUMIRE FROM vASIGURATI ORDER BY DENUMIRE ASC;
END
$$

--
-- Create procedure "ASIGURATIsp_count"
--
CREATE PROCEDURE ASIGURATIsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM asigurati;
 END
$$

--
-- Alter procedure "ASIGURATIsp_GetByDenumire"
--
DROP PROCEDURE ASIGURATIsp_GetByDenumire$$
CREATE PROCEDURE ASIGURATIsp_GetByDenumire(
        _AUTHENTICATED_USER_ID INT,
        _DENUMIRE VARCHAR(250)
)
BEGIN
        SELECT * FROM vASIGURATI WHERE DENUMIRE = _DENUMIRE;
END
$$

--
-- Alter procedure "ASIGURATIsp_GetById"
--
DROP PROCEDURE ASIGURATIsp_GetById$$
CREATE PROCEDURE ASIGURATIsp_GetById(
        _AUTHENTICATED_USER_ID INT,
        _ID INT
    )
BEGIN
        SELECT * FROM vASIGURATI WHERE ID = _ID;
END
$$

--
-- Alter procedure "ASIGURATIsp_select"
--
DROP PROCEDURE ASIGURATIsp_select$$
CREATE PROCEDURE ASIGURATIsp_select(
        _AUTHENTICATED_USER_ID INT,
        _SORT VARCHAR(100),
        _ORDER VARCHAR(5),
        _FILTER VARCHAR(4000),
        _LIMIT VARCHAR(100)
    )
BEGIN
        DECLARE _DEFAULT_FILTER VARCHAR(2000);

        DECLARE _QUERY VARCHAR(8000);
        
        SET @_DEFAULT_FILTER = '1=1';

        IF _ORDER IS NULL AND _SORT IS NULL THEN
                 SET _SORT = ' ASIGURATI.DENUMIRE ';
        END IF;

        SET @_QUERY = 'SELECT ASIGURATI.* ';

            SET @_QUERY = CONCAT(@_QUERY,
                'FROM vASIGURATI ASIGURATI '
                );

        CASE WHEN _FILTER IS NOT NULL THEN
                SET @_QUERY = CONCAT(@_QUERY, ' WHERE (', @_DEFAULT_FILTER, ') AND (', _FILTER, ') ');
        ELSE
                BEGIN
                 SET @_QUERY = CONCAT(@_QUERY, ' WHERE ', @_DEFAULT_FILTER, ' ');
                END;
        END CASE;

        CASE WHEN _SORT IS NOT NULL THEN
                BEGIN
                        SET @_QUERY = CONCAT(@_QUERY, ' ORDER BY ', _SORT);
                END;
        ELSE
                SET @_QUERY = @_QUERY;
        END CASE;

        CASE WHEN _ORDER IS NOT NULL THEN
                SET @_QUERY = CONCAT(@_QUERY, ' ', _ORDER);
        ELSE
                SET @_QUERY = @_QUERY; 
        END CASE;

        IF _LIMIT IS NOT NULL THEN
                SET @_QUERY = CONCAT(@_QUERY, _LIMIT, ';');
        END IF;

        

          PREPARE stmt1 FROM @_QUERY;
          EXECUTE stmt1;
          DEALLOCATE PREPARE stmt1;
          


END
$$

--
-- Create procedure "ASIGURATIsp_soft_delete"
--
CREATE PROCEDURE ASIGURATIsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE asigurati SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Alter procedure "AUTOsp_Combo"
--
DROP PROCEDURE AUTOsp_Combo$$
CREATE PROCEDURE AUTOsp_Combo(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
	SELECT ID, NR_AUTO FROM vAUTO ORDER BY NR_AUTO;
END
$$

--
-- Create procedure "AUTOsp_count"
--
CREATE PROCEDURE AUTOsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM auto;
 END
$$

--
-- Alter procedure "AUTOsp_GetById"
--
DROP PROCEDURE AUTOsp_GetById$$
CREATE PROCEDURE AUTOsp_GetById(
        _AUTHENTICATED_USER_ID INT,
        _ID INT
)
BEGIN
	SELECT * FROM vAUTO WHERE ID = _ID;
END
$$

--
-- Alter procedure "AUTOsp_GetByNrAuto"
--
DROP PROCEDURE AUTOsp_GetByNrAuto$$
CREATE PROCEDURE AUTOsp_GetByNrAuto(
        _AUTHENTICATED_USER_ID INT,
        _NR_AUTO VARCHAR(100))
BEGIN
        SELECT * FROM vAUTO WHERE NR_AUTO = _NR_AUTO;
END
$$

--
-- Alter procedure "AUTOsp_select"
--
DROP PROCEDURE AUTOsp_select$$
CREATE PROCEDURE AUTOsp_select(
        _AUTHENTICATED_USER_ID INT,
        _SORT VARCHAR(100),
        _ORDER VARCHAR(5),
        _FILTER VARCHAR(4000),
        _LIMIT VARCHAR(100)
    )
BEGIN
        DECLARE _DEFAULT_FILTER VARCHAR(2000);

        DECLARE _QUERY VARCHAR(8000);
        
        SET @_DEFAULT_FILTER = '1=1';

        IF _ORDER IS NULL AND _SORT IS NULL THEN
                 SET _SORT = ' AUTO.NR_AUTO ';
        END IF;

        SET @_QUERY = 'SELECT AUTO.* ';

            SET @_QUERY = CONCAT(@_QUERY,
                'FROM vAUTO AUTO '
                );

        CASE WHEN _FILTER IS NOT NULL THEN
                SET @_QUERY = CONCAT(@_QUERY, ' WHERE (', @_DEFAULT_FILTER, ') AND (', _FILTER, ') ');
        ELSE
                BEGIN
                 SET @_QUERY = CONCAT(@_QUERY, ' WHERE ', @_DEFAULT_FILTER, ' ');
                END;
        END CASE;

        CASE WHEN _SORT IS NOT NULL THEN
                BEGIN
                        SET @_QUERY = CONCAT(@_QUERY, ' ORDER BY ', _SORT);
                END;
        ELSE
                SET @_QUERY = @_QUERY;
        END CASE;

        CASE WHEN _ORDER IS NOT NULL THEN
                SET @_QUERY = CONCAT(@_QUERY, ' ', _ORDER);
        ELSE
                SET @_QUERY = @_QUERY; 
        END CASE;

        IF _LIMIT IS NOT NULL THEN
                SET @_QUERY = CONCAT(@_QUERY, _LIMIT, ';');
        END IF;

        

          PREPARE stmt1 FROM @_QUERY;
          EXECUTE stmt1;
          DEALLOCATE PREPARE stmt1;
          


END
$$

--
-- Create procedure "AUTOsp_soft_delete"
--
CREATE PROCEDURE AUTOsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE auto SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Alter procedure "CHILDRENsp_Get"
--
DROP PROCEDURE CHILDRENsp_Get$$
CREATE PROCEDURE CHILDRENsp_Get(
        _AUTHENTICATED_USER_ID INT,
        _PRIMARY_KEY_VALUE INT,
        _EXTERNAL_ID VARCHAR(100),
        _EXTERNAL_TABLE VARCHAR(100),
        _CHILDREN_ID_FIELD VARCHAR(100),
        _CHILDREN_ID_VALUE VARCHAR(100)
)
BEGIN
        DECLARE _QUERY VARCHAR(8000);
        SET @_QUERY = CONCAT('SELECT COUNT(*) FROM v', _EXTERNAL_TABLE, ' WHERE `', _EXTERNAL_ID, '` = ''', _PRIMARY_KEY_VALUE, ''' AND `', _CHILDREN_ID_FIELD, '` = ''', _CHILDREN_ID_VALUE, ''' ');
        PREPARE stmt1 FROM @_QUERY;
        EXECUTE stmt1;
        DEALLOCATE PREPARE stmt1;
END
$$

--
-- Alter procedure "CHILDRENSsp_Get"
--
DROP PROCEDURE CHILDRENSsp_Get$$
CREATE PROCEDURE CHILDRENSsp_Get(
        _AUTHENTICATED_USER_ID INT,
        _PRIMARY_KEY_VALUE INT,
        _EXTERNAL_ID VARCHAR(100),
        _EXTERNAL_TABLE VARCHAR(100)
)
BEGIN
        DECLARE _QUERY VARCHAR(8000);
        SET @_QUERY = CONCAT('SELECT COUNT(*) FROM v', _EXTERNAL_TABLE, ' WHERE `', _EXTERNAL_ID, '` = ''', _PRIMARY_KEY_VALUE, ''' ');
        PREPARE stmt1 FROM @_QUERY;
        EXECUTE stmt1;
        DEALLOCATE PREPARE stmt1;
END
$$

--
-- Create procedure "COMPENSARIsp_count"
--
CREATE PROCEDURE COMPENSARIsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM compensari;
 END
$$

--
-- Alter procedure "COMPENSARIsp_GetById"
--
DROP PROCEDURE COMPENSARIsp_GetById$$
CREATE PROCEDURE COMPENSARIsp_GetById(
        _AUTHENTICATED_USER_ID INT,
        _ID INT)
BEGIN
        SELECT * FROM vCOMPENSARI WHERE ID = _ID;
END
$$

--
-- Alter procedure "COMPENSARIsp_select"
--
DROP PROCEDURE COMPENSARIsp_select$$
CREATE PROCEDURE COMPENSARIsp_select(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT * FROM vCOMPENSARI;
END
$$

--
-- Create procedure "COMPENSARIsp_soft_delete"
--
CREATE PROCEDURE COMPENSARIsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE compensari SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Alter procedure "COMPLETEsp_Combo"
--
DROP PROCEDURE COMPLETEsp_Combo$$
CREATE PROCEDURE COMPLETEsp_Combo(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT ID, DENUMIRE FROM vCOMPLETE ORDER BY DENUMIRE ASC;
END
$$

--
-- Create procedure "COMPLETEsp_count"
--
CREATE PROCEDURE COMPLETEsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM complete;
 END
$$

--
-- Alter procedure "COMPLETEsp_GetById"
--
DROP PROCEDURE COMPLETEsp_GetById$$
CREATE PROCEDURE COMPLETEsp_GetById(
        _AUTHENTICATED_USER_ID INT,
        _ID INT
    )
BEGIN
        SELECT * FROM vCOMPLETE WHERE ID = _ID;
END
$$

--
-- Alter procedure "COMPLETEsp_select"
--
DROP PROCEDURE COMPLETEsp_select$$
CREATE PROCEDURE COMPLETEsp_select(
        _AUTHENTICATED_USER_ID INT,
        _SORT VARCHAR(100),
        _ORDER VARCHAR(5),
        _FILTER VARCHAR(8000),
        _LIMIT VARCHAR(1000)
    )
BEGIN
        DECLARE _DEFAULT_FILTER VARCHAR(2000);

        DECLARE _QUERY VARCHAR(8000);
        
        SET @_DEFAULT_FILTER = '1=1';

        IF _ORDER IS NULL AND _SORT IS NULL THEN
                 SET _SORT = ' COMPLETE.DENUMIRE ';
        END IF;

        SET @_QUERY = 'SELECT COMPLETE.* ';

            SET @_QUERY = CONCAT(@_QUERY,
                'FROM vCOMPLETE COMPLETE '
                );

        CASE WHEN _FILTER IS NOT NULL THEN
                SET @_QUERY = CONCAT(@_QUERY, ' WHERE (', @_DEFAULT_FILTER, ') AND (', _FILTER, ') ');
        ELSE
                BEGIN
                 SET @_QUERY = CONCAT(@_QUERY, ' WHERE ', @_DEFAULT_FILTER, ' ');
                END;
        END CASE;

        CASE WHEN _SORT IS NOT NULL THEN
                BEGIN
                        SET @_QUERY = CONCAT(@_QUERY, ' ORDER BY ', _SORT);
                END;
        ELSE
                SET @_QUERY = @_QUERY;
        END CASE;

        CASE WHEN _ORDER IS NOT NULL THEN
                SET @_QUERY = CONCAT(@_QUERY, ' ', _ORDER);
        ELSE
                SET @_QUERY = @_QUERY; 
        END CASE;

        IF _LIMIT IS NOT NULL THEN
                SET @_QUERY = CONCAT(@_QUERY, _LIMIT, ';');
        END IF;

        

          PREPARE stmt1 FROM @_QUERY;
          EXECUTE stmt1;
          DEALLOCATE PREPARE stmt1;
          


END
$$

--
-- Create procedure "COMPLETEsp_soft_delete"
--
CREATE PROCEDURE COMPLETEsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE complete SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Alter procedure "CONTRACTEsp_Combo"
--
DROP PROCEDURE CONTRACTEsp_Combo$$
CREATE PROCEDURE CONTRACTEsp_Combo(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT ID, CONCAT(IF(NR_CONTRACT IS NULL, '', NR_CONTRACT), ' / ', IF(DATA_CONTRACT IS NULL, '', DATE_FORMAT(DATA_CONTRACT, '%d.%c.%Y'))) CONTRACT FROM vCONTRACTE ORDER BY NR_CONTRACT ASC;
END
$$

--
-- Create procedure "CONTRACTEsp_count"
--
CREATE PROCEDURE CONTRACTEsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM contracte;
 END
$$

--
-- Alter procedure "CONTRACTEsp_GetById"
--
DROP PROCEDURE CONTRACTEsp_GetById$$
CREATE PROCEDURE CONTRACTEsp_GetById(
        _AUTHENTICATED_USER_ID INT,
        _ID INT
    )
BEGIN
        SELECT * FROM vCONTRACTE WHERE ID = _ID;
END
$$

--
-- Alter procedure "CONTRACTEsp_GetIdRegres"
--
DROP PROCEDURE CONTRACTEsp_GetIdRegres$$
CREATE PROCEDURE CONTRACTEsp_GetIdRegres(
        _AUTHENTICATED_USER_ID INT,
        _ID_CONTRACT INT
    )
BEGIN
        SELECT ID_DOSAR FROM vDOSARE_CONTRACTE WHERE ID_CONTRACT = _ID_CONTRACT LIMIT 1;
END
$$

--
-- Alter procedure "CONTRACTEsp_IsAssigned"
--
DROP PROCEDURE CONTRACTEsp_IsAssigned$$
CREATE PROCEDURE CONTRACTEsp_IsAssigned(
        _AUTHENTICATED_USER_ID INT,
        _ID_DOSAR INT,
        _ID_CONTRACT INT
    )
BEGIN
        SELECT COUNT(*) FROM vDOSARE_CONTRACTE WHERE ID_DOSAR = _ID_DOSAR AND ID_CONTRACT = _ID_CONTRACT;
END
$$

--
-- Alter procedure "CONTRACTEsp_select"
--
DROP PROCEDURE CONTRACTEsp_select$$
CREATE PROCEDURE CONTRACTEsp_select(
        _AUTHENTICATED_USER_ID INT,
        _SORT VARCHAR(100),
        _ORDER VARCHAR(5),
        _FILTER VARCHAR(4000),
        _LIMIT VARCHAR(100)
    )
BEGIN
        DECLARE _DEFAULT_FILTER VARCHAR(2000);

        DECLARE _QUERY VARCHAR(8000);
        
        SET @_DEFAULT_FILTER = '1=1';

        IF _ORDER IS NULL AND _SORT IS NULL THEN
                 SET _SORT = ' CONTRACTE.NR_CONTRACT ';
        END IF;

        SET @_QUERY = 'SELECT CONTRACTE.* ';

            SET @_QUERY = CONCAT(@_QUERY,
                'FROM vCONTRACTE CONTRACTE '
                );

        CASE WHEN _FILTER IS NOT NULL THEN
                SET @_QUERY = CONCAT(@_QUERY, ' WHERE (', @_DEFAULT_FILTER, ') AND (', _FILTER, ') ');
        ELSE
                BEGIN
                 SET @_QUERY = CONCAT(@_QUERY, ' WHERE ', @_DEFAULT_FILTER, ' ');
                END;
        END CASE;

        CASE WHEN _SORT IS NOT NULL THEN
                BEGIN
                        SET @_QUERY = CONCAT(@_QUERY, ' ORDER BY ', _SORT);
                END;
        ELSE
                SET @_QUERY = @_QUERY;
        END CASE;

        CASE WHEN _ORDER IS NOT NULL THEN
                SET @_QUERY = CONCAT(@_QUERY, ' ', _ORDER);
        ELSE
                SET @_QUERY = @_QUERY; 
        END CASE;

        IF _LIMIT IS NOT NULL THEN
                SET @_QUERY = CONCAT(@_QUERY, _LIMIT, ';');
        END IF;

        

          PREPARE stmt1 FROM @_QUERY;
          EXECUTE stmt1;
          DEALLOCATE PREPARE stmt1;
          


END
$$

--
-- Create procedure "CONTRACTEsp_soft_delete"
--
CREATE PROCEDURE CONTRACTEsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE contracte SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Create procedure "CONTRACTE_PLATI_CONTRACTEsp_count"
--
CREATE PROCEDURE CONTRACTE_PLATI_CONTRACTEsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM contracte_plati_contracte;
 END
$$

--
-- Alter procedure "CONTRACTE_PLATI_CONTRACTEsp_GetByIdDosar"
--
DROP PROCEDURE CONTRACTE_PLATI_CONTRACTEsp_GetByIdDosar$$
CREATE PROCEDURE CONTRACTE_PLATI_CONTRACTEsp_GetByIdDosar(
        _AUTHENTICATED_USER_ID INT,
        _ID_CONTRACT INT)
BEGIN
        SELECT * FROM vCONTRACTE_PLATI_CONTRACTE WHERE ID_CONTRACT = _ID_CONTRACT;
END
$$

--
-- Create procedure "CONTRACTE_PLATI_CONTRACTEsp_soft_delete"
--
CREATE PROCEDURE CONTRACTE_PLATI_CONTRACTEsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE contracte_plati_contracte SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Create procedure "DOCUMENTE_SCANATEsp_count"
--
CREATE PROCEDURE DOCUMENTE_SCANATEsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM documente_scanate;
 END
$$

--
-- Alter procedure "DOCUMENTE_SCANATEsp_GetByFileName"
--
DROP PROCEDURE DOCUMENTE_SCANATEsp_GetByFileName$$
CREATE PROCEDURE DOCUMENTE_SCANATEsp_GetByFileName(
        _AUTHENTICATED_USER_ID INT,
        _FILE_NAME varchar(250))
BEGIN
        SELECT * FROM vDOCUMENTE_SCANATE WHERE DENUMIRE_FISIER = _FILE_NAME;
END
$$

--
-- Alter procedure "DOCUMENTE_SCANATEsp_GetById"
--
DROP PROCEDURE DOCUMENTE_SCANATEsp_GetById$$
CREATE PROCEDURE DOCUMENTE_SCANATEsp_GetById(
        _AUTHENTICATED_USER_ID INT,
        _ID INT)
BEGIN
        SELECT * FROM vDOCUMENTE_SCANATE WHERE ID = _ID;
END
$$

--
-- Alter procedure "DOCUMENTE_SCANATEsp_GetByIdDosar"
--
DROP PROCEDURE DOCUMENTE_SCANATEsp_GetByIdDosar$$
CREATE PROCEDURE DOCUMENTE_SCANATEsp_GetByIdDosar(
        _AUTHENTICATED_USER_ID INT,
        _ID_DOSAR INT)
BEGIN
        DECLARE _DEFAULT_FILTER VARCHAR(2000);
        DECLARE _QUERY VARCHAR(8000);
        
        SET @_DEFAULT_FILTER = CONCAT('(', _AUTHENTICATED_USER_ID, ' IN (SELECT ID_UTILIZATOR FROM vUTILIZATORI_DREPTURI WHERE ID_DREPT IN (SELECT ID FROM vDREPTURI WHERE UPPER(DENUMIRE)=''VIZUALIZARE'')) OR ', _AUTHENTICATED_USER_ID, ' IN (SELECT ID_UTILIZATOR FROM vUTILIZATORI_DREPTURI WHERE ID_DREPT IN (SELECT ID FROM vDREPTURI WHERE UPPER(DENUMIRE)=''ADMINISTRARE''))) AND ');

        
        SET @_DEFAULT_FILTER = CONCAT('(', _AUTHENTICATED_USER_ID, ' IN (SELECT ID FROM vUTILIZATORI WHERE ID_TIP_UTILIZATOR = (SELECT ID FROM vTIP_UTILIZATORI WHERE UPPER(DENUMIRE)=''ADMINISTRATOR'')) OR ');

        
        SET @_DEFAULT_FILTER = CONCAT(@_DEFAULT_FILTER, '(', _AUTHENTICATED_USER_ID, ' IN (SELECT ID FROM UTILIZATORI WHERE ID_TIP_UTILIZATOR = (SELECT ID FROM TIP_UTILIZATORI WHERE UPPER(DENUMIRE) LIKE ''%SUPER%'')) AND
                (D.ID_SOCIETATE_CASCO IN (SELECT ID_SOCIETATE FROM vUTILIZATORI_SOCIETATI WHERE ID_UTILIZATOR=', _AUTHENTICATED_USER_ID, ') OR (DS.VIZA_CASCO = TRUE AND D.ID_SOCIETATE_RCA IN (SELECT ID_SOCIETATE FROM vUTILIZATORI_SOCIETATI WHERE ID_UTILIZATOR=', _AUTHENTICATED_USER_ID, '))) ) OR ');


        SET @_DEFAULT_FILTER = CONCAT(@_DEFAULT_FILTER, '(', _AUTHENTICATED_USER_ID, ' IN (SELECT ID FROM vUTILIZATORI WHERE ID_TIP_UTILIZATOR = (SELECT ID FROM vTIP_UTILIZATORI WHERE UPPER(DENUMIRE) LIKE ''%REGULAR%'')) AND
                ((D.ID_SOCIETATE_CASCO IN (SELECT ID_SOCIETATE FROM vUTILIZATORI_SOCIETATI WHERE ID_UTILIZATOR=', _AUTHENTICATED_USER_ID, ') AND D.ID_SOCIETATE_RCA IN (SELECT ID_SOCIETATE FROM vUTILIZATORI_SOCIETATI_ADMINISTRATE WHERE ID_UTILIZATOR=', _AUTHENTICATED_USER_ID, ')) OR
                ((D.ID_SOCIETATE_RCA IN (SELECT ID_SOCIETATE FROM vUTILIZATORI_SOCIETATI WHERE ID_UTILIZATOR=', _AUTHENTICATED_USER_ID, ') AND DS.VIZA_CASCO = TRUE) AND D.ID_SOCIETATE_CASCO IN (SELECT ID_SOCIETATE FROM vUTILIZATORI_SOCIETATI_ADMINISTRATE WHERE ID_UTILIZATOR=', _AUTHENTICATED_USER_ID, ')) )) )');


        SET @_QUERY = CONCAT('SELECT DS.* FROM vDOCUMENTE_SCANATE DS INNER JOIN vDOSARE D ON DS.ID_DOSAR=D.ID WHERE DS.ID_DOSAR = ', _ID_DOSAR, ' AND (', @_DEFAULT_FILTER, ')');

        

          PREPARE stmt1 FROM @_QUERY;
          EXECUTE stmt1;
          DEALLOCATE PREPARE stmt1;
END
$$

--
-- Alter procedure "DOCUMENTE_SCANATEsp_select"
--
DROP PROCEDURE DOCUMENTE_SCANATEsp_select$$
CREATE PROCEDURE DOCUMENTE_SCANATEsp_select(
        _AUTHENTICATED_USER_ID INT,
        _SORT VARCHAR(100),
        _ORDER VARCHAR(5),
        _FILTER VARCHAR(4000),
        _LIMIT VARCHAR(100)
    )
BEGIN
        DECLARE _DEFAULT_FILTER VARCHAR(2000);

        DECLARE _QUERY VARCHAR(8000);
        
        SET @_DEFAULT_FILTER = '1=1';

        IF _ORDER IS NULL AND _SORT IS NULL THEN
                 SET _SORT = ' DOCUMENTE_SCANATE.DENUMIRE_FISIER ';
        END IF;

        SET @_QUERY = 'SELECT DOCUMENTE_SCANATE.* ';

            SET @_QUERY = CONCAT(@_QUERY,
                'FROM vDOCUMENTE_SCANATE DOCUMENTE_SCANATE '
                );

        CASE WHEN _FILTER IS NOT NULL THEN
                SET @_QUERY = CONCAT(@_QUERY, ' WHERE (', @_DEFAULT_FILTER, ') AND (', _FILTER, ') ');
        ELSE
                BEGIN
                 SET @_QUERY = CONCAT(@_QUERY, ' WHERE ', @_DEFAULT_FILTER, ' ');
                END;
        END CASE;

        CASE WHEN _SORT IS NOT NULL THEN
                BEGIN
                        SET @_QUERY = CONCAT(@_QUERY, ' ORDER BY ', _SORT);
                END;
        ELSE
                SET @_QUERY = @_QUERY;
        END CASE;

        CASE WHEN _ORDER IS NOT NULL THEN
                SET @_QUERY = CONCAT(@_QUERY, ' ', _ORDER);
        ELSE
                SET @_QUERY = @_QUERY; 
        END CASE;

        IF _LIMIT IS NOT NULL THEN
                SET @_QUERY = CONCAT(@_QUERY, _LIMIT, ';');
        END IF;

        

          PREPARE stmt1 FROM @_QUERY;
          EXECUTE stmt1;
          DEALLOCATE PREPARE stmt1;
          


END
$$

--
-- Create procedure "DOCUMENTE_SCANATEsp_soft_delete"
--
CREATE PROCEDURE DOCUMENTE_SCANATEsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE documente_scanate SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Alter procedure "DOSAREsp_count"
--
DROP PROCEDURE DOSAREsp_count$$
CREATE PROCEDURE DOSAREsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM vDOSARE;
END
$$

--
-- Alter procedure "DOSAREsp_GetById"
--
DROP PROCEDURE DOSAREsp_GetById$$
CREATE PROCEDURE DOSAREsp_GetById(
        _AUTHENTICATED_USER_ID INT,
        _ID INT
    )
BEGIN
        SELECT D.*,
                        ASIGC.DENUMIRE ASIGURAT_CASCO,
                        ASIGR.DENUMIRE ASIGURAT_RCA,
                        AC.NR_AUTO NR_AUTO_CASCO,
                        AR.NR_AUTO NR_AUTO_RCA,
                        SC.DENUMIRE ASIGURATOR_CASCO,
                        SR.DENUMIRE ASIGURATOR_RCA,
                        I.DENUMIRE INTERVENIENT,
                        TD.DENUMIRE TIP_DOSAR
                FROM vDOSARE D
                LEFT JOIN vASIGURATI ASIGC ON D.ID_ASIGURAT_CASCO=ASIGC.ID
                LEFT JOIN vASIGURATI ASIGR ON D.ID_ASIGURAT_RCA=ASIGR.ID
                LEFT JOIN vAUTO AC ON D.ID_AUTO_CASCO=AC.ID
                LEFT JOIN vAUTO AR ON D.ID_AUTO_RCA=AR.ID
                LEFT JOIN vSOCIETATI_ASIGURARE SC ON D.ID_SOCIETATE_CASCO=SC.ID
                LEFT JOIN vSOCIETATI_ASIGURARE SR ON D.ID_SOCIETATE_RCA=SR.ID
                LEFT JOIN vINTERVENIENTI I ON D.ID_INTERVENIENT=I.ID
                LEFT JOIN vTIP_DOSARE TD ON D.ID_TIP_DOSAR=TD.ID                        
        WHERE D.ID = _ID;
END
$$

--
-- Alter procedure "DOSAREsp_GetByNrCasco"
--
DROP PROCEDURE DOSAREsp_GetByNrCasco$$
CREATE PROCEDURE DOSAREsp_GetByNrCasco(
        _AUTHENTICATED_USER_ID INT,
        _NR_CASCO VARCHAR(100)
    )
BEGIN
        SELECT * FROM vDOSARE WHERE NR_DOSAR_CASCO = _NR_CASCO LIMIT 1;
END
$$

--
-- Alter procedure "DOSAREsp_GetByNrDosar"
--
DROP PROCEDURE DOSAREsp_GetByNrDosar$$
CREATE PROCEDURE DOSAREsp_GetByNrDosar(
        _AUTHENTICATED_USER_ID INT,
        _NR_DOSAR VARCHAR(100)
    )
BEGIN
        SELECT R.ID FROM vDOSARE R INNER JOIN vDOSARE_PROCESE RD ON R.ID=RD.ID_DOSAR INNER JOIN vPROCESE D ON RD.ID_PROCES=D.ID WHERE D.NR_DOSAR_INSTANTA = _NR_DOSAR LIMIT 1;
END
$$

--
-- Alter procedure "DOSAREsp_GetDataUltimeiModificari"
--
DROP PROCEDURE DOSAREsp_GetDataUltimeiModificari$$
CREATE PROCEDURE DOSAREsp_GetDataUltimeiModificari(
        _AUTHENTICATED_USER_ID INT,
        _ID_DOSAR INT)
BEGIN
        SELECT DATA_ULTIMEI_MODIFICARI FROM vDOSARE WHERE ID = _ID_DOSAR;
END
$$

--
-- Alter procedure "DOSAREsp_GetImportDates"
--
DROP PROCEDURE DOSAREsp_GetImportDates$$
CREATE PROCEDURE DOSAREsp_GetImportDates(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT DISTINCT DATA_IMPORT FROM vIMPORT_LOG ORDER BY DATA_IMPORT DESC;
END
$$

--
-- Alter procedure "DOSAREsp_GetInvolvedParties"
--
DROP PROCEDURE DOSAREsp_GetInvolvedParties$$
CREATE PROCEDURE DOSAREsp_GetInvolvedParties(
        _AUTHENTICATED_USER_ID INT,
        _ID_DOSAR INT)
BEGIN
        SELECT ID FROM vUTILIZATORI WHERE ID_SOCIETATE IN (SELECT ID_SOCIETATE_CASCO FROM vDOSARE WHERE ID = _ID_DOSAR) OR ID_SOCIETATE IN (SELECT ID_SOCIETATE_RCA FROM vDOSARE WHERE ID = _ID_DOSAR)
        UNION
        
        SELECT ID_UTILIZATOR ID FROM vUTILIZATORI_DOSARE WHERE ID_DOSAR = _ID_DOSAR AND ID_UTILIZATOR NOT IN (SELECT ID FROM vUTILIZATORI WHERE ID_SOCIETATE IN (SELECT ID_SOCIETATE_CASCO FROM vDOSARE WHERE ID = _ID_DOSAR) OR ID_SOCIETATE IN (SELECT ID_SOCIETATE_RCA FROM vDOSARE WHERE ID = _ID_DOSAR));
END
$$

--
-- Alter procedure "DOSAREsp_select"
--
DROP PROCEDURE DOSAREsp_select$$
CREATE PROCEDURE DOSAREsp_select(
        _AUTHENTICATED_USER_ID INT,
        _SORT VARCHAR(100),
        _ORDER VARCHAR(5),
        _FILTER VARCHAR(8000),
        _LIMIT VARCHAR(1000)
    )
BEGIN
        DECLARE _DEFAULT_FILTER VARCHAR(2000);
        DECLARE _QUERY VARCHAR(8000);

        SET @_DEFAULT_FILTER = CONCAT('(', _AUTHENTICATED_USER_ID, ' IN (SELECT ID_UTILIZATOR FROM vUTILIZATORI_DREPTURI WHERE ID_DREPT IN (SELECT ID FROM vDREPTURI WHERE UPPER(DENUMIRE)=''VIZUALIZARE'')) OR ', _AUTHENTICATED_USER_ID, ' IN (SELECT ID_UTILIZATOR FROM vUTILIZATORI_DREPTURI WHERE ID_DREPT IN (SELECT ID FROM vDREPTURI WHERE UPPER(DENUMIRE)=''ADMINISTRARE''))) AND ');

        
        SET @_DEFAULT_FILTER = CONCAT('(', _AUTHENTICATED_USER_ID, ' IN (SELECT ID FROM vUTILIZATORI WHERE ID_TIP_UTILIZATOR = (SELECT ID FROM vTIP_UTILIZATORI WHERE UPPER(DENUMIRE)=''ADMINISTRATOR'')) OR ');

        
        SET @_DEFAULT_FILTER = CONCAT(@_DEFAULT_FILTER, '(', _AUTHENTICATED_USER_ID, ' IN (SELECT ID FROM vUTILIZATORI WHERE ID_TIP_UTILIZATOR = (SELECT ID FROM vTIP_UTILIZATORI WHERE UPPER(DENUMIRE) LIKE ''%SUPER%'')) AND
                (DOSARE.ID_SOCIETATE_CASCO IN (SELECT ID_SOCIETATE FROM vUTILIZATORI WHERE ID=', _AUTHENTICATED_USER_ID, ') OR DOSARE.ID_SOCIETATE_RCA IN (SELECT ID_SOCIETATE FROM vUTILIZATORI WHERE ID=', _AUTHENTICATED_USER_ID, ')) ) OR ');

        
        SET @_DEFAULT_FILTER = CONCAT(@_DEFAULT_FILTER, '(', _AUTHENTICATED_USER_ID, ' IN (SELECT ID FROM vUTILIZATORI WHERE ID_TIP_UTILIZATOR = (SELECT ID FROM vTIP_UTILIZATORI WHERE UPPER(DENUMIRE) LIKE ''%REGULAR%'')) AND
                ((DOSARE.ID_SOCIETATE_CASCO IN (SELECT ID_SOCIETATE FROM vUTILIZATORI WHERE ID=', _AUTHENTICATED_USER_ID, ') AND DOSARE.ID_SOCIETATE_RCA IN (SELECT ID_SOCIETATE FROM vUTILIZATORI_SOCIETATI_ADMINISTRATE WHERE ID_UTILIZATOR=', _AUTHENTICATED_USER_ID, ')) OR
                (DOSARE.ID_SOCIETATE_RCA IN (SELECT ID_SOCIETATE FROM vUTILIZATORI WHERE ID=', _AUTHENTICATED_USER_ID, ') AND DOSARE.ID_SOCIETATE_CASCO IN (SELECT ID_SOCIETATE FROM vUTILIZATORI_SOCIETATI_ADMINISTRATE WHERE ID_UTILIZATOR=', _AUTHENTICATED_USER_ID, ')) )) )');

        IF _ORDER IS NULL AND _SORT IS NULL THEN
                 SET _SORT = ' DOSARE.DATA_AVIZARE DESC ';
        END IF;
        
        SET @_QUERY = 'SELECT DOSARE.* ';

            SET @_QUERY = CONCAT(@_QUERY,
                'FROM vDOSARE DOSARE ',
                
                
                'LEFT JOIN vASIGURATI ASIGC ON DOSARE.ID_ASIGURAT_CASCO=ASIGC.ID ',
                'LEFT JOIN vASIGURATI ASIGR ON DOSARE.ID_ASIGURAT_RCA=ASIGR.ID ',
                'LEFT JOIN vAUTO AC ON DOSARE.ID_AUTO_CASCO=AC.ID ',
                'LEFT JOIN vAUTO AR ON DOSARE.ID_AUTO_RCA=AR.ID ',
                'LEFT JOIN vSOCIETATI_ASIGURARE SC ON DOSARE.ID_SOCIETATE_CASCO=SC.ID ',
                'LEFT JOIN vSOCIETATI_ASIGURARE SR ON DOSARE.ID_SOCIETATE_RCA=SR.ID ',
                'LEFT JOIN vINTERVENIENTI I ON DOSARE.ID_INTERVENIENT=I.ID ',
                'LEFT JOIN vTIP_DOSARE TD ON DOSARE.ID_TIP_DOSAR=TD.ID '
                );

        CASE WHEN _FILTER IS NOT NULL THEN
                SET @_QUERY = CONCAT(@_QUERY, ' WHERE (', @_DEFAULT_FILTER, ') AND (', _FILTER, ') ');
        ELSE
                BEGIN
                 SET @_QUERY = CONCAT(@_QUERY, ' WHERE (', @_DEFAULT_FILTER, ') ');
                END;
        END CASE;

        CASE WHEN _SORT IS NOT NULL THEN
                BEGIN
                        CASE WHEN _SORT = 'ASIGURAT_CASCO' THEN
                                SET @_QUERY = CONCAT(@_QUERY, ' ORDER BY ASIGC.DENUMIRE');
                        WHEN _SORT = 'ASIGURAT_RCA' THEN
                                SET @_QUERY = CONCAT(@_QUERY, ' ORDER BY ASIGR.DENUMIRE');
                        WHEN _SORT = 'ASIGURATOR_CASCO' THEN
                                SET @_QUERY = CONCAT(@_QUERY, ' ORDER BY SC.DENUMIRE');
                        WHEN _SORT = 'ASIGURATOR_RCA' THEN
                                SET @_QUERY = CONCAT(@_QUERY, ' ORDER BY SR.DENUMIRE');
                        WHEN _SORT = 'INTERVENIENT' THEN
                                SET @_QUERY = CONCAT(@_QUERY, ' ORDER BY I.DENUMIRE');
                        WHEN _SORT = 'NR_AUTO_CASCO' THEN
                                SET @_QUERY = CONCAT(@_QUERY, ' ORDER BY AC.NR_AUTO');
                        WHEN _SORT = 'NR_AUTO_RCA' THEN
                                SET @_QUERY = CONCAT(@_QUERY, ' ORDER BY AR.NR_AUTO');
                        WHEN _SORT = 'TIP_DOSAR' THEN
                                SET @_QUERY = CONCAT(@_QUERY, ' ORDER BY TD.DENUMIRE');
                        ELSE
                                SET @_QUERY = CONCAT(@_QUERY, ' ORDER BY ', _SORT);
                        END CASE;
                END;
        ELSE
                SET @_QUERY = @_QUERY;
        END CASE;

        CASE WHEN _ORDER IS NOT NULL THEN
                SET @_QUERY = CONCAT(@_QUERY, ' ', _ORDER);
        ELSE
                SET @_QUERY = @_QUERY; 
        END CASE;

        IF _LIMIT IS NOT NULL THEN
                SET @_QUERY = CONCAT(@_QUERY, _LIMIT, ';');
        END IF;

        

          PREPARE stmt1 FROM @_QUERY;
          EXECUTE stmt1;
          DEALLOCATE PREPARE stmt1;
         
END
$$

--
-- Create procedure "DOSAREsp_soft_delete"
--
CREATE PROCEDURE DOSAREsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE dosare SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Create procedure "DOSARE_PLATIsp_count"
--
CREATE PROCEDURE DOSARE_PLATIsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM dosare_plati;
 END
$$

--
-- Alter procedure "DOSARE_PLATIsp_GetByIdDosar"
--
DROP PROCEDURE DOSARE_PLATIsp_GetByIdDosar$$
CREATE PROCEDURE DOSARE_PLATIsp_GetByIdDosar(
        _AUTHENTICATED_USER_ID INT,
        _ID_DOSAR INT)
BEGIN
        SELECT * FROM vDOSARE_PLATI WHERE ID_DOSAR = _ID_DOSAR;
END
$$

--
-- Alter procedure "DOSARE_PLATIsp_IsImported"
--
DROP PROCEDURE DOSARE_PLATIsp_IsImported$$
CREATE PROCEDURE DOSARE_PLATIsp_IsImported(
        _AUTHENTICATED_USER_ID INT,
        _NR_AZT VARCHAR(250),
        _AUTO_AZT VARCHAR(250),
        _POLITA_AZT VARCHAR(250)
    )
BEGIN
        DECLARE _VAL VARCHAR(250);
        SET _VAL = (SELECT NR_AZT FROM vDOSARE WHERE NR_AZT = _NR_AZT);
        IF _VAL IS NULL THEN
                BEGIN
                SET _VAL = (SELECT NR_AZT FROM vDOSARE WHERE POLITA_AZT = _POLITA_AZT);
                IF _VAL IS NULL THEN
                        SET _VAL = (SELECT NR_AZT FROM vDOSARE WHERE AUTO_AZT = _AUTO_AZT);
                END IF;
                END;
        END IF;
        SELECT _VAL;
END
$$

--
-- Alter procedure "DOSARE_PLATIsp_select"
--
DROP PROCEDURE DOSARE_PLATIsp_select$$
CREATE PROCEDURE DOSARE_PLATIsp_select(
        _AUTHENTICATED_USER_ID INT,
        _SORT VARCHAR(100),
        _ORDER VARCHAR(5),
        _FILTER VARCHAR(4000),
        _LIMIT VARCHAR(100)
)
BEGIN
        SELECT * FROM vDOSARE_PLATI;
END
$$

--
-- Create procedure "DOSARE_PLATIsp_soft_delete"
--
CREATE PROCEDURE DOSARE_PLATIsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE dosare_plati SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Create procedure "DOSARE_PLATI_CONTRACTEsp_count"
--
CREATE PROCEDURE DOSARE_PLATI_CONTRACTEsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM dosare_plati_contracte;
 END
$$

--
-- Create procedure "DOSARE_PLATI_CONTRACTEsp_soft_delete"
--
CREATE PROCEDURE DOSARE_PLATI_CONTRACTEsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE dosare_plati_contracte SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Create procedure "DOSARE_PORTALsp_count"
--
CREATE PROCEDURE DOSARE_PORTALsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM dosare_portal;
 END
$$

--
-- Alter procedure "DOSARE_PORTALsp_select"
--
DROP PROCEDURE DOSARE_PORTALsp_select$$
CREATE PROCEDURE DOSARE_PORTALsp_select(
        _AUTHENTICATED_USER_ID INT,
        _DATA DATETIME)
BEGIN
        SELECT * FROM vDOSARE_PORTAL WHERE DATA=_DATA;
END
$$

--
-- Create procedure "DOSARE_PORTALsp_soft_delete"
--
CREATE PROCEDURE DOSARE_PORTALsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE dosare_portal SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Create procedure "DOSARE_PROCESEsp_count"
--
CREATE PROCEDURE DOSARE_PROCESEsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM dosare_procese;
 END
$$

--
-- Create procedure "DOSARE_PROCESEsp_soft_delete"
--
CREATE PROCEDURE DOSARE_PROCESEsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE dosare_procese SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Create procedure "DOSARE_STADIIsp_count"
--
CREATE PROCEDURE DOSARE_STADIIsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM dosare_stadii;
 END
$$

--
-- Create procedure "DOSARE_STADIIsp_soft_delete"
--
CREATE PROCEDURE DOSARE_STADIIsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE dosare_stadii SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Create procedure "DOSARE_STADII_SENTINTEsp_count"
--
CREATE PROCEDURE DOSARE_STADII_SENTINTEsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM dosare_stadii_sentinte;
 END
$$

--
-- Create procedure "DOSARE_STADII_SENTINTEsp_soft_delete"
--
CREATE PROCEDURE DOSARE_STADII_SENTINTEsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE dosare_stadii_sentinte SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Alter procedure "DOSARE_UTILIZATORIsp_GetByIdDosar"
--
DROP PROCEDURE DOSARE_UTILIZATORIsp_GetByIdDosar$$
CREATE PROCEDURE DOSARE_UTILIZATORIsp_GetByIdDosar(
        _AUTHENTICATED_USER_ID INT,
        _ID_DOSAR INT
    )
BEGIN
        SELECT U.*, R2.ID_DOSAR FROM
        (SELECT RU.* FROM vDOSARE R
                INNER JOIN vDOSARE_UTILIZATORI RU ON R.ID = RU.ID_DOSAR
                WHERE R.ID = _ID_DOSAR) R2
        RIGHT JOIN vUTILIZATORI U ON R2.ID_DOCUMENT = U.ID
        ORDER BY U.USER_NAME;
END
$$

--
-- Alter procedure "DOSARE_UTILIZATORIsp_IsAssigned"
--
DROP PROCEDURE DOSARE_UTILIZATORIsp_IsAssigned$$
CREATE PROCEDURE DOSARE_UTILIZATORIsp_IsAssigned(
        _AUTHENTICATED_USER_ID INT,
        _ID_DOSAR INT,
        _ID_UTILIZATOR INT
    )
BEGIN
        DECLARE _CNT INT;
        SET _CNT = (SELECT COUNT(*) CNT FROM vUTILIZATORI_DREPTURI UD INNER JOIN vDREPTURI DR ON UD.ID_DREPT = DR.ID WHERE LOWER(DR.DENUMIRE)='administrare' AND UD.ID_UTILIZATOR = _ID_UTILIZATOR);
        IF _CNT IS NULL OR _CNT <= 0 THEN
                SET _CNT = (SELECT COUNT(*) CNT FROM vUTILIZATORI_DOSARE WHERE ID_DOSAR = _ID_DOSAR AND ID_UTILIZATOR = _ID_UTILIZATOR);
        END IF;
        SELECT _CNT;
END
$$

--
-- Alter procedure "DOSARE_UTILIZATORIsp_select"
--
DROP PROCEDURE DOSARE_UTILIZATORIsp_select$$
CREATE PROCEDURE DOSARE_UTILIZATORIsp_select(
        _AUTHENTICATED_USER_ID INT,
        _SORT VARCHAR(100),
        _ORDER VARCHAR(5),
        _FILTER VARCHAR(4000),
        _LIMIT VARCHAR(100)
)
BEGIN
        SELECT * FROM vDOSARE_UTILIZATORI;
END
$$

--
-- Create procedure "DREPTURIsp_count"
--
CREATE PROCEDURE DREPTURIsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM drepturi;
 END
$$

--
-- Alter procedure "DREPTURIsp_GetByDenumire"
--
DROP PROCEDURE DREPTURIsp_GetByDenumire$$
CREATE PROCEDURE DREPTURIsp_GetByDenumire(
        _AUTHENTICATED_USER_ID INT,
        _DENUMIRE VARCHAR(100)
    )
BEGIN
        SELECT * FROM vDREPTURI WHERE DENUMIRE = _DENUMIRE;
END
$$

--
-- Alter procedure "DREPTURIsp_GetById"
--
DROP PROCEDURE DREPTURIsp_GetById$$
CREATE PROCEDURE DREPTURIsp_GetById(
        _AUTHENTICATED_USER_ID INT,
        _ID INT
    )
BEGIN
        SELECT * FROM vDREPTURI WHERE ID = _ID;
END
$$

--
-- Alter procedure "DREPTURIsp_select"
--
DROP PROCEDURE DREPTURIsp_select$$
CREATE PROCEDURE DREPTURIsp_select(
        _AUTHENTICATED_USER_ID INT,
        _SORT VARCHAR(100),
        _ORDER VARCHAR(5),
        _FILTER VARCHAR(4000),
        _LIMIT VARCHAR(100)
)
BEGIN
        SELECT * FROM vDREPTURI WHERE UPPER(DENUMIRE)='ADMINISTRARE' AND _AUTHENTICATED_USER_ID IN (SELECT ID FROM vUTILIZATORI WHERE ID_TIP_UTILIZATOR = (SELECT ID FROM vTIP_UTILIZATORI WHERE UPPER(DENUMIRE)='ADMINISTRATOR'))
        UNION
        SELECT * FROM vDREPTURI WHERE UPPER(DENUMIRE) <> 'ADMINISTRARE';
END
$$

--
-- Create procedure "DREPTURIsp_soft_delete"
--
CREATE PROCEDURE DREPTURIsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE drepturi SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Create procedure "IMPORT_LOGsp_count"
--
CREATE PROCEDURE IMPORT_LOGsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM import_log;
 END
$$

--
-- Create procedure "IMPORT_LOGsp_soft_delete"
--
CREATE PROCEDURE IMPORT_LOGsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE import_log SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Alter procedure "INSTANTEsp_Combo"
--
DROP PROCEDURE INSTANTEsp_Combo$$
CREATE PROCEDURE INSTANTEsp_Combo()
BEGIN
        SELECT ID, DENUMIRE FROM vINSTANTE ORDER BY DENUMIRE ASC;
END
$$

--
-- Create procedure "INSTANTEsp_count"
--
CREATE PROCEDURE INSTANTEsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM instante;
 END
$$

--
-- Alter procedure "INSTANTEsp_GetById"
--
DROP PROCEDURE INSTANTEsp_GetById$$
CREATE PROCEDURE INSTANTEsp_GetById(
        _ID INT
    )
BEGIN
        SELECT * FROM vINSTANTE WHERE ID = _ID;
END
$$

--
-- Alter procedure "INSTANTEsp_select"
--
DROP PROCEDURE INSTANTEsp_select$$
CREATE PROCEDURE INSTANTEsp_select(
        _AUTHENTICATED_USER_ID INT,
        _SORT VARCHAR(100),
        _ORDER VARCHAR(5),
        _FILTER VARCHAR(4000),
        _LIMIT VARCHAR(100)
    )
BEGIN
        DECLARE _DEFAULT_FILTER VARCHAR(2000);

        DECLARE _QUERY VARCHAR(8000);
        
        SET @_DEFAULT_FILTER = '1=1';

        IF _ORDER IS NULL AND _SORT IS NULL THEN
                 SET _SORT = ' INSTANTE.DENUMIRE ';
        END IF;

        SET @_QUERY = 'SELECT INSTANTE.* ';

            SET @_QUERY = CONCAT(@_QUERY,
                'FROM vINSTANTE INSTANTE '
                );

        CASE WHEN _FILTER IS NOT NULL THEN
                SET @_QUERY = CONCAT(@_QUERY, ' WHERE (', @_DEFAULT_FILTER, ') AND (', _FILTER, ') ');
        ELSE
                BEGIN
                 SET @_QUERY = CONCAT(@_QUERY, ' WHERE ', @_DEFAULT_FILTER, ' ');
                END;
        END CASE;

        CASE WHEN _SORT IS NOT NULL THEN
                BEGIN
                        SET @_QUERY = CONCAT(@_QUERY, ' ORDER BY ', _SORT);
                END;
        ELSE
                SET @_QUERY = @_QUERY;
        END CASE;

        CASE WHEN _ORDER IS NOT NULL THEN
                SET @_QUERY = CONCAT(@_QUERY, ' ', _ORDER);
        ELSE
                SET @_QUERY = @_QUERY;
        END CASE;

        IF _LIMIT IS NOT NULL THEN
                SET @_QUERY = CONCAT(@_QUERY, _LIMIT, ';');
        END IF;

        

          PREPARE stmt1 FROM @_QUERY;
          EXECUTE stmt1;
          DEALLOCATE PREPARE stmt1;
          


END
$$

--
-- Create procedure "INSTANTEsp_soft_delete"
--
CREATE PROCEDURE INSTANTEsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE instante SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Alter procedure "INTERVENIENTIsp_Combo"
--
DROP PROCEDURE INTERVENIENTIsp_Combo$$
CREATE PROCEDURE INTERVENIENTIsp_Combo()
BEGIN
        SELECT ID, DENUMIRE FROM vINTERVENIENTI ORDER BY DENUMIRE ASC;  
END
$$

--
-- Create procedure "INTERVENIENTIsp_count"
--
CREATE PROCEDURE INTERVENIENTIsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM intervenienti;
 END
$$

--
-- Alter procedure "INTERVENIENTIsp_GetByDenumire"
--
DROP PROCEDURE INTERVENIENTIsp_GetByDenumire$$
CREATE PROCEDURE INTERVENIENTIsp_GetByDenumire(_DENUMIRE VARCHAR(250))
BEGIN
        SELECT * FROM vINTERVENIENTI WHERE DENUMIRE = _DENUMIRE;
END
$$

--
-- Alter procedure "INTERVENIENTIsp_GetById"
--
DROP PROCEDURE INTERVENIENTIsp_GetById$$
CREATE PROCEDURE INTERVENIENTIsp_GetById(
        _ID INT
    )
BEGIN
        SELECT * FROM vINTERVENIENTI WHERE ID = _ID;
END
$$

--
-- Alter procedure "INTERVENIENTIsp_select"
--
DROP PROCEDURE INTERVENIENTIsp_select$$
CREATE PROCEDURE INTERVENIENTIsp_select(
        _AUTHENTICATED_USER_ID INT,
        _SORT VARCHAR(100),
        _ORDER VARCHAR(5),
        _FILTER VARCHAR(4000),
        _LIMIT VARCHAR(100)
    )
BEGIN
        DECLARE _DEFAULT_FILTER VARCHAR(2000);

        DECLARE _QUERY VARCHAR(8000);
        
        SET @_DEFAULT_FILTER = '1=1';

        IF _ORDER IS NULL AND _SORT IS NULL THEN
                 SET _SORT = ' INTERVENIENTI.DENUMIRE ';
        END IF;

        SET @_QUERY = 'SELECT INTERVENIENTI.* ';

            SET @_QUERY = CONCAT(@_QUERY,
                'FROM vINTERVENIENTI INTERVENIENTI '
                );

        CASE WHEN _FILTER IS NOT NULL THEN
                SET @_QUERY = CONCAT(@_QUERY, ' WHERE (', @_DEFAULT_FILTER, ') AND (', _FILTER, ') ');
        ELSE
                BEGIN
                 SET @_QUERY = CONCAT(@_QUERY, ' WHERE ', @_DEFAULT_FILTER, ' ');
                END;
        END CASE;

        CASE WHEN _SORT IS NOT NULL THEN
                BEGIN
                        SET @_QUERY = CONCAT(@_QUERY, ' ORDER BY ', _SORT);
                END;
        ELSE
                SET @_QUERY = @_QUERY;
        END CASE;

        CASE WHEN _ORDER IS NOT NULL THEN
                SET @_QUERY = CONCAT(@_QUERY, ' ', _ORDER);
        ELSE
                SET @_QUERY = @_QUERY;
        END CASE;

        IF _LIMIT IS NOT NULL THEN
                SET @_QUERY = CONCAT(@_QUERY, _LIMIT, ';');
        END IF;

        

          PREPARE stmt1 FROM @_QUERY;
          EXECUTE stmt1;
          DEALLOCATE PREPARE stmt1;
          


END
$$

--
-- Create procedure "INTERVENIENTIsp_soft_delete"
--
CREATE PROCEDURE INTERVENIENTIsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE intervenienti SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Create procedure "LOGsp_count"
--
CREATE PROCEDURE LOGsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM log;
 END
$$

--
-- Create procedure "LOGsp_soft_delete"
--
CREATE PROCEDURE LOGsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE log SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Alter procedure "MESAJEsp_count"
--
DROP PROCEDURE MESAJEsp_count$$
CREATE PROCEDURE MESAJEsp_count(
        _ID_RECEIVER INT,
	_SEARCH_STRING VARCHAR(250),
	_SORT_EXPRESION VARCHAR(250),
	_SORT_DIRECTION VARCHAR(4)
    )
BEGIN
        DECLARE _QUERY VARCHAR(8000);

        IF _SORT_EXPRESION IS NULL AND _SORT_DIRECTION IS NULL THEN
                 SET _SORT_EXPRESION = ' M.DATA DESC ';
        END IF;


        SET @_QUERY = CONCAT('SELECT COUNT(*) ');

            SET @_QUERY = CONCAT(@_QUERY,
                 'FROM vMESAJE M ',
		'INNER JOIN vUTILIZATORI U1 ON M.ID_SENDER=U1.ID ',
		'INNER JOIN vUTILIZATORI U2 ON M.ID_RECEIVER=U2.ID ',
		'LEFT JOIN vDOSARE D ON M.ID_DOSAR=D.ID ',
		'LEFT JOIN vTIP_MESAJE TD ON M.ID_TIP_MESAJ=TD.ID '
                );

        SET @_QUERY = CONCAT(@_QUERY, ' WHERE M.ID_RECEIVER=', _ID_RECEIVER, ' ');

        CASE WHEN _SEARCH_STRING IS NOT NULL THEN
                SET @_QUERY = CONCAT(@_QUERY, ' AND ',
                '(M.DATA = ''', _SEARCH_STRING, ''' OR M.SUBIECT LIKE ''%', _SEARCH_STRING, '%'' OR M.BODY LIKE ''%', _SEARCH_STRING, '%'' OR U1.USER_NAME LIKE ''%', _SEARCH_STRING, '%'' OR U2.USER_NAME LIKE ''%', _SEARCH_STRING, '%'') '
                );
        ELSE
                BEGIN
                	SET @_QUERY = @_QUERY;
                END;
        END CASE;

        CASE WHEN _SORT_EXPRESION IS NOT NULL THEN
                BEGIN
                        CASE WHEN _SORT_EXPRESION = 'TO' THEN
                                SET @_QUERY = CONCAT(@_QUERY, ' ORDER BY U1.USER_NAME');
                        WHEN _SORT_EXPRESION = 'FROM' THEN
                                SET @_QUERY = CONCAT(@_QUERY, ' ORDER BY U2.USER_NAME');
                        ELSE
                                SET @_QUERY = CONCAT(@_QUERY, ' ORDER BY ', _SORT_EXPRESION);
                        END CASE;
                END;
        ELSE
                SET @_QUERY = @_QUERY;
        END CASE;

        CASE WHEN _SORT_DIRECTION IS NOT NULL THEN
                SET @_QUERY = CONCAT(@_QUERY, ' ', _SORT_DIRECTION);
        ELSE
                SET @_QUERY = @_QUERY; 
        END CASE;
        SET @_QUERY = CONCAT(@_QUERY, ';');

          


          PREPARE stmt1 FROM @_QUERY;
          EXECUTE stmt1;
          DEALLOCATE PREPARE stmt1;
          

END
$$

--
-- Alter procedure "MESAJEsp_GetById"
--
DROP PROCEDURE MESAJEsp_GetById$$
CREATE PROCEDURE MESAJEsp_GetById(
	_ID INT
)
BEGIN
	SELECT M.*, U1.USER_NAME `FROM`, U2.USER_NAME `TO`,
	
	'' NR_DOSAR, '' TIP_DOSAR
	FROM vMESAJE M
	INNER JOIN vUTILIZATORI U1 ON M.ID_SENDER=U1.ID
	INNER JOIN vUTILIZATORI U2 ON M.ID_RECEIVER=U2.ID
	
	
	WHERE M.ID = _ID;
END
$$

--
-- Alter procedure "MESAJEsp_GetByIdDosar"
--
DROP PROCEDURE MESAJEsp_GetByIdDosar$$
CREATE PROCEDURE MESAJEsp_GetByIdDosar(_ID_DOSAR INT)
BEGIN
        SELECT * FROM vMESAJE WHERE ID_DOSAR = _ID_DOSAR;
END
$$

--
-- Alter procedure "MESAJEsp_select"
--
DROP PROCEDURE MESAJEsp_select$$
CREATE PROCEDURE MESAJEsp_select(
        _AUTHENTICATED_USER_ID INT,
        _SORT VARCHAR(100),
        _ORDER VARCHAR(5),
        _FILTER VARCHAR(4000),
        _LIMIT VARCHAR(100)
    )
BEGIN
        DECLARE _DEFAULT_FILTER VARCHAR(2000);

        DECLARE _QUERY VARCHAR(8000);
        
        SET @_DEFAULT_FILTER = '1=1';

        IF _ORDER IS NULL AND _SORT IS NULL THEN
                 SET _SORT = ' MESAJE.DATA ';
        END IF;

        SET @_QUERY = 'SELECT MESAJE.* ';

            SET @_QUERY = CONCAT(@_QUERY,
                'FROM vMESAJE MESAJE '
                );

        CASE WHEN _FILTER IS NOT NULL THEN
                SET @_QUERY = CONCAT(@_QUERY, ' WHERE (', @_DEFAULT_FILTER, ') AND (', _FILTER, ') ');
        ELSE
                BEGIN
                 SET @_QUERY = CONCAT(@_QUERY, ' WHERE ', @_DEFAULT_FILTER, ' ');
                END;
        END CASE;

        CASE WHEN _SORT IS NOT NULL THEN
                BEGIN
                        SET @_QUERY = CONCAT(@_QUERY, ' ORDER BY ', _SORT);
                END;
        ELSE
                SET @_QUERY = @_QUERY;
        END CASE;

        CASE WHEN _ORDER IS NOT NULL THEN
                SET @_QUERY = CONCAT(@_QUERY, ' ', _ORDER);
        ELSE
                SET @_QUERY = CONCAT(@_QUERY, ' DESC');
        END CASE;

        IF _LIMIT IS NOT NULL THEN
                SET @_QUERY = CONCAT(@_QUERY, _LIMIT, ';');
        END IF;

        

          PREPARE stmt1 FROM @_QUERY;
          EXECUTE stmt1;
          DEALLOCATE PREPARE stmt1;
          


END
$$

--
-- Create procedure "MESAJEsp_soft_delete"
--
CREATE PROCEDURE MESAJEsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE mesaje SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Create procedure "MESAJE_UTILIZATORIsp_count"
--
CREATE PROCEDURE MESAJE_UTILIZATORIsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM mesaje_utilizatori;
 END
$$

--
-- Alter procedure "MESAJE_UTILIZATORIsp_GetById"
--
DROP PROCEDURE MESAJE_UTILIZATORIsp_GetById$$
CREATE PROCEDURE MESAJE_UTILIZATORIsp_GetById(_ID INT)
BEGIN
        SELECT * FROM VMESAJE_UTILIZATORI WHERE ID = _ID;
END
$$

--
-- Alter procedure "MESAJE_UTILIZATORIsp_GetByIdMesaj"
--
DROP PROCEDURE MESAJE_UTILIZATORIsp_GetByIdMesaj$$
CREATE PROCEDURE MESAJE_UTILIZATORIsp_GetByIdMesaj(_ID_MESAJ INT)
BEGIN
        SELECT * FROM VMESAJE_UTILIZATORI WHERE ID_MESAJ = _ID_MESAJ;
END
$$

--
-- Alter procedure "MESAJE_UTILIZATORIsp_GetByIdMesajIdUtilizator"
--
DROP PROCEDURE MESAJE_UTILIZATORIsp_GetByIdMesajIdUtilizator$$
CREATE PROCEDURE MESAJE_UTILIZATORIsp_GetByIdMesajIdUtilizator(_ID_MESAJ INT, _ID_UTILIZATOR INT)
BEGIN
        SELECT * FROM VMESAJE_UTILIZATORI WHERE ID_MESAJ = _ID_MESAJ AND ID_UTILIZATOR = _ID_UTILIZATOR;
END
$$

--
-- Alter procedure "MESAJE_UTILIZATORIsp_select"
--
DROP PROCEDURE MESAJE_UTILIZATORIsp_select$$
CREATE PROCEDURE MESAJE_UTILIZATORIsp_select()
BEGIN
        SELECT * FROM VMESAJE_UTILIZATORI;  
END
$$

--
-- Create procedure "MESAJE_UTILIZATORIsp_soft_delete"
--
CREATE PROCEDURE MESAJE_UTILIZATORIsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE mesaje_utilizatori SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Alter procedure "NOMENCLATORsp_GetById"
--
DROP PROCEDURE NOMENCLATORsp_GetById$$
CREATE PROCEDURE NOMENCLATORsp_GetById(
        _AUTHENTICATED_USER_ID INT,
        _TABELA VARCHAR(100),
        _ID INT
    )
BEGIN
        DECLARE _QUERY VARCHAR(8000);
        SET @_QUERY = CONCAT('SELECT DENUMIRE FROM v', _TABELA, ' WHERE ID = ', _ID);

          PREPARE stmt1 FROM @_QUERY;
          EXECUTE stmt1;
          DEALLOCATE PREPARE stmt1;       
END
$$

--
-- Alter procedure "NOMENCLATORsp_search"
--
DROP PROCEDURE NOMENCLATORsp_search$$
CREATE PROCEDURE NOMENCLATORsp_search(
        _AUTHENTICATED_USER_ID INT,
        _TABLE VARCHAR(50),
        _SEARCH_STRING VARCHAR(250)
    )
BEGIN
        DECLARE _T VARCHAR(4000);
        SET @_T = CONCAT('SELECT DENUMIRE FROM v', _TABLE, ' WHERE DENUMIRE LIKE ''', _SEARCH_STRING, '%''');
          PREPARE stmt1 FROM @_T;
          EXECUTE stmt1;
          DEALLOCATE PREPARE stmt1;        

END
$$

--
-- Create procedure "PENDING_IMPORT_ERRORSsp_count"
--
CREATE PROCEDURE PENDING_IMPORT_ERRORSsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM pending_import_errors;
 END
$$

--
-- Alter procedure "PENDING_IMPORT_ERRORSsp_GetById"
--
DROP PROCEDURE PENDING_IMPORT_ERRORSsp_GetById$$
CREATE PROCEDURE PENDING_IMPORT_ERRORSsp_GetById(
        _AUTHENTICATED_USER_ID INT,
        _ID INT
)
BEGIN
        SELECT * FROM vPENDING_IMPORT_ERRORS WHERE ID = _ID;
END
$$

--
-- Create procedure "PENDING_IMPORT_ERRORSsp_soft_delete"
--
CREATE PROCEDURE PENDING_IMPORT_ERRORSsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE pending_import_errors SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Create procedure "PLATIsp_count"
--
CREATE PROCEDURE PLATIsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM plati;
 END
$$

--
-- Create procedure "PLATIsp_soft_delete"
--
CREATE PROCEDURE PLATIsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE plati SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Create procedure "PLATI_CONTRACTEsp_count"
--
CREATE PROCEDURE PLATI_CONTRACTEsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM plati_contracte;
 END
$$

--
-- Create procedure "PLATI_CONTRACTEsp_soft_delete"
--
CREATE PROCEDURE PLATI_CONTRACTEsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE plati_contracte SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Create procedure "PLATI_TAXA_TIMBRUsp_count"
--
CREATE PROCEDURE PLATI_TAXA_TIMBRUsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM plati_taxa_timbru;
 END
$$

--
-- Create procedure "PLATI_TAXA_TIMBRUsp_soft_delete"
--
CREATE PROCEDURE PLATI_TAXA_TIMBRUsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE plati_taxa_timbru SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Create procedure "PROCESEsp_count"
--
CREATE PROCEDURE PROCESEsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM procese;
 END
$$

--
-- Create procedure "PROCESEsp_soft_delete"
--
CREATE PROCEDURE PROCESEsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE procese SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Create procedure "PROCESE_PLATI_TAXA_TIMBRUsp_count"
--
CREATE PROCEDURE PROCESE_PLATI_TAXA_TIMBRUsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM procese_plati_taxa_timbru;
 END
$$

--
-- Create procedure "PROCESE_PLATI_TAXA_TIMBRUsp_soft_delete"
--
CREATE PROCEDURE PROCESE_PLATI_TAXA_TIMBRUsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE procese_plati_taxa_timbru SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Create procedure "SENTINTEsp_count"
--
CREATE PROCEDURE SENTINTEsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM sentinte;
 END
$$

--
-- Alter procedure "SENTINTEsp_GetById"
--
DROP PROCEDURE SENTINTEsp_GetById$$
CREATE PROCEDURE SENTINTEsp_GetById(
        _AUTHENTICATED_USER_ID INT,
        _ID INT
)
BEGIN
        SELECT * FROM vSENTINTE WHERE ID = _ID;
END
$$

--
-- Create procedure "SENTINTEsp_soft_delete"
--
CREATE PROCEDURE SENTINTEsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE sentinte SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Create procedure "SETARIsp_count"
--
CREATE PROCEDURE SETARIsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM setari;
 END
$$

--
-- Alter procedure "SETARIsp_GetById"
--
DROP PROCEDURE SETARIsp_GetById$$
CREATE PROCEDURE SETARIsp_GetById(
        _AUTHENTICATED_USER_ID INT,
        _ID INT
    )
BEGIN
        SELECT * FROM vSETARI WHERE ID = _ID;
END
$$

--
-- Alter procedure "SETARIsp_GetValue"
--
DROP PROCEDURE SETARIsp_GetValue$$
CREATE PROCEDURE SETARIsp_GetValue(
        _AUTHENTICATED_USER_ID INT,
        NUME_SETARE VARCHAR(250)
    )
BEGIN
        SELECT VALOARE FROM vSETARI WHERE UCASE(NUME) = UCASE(NUME_SETARE);
END
$$

--
-- Alter procedure "SETARIsp_select"
--
DROP PROCEDURE SETARIsp_select$$
CREATE PROCEDURE SETARIsp_select(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT * FROM vSETARI;
END
$$

--
-- Create procedure "SETARIsp_soft_delete"
--
CREATE PROCEDURE SETARIsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE setari SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Alter procedure "SOCIETATI_ASIGURAREsp_Combo"
--
DROP PROCEDURE SOCIETATI_ASIGURAREsp_Combo$$
CREATE PROCEDURE SOCIETATI_ASIGURAREsp_Combo(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT ID, DENUMIRE_SCURTA FROM vSOCIETATI_ASIGURARE S WHERE _AUTHENTICATED_USER_ID IN (SELECT ID FROM vUTILIZATORI WHERE ID_TIP_UTILIZATOR = (SELECT ID FROM vTIP_UTILIZATORI WHERE UPPER(DENUMIRE)='ADMINISTRATOR')) OR (
                _AUTHENTICATED_USER_ID NOT IN (SELECT ID FROM vUTILIZATORI WHERE ID_TIP_UTILIZATOR = (SELECT ID FROM vTIP_UTILIZATORI WHERE UPPER(DENUMIRE) = 'ADMINISTRATOR')) AND S.ID IN (SELECT ID_SOCIETATE FROM vUTILIZATORI WHERE ID = _AUTHENTICATED_USER_ID)
        ) ORDER BY DENUMIRE ASC;
END
$$

--
-- Create procedure "SOCIETATI_ASIGURAREsp_count"
--
CREATE PROCEDURE SOCIETATI_ASIGURAREsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM societati_asigurare;
 END
$$

--
-- Alter procedure "SOCIETATI_ASIGURAREsp_GetByDenumireScurta"
--
DROP PROCEDURE SOCIETATI_ASIGURAREsp_GetByDenumireScurta$$
CREATE PROCEDURE SOCIETATI_ASIGURAREsp_GetByDenumireScurta(
        _AUTHENTICATED_USER_ID INT,
        _DENUMIRE_SCURTA VARCHAR(250))
BEGIN
        SELECT * FROM vSOCIETATI_ASIGURARE WHERE DENUMIRE_SCURTA = _DENUMIRE_SCURTA;
END
$$

--
-- Alter procedure "SOCIETATI_ASIGURAREsp_GetById"
--
DROP PROCEDURE SOCIETATI_ASIGURAREsp_GetById$$
CREATE PROCEDURE SOCIETATI_ASIGURAREsp_GetById(
        _AUTHENTICATED_USER_ID INT,
        _ID INT
    )
BEGIN
        SELECT * FROM vSOCIETATI_ASIGURARE WHERE ID = _ID;
END
$$

--
-- Alter procedure "SOCIETATI_ASIGURAREsp_select"
--
DROP PROCEDURE SOCIETATI_ASIGURAREsp_select$$
CREATE PROCEDURE SOCIETATI_ASIGURAREsp_select(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT S.* FROM vSOCIETATI_ASIGURARE S WHERE _AUTHENTICATED_USER_ID IN (SELECT ID FROM vUTILIZATORI WHERE ID_TIP_UTILIZATOR = (SELECT ID FROM vTIP_UTILIZATORI WHERE UPPER(DENUMIRE)='ADMINISTRATOR')) OR (
                _AUTHENTICATED_USER_ID NOT IN (SELECT ID FROM vUTILIZATORI WHERE ID_TIP_UTILIZATOR = (SELECT ID FROM vTIP_UTILIZATORI WHERE UPPER(DENUMIRE) = 'ADMINISTRATOR')) AND S.ID IN (SELECT ID_SOCIETATE FROM vUTILIZATORI WHERE ID = _AUTHENTICATED_USER_ID)
        );
END
$$

--
-- Create procedure "SOCIETATI_ASIGURAREsp_soft_delete"
--
CREATE PROCEDURE SOCIETATI_ASIGURAREsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE societati_asigurare SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Alter procedure "SOCIETATI_ASIGURARE_ADMINISTRATEsp_select"
--
DROP PROCEDURE SOCIETATI_ASIGURARE_ADMINISTRATEsp_select$$
CREATE PROCEDURE SOCIETATI_ASIGURARE_ADMINISTRATEsp_select(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT * FROM vSOCIETATI_ASIGURARE;
END
$$

--
-- Alter procedure "STADIIsp_Combo"
--
DROP PROCEDURE STADIIsp_Combo$$
CREATE PROCEDURE STADIIsp_Combo(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT ID, DENUMIRE FROM vSTADII ORDER BY PAS;
END
$$

--
-- Create procedure "STADIIsp_count"
--
CREATE PROCEDURE STADIIsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM stadii;
 END
$$

--
-- Alter procedure "STADIIsp_GetById"
--
DROP PROCEDURE STADIIsp_GetById$$
CREATE PROCEDURE STADIIsp_GetById(
        _AUTHENTICATED_USER_ID INT,
        _ID INT
    )
BEGIN
        SELECT * FROM vSTADII WHERE ID = _ID;
END
$$

--
-- Alter procedure "STADIIsp_select"
--
DROP PROCEDURE STADIIsp_select$$
CREATE PROCEDURE STADIIsp_select(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT * FROM vSTADII ORDER BY PAS ASC;
END
$$

--
-- Alter procedure "STADIIsp_select_instanta"
--
DROP PROCEDURE STADIIsp_select_instanta$$
CREATE PROCEDURE STADIIsp_select_instanta(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT ID, DENUMIRE FROM vSTADII WHERE STADIU_INSTANTA=1 AND STADIU_CU_TERMEN=1 ORDER BY PAS;
END
$$

--
-- Create procedure "STADIIsp_soft_delete"
--
CREATE PROCEDURE STADIIsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE stadii SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Create procedure "STADII_SCADENTEsp_count"
--
CREATE PROCEDURE STADII_SCADENTEsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM stadii_scadente;
 END
$$

--
-- Create procedure "STADII_SCADENTEsp_soft_delete"
--
CREATE PROCEDURE STADII_SCADENTEsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE stadii_scadente SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Create procedure "STADII_SETARIsp_count"
--
CREATE PROCEDURE STADII_SETARIsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM stadii_setari;
 END
$$

--
-- Create procedure "STADII_SETARIsp_soft_delete"
--
CREATE PROCEDURE STADII_SETARIsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE stadii_setari SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Create procedure "TEMPLATESsp_count"
--
CREATE PROCEDURE TEMPLATESsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM templates;
 END
$$

--
-- Create procedure "TEMPLATESsp_soft_delete"
--
CREATE PROCEDURE TEMPLATESsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE templates SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Create procedure "TIP_CAZsp_count"
--
CREATE PROCEDURE TIP_CAZsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM tip_caz;
 END
$$

--
-- Alter procedure "TIP_CAZsp_select"
--
DROP PROCEDURE TIP_CAZsp_select$$
CREATE PROCEDURE TIP_CAZsp_select(
        _AUTHENTICATED_USER_ID INT,
        _SORT VARCHAR(100),
        _ORDER VARCHAR(5),
        _FILTER VARCHAR(4000),
        _LIMIT VARCHAR(100)
)
BEGIN
        DECLARE _QUERY VARCHAR(8000);

        IF _ORDER IS NULL AND _SORT IS NULL THEN
                 SET _SORT = ' TIP_CAZ.DENUMIRE ';
        END IF;

        SET @_QUERY = 'SELECT TIP_CAZ.* FROM vTIP_CAZ TIP_CAZ ';

        IF _FILTER IS NOT NULL THEN
             SET @_QUERY = CONCAT(@_QUERY, ' WHERE ', _FILTER, ' ');
        END IF;

        IF _SORT IS NOT NULL THEN
                SET @_QUERY = CONCAT(@_QUERY, ' ORDER BY ', _SORT);
        END IF;

        IF _ORDER IS NOT NULL THEN
                SET @_QUERY = CONCAT(@_QUERY, ' ', _ORDER);
        END IF;

        IF _LIMIT IS NOT NULL THEN
                SET @_QUERY = CONCAT(@_QUERY, _LIMIT, ';');
        END IF;

        

          PREPARE stmt1 FROM @_QUERY;
          EXECUTE stmt1;
          DEALLOCATE PREPARE stmt1;
END
$$

--
-- Create procedure "TIP_CAZsp_soft_delete"
--
CREATE PROCEDURE TIP_CAZsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE tip_caz SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Create procedure "TIP_DOCUMENTsp_count"
--
CREATE PROCEDURE TIP_DOCUMENTsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM tip_document;
 END
$$

--
-- Alter procedure "TIP_DOCUMENTsp_GetById"
--
DROP PROCEDURE TIP_DOCUMENTsp_GetById$$
CREATE PROCEDURE TIP_DOCUMENTsp_GetById(
        _AUTHENTICATED_USER_ID INT,
        _ID INT)
BEGIN
        SELECT * FROM vTIP_DOCUMENT WHERE ID=_ID;
END
$$

--
-- Alter procedure "TIP_DOCUMENTsp_select"
--
DROP PROCEDURE TIP_DOCUMENTsp_select$$
CREATE PROCEDURE TIP_DOCUMENTsp_select(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT * FROM vTIP_DOCUMENT;
END
$$

--
-- Create procedure "TIP_DOCUMENTsp_soft_delete"
--
CREATE PROCEDURE TIP_DOCUMENTsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE tip_document SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Alter procedure "TIP_DOSAREsp_Combo"
--
DROP PROCEDURE TIP_DOSAREsp_Combo$$
CREATE PROCEDURE TIP_DOSAREsp_Combo(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT ID, DENUMIRE FROM vTIP_DOSARE ORDER BY DENUMIRE ASC;
END
$$

--
-- Create procedure "TIP_DOSAREsp_count"
--
CREATE PROCEDURE TIP_DOSAREsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM tip_dosare;
 END
$$

--
-- Alter procedure "TIP_DOSAREsp_GetById"
--
DROP PROCEDURE TIP_DOSAREsp_GetById$$
CREATE PROCEDURE TIP_DOSAREsp_GetById(
        _AUTHENTICATED_USER_ID INT,
        _ID INT
    )
BEGIN
        SELECT * FROM vTIP_DOSARE WHERE ID = _ID;
END
$$

--
-- Alter procedure "TIP_DOSAREsp_select"
--
DROP PROCEDURE TIP_DOSAREsp_select$$
CREATE PROCEDURE TIP_DOSAREsp_select(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT * FROM vTIP_DOSARE;
END
$$

--
-- Create procedure "TIP_DOSAREsp_soft_delete"
--
CREATE PROCEDURE TIP_DOSAREsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE tip_dosare SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Create procedure "TIP_MESAJEsp_count"
--
CREATE PROCEDURE TIP_MESAJEsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM tip_mesaje;
 END
$$

--
-- Alter procedure "TIP_MESAJEsp_GetById"
--
DROP PROCEDURE TIP_MESAJEsp_GetById$$
CREATE PROCEDURE TIP_MESAJEsp_GetById(
        _AUTHENTICATED_USER_ID INT,
        _ID INT)
BEGIN
        SELECT * FROM vTIP_MESAJE WHERE ID = _ID;
END
$$

--
-- Alter procedure "TIP_MESAJEsp_GetIdByName"
--
DROP PROCEDURE TIP_MESAJEsp_GetIdByName$$
CREATE PROCEDURE TIP_MESAJEsp_GetIdByName(
        _AUTHENTICATED_USER_ID INT,
        _DENUMIRE VARCHAR(250))
BEGIN
        SELECT ID FROM vTIP_MESAJE WHERE UPPER(DENUMIRE) = UPPER(_DENUMIRE);
END
$$

--
-- Alter procedure "TIP_MESAJEsp_select"
--
DROP PROCEDURE TIP_MESAJEsp_select$$
CREATE PROCEDURE TIP_MESAJEsp_select(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT * FROM vTIP_MESAJE;
END
$$

--
-- Create procedure "TIP_MESAJEsp_soft_delete"
--
CREATE PROCEDURE TIP_MESAJEsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE tip_mesaje SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Alter procedure "TIP_PROCESEsp_Combo"
--
DROP PROCEDURE TIP_PROCESEsp_Combo$$
CREATE PROCEDURE TIP_PROCESEsp_Combo(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT ID, DENUMIRE FROM vTIP_PROCESE ORDER BY DENUMIRE ASC;
END
$$

--
-- Create procedure "TIP_PROCESEsp_count"
--
CREATE PROCEDURE TIP_PROCESEsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM tip_procese;
 END
$$

--
-- Alter procedure "TIP_PROCESEsp_GetById"
--
DROP PROCEDURE TIP_PROCESEsp_GetById$$
CREATE PROCEDURE TIP_PROCESEsp_GetById(
        _AUTHENTICATED_USER_ID INT,
        _ID INT
    )
BEGIN
        SELECT * FROM vTIP_PROCESE WHERE ID = _ID;
END
$$

--
-- Alter procedure "TIP_PROCESEsp_select"
--
DROP PROCEDURE TIP_PROCESEsp_select$$
CREATE PROCEDURE TIP_PROCESEsp_select(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT * FROM vTIP_PROCESE;
END
$$

--
-- Create procedure "TIP_PROCESEsp_soft_delete"
--
CREATE PROCEDURE TIP_PROCESEsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE tip_procese SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Create procedure "TIP_UTILIZATORIsp_count"
--
CREATE PROCEDURE TIP_UTILIZATORIsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM tip_utilizatori;
 END
$$

--
-- Alter procedure "TIP_UTILIZATORIsp_GetById"
--
DROP PROCEDURE TIP_UTILIZATORIsp_GetById$$
CREATE PROCEDURE TIP_UTILIZATORIsp_GetById(
        _AUTHENTICATED_USER_ID INT,
        _ID INT)
BEGIN
        SELECT * FROM vTIP_UTILIZATORI WHERE ID = _ID;
END
$$

--
-- Alter procedure "TIP_UTILIZATORIsp_select"
--
DROP PROCEDURE TIP_UTILIZATORIsp_select$$
CREATE PROCEDURE TIP_UTILIZATORIsp_select(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT TU.* FROM vTIP_UTILIZATORI TU WHERE _AUTHENTICATED_USER_ID IN (SELECT ID FROM vUTILIZATORI WHERE ID_TIP_UTILIZATOR = (SELECT ID FROM vTIP_UTILIZATORI WHERE UPPER(DENUMIRE)='ADMINISTRATOR')) OR (
                _AUTHENTICATED_USER_ID IN (SELECT ID FROM vUTILIZATORI WHERE ID_TIP_UTILIZATOR = (SELECT ID FROM vTIP_UTILIZATORI WHERE UPPER(DENUMIRE) LIKE '%SUPER%')) AND UPPER(TU.DENUMIRE) LIKE '%REGULAR%'
        );
END
$$

--
-- Create procedure "TIP_UTILIZATORIsp_soft_delete"
--
CREATE PROCEDURE TIP_UTILIZATORIsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE tip_utilizatori SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Alter procedure "UTILIZATORIsp_Combo"
--
DROP PROCEDURE UTILIZATORIsp_Combo$$
CREATE PROCEDURE UTILIZATORIsp_Combo(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT ID, USER_NAME FROM vUTILIZATORI ORDER BY USER_NAME ASC;
END
$$

--
-- Create procedure "UTILIZATORIsp_count"
--
CREATE PROCEDURE UTILIZATORIsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM utilizatori;
 END
$$

--
-- Alter procedure "UTILIZATORIsp_CountUnreadMessages"
--
DROP PROCEDURE UTILIZATORIsp_CountUnreadMessages$$
CREATE PROCEDURE UTILIZATORIsp_CountUnreadMessages(
        _AUTHENTICATED_USER_ID INT,
        _ID_UTILIZATOR INT)
BEGIN
        SELECT TM.DENUMIRE, M.ID_TIP_MESAJ, COUNT(*) MESAJE_NOI FROM vMESAJE_UTILIZATORI MU
        INNER JOIN vMESAJE M ON MU.ID_MESAJ = M.ID
        INNER JOIN vUTILIZATORI U ON MU.ID_UTILIZATOR = U.ID
        INNER JOIN vTIP_MESAJE TM ON M.ID_TIP_MESAJ = TM.ID
        WHERE ID_UTILIZATOR = _ID_UTILIZATOR AND (M.DATA >= U.LAST_REFRESH OR U.LAST_REFRESH IS NULL)
        GROUP BY M.ID_TIP_MESAJ;
END
$$

--
-- Alter procedure "UTILIZATORIsp_GetActions"
--
DROP PROCEDURE UTILIZATORIsp_GetActions$$
CREATE PROCEDURE UTILIZATORIsp_GetActions(
        _AUTHENTICATED_USER_ID INT,
        _ID_UTILIZATOR INT
    )
BEGIN
        SELECT A.* FROM vUTILIZATORI U
        INNER JOIN vUTILIZATORI_ACTIONS UD ON U.ID = UD.ID_UTILIZATOR
        INNER JOIN vACTIONS A ON UD.ID_ACTION = A.ID
        WHERE U.ID = _ID_UTILIZATOR;
END
$$

--
-- Alter procedure "UTILIZATORIsp_GetByEmail"
--
DROP PROCEDURE UTILIZATORIsp_GetByEmail$$
CREATE PROCEDURE UTILIZATORIsp_GetByEmail(
        _EMAIL VARCHAR(250)
)
BEGIN
        SELECT * FROM vUTILIZATORI WHERE EMAIL = _EMAIL;
END
$$

--
-- Alter procedure "UTILIZATORIsp_GetById"
--
DROP PROCEDURE UTILIZATORIsp_GetById$$
CREATE PROCEDURE UTILIZATORIsp_GetById(
        _AUTHENTICATED_USER_ID INT,
        _ID INT
    )
BEGIN
        SELECT * FROM vUTILIZATORI WHERE ID = _ID;
END
$$

--
-- Alter procedure "UTILIZATORIsp_GetByIdDosar"
--
DROP PROCEDURE UTILIZATORIsp_GetByIdDosar$$
CREATE PROCEDURE UTILIZATORIsp_GetByIdDosar(
        _AUTHENTICATED_USER_ID INT,
        _ID_DOSAR INT,
        _ID_SENDER INT)
BEGIN
        SELECT * FROM vUTILIZATORI WHERE ID_SOCIETATE IN (SELECT ID_SOCIETATE_CASCO FROM vDOSARE WHERE ID = _ID_DOSAR) AND ID_UTILIZATOR != _ID_SENDER
        UNION
        SELECT * FROM vUTILIZATORI WHERE ID_SOCIETATE IN (SELECT ID_SOCIETATE_RCA FROM vDOSARE WHERE ID = _ID_DOSAR);
END
$$

--
-- Alter procedure "UTILIZATORIsp_GetLastRefresh"
--
DROP PROCEDURE UTILIZATORIsp_GetLastRefresh$$
CREATE PROCEDURE UTILIZATORIsp_GetLastRefresh(
        _AUTHENTICATED_USER_ID INT,
        _ID_UTILIZATOR INT)
BEGIN
        SELECT LAST_REFRESH FROM vUTILIZATORI WHERE ID = _ID_UTILIZATOR;
END
$$

--
-- Alter procedure "UTILIZATORIsp_GetRights"
--
DROP PROCEDURE UTILIZATORIsp_GetRights$$
CREATE PROCEDURE UTILIZATORIsp_GetRights(
        _AUTHENTICATED_USER_ID INT,
        _ID_UTILIZATOR INT
    )
BEGIN
        SELECT D.* FROM vUTILIZATORI U
        INNER JOIN vUTILIZATORI_DREPTURI UD ON U.ID = UD.ID_UTILIZATOR
        INNER JOIN vDREPTURI D ON UD.ID_DREPT = D.ID
        WHERE U.ID = _ID_UTILIZATOR;
END
$$

--
-- Alter procedure "UTILIZATORIsp_GetRightsById"
--
DROP PROCEDURE UTILIZATORIsp_GetRightsById$$
CREATE PROCEDURE UTILIZATORIsp_GetRightsById(
        _AUTHENTICATED_USER_ID INT,
        _ID INT,
        _DREPT VARCHAR(100)
    )
BEGIN
        SELECT D.ID FROM vUTILIZATORI U
        INNER JOIN vUTILIZATORI_DREPTURI UD ON U.ID = UD.ID_UTILIZATOR
        INNER JOIN vDREPTURI D ON UD.ID_DREPT = D.ID
        WHERE U.ID = _ID AND D.DENUMIRE = _DREPT
        LIMIT 1;
END
$$

--
-- Alter procedure "UTILIZATORIsp_IsAssigned"
--
DROP PROCEDURE UTILIZATORIsp_IsAssigned$$
CREATE PROCEDURE UTILIZATORIsp_IsAssigned(
        _AUTHENTICATED_USER_ID INT,
        _ID_DOSAR INT,
        _ID_UTILIZATOR INT
    )
BEGIN
        SELECT COUNT(*) FROM vUTILIZATORI_DOSARE WHERE ID_DOSAR = _ID_DOSAR AND ID_UTILIZATOR = _ID_UTILIZATOR;
END
$$

--
-- Alter procedure "UTILIZATORIsp_select"
--
DROP PROCEDURE UTILIZATORIsp_select$$
CREATE PROCEDURE UTILIZATORIsp_select(
        _AUTHENTICATED_USER_ID INT,
        _SORT VARCHAR(100),
        _ORDER VARCHAR(5),
        _FILTER VARCHAR(8000),
        _LIMIT VARCHAR(1000)
    )
BEGIN
        DECLARE _DEFAULT_FILTER VARCHAR(2000);

        DECLARE _QUERY VARCHAR(8000);

        SET @_DEFAULT_FILTER = CONCAT('(', _AUTHENTICATED_USER_ID, ' IN (SELECT ID FROM vUTILIZATORI WHERE ID_TIP_UTILIZATOR = (SELECT ID FROM vTIP_UTILIZATORI WHERE UPPER(DENUMIRE)=''ADMINISTRATOR'')) OR ');
        SET @_DEFAULT_FILTER = CONCAT(@_DEFAULT_FILTER, '( ', _AUTHENTICATED_USER_ID, ' IN (SELECT ID FROM vUTILIZATORI WHERE ID_TIP_UTILIZATOR = (SELECT ID FROM vTIP_UTILIZATORI WHERE UPPER(DENUMIRE) LIKE ''%SUPER%''))
                AND (UTILIZATORI.ID_SOCIETATE IN (SELECT ID_SOCIETATE FROM vUTILIZATORI WHERE ID=', _AUTHENTICATED_USER_ID, ') AND UTILIZATORI.ID_TIP_UTILIZATOR = (SELECT ID FROM vTIP_UTILIZATORI WHERE UPPER(DENUMIRE) LIKE ''%REGULAR%'')) ))');



        IF _ORDER IS NULL AND _SORT IS NULL THEN
                 SET _SORT = ' UTILIZATORI.USER_NAME ';
        END IF;

        SET @_QUERY = 'SELECT UTILIZATORI.* ';

            SET @_QUERY = CONCAT(@_QUERY,
                'FROM vUTILIZATORI UTILIZATORI '
                );

        CASE WHEN _FILTER IS NOT NULL THEN
                SET @_QUERY = CONCAT(@_QUERY, ' WHERE (', @_DEFAULT_FILTER, ') AND (', _FILTER, ') ');
        ELSE
                BEGIN
                 SET @_QUERY = CONCAT(@_QUERY, ' WHERE ', @_DEFAULT_FILTER, ' ');
                END;
        END CASE;

        CASE WHEN _SORT IS NOT NULL THEN
                BEGIN
                        SET @_QUERY = CONCAT(@_QUERY, ' ORDER BY ', _SORT);
                END;
        ELSE
                SET @_QUERY = @_QUERY;
        END CASE;

        CASE WHEN _ORDER IS NOT NULL THEN
                SET @_QUERY = CONCAT(@_QUERY, ' ', _ORDER);
        ELSE
                SET @_QUERY = @_QUERY; 
        END CASE;

        IF _LIMIT IS NOT NULL THEN
                SET @_QUERY = CONCAT(@_QUERY, _LIMIT, ';');
        END IF;

        

          PREPARE stmt1 FROM @_QUERY;
          EXECUTE stmt1;
          DEALLOCATE PREPARE stmt1;
          


END
$$

--
-- Create procedure "UTILIZATORIsp_soft_delete"
--
CREATE PROCEDURE UTILIZATORIsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE utilizatori SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Create procedure "UTILIZATORI_ACTIONSsp_count"
--
CREATE PROCEDURE UTILIZATORI_ACTIONSsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM utilizatori_actions;
 END
$$

--
-- Alter procedure "UTILIZATORI_ACTIONSsp_GetByIdUtilizator"
--
DROP PROCEDURE UTILIZATORI_ACTIONSsp_GetByIdUtilizator$$
CREATE PROCEDURE UTILIZATORI_ACTIONSsp_GetByIdUtilizator(
        _AUTHENTICATED_USER_ID INT,
        _ID_UTILIZATOR INT)
BEGIN
        SELECT UA.* FROM vUTILIZATORI_ACTIONS UA
        INNER JOIN vACTIONS A ON UA.ID_ACTION=A.ID
        WHERE UA.ID_UTILIZATOR = _ID_UTILIZATOR
        ORDER BY A.`ORDER`;
END
$$

--
-- Create procedure "UTILIZATORI_ACTIONSsp_soft_delete"
--
CREATE PROCEDURE UTILIZATORI_ACTIONSsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE utilizatori_actions SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Create procedure "UTILIZATORI_DOSAREsp_count"
--
CREATE PROCEDURE UTILIZATORI_DOSAREsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM utilizatori_dosare;
 END
$$

--
-- Alter procedure "UTILIZATORI_DOSAREsp_GetByIdDosar"
--
DROP PROCEDURE UTILIZATORI_DOSAREsp_GetByIdDosar$$
CREATE PROCEDURE UTILIZATORI_DOSAREsp_GetByIdDosar(
        _AUTHENTICATED_USER_ID INT,
        _ID_DOSAR INT)
BEGIN
        SELECT * FROM vUTILIZATORI_DOSARE WHERE ID_DOSAR = _ID_DOSAR;
END
$$

--
-- Alter procedure "UTILIZATORI_DOSAREsp_GetByIdUtilizator"
--
DROP PROCEDURE UTILIZATORI_DOSAREsp_GetByIdUtilizator$$
CREATE PROCEDURE UTILIZATORI_DOSAREsp_GetByIdUtilizator(
        _AUTHENTICATED_USER_ID INT,
        _ID_UTILIZATOR INT)
BEGIN
        SELECT * FROM vUTILIZATORI_DOSARE WHERE ID_UTILIZATOR = _ID_UTILIZATOR;
END
$$

--
-- Create procedure "UTILIZATORI_DOSAREsp_soft_delete"
--
CREATE PROCEDURE UTILIZATORI_DOSAREsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE utilizatori_dosare SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Create procedure "UTILIZATORI_DREPTURIsp_count"
--
CREATE PROCEDURE UTILIZATORI_DREPTURIsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM utilizatori_drepturi;
 END
$$

--
-- Alter procedure "UTILIZATORI_DREPTURIsp_GetAllByIdUtilizator"
--
DROP PROCEDURE UTILIZATORI_DREPTURIsp_GetAllByIdUtilizator$$
CREATE PROCEDURE UTILIZATORI_DREPTURIsp_GetAllByIdUtilizator(
        _AUTHENTICATED_USER_ID INT,
        _ID_UTILIZATOR INT
    )
BEGIN
        SELECT D.ID, D.DENUMIRE, IF(UD.ID_UTILIZATOR IS NULL, FALSE, TRUE) ASIGNAT FROM vDREPTURI D
        LEFT JOIN (SELECT ID_UTILIZATOR, ID_DREPT FROM vUTILIZATORI_DREPTURI WHERE ID_UTILIZATOR = _ID_UTILIZATOR) UD ON D.ID = UD.ID_DREPT
        ORDER BY D.DENUMIRE ASC;
END
$$

--
-- Alter procedure "UTILIZATORI_DREPTURIsp_GetByIdUtilizator"
--
DROP PROCEDURE UTILIZATORI_DREPTURIsp_GetByIdUtilizator$$
CREATE PROCEDURE UTILIZATORI_DREPTURIsp_GetByIdUtilizator(
        _AUTHENTICATED_USER_ID INT,
        _ID_UTILIZATOR INT)
BEGIN
        SELECT * FROM vUTILIZATORI_DREPTURI WHERE ID_UTILIZATOR = _ID_UTILIZATOR;
END
$$

--
-- Alter procedure "UTILIZATORI_DREPTURIsp_select"
--
DROP PROCEDURE UTILIZATORI_DREPTURIsp_select$$
CREATE PROCEDURE UTILIZATORI_DREPTURIsp_select(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT * FROM vUTILIZATORI_DREPTURI;
END
$$

--
-- Create procedure "UTILIZATORI_DREPTURIsp_soft_delete"
--
CREATE PROCEDURE UTILIZATORI_DREPTURIsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE utilizatori_drepturi SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Create procedure "UTILIZATORI_SETARIsp_count"
--
CREATE PROCEDURE UTILIZATORI_SETARIsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM utilizatori_setari;
 END
$$

--
-- Alter procedure "UTILIZATORI_SETARIsp_GetByIdUtilizator"
--
DROP PROCEDURE UTILIZATORI_SETARIsp_GetByIdUtilizator$$
CREATE PROCEDURE UTILIZATORI_SETARIsp_GetByIdUtilizator(
        _AUTHENTICATED_USER_ID INT,
        _ID_UTILIZATOR INT
    )
BEGIN
        SELECT * FROM vUTILIZATORI_SETARI WHERE ID_UTILIZATOR = _ID_UTILIZATOR;
END
$$

--
-- Alter procedure "UTILIZATORI_SETARIsp_GetValue"
--
DROP PROCEDURE UTILIZATORI_SETARIsp_GetValue$$
CREATE PROCEDURE UTILIZATORI_SETARIsp_GetValue(
        _AUTHENTICATED_USER_ID INT,
        _ID_UTILIZATOR INT,
        NUME_SETARE VARCHAR(250)
    )
BEGIN
        DECLARE _VALOARE VARCHAR(100);
        SET _VALOARE = (
                SELECT US.VALOARE FROM vUTILIZATORI_SETARI US INNER JOIN vSETARI S ON US.ID_SETARE=S.ID WHERE US.ID_UTILIZATOR = _ID_UTILIZATOR AND UCASE(S.NUME) = UCASE(NUME_SETARE) LIMIT 1
            );
        IF _VALOARE IS NULL OR _VALOARE = '' THEN
                SET _VALOARE = (SELECT VALOARE FROM vSETARI WHERE UCASE(NUME) = UCASE(NUME_SETARE));
        END IF;
        SELECT _VALOARE AS VALOARE;
END
$$

--
-- Alter procedure "UTILIZATORI_SETARIsp_select"
--
DROP PROCEDURE UTILIZATORI_SETARIsp_select$$
CREATE PROCEDURE UTILIZATORI_SETARIsp_select(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT * FROM vUTILIZATORI_SETARI;
END
$$

--
-- Create procedure "UTILIZATORI_SETARIsp_soft_delete"
--
CREATE PROCEDURE UTILIZATORI_SETARIsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE utilizatori_setari SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Create procedure "UTILIZATORI_SOCIETATIsp_count"
--
CREATE PROCEDURE UTILIZATORI_SOCIETATIsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM utilizatori_societati;
 END
$$

--
-- Create procedure "UTILIZATORI_SOCIETATIsp_soft_delete"
--
CREATE PROCEDURE UTILIZATORI_SOCIETATIsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE utilizatori_societati SET deleted=true WHERE ID = _ID;
 END
$$

--
-- Create procedure "UTILIZATORI_SOCIETATI_ADMINISTRATEsp_count"
--
CREATE PROCEDURE UTILIZATORI_SOCIETATI_ADMINISTRATEsp_count(
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        SELECT COUNT(*) FROM utilizatori_societati_administrate;
 END
$$

--
-- Alter procedure "UTILIZATORI_SOCIETATI_ADMINISTRATEsp_GetByIdUtilizator"
--
DROP PROCEDURE UTILIZATORI_SOCIETATI_ADMINISTRATEsp_GetByIdUtilizator$$
CREATE PROCEDURE UTILIZATORI_SOCIETATI_ADMINISTRATEsp_GetByIdUtilizator(
        _AUTHENTICATED_USER_ID INT,
        _ID_UTILIZATOR INT)
BEGIN
        SELECT * FROM vUTILIZATORI_SOCIETATI_ADMINISTRATE WHERE ID_UTILIZATOR = _ID_UTILIZATOR;
END
$$

--
-- Create procedure "UTILIZATORI_SOCIETATI_ADMINISTRATEsp_soft_delete"
--
CREATE PROCEDURE UTILIZATORI_SOCIETATI_ADMINISTRATEsp_soft_delete(
        _ID INT,
        _AUTHENTICATED_USER_ID INT
)
BEGIN
        UPDATE utilizatori_societati_administrate SET deleted=true WHERE ID = _ID;
 END
$$

DELIMITER ;

--
-- Create view "vactions"
--
CREATE 
VIEW vactions
AS
SELECT
  `actions`.`ID` AS `ID`,
  `actions`.`NAME` AS `NAME`,
  `actions`.`SUMMARY` AS `SUMMARY`,
  `actions`.`IMG` AS `IMG`,
  `actions`.`ACTION` AS `ACTION`,
  `actions`.`OBJECT_NAME` AS `OBJECT_NAME`,
  `actions`.`TYPE` AS `TYPE`,
  `actions`.`ORDER` AS `ORDER`,
  `actions`.`deleted` AS `deleted`
FROM `actions`
WHERE (ISNULL(`actions`.`deleted`)
OR (`actions`.`deleted` <> TRUE));

--
-- Create view "vactions_log"
--
CREATE 
VIEW vactions_log
AS
SELECT
  `actions_log`.`ID` AS `ID`,
  `actions_log`.`AUTHENTICATED_USER` AS `AUTHENTICATED_USER`,
  `actions_log`.`AUTHENTICATED_USER_ID` AS `AUTHENTICATED_USER_ID`,
  `actions_log`.`REDIS_CLIENT_ID` AS `REDIS_CLIENT_ID`,
  `actions_log`.`MESSAGE_ID` AS `MESSAGE_ID`,
  `actions_log`.`CORRELATION_ID` AS `CORRELATION_ID`,
  `actions_log`.`COMMAND_PREDICATE` AS `COMMAND_PREDICATE`,
  `actions_log`.`COMMAND_OBJECT_REPOSITORY` AS `COMMAND_OBJECT_REPOSITORY`,
  `actions_log`.`COMMAND_ARGUMENTS` AS `COMMAND_ARGUMENTS`,
  `actions_log`.`DATA` AS `DATA`,
  `actions_log`.`STATUS` AS `STATUS`,
  `actions_log`.`MESSAGE` AS `MESSAGE`,
  `actions_log`.`RESULT` AS `RESULT`,
  `actions_log`.`INSERTED_ID` AS `INSERTED_ID`,
  `actions_log`.`ERRORS` AS `ERRORS`,
  `actions_log`.`deleted` AS `deleted`
FROM `actions_log`
WHERE (ISNULL(`actions_log`.`deleted`)
OR (`actions_log`.`deleted` <> TRUE));

--
-- Create view "vasigurati"
--
CREATE 
VIEW vasigurati
AS
SELECT
  `asigurati`.`ID` AS `ID`,
  `asigurati`.`DENUMIRE` AS `DENUMIRE`,
  `asigurati`.`DETALII` AS `DETALII`,
  `asigurati`.`deleted` AS `deleted`
FROM `asigurati`
WHERE (ISNULL(`asigurati`.`deleted`)
OR (`asigurati`.`deleted` <> TRUE));

--
-- Create view "vauto"
--
CREATE 
VIEW vauto
AS
SELECT
  `auto`.`ID` AS `ID`,
  `auto`.`NR_AUTO` AS `NR_AUTO`,
  `auto`.`SERIE_SASIU` AS `SERIE_SASIU`,
  `auto`.`MARCA` AS `MARCA`,
  `auto`.`MODEL` AS `MODEL`,
  `auto`.`DETALII` AS `DETALII`,
  `auto`.`deleted` AS `deleted`
FROM `auto`
WHERE (ISNULL(`auto`.`deleted`)
OR (`auto`.`deleted` <> TRUE));

--
-- Create view "vcompensari"
--
CREATE 
VIEW vcompensari
AS
SELECT
  `compensari`.`ID` AS `ID`,
  `compensari`.`ID_DOSAR_RCA` AS `ID_DOSAR_RCA`,
  `compensari`.`ID_DOSAR_CASCO` AS `ID_DOSAR_CASCO`,
  `compensari`.`SUMA` AS `SUMA`,
  `compensari`.`DATA` AS `DATA`,
  `compensari`.`PAS` AS `PAS`,
  `compensari`.`deleted` AS `deleted`
FROM `compensari`
WHERE (ISNULL(`compensari`.`deleted`)
OR (`compensari`.`deleted` <> TRUE));

--
-- Create view "vcomplete"
--
CREATE 
VIEW vcomplete
AS
SELECT
  `complete`.`ID` AS `ID`,
  `complete`.`DENUMIRE` AS `DENUMIRE`,
  `complete`.`DETALII` AS `DETALII`,
  `complete`.`deleted` AS `deleted`
FROM `complete`
WHERE (ISNULL(`complete`.`deleted`)
OR (`complete`.`deleted` <> TRUE));

--
-- Create view "vcontracte"
--
CREATE 
VIEW vcontracte
AS
SELECT
  `contracte`.`ID` AS `ID`,
  `contracte`.`NR_CONTRACT` AS `NR_CONTRACT`,
  `contracte`.`DATA_CONTRACT` AS `DATA_CONTRACT`,
  `contracte`.`OBSERVATII` AS `OBSERVATII`,
  `contracte`.`deleted` AS `deleted`
FROM `contracte`
WHERE (ISNULL(`contracte`.`deleted`)
OR (`contracte`.`deleted` <> TRUE));

--
-- Create view "vcontracte_plati_contracte"
--
CREATE 
VIEW vcontracte_plati_contracte
AS
SELECT
  `contracte_plati_contracte`.`ID` AS `ID`,
  `contracte_plati_contracte`.`ID_CONTRACT` AS `ID_CONTRACT`,
  `contracte_plati_contracte`.`ID_PLATA_CONTRACT` AS `ID_PLATA_CONTRACT`,
  `contracte_plati_contracte`.`deleted` AS `deleted`
FROM `contracte_plati_contracte`
WHERE (ISNULL(`contracte_plati_contracte`.`deleted`)
OR (`contracte_plati_contracte`.`deleted` <> TRUE));

--
-- Create view "vdocumente_scanate"
--
CREATE 
VIEW vdocumente_scanate
AS
SELECT
  `documente_scanate`.`ID` AS `ID`,
  `documente_scanate`.`DENUMIRE_FISIER` AS `DENUMIRE_FISIER`,
  `documente_scanate`.`EXTENSIE_FISIER` AS `EXTENSIE_FISIER`,
  `documente_scanate`.`DATA_INCARCARE` AS `DATA_INCARCARE`,
  `documente_scanate`.`DIMENSIUNE_FISIER` AS `DIMENSIUNE_FISIER`,
  `documente_scanate`.`ID_TIP_DOCUMENT` AS `ID_TIP_DOCUMENT`,
  `documente_scanate`.`ID_DOSAR` AS `ID_DOSAR`,
  `documente_scanate`.`DETALII` AS `DETALII`,
  `documente_scanate`.`VIZA_CASCO` AS `VIZA_CASCO`,
  `documente_scanate`.`FILE_CONTENT` AS `FILE_CONTENT`,
  `documente_scanate`.`SMALL_ICON` AS `SMALL_ICON`,
  `documente_scanate`.`MEDIUM_ICON` AS `MEDIUM_ICON`,
  `documente_scanate`.`CALE_FISIER` AS `CALE_FISIER`,
  `documente_scanate`.`deleted` AS `deleted`
FROM `documente_scanate`
WHERE (ISNULL(`documente_scanate`.`deleted`)
OR (`documente_scanate`.`deleted` <> TRUE));

--
-- Create view "vdosare"
--
CREATE 
VIEW vdosare
AS
SELECT
  `dosare`.`ID` AS `ID`,
  `dosare`.`NR_SCA` AS `NR_SCA`,
  `dosare`.`DATA_SCA` AS `DATA_SCA`,
  `dosare`.`ID_ASIGURAT_CASCO` AS `ID_ASIGURAT_CASCO`,
  `dosare`.`NR_POLITA_CASCO` AS `NR_POLITA_CASCO`,
  `dosare`.`ID_AUTO_CASCO` AS `ID_AUTO_CASCO`,
  `dosare`.`ID_SOCIETATE_CASCO` AS `ID_SOCIETATE_CASCO`,
  `dosare`.`NR_POLITA_RCA` AS `NR_POLITA_RCA`,
  `dosare`.`ID_AUTO_RCA` AS `ID_AUTO_RCA`,
  `dosare`.`VALOARE_DAUNA` AS `VALOARE_DAUNA`,
  `dosare`.`VALOARE_REGRES` AS `VALOARE_REGRES`,
  `dosare`.`ID_INTERVENIENT` AS `ID_INTERVENIENT`,
  `dosare`.`NR_DOSAR_CASCO` AS `NR_DOSAR_CASCO`,
  `dosare`.`VMD` AS `VMD`,
  `dosare`.`OBSERVATII` AS `OBSERVATII`,
  `dosare`.`ID_SOCIETATE_RCA` AS `ID_SOCIETATE_RCA`,
  `dosare`.`DATA_EVENIMENT` AS `DATA_EVENIMENT`,
  `dosare`.`REZERVA_DAUNA` AS `REZERVA_DAUNA`,
  `dosare`.`DATA_INTRARE_RCA` AS `DATA_INTRARE_RCA`,
  `dosare`.`DATA_IESIRE_CASCO` AS `DATA_IESIRE_CASCO`,
  `dosare`.`NR_INTRARE_RCA` AS `NR_INTRARE_RCA`,
  `dosare`.`NR_IESIRE_CASCO` AS `NR_IESIRE_CASCO`,
  `dosare`.`ID_ASIGURAT_RCA` AS `ID_ASIGURAT_RCA`,
  `dosare`.`ID_TIP_DOSAR` AS `ID_TIP_DOSAR`,
  `dosare`.`SUMA_IBNR` AS `SUMA_IBNR`,
  `dosare`.`DATA_AVIZARE` AS `DATA_AVIZARE`,
  `dosare`.`DATA_NOTIFICARE` AS `DATA_NOTIFICARE`,
  `dosare`.`DATA_ULTIMEI_MODIFICARI` AS `DATA_ULTIMEI_MODIFICARI`,
  `dosare`.`AVIZAT` AS `AVIZAT`,
  `dosare`.`CAZ` AS `CAZ`,
  `dosare`.`deleted` AS `deleted`
FROM `dosare`
WHERE (ISNULL(`dosare`.`deleted`)
OR (`dosare`.`deleted` <> TRUE));

--
-- Create view "vdosare_plati"
--
CREATE 
VIEW vdosare_plati
AS
SELECT
  `dosare_plati`.`ID` AS `ID`,
  `dosare_plati`.`ID_DOSAR` AS `ID_DOSAR`,
  `dosare_plati`.`ID_PLATA` AS `ID_PLATA`,
  `dosare_plati`.`deleted` AS `deleted`
FROM `dosare_plati`
WHERE (ISNULL(`dosare_plati`.`deleted`)
OR (`dosare_plati`.`deleted` <> TRUE));

--
-- Create view "vdosare_plati_contracte"
--
CREATE 
VIEW vdosare_plati_contracte
AS
SELECT
  `dosare_plati_contracte`.`ID` AS `ID`,
  `dosare_plati_contracte`.`ID_DOSAR` AS `ID_DOSAR`,
  `dosare_plati_contracte`.`ID_PLATA_CONTRACT` AS `ID_PLATA_CONTRACT`,
  `dosare_plati_contracte`.`deleted` AS `deleted`
FROM `dosare_plati_contracte`
WHERE (ISNULL(`dosare_plati_contracte`.`deleted`)
OR (`dosare_plati_contracte`.`deleted` <> TRUE));

--
-- Create view "vdosare_portal"
--
CREATE 
VIEW vdosare_portal
AS
SELECT
  `dosare_portal`.`ID` AS `ID`,
  `dosare_portal`.`NR_DOSAR` AS `NR_DOSAR`,
  `dosare_portal`.`DATA` AS `DATA`,
  `dosare_portal`.`DATA_SEDINTA` AS `DATA_SEDINTA`,
  `dosare_portal`.`ID_DOSAR` AS `ID_DOSAR`,
  `dosare_portal`.`NR_SCA` AS `NR_SCA`,
  `dosare_portal`.`DATA_SCA` AS `DATA_SCA`,
  `dosare_portal`.`INSTANTA` AS `INSTANTA`,
  `dosare_portal`.`ORA` AS `ORA`,
  `dosare_portal`.`COMPLET` AS `COMPLET`,
  `dosare_portal`.`MONITORIZARE` AS `MONITORIZARE`,
  `dosare_portal`.`deleted` AS `deleted`
FROM `dosare_portal`
WHERE (ISNULL(`dosare_portal`.`deleted`)
OR (`dosare_portal`.`deleted` <> TRUE));

--
-- Create view "vdosare_procese"
--
CREATE 
VIEW vdosare_procese
AS
SELECT
  `dosare_procese`.`ID` AS `ID`,
  `dosare_procese`.`ID_DOSAR` AS `ID_DOSAR`,
  `dosare_procese`.`ID_PROCES` AS `ID_PROCES`,
  `dosare_procese`.`deleted` AS `deleted`
FROM `dosare_procese`
WHERE (ISNULL(`dosare_procese`.`deleted`)
OR (`dosare_procese`.`deleted` <> TRUE));

--
-- Create view "vdosare_stadii"
--
CREATE 
VIEW vdosare_stadii
AS
SELECT
  `dosare_stadii`.`ID` AS `ID`,
  `dosare_stadii`.`ID_DOSAR` AS `ID_DOSAR`,
  `dosare_stadii`.`ID_STADIU` AS `ID_STADIU`,
  `dosare_stadii`.`TERMEN` AS `TERMEN`,
  `dosare_stadii`.`OBSERVATII` AS `OBSERVATII`,
  `dosare_stadii`.`DATA` AS `DATA`,
  `dosare_stadii`.`SCADENTA` AS `SCADENTA`,
  `dosare_stadii`.`ORA` AS `ORA`,
  `dosare_stadii`.`TERMEN_ADMINISTRATIV` AS `TERMEN_ADMINISTRATIV`,
  `dosare_stadii`.`deleted` AS `deleted`
FROM `dosare_stadii`
WHERE (ISNULL(`dosare_stadii`.`deleted`)
OR (`dosare_stadii`.`deleted` <> TRUE));

--
-- Create view "vdosare_stadii_sentinte"
--
CREATE 
VIEW vdosare_stadii_sentinte
AS
SELECT
  `dosare_stadii_sentinte`.`ID` AS `ID`,
  `dosare_stadii_sentinte`.`ID_DOSAR_STADIU` AS `ID_DOSAR_STADIU`,
  `dosare_stadii_sentinte`.`ID_SENTINTA` AS `ID_SENTINTA`,
  `dosare_stadii_sentinte`.`deleted` AS `deleted`
FROM `dosare_stadii_sentinte`
WHERE (ISNULL(`dosare_stadii_sentinte`.`deleted`)
OR (`dosare_stadii_sentinte`.`deleted` <> TRUE));

--
-- Create view "vdrepturi"
--
CREATE 
VIEW vdrepturi
AS
SELECT
  `drepturi`.`ID` AS `ID`,
  `drepturi`.`DENUMIRE` AS `DENUMIRE`,
  `drepturi`.`DETALII` AS `DETALII`,
  `drepturi`.`deleted` AS `deleted`
FROM `drepturi`
WHERE (ISNULL(`drepturi`.`deleted`)
OR (`drepturi`.`deleted` <> TRUE));

--
-- Create view "vimport_log"
--
CREATE 
VIEW vimport_log
AS
SELECT
  `import_log`.`ID` AS `ID`,
  `import_log`.`DATA_IMPORT` AS `DATA_IMPORT`,
  `import_log`.`STATUS` AS `STATUS`,
  `import_log`.`MESSAGE` AS `MESSAGE`,
  `import_log`.`INSERTED_ID` AS `INSERTED_ID`,
  `import_log`.`ERRORS` AS `ERRORS`,
  `import_log`.`deleted` AS `deleted`
FROM `import_log`
WHERE (ISNULL(`import_log`.`deleted`)
OR (`import_log`.`deleted` <> TRUE));

--
-- Create view "vinstante"
--
CREATE 
VIEW vinstante
AS
SELECT
  `instante`.`ID` AS `ID`,
  `instante`.`DENUMIRE` AS `DENUMIRE`,
  `instante`.`DETALII` AS `DETALII`,
  `instante`.`deleted` AS `deleted`
FROM `instante`
WHERE (ISNULL(`instante`.`deleted`)
OR (`instante`.`deleted` <> TRUE));

--
-- Create view "vintervenienti"
--
CREATE 
VIEW vintervenienti
AS
SELECT
  `intervenienti`.`ID` AS `ID`,
  `intervenienti`.`DENUMIRE` AS `DENUMIRE`,
  `intervenienti`.`DETALII` AS `DETALII`,
  `intervenienti`.`deleted` AS `deleted`
FROM `intervenienti`
WHERE (ISNULL(`intervenienti`.`deleted`)
OR (`intervenienti`.`deleted` <> TRUE));

--
-- Create view "vlog"
--
CREATE 
VIEW vlog
AS
SELECT
  `log`.`ID` AS `ID`,
  `log`.`DATA` AS `DATA`,
  `log`.`ACTIUNE` AS `ACTIUNE`,
  `log`.`TABELA` AS `TABELA`,
  `log`.`DETALII_BEFORE` AS `DETALII_BEFORE`,
  `log`.`ID_UTILIZATOR` AS `ID_UTILIZATOR`,
  `log`.`DETALII_AFTER` AS `DETALII_AFTER`,
  `log`.`deleted` AS `deleted`
FROM `log`
WHERE (ISNULL(`log`.`deleted`)
OR (`log`.`deleted` <> TRUE));

--
-- Create view "vmesaje"
--
CREATE 
VIEW vmesaje
AS
SELECT
  `mesaje`.`ID` AS `ID`,
  `mesaje`.`ID_SENDER` AS `ID_SENDER`,
  `mesaje`.`SUBIECT` AS `SUBIECT`,
  `mesaje`.`BODY` AS `BODY`,
  `mesaje`.`DATA` AS `DATA`,
  `mesaje`.`ID_DOSAR` AS `ID_DOSAR`,
  `mesaje`.`IMPORTANTA` AS `IMPORTANTA`,
  `mesaje`.`ID_TIP_MESAJ` AS `ID_TIP_MESAJ`,
  `mesaje`.`deleted` AS `deleted`
FROM `mesaje`
WHERE (ISNULL(`mesaje`.`deleted`)
OR (`mesaje`.`deleted` <> TRUE));

--
-- Create view "vmesaje_utilizatori"
--
CREATE 
VIEW vmesaje_utilizatori
AS
SELECT
  `mesaje_utilizatori`.`ID` AS `ID`,
  `mesaje_utilizatori`.`ID_MESAJ` AS `ID_MESAJ`,
  `mesaje_utilizatori`.`ID_UTILIZATOR` AS `ID_UTILIZATOR`,
  `mesaje_utilizatori`.`DATA_CITIRE` AS `DATA_CITIRE`,
  `mesaje_utilizatori`.`deleted` AS `deleted`
FROM `mesaje_utilizatori`
WHERE (ISNULL(`mesaje_utilizatori`.`deleted`)
OR (`mesaje_utilizatori`.`deleted` <> TRUE));

--
-- Create view "vpending_import_errors"
--
CREATE 
VIEW vpending_import_errors
AS
SELECT
  `pending_import_errors`.`ID` AS `ID`,
  `pending_import_errors`.`NR_SCA` AS `NR_SCA`,
  `pending_import_errors`.`DATA_SCA` AS `DATA_SCA`,
  `pending_import_errors`.`ID_ASIGURAT_CASCO` AS `ID_ASIGURAT_CASCO`,
  `pending_import_errors`.`NR_POLITA_CASCO` AS `NR_POLITA_CASCO`,
  `pending_import_errors`.`ID_AUTO_CASCO` AS `ID_AUTO_CASCO`,
  `pending_import_errors`.`ID_SOCIETATE_CASCO` AS `ID_SOCIETATE_CASCO`,
  `pending_import_errors`.`NR_POLITA_RCA` AS `NR_POLITA_RCA`,
  `pending_import_errors`.`ID_AUTO_RCA` AS `ID_AUTO_RCA`,
  `pending_import_errors`.`VALOARE_DAUNA` AS `VALOARE_DAUNA`,
  `pending_import_errors`.`VALOARE_REGRES` AS `VALOARE_REGRES`,
  `pending_import_errors`.`ID_INTERVENIENT` AS `ID_INTERVENIENT`,
  `pending_import_errors`.`NR_DOSAR_CASCO` AS `NR_DOSAR_CASCO`,
  `pending_import_errors`.`VMD` AS `VMD`,
  `pending_import_errors`.`OBSERVATII` AS `OBSERVATII`,
  `pending_import_errors`.`ID_SOCIETATE_RCA` AS `ID_SOCIETATE_RCA`,
  `pending_import_errors`.`DATA_EVENIMENT` AS `DATA_EVENIMENT`,
  `pending_import_errors`.`REZERVA_DAUNA` AS `REZERVA_DAUNA`,
  `pending_import_errors`.`DATA_INTRARE_RCA` AS `DATA_INTRARE_RCA`,
  `pending_import_errors`.`DATA_IESIRE_CASCO` AS `DATA_IESIRE_CASCO`,
  `pending_import_errors`.`NR_INTRARE_RCA` AS `NR_INTRARE_RCA`,
  `pending_import_errors`.`NR_IESIRE_CASCO` AS `NR_IESIRE_CASCO`,
  `pending_import_errors`.`ID_ASIGURAT_RCA` AS `ID_ASIGURAT_RCA`,
  `pending_import_errors`.`ID_TIP_DOSAR` AS `ID_TIP_DOSAR`,
  `pending_import_errors`.`SUMA_IBNR` AS `SUMA_IBNR`,
  `pending_import_errors`.`DATA_AVIZARE` AS `DATA_AVIZARE`,
  `pending_import_errors`.`DATA_NOTIFICARE` AS `DATA_NOTIFICARE`,
  `pending_import_errors`.`DATA_ULTIMEI_MODIFICARI` AS `DATA_ULTIMEI_MODIFICARI`,
  `pending_import_errors`.`deleted` AS `deleted`
FROM `pending_import_errors`
WHERE (ISNULL(`pending_import_errors`.`deleted`)
OR (`pending_import_errors`.`deleted` <> TRUE));

--
-- Create view "vplati"
--
CREATE 
VIEW vplati
AS
SELECT
  `plati`.`ID` AS `ID`,
  `plati`.`NR_DOCUMENT` AS `NR_DOCUMENT`,
  `plati`.`DATA_DOCUMENT` AS `DATA_DOCUMENT`,
  `plati`.`SUMA` AS `SUMA`,
  `plati`.`OBSERVATII` AS `OBSERVATII`,
  `plati`.`deleted` AS `deleted`
FROM `plati`
WHERE (ISNULL(`plati`.`deleted`)
OR (`plati`.`deleted` <> TRUE));

--
-- Create view "vplati_contracte"
--
CREATE 
VIEW vplati_contracte
AS
SELECT
  `plati_contracte`.`ID` AS `ID`,
  `plati_contracte`.`NR_DOCUMENT` AS `NR_DOCUMENT`,
  `plati_contracte`.`DATA_DOCUMENT` AS `DATA_DOCUMENT`,
  `plati_contracte`.`SUMA` AS `SUMA`,
  `plati_contracte`.`OBSERVATII` AS `OBSERVATII`,
  `plati_contracte`.`INCASAT_PE_AMIABIL` AS `INCASAT_PE_AMIABIL`,
  `plati_contracte`.`INCASAT_CONTRACT` AS `INCASAT_CONTRACT`,
  `plati_contracte`.`deleted` AS `deleted`
FROM `plati_contracte`
WHERE (ISNULL(`plati_contracte`.`deleted`)
OR (`plati_contracte`.`deleted` <> TRUE));

--
-- Create view "vplati_taxa_timbru"
--
CREATE 
VIEW vplati_taxa_timbru
AS
SELECT
  `plati_taxa_timbru`.`ID` AS `ID`,
  `plati_taxa_timbru`.`NR_DOCUMENT` AS `NR_DOCUMENT`,
  `plati_taxa_timbru`.`DATA_DOCUMENT` AS `DATA_DOCUMENT`,
  `plati_taxa_timbru`.`SUMA` AS `SUMA`,
  `plati_taxa_timbru`.`OBSERVATII` AS `OBSERVATII`,
  `plati_taxa_timbru`.`deleted` AS `deleted`
FROM `plati_taxa_timbru`
WHERE (ISNULL(`plati_taxa_timbru`.`deleted`)
OR (`plati_taxa_timbru`.`deleted` <> TRUE));

--
-- Create view "vprocese"
--
CREATE 
VIEW vprocese
AS
SELECT
  `procese`.`ID` AS `ID`,
  `procese`.`NR_INTERN` AS `NR_INTERN`,
  `procese`.`NR_DOSAR_INSTANTA` AS `NR_DOSAR_INSTANTA`,
  `procese`.`DATA_DEPUNERE` AS `DATA_DEPUNERE`,
  `procese`.`OBSERVATII` AS `OBSERVATII`,
  `procese`.`SUMA_SOLICITATA` AS `SUMA_SOLICITATA`,
  `procese`.`PENALITATI` AS `PENALITATI`,
  `procese`.`TAXA_TIMBRU` AS `TAXA_TIMBRU`,
  `procese`.`TIMBRU_JUDICIAR` AS `TIMBRU_JUDICIAR`,
  `procese`.`ONORARIU_EXPERT` AS `ONORARIU_EXPERT`,
  `procese`.`ONORARIU_AVOCAT` AS `ONORARIU_AVOCAT`,
  `procese`.`ID_INSTANTA` AS `ID_INSTANTA`,
  `procese`.`ID_COMPLET` AS `ID_COMPLET`,
  `procese`.`ID_CONTRACT` AS `ID_CONTRACT`,
  `procese`.`STADIU` AS `STADIU`,
  `procese`.`CHELTUIELI_MICA_PUBLICITATE` AS `CHELTUIELI_MICA_PUBLICITATE`,
  `procese`.`ONORARIU_CURATOR` AS `ONORARIU_CURATOR`,
  `procese`.`ALTE_CHELTUIELI_JUDECATA` AS `ALTE_CHELTUIELI_JUDECATA`,
  `procese`.`TAXA_TIMBRU_REEXAMINARE` AS `TAXA_TIMBRU_REEXAMINARE`,
  `procese`.`NR_DOSAR_EXECUTARE` AS `NR_DOSAR_EXECUTARE`,
  `procese`.`DATA_EXECUTARE` AS `DATA_EXECUTARE`,
  `procese`.`ONORARIU_AVOCAT_EXECUTARE` AS `ONORARIU_AVOCAT_EXECUTARE`,
  `procese`.`CHELTUIELI_EXECUTARE` AS `CHELTUIELI_EXECUTARE`,
  `procese`.`DESPAGUBIRE_ACORDATA` AS `DESPAGUBIRE_ACORDATA`,
  `procese`.`CHELTUIELI_JUDECATA_ACORDATE` AS `CHELTUIELI_JUDECATA_ACORDATE`,
  `procese`.`MONITORIZARE` AS `MONITORIZARE`,
  `procese`.`ID_TIP_PROCES` AS `ID_TIP_PROCES`,
  `procese`.`deleted` AS `deleted`
FROM `procese`
WHERE (ISNULL(`procese`.`deleted`)
OR (`procese`.`deleted` <> TRUE));

--
-- Create view "vprocese_plati_taxa_timbru"
--
CREATE 
VIEW vprocese_plati_taxa_timbru
AS
SELECT
  `procese_plati_taxa_timbru`.`ID` AS `ID`,
  `procese_plati_taxa_timbru`.`ID_PROCES` AS `ID_PROCES`,
  `procese_plati_taxa_timbru`.`ID_PLATA_TAXA_TIMBRU` AS `ID_PLATA_TAXA_TIMBRU`,
  `procese_plati_taxa_timbru`.`deleted` AS `deleted`
FROM `procese_plati_taxa_timbru`
WHERE (ISNULL(`procese_plati_taxa_timbru`.`deleted`)
OR (`procese_plati_taxa_timbru`.`deleted` <> TRUE));

--
-- Create view "vsentinte"
--
CREATE 
VIEW vsentinte
AS
SELECT
  `sentinte`.`ID` AS `ID`,
  `sentinte`.`NR_SENTINTA` AS `NR_SENTINTA`,
  `sentinte`.`DATA_SENTINTA` AS `DATA_SENTINTA`,
  `sentinte`.`DATA_COMUNICARE` AS `DATA_COMUNICARE`,
  `sentinte`.`SOLUTIE` AS `SOLUTIE`,
  `sentinte`.`deleted` AS `deleted`
FROM `sentinte`
WHERE (ISNULL(`sentinte`.`deleted`)
OR (`sentinte`.`deleted` <> TRUE));

--
-- Create view "vsetari"
--
CREATE 
VIEW vsetari
AS
SELECT
  `setari`.`ID` AS `ID`,
  `setari`.`NUME` AS `NUME`,
  `setari`.`VALOARE` AS `VALOARE`,
  `setari`.`deleted` AS `deleted`
FROM `setari`
WHERE (ISNULL(`setari`.`deleted`)
OR (`setari`.`deleted` <> TRUE));

--
-- Create view "vsocietati_asigurare"
--
CREATE 
VIEW vsocietati_asigurare
AS
SELECT
  `societati_asigurare`.`ID` AS `ID`,
  `societati_asigurare`.`DENUMIRE` AS `DENUMIRE`,
  `societati_asigurare`.`DETALII` AS `DETALII`,
  `societati_asigurare`.`CUI` AS `CUI`,
  `societati_asigurare`.`NR_REG_COM` AS `NR_REG_COM`,
  `societati_asigurare`.`ADRESA` AS `ADRESA`,
  `societati_asigurare`.`BANCA` AS `BANCA`,
  `societati_asigurare`.`IBAN` AS `IBAN`,
  `societati_asigurare`.`SOLD` AS `SOLD`,
  `societati_asigurare`.`DATA_ULTIMEI_PLATI` AS `DATA_ULTIMEI_PLATI`,
  `societati_asigurare`.`TELEFON` AS `TELEFON`,
  `societati_asigurare`.`REPREZENTANT_FISCAL` AS `REPREZENTANT_FISCAL`,
  `societati_asigurare`.`DENUMIRE_SCURTA` AS `DENUMIRE_SCURTA`,
  `societati_asigurare`.`deleted` AS `deleted`
FROM `societati_asigurare`
WHERE (ISNULL(`societati_asigurare`.`deleted`)
OR (`societati_asigurare`.`deleted` <> TRUE));

--
-- Create view "vstadii"
--
CREATE 
VIEW vstadii
AS
SELECT
  `stadii`.`ID` AS `ID`,
  `stadii`.`DENUMIRE` AS `DENUMIRE`,
  `stadii`.`DETALII` AS `DETALII`,
  `stadii`.`ICON_PATH` AS `ICON_PATH`,
  `stadii`.`PAS` AS `PAS`,
  `stadii`.`STADIU_INSTANTA` AS `STADIU_INSTANTA`,
  `stadii`.`STADIU_CU_TERMEN` AS `STADIU_CU_TERMEN`,
  `stadii`.`deleted` AS `deleted`
FROM `stadii`
WHERE (ISNULL(`stadii`.`deleted`)
OR (`stadii`.`deleted` <> TRUE));

--
-- Create view "vstadii_scadente"
--
CREATE 
VIEW vstadii_scadente
AS
SELECT
  `stadii_scadente`.`ID` AS `ID`,
  `stadii_scadente`.`ID_STADIU` AS `ID_STADIU`,
  `stadii_scadente`.`ID_SETARE` AS `ID_SETARE`,
  `stadii_scadente`.`deleted` AS `deleted`
FROM `stadii_scadente`
WHERE (ISNULL(`stadii_scadente`.`deleted`)
OR (`stadii_scadente`.`deleted` <> TRUE));

--
-- Create view "vstadii_setari"
--
CREATE 
VIEW vstadii_setari
AS
SELECT
  `stadii_setari`.`ID_SETARE` AS `ID_SETARE`,
  `stadii_setari`.`ID_STADIU` AS `ID_STADIU`,
  `stadii_setari`.`ID` AS `ID`,
  `stadii_setari`.`WARNING` AS `WARNING`,
  `stadii_setari`.`deleted` AS `deleted`
FROM `stadii_setari`
WHERE (ISNULL(`stadii_setari`.`deleted`)
OR (`stadii_setari`.`deleted` <> TRUE));

--
-- Create view "vtemplates"
--
CREATE 
VIEW vtemplates
AS
SELECT
  `templates`.`ID` AS `ID`,
  `templates`.`DENUMIRE_FISIER` AS `DENUMIRE_FISIER`,
  `templates`.`EXTENSIE_FISIER` AS `EXTENSIE_FISIER`,
  `templates`.`FILE_CONTENT` AS `FILE_CONTENT`,
  `templates`.`DIMENSIUNE_FISIER` AS `DIMENSIUNE_FISIER`,
  `templates`.`DETALII` AS `DETALII`,
  `templates`.`deleted` AS `deleted`
FROM `templates`
WHERE (ISNULL(`templates`.`deleted`)
OR (`templates`.`deleted` <> TRUE));

--
-- Create view "vtip_caz"
--
CREATE 
VIEW vtip_caz
AS
SELECT
  `tip_caz`.`ID` AS `ID`,
  `tip_caz`.`DENUMIRE` AS `DENUMIRE`,
  `tip_caz`.`DETALII` AS `DETALII`,
  `tip_caz`.`deleted` AS `deleted`
FROM `tip_caz`
WHERE (ISNULL(`tip_caz`.`deleted`)
OR (`tip_caz`.`deleted` <> TRUE));

--
-- Create view "vtip_document"
--
CREATE 
VIEW vtip_document
AS
SELECT
  `tip_document`.`ID` AS `ID`,
  `tip_document`.`DENUMIRE` AS `DENUMIRE`,
  `tip_document`.`DETALII` AS `DETALII`,
  `tip_document`.`QINFO` AS `QINFO`,
  `tip_document`.`deleted` AS `deleted`
FROM `tip_document`
WHERE (ISNULL(`tip_document`.`deleted`)
OR (`tip_document`.`deleted` <> TRUE));

--
-- Create view "vtip_dosare"
--
CREATE 
VIEW vtip_dosare
AS
SELECT
  `tip_dosare`.`ID` AS `ID`,
  `tip_dosare`.`DENUMIRE` AS `DENUMIRE`,
  `tip_dosare`.`DETALII` AS `DETALII`,
  `tip_dosare`.`deleted` AS `deleted`
FROM `tip_dosare`
WHERE (ISNULL(`tip_dosare`.`deleted`)
OR (`tip_dosare`.`deleted` <> TRUE));

--
-- Create view "vtip_mesaje"
--
CREATE 
VIEW vtip_mesaje
AS
SELECT
  `tip_mesaje`.`ID` AS `ID`,
  `tip_mesaje`.`DENUMIRE` AS `DENUMIRE`,
  `tip_mesaje`.`DETALII` AS `DETALII`,
  `tip_mesaje`.`deleted` AS `deleted`
FROM `tip_mesaje`
WHERE (ISNULL(`tip_mesaje`.`deleted`)
OR (`tip_mesaje`.`deleted` <> TRUE));

--
-- Create view "vtip_procese"
--
CREATE 
VIEW vtip_procese
AS
SELECT
  `tip_procese`.`ID` AS `ID`,
  `tip_procese`.`DENUMIRE` AS `DENUMIRE`,
  `tip_procese`.`DETALII` AS `DETALII`,
  `tip_procese`.`deleted` AS `deleted`
FROM `tip_procese`
WHERE (ISNULL(`tip_procese`.`deleted`)
OR (`tip_procese`.`deleted` <> TRUE));

--
-- Create view "vtip_utilizatori"
--
CREATE 
VIEW vtip_utilizatori
AS
SELECT
  `tip_utilizatori`.`ID` AS `ID`,
  `tip_utilizatori`.`DENUMIRE` AS `DENUMIRE`,
  `tip_utilizatori`.`DETALII` AS `DETALII`,
  `tip_utilizatori`.`deleted` AS `deleted`
FROM `tip_utilizatori`
WHERE (ISNULL(`tip_utilizatori`.`deleted`)
OR (`tip_utilizatori`.`deleted` <> TRUE));

--
-- Create view "vutilizatori"
--
CREATE 
VIEW vutilizatori
AS
SELECT
  `utilizatori`.`ID` AS `ID`,
  `utilizatori`.`USER_NAME` AS `USER_NAME`,
  `utilizatori`.`PASSWORD` AS `PASSWORD`,
  `utilizatori`.`NUME_COMPLET` AS `NUME_COMPLET`,
  `utilizatori`.`DETALII` AS `DETALII`,
  `utilizatori`.`IS_ONLINE` AS `IS_ONLINE`,
  `utilizatori`.`EMAIL` AS `EMAIL`,
  `utilizatori`.`IP` AS `IP`,
  `utilizatori`.`MAC` AS `MAC`,
  `utilizatori`.`ID_TIP_UTILIZATOR` AS `ID_TIP_UTILIZATOR`,
  `utilizatori`.`LAST_REFRESH` AS `LAST_REFRESH`,
  `utilizatori`.`DEPARTAMENT` AS `DEPARTAMENT`,
  `utilizatori`.`ID_SOCIETATE` AS `ID_SOCIETATE`,
  `utilizatori`.`deleted` AS `deleted`
FROM `utilizatori`
WHERE (ISNULL(`utilizatori`.`deleted`)
OR (`utilizatori`.`deleted` <> TRUE));

--
-- Create view "vutilizatori_actions"
--
CREATE 
VIEW vutilizatori_actions
AS
SELECT
  `utilizatori_actions`.`ID` AS `ID`,
  `utilizatori_actions`.`ID_UTILIZATOR` AS `ID_UTILIZATOR`,
  `utilizatori_actions`.`ID_ACTION` AS `ID_ACTION`,
  `utilizatori_actions`.`deleted` AS `deleted`
FROM `utilizatori_actions`
WHERE (ISNULL(`utilizatori_actions`.`deleted`)
OR (`utilizatori_actions`.`deleted` <> TRUE));

--
-- Create view "vutilizatori_dosare"
--
CREATE 
VIEW vutilizatori_dosare
AS
SELECT
  `utilizatori_dosare`.`ID` AS `ID`,
  `utilizatori_dosare`.`ID_UTILIZATOR` AS `ID_UTILIZATOR`,
  `utilizatori_dosare`.`ID_DOSAR` AS `ID_DOSAR`,
  `utilizatori_dosare`.`deleted` AS `deleted`
FROM `utilizatori_dosare`
WHERE (ISNULL(`utilizatori_dosare`.`deleted`)
OR (`utilizatori_dosare`.`deleted` <> TRUE));

--
-- Create view "vutilizatori_drepturi"
--
CREATE 
VIEW vutilizatori_drepturi
AS
SELECT
  `utilizatori_drepturi`.`ID` AS `ID`,
  `utilizatori_drepturi`.`ID_UTILIZATOR` AS `ID_UTILIZATOR`,
  `utilizatori_drepturi`.`ID_DREPT` AS `ID_DREPT`,
  `utilizatori_drepturi`.`deleted` AS `deleted`
FROM `utilizatori_drepturi`
WHERE (ISNULL(`utilizatori_drepturi`.`deleted`)
OR (`utilizatori_drepturi`.`deleted` <> TRUE));

--
-- Create view "vutilizatori_setari"
--
CREATE 
VIEW vutilizatori_setari
AS
SELECT
  `utilizatori_setari`.`ID` AS `ID`,
  `utilizatori_setari`.`ID_UTILIZATOR` AS `ID_UTILIZATOR`,
  `utilizatori_setari`.`ID_SETARE` AS `ID_SETARE`,
  `utilizatori_setari`.`VALOARE` AS `VALOARE`,
  `utilizatori_setari`.`deleted` AS `deleted`
FROM `utilizatori_setari`
WHERE (ISNULL(`utilizatori_setari`.`deleted`)
OR (`utilizatori_setari`.`deleted` <> TRUE));

--
-- Create view "vutilizatori_societati"
--
CREATE 
VIEW vutilizatori_societati
AS
SELECT
  `utilizatori_societati`.`ID` AS `ID`,
  `utilizatori_societati`.`ID_UTILIZATOR` AS `ID_UTILIZATOR`,
  `utilizatori_societati`.`ID_SOCIETATE` AS `ID_SOCIETATE`,
  `utilizatori_societati`.`deleted` AS `deleted`
FROM `utilizatori_societati`
WHERE (ISNULL(`utilizatori_societati`.`deleted`)
OR (`utilizatori_societati`.`deleted` <> TRUE));

--
-- Create view "vutilizatori_societati_administrate"
--
CREATE 
VIEW vutilizatori_societati_administrate
AS
SELECT
  `utilizatori_societati_administrate`.`ID` AS `ID`,
  `utilizatori_societati_administrate`.`ID_UTILIZATOR` AS `ID_UTILIZATOR`,
  `utilizatori_societati_administrate`.`ID_SOCIETATE` AS `ID_SOCIETATE`,
  `utilizatori_societati_administrate`.`deleted` AS `deleted`
FROM `utilizatori_societati_administrate`
WHERE (ISNULL(`utilizatori_societati_administrate`.`deleted`)
OR (`utilizatori_societati_administrate`.`deleted` <> TRUE));

--
-- Enable foreign keys
--
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;