/*
Transaction Rules:

A - atomicity (everthing or nothing)
C - consistent (doesn't change DB state - everything ok, everything stays ok)
I - isolated (one transaction doesn't interfer with another)
D - durability (data cannot be lost out of nowhere)
*/

CREATE DATABASE IF NOT EXISTS first_database;
DROP DATABASE IF EXISTS first_database;

CREATE TABLE IF NOT EXISTS people(
	nome varchar(40),
   idade tinyint(4),
   sexo char(1),
   peso float,
   altura float,
   nacionalidade varchar(20)
);
DROP TABLE IF EXISTS people;

CREATE TABLE people_optimized(
	pid int not null auto_increment,
   pname varchar(30) not null,
   pborn date not null,
   pgender enum('M', 'F', 'Other') not null,
   pweight decimal(5, 2) not null,
   pheight decimal(3, 2) not null,
   pnacionality varchar(20) not null default 'Brasil',
   primary key(pid) 
)engine = InnoDB default charset = utf8;

ALTER TABLE people_optimized
RENAME TO peopleoptimized;

ALTER TABLE peopleoptimized
MODIFY COLUMN pname char;
ALTER TABLE peopleoptimized
CHANGE COLUMN pname pname varchar(40) not null,
DROP COLUMN pnacionality,
ADD COLUMN pnacionality varchar(20) not null default 'Brasil' AFTER pheight;

DESC peopleOptimized;

INSERT INTO peopleoptimized 
(pname, pborn, pgender, pweight, pheight, pnacionality)
VALUES
('Rodrigson', '1966/03/03', 'Other', '89.30', '1.80', 'Brasil'),
('Ketlyn', '2001/07/03', 'F', '67.20', '1.68', 'Reino Unido'),
('Leôncio', '2000/08/19', 'M', '78.50', '1.76', 'Suíça'),
('Niggaaa', '1990/12/20', 'M', '92.80', '1.90', 'Nigéria'),
('Kowalski', '1986/05/11', 'M', '90.70', '1.85', 'Madagascar'),
('Hilda', '1942/07/05', 'F', '55.10', '1.56', 'Canadá'),
('Hermston', '1978/12/23', 'M', '69.20', '1.70', 'Finlândia'),
('Muchacha', '1996/04/12', 'F', '72.60', '1.78', 'Porto Rico'),
('Bjorn', '1995/09/07', 'M', '77.40', '1.81', 'Noruega'),
('Pablito', '1975/02/27', 'Other', '85.00', '1.82', 'Colômbia');

SELECT pgender, count(pgender), avg(pweight) FROM peopleoptimized
GROUP BY pgender
HAVING count(pgender) > '2';

SELECT pname, pweight FROM peopleoptimized
GROUP BY pweight
HAVING pweight < (SELECT avg(pweight) FROM peopleoptimized);

SELECT max(pheight) FROM peopleoptimized;
SELECT pweight, pnacionality FROM peopleoptimized WHERE pweight = (SELECT min(pweight) FROM peopleoptimized);
SELECT sum(pweight) FROM peopleoptimized;
SELECT DISTINCT pgender FROM peopleoptimized;
SELECT pname FROM peopleoptimized WHERE pname LIKE '%A%';
SELECT DISTINCT pnacionality FROM peopleoptimized WHERE pnacionality NOT LIKE '%A';
SELECT pnacionality, pweight FROM peopleoptimized WHERE pweight BETWEEN '60' AND '70';

SELECT pname FROM peopleoptimized WHERE pgender in ('other');

SELECT * FROM peopleoptimized;

DROP TABLE IF EXISTS peopleoptimized;

/*----------------------------------------------------------------*/
/*RELACIONAL MODEL - one to one, one to many, many to one - + JOIN*/

DROP TABLE IF EXISTS courses;
CREATE TABLE IF NOT EXISTS courses(
	cId int not null auto_increment,
   cCourse varchar(40) not null,
   primary key(cId)
)engine = InnoDB charset = utf8;

DESC courses;

INSERT INTO courses 
(cCourse)
values
('Sex'),
('Drugs'),
('Money'),
('Rock n'' Roll');

SELECT cCourse FROM courses;

ALTER TABLE peopleoptimized add favouriteCourse int;
ALTER TABLE peopleoptimized
ADD foreign key(favouriteCourse)
REFERENCES courses(cid);

UPDATE first_database.peopleoptimized SET favouriteCourse = '1' WHERE(pid = '1');

SELECT peopleoptimized.pname, courses.cCourse
FROM peopleoptimized INNER JOIN courses
ON courses.cId = peopleoptimized.favouriteCourse;

SELECT p.pname, c.cCourse
FROM peopleoptimized AS p LEFT OUTER JOIN courses AS c
ON c.cId = p.favouriteCourse;

/*----------------------------------------*/
/*RELACIONAL MODEL - many to many - + JOIN*/
DROP TABLE IF EXISTS p_watch_c;
CREATE TABLE IF NOT EXISTS p_watch_c(
	wId int not null auto_increment,
   wPeople int,
   wCourse int,
   PRIMARY KEY (wId),
   FOREIGN KEY (wPeople) REFERENCES peopleoptimized (pid),
   FOREIGN KEY (wCourse) REFERENCES courses (cId)
)engine = InnoDB default charset = utf8;

SELECT * FROM peopleoptimized;
SELECT * FROM courses;
SELECT * FROM p_watch_c;

INSERT INTO p_watch_c values
(DEFAULT, '1', '1');

SELECT p.pname, c.cCourse FROM peopleoptimized AS p
JOIN p_watch_c AS w
ON p.pid = w.wPeople
JOIN courses AS c
ON c.cId = w.wCourse;

CREATE TABLE drop_table(
	aletorio1 char,
   aletorio2 tinyint
);

SELECT * FROM people;