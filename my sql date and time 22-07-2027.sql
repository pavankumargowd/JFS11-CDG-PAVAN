USE CODEGNAN;

-- DATE FUNCTIONS
CREATE TABLE EMP10(	ID INT,DATEE date);
SELECT * FROM EMP10;
INSERT INTO EMP10 VALUES (101,"2024-08-24");
SELECT * FROM EMP10;

SELECT CURDATE();
SELECT CURRENT_DATE();

SELECT DATE_ADD("2024-01-01",INTERVAL 3 MONTH);
SELECT DATE_ADD("2024-01-01",INTERVAL 3 DAY);
SELECT DATE_ADD("2024-01-01",INTERVAL 3 YEAR);

SELECT DATEDIFF("2024-03-01","2024-01-01");

-- TIME --
CREATE TABLE EMP11(ID INT,TIMEE TIME );
SELECT * FROM EMP11;
INSERT INTO EMP11 VALUES (1,"03:03:03");
INSERT INTO EMP11 VALUES (1,"25:03:03");
SELECT * FROM EMP11;

SELECT CURTIME();
SELECT ADDTIME("10:10:10","01:01:01");
SELECT SUBTIME("10:10:10","01:01:01");
SELECT TIMEDIFF("11:10:10","10:10:10");
SELECT TIME_TO_SEC("00:02:10");

-- TIMESTAMP --
SELECT CURRENT_TIMESTAMP;
SELECT TIMESTAMPDIFF(YEAR,"2024-01-01 10:10:10","2024-02-01 10:10:10");

CREATE TABLE EMP12(
	ID INT,
    TS TIMESTAMP
);
INSERT INTO EMP12 VALUES (1,"2024-01-01 10:10:10");
SELECT * FROM EMP12;
INSERT INTO EMP12 (ID)  VALUES (2);

CREATE TABLE EMP13(
	ID INT,
    TS TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO EMP13 VALUES (1,"2024-01-01 10:10:10");
SELECT * FROM EMP13;
INSERT INTO EMP13 (ID) VALUES (2);
SET SQL_SAFE_UPDATES = 0;
UPDATE EMP13 SET ID=4;

CREATE TABLE EMP14(
	ID INT,
    TS TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
INSERT INTO EMP14 VALUES (1,"2024-01-01 10:10:10");
SELECT * FROM EMP14;
INSERT INTO EMP14 (ID) VALUES (2);
UPDATE EMP14 SET ID=4;