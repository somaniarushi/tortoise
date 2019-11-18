-- Lecture Number 32



-- Declarative Languages

-- Database Management Systems

-- Systems
-- 		Area of research in CS workin on operating systems and DBMS

-- Database is a collection of tables containing data.
-- 		Management holds the operations to the tables

-- Tables
-- 		Collection of records
-- 		Rows with value in each column

-- A column has a name and a type
-- A row has a value for each column

-- Structured Query Language (SQL)

-- Declarative (SQL, Prolog)
-- 		A program is a description of the desired result that needs to be generated, interpreter figuring out how to do it.
-- Imperative Language
-- 		A program is a description of the processes that need to be carried out through an interpreter.


create table cities as
	select 38 as latitude, 122 as longitude, "berkeley" as name union
	select 42, 71, "Cambridge" union
	select 45, 93, "Minneapolis";

select "west coast" as region, name from cities where longitude>=115 union
select "other", name from cities where longitude<115;

-- DOGS --

