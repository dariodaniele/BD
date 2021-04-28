
--creazione tablespace

create tablespace cpooling_dati datafile 'C:\Progetto\cpooling_dati.dbf' size 300 M;

create tablespace foto_utenti datafile 'C:\Progetto\foto_utenti.dbf' size 300M;

CREATE TABLESPACE commenti_utenti DATAFILE 'C:\Progetto\commenti_utenti.dbf' SIZE 500M;

CREATE TABLESPACE storico DATAFILE 'C:\Progetto\storico.dbf' SIZE 100M;

--creazione utenti

CREATE USER cpooling_dba IDENTIFIED BY 1234 DEFAULT TABLESPACE cpooling_dati;

GRANT DBA, UNLIMITED TABLESPACE TO cpooling_dba;

GRANT EXECUTE ON SYS.UTL_FILE TO cpooling_dba;

 
 drop user shazam_dba cascade;
 drop tablespace shazam_ts including contents and datafiles;
drop user cpooling_dba cascade;
drop tablespace commenti_utenti including contents and datafiles;
 DROP TABLESPACE cpooling_dati INCLUDING CONTENTS AND DATAFILES; 
 DROP TABLESPACE foto_utenti INCLUDING CONTENTS AND DATAFILES; 
 DROP TABLESPACE storico INCLUDING CONTENTS AND DATAFILES; 
