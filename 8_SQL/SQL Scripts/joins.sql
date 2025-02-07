USE advance;
-- Create table 1
CREATE TABLE Table1
(ID INT, Value VARCHAR(10));
INSERT INTO Table1 (ID, Value)
SELECT 1,'First'
UNION ALL
SELECT 2,'Second'
UNION ALL
SELECT 3,'Third'
UNION ALL
SELECT 4,'Fourth'
UNION ALL
SELECT 5,'Fifth';

-- Create table 2
CREATE TABLE Table2
(ID INT, Value VARCHAR(10));
INSERT INTO Table2 (ID, Value)
SELECT 1,'First'
UNION ALL
SELECT 2,'Second'
UNION ALL
SELECT 3,'Third'
UNION ALL
SELECT 6,'Sixth'
UNION ALL
SELECT 7,'Seventh'
UNION ALL
SELECT 8,'Eighth';

SELECT *
FROM Table1;
SELECT *
FROM Table2;

/* INNER JOIN */
SELECT t1.*,t2.*
FROM Table1 t1
INNER JOIN Table2 t2 ON t1.ID = t2.ID;

/* INNER JOIN */
SELECT 	t1.ID AS T1ID, t1.Value AS T1Value, 
		t2.ID T2ID, t2.Value AS T2Value
FROM Table1 t1
INNER JOIN Table2 t2 ON t1.ID = t2.ID;

/* LEFT JOIN */
SELECT t1.*,t2.*
FROM Table1 t1
LEFT JOIN Table2 t2 ON t1.ID = t2.ID;

/* RIGHT JOIN */
SELECT t1.*,t2.*
FROM Table1 t1
RIGHT JOIN Table2 t2 ON t1.ID = t2.ID;

/* OUTER JOIN */
-- Throws an error
SELECT t1.*,t2.*
FROM Table1 t1
FULL OUTER JOIN Table2 t2 ON t1.ID = t2.ID;

/* LEFT JOIN - WHERE NULL */
SELECT t1.*,t2.*
FROM Table1 t1
LEFT JOIN Table2 t2 ON t1.ID = t2.ID
WHERE t2.ID IS NULL;

/* RIGHT JOIN - WHERE NULL */
SELECT t1.*,t2.*
FROM Table1 t1
RIGHT JOIN Table2 t2 ON t1.ID = t2.ID
WHERE t1.ID IS NULL;

/* CROSS JOIN */
SELECT t1.*,t2.*
FROM Table1 t1
CROSS JOIN Table2 t2;

-- Clean up
DROP TABLE Table1;
DROP TABLE Table2;