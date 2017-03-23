--
-- Disable foreign keys
--
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

SET NAMES 'utf8';

USE socisa;


--
-- Alter table "utilizatori"
--
ALTER TABLE utilizatori
  CHANGE COLUMN PASSWORD PASSWORD VARCHAR(45) DEFAULT NULL;

DELIMITER $$

--
-- Alter procedure "UTILIZATORIsp_insert"
--
DROP PROCEDURE UTILIZATORIsp_insert$$
CREATE PROCEDURE UTILIZATORIsp_insert(
        _AUTHENTICATED_USER_ID INT,
        _USER_NAME VARCHAR(50),
        -- _PASSWORD VARCHAR(250),
        _NUME_COMPLET VARCHAR(250),
        _DETALII TEXT,
        _IS_ONLINE BOOL,
        _EMAIL VARCHAR(250),
        _IP VARCHAR(12),
        _MAC VARCHAR(100),
        _ID_TIP_UTILIZATOR INT,
        _DEPARTAMENT VARCHAR(100),
        _LAST_REFRESH DATETIME,
        _ID_SOCIETATE INT,
        OUT _ID INT
    )
BEGIN
        INSERT INTO UTILIZATORI
        SET USER_NAME = _USER_NAME,
        -- PASSWORD = _PASSWORD,
        NUME_COMPLET = _NUME_COMPLET,
        DETALII = _DETALII,
        IS_ONLINE = _IS_ONLINE,
        EMAIL = _EMAIL,
        IP = _IP,
        MAC = _MAC,
        ID_TIP_UTILIZATOR = _ID_TIP_UTILIZATOR,
        DEPARTAMENT = _DEPARTAMENT,
        LAST_REFRESH = _LAST_REFRESH,
        ID_SOCIETATE = _ID_SOCIETATE;

        SET _ID = LAST_INSERT_ID();        
END
$$

--
-- Alter procedure "UTILIZATORIsp_update"
--
DROP PROCEDURE UTILIZATORIsp_update$$
CREATE PROCEDURE UTILIZATORIsp_update(
        _AUTHENTICATED_USER_ID INT,
        _ID INT,
        _USER_NAME VARCHAR(50),
        -- _PASSWORD VARCHAR(250),
        _NUME_COMPLET VARCHAR(250),
        _DETALII TEXT,
        _IS_ONLINE BOOL,
        _EMAIL VARCHAR(250),
        _IP VARCHAR(12),
        _MAC VARCHAR(100),
        _ID_TIP_UTILIZATOR INT,
        _DEPARTAMENT VARCHAR(100),
        _LAST_REFRESH DATETIME,
        _ID_SOCIETATE INT
    )
BEGIN
        UPDATE UTILIZATORI
        SET USER_NAME = _USER_NAME,
        -- PASSWORD = _PASSWORD,
        NUME_COMPLET = _NUME_COMPLET,
        DETALII = _DETALII,
        IS_ONLINE = _IS_ONLINE,
        EMAIL = _EMAIL,
        IP = _IP,
        MAC = _MAC,
        ID_TIP_UTILIZATOR = _ID_TIP_UTILIZATOR,
        DEPARTAMENT = _DEPARTAMENT,
        LAST_REFRESH = _LAST_REFRESH,
        ID_SOCIETATE = _ID_SOCIETATE
        WHERE ID = _ID;
END
$$

DELIMITER ;

--
-- Enable foreign keys
--
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;