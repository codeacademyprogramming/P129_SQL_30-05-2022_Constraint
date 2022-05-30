--Task - 1
--Company database-i yaradin(istənilən ad vəre bilərsiz db-ye).
--Employees table-i olsun. Employees  -in Name, SurName, Position, Salary Column-lari olsun. 
--Aşağıdakı query-ləri yazmalısınız:

--1.Ortalama maaşı çıxarmalısınız

--2.Ortalama maaşdan yuxarı maaş alan işçilərin ad soyadını və maaşını yazdırmalısız

--3.Max, Min maaşları çıxarmalı


CREATE DATABASE P129DEMO

USE P129DEMO

CREATE TABLE EMPLOYYES (Id int,Name nvarchar(25), Surname nvarchar(25),Position nvarchar(25),Salary int)

INSERT INTO EMPLOYYES 
VALUES
(1 , N'Əliskəndər' , N'Qurbanov' , N'Tenbel', 0),
(2 , N'Elçin' , N'İsmayılov' , N'Tenbel', 0),
(1 , N'Elgiz' , N'Əliyev' , N'Tenbel', 0),
(1 , N'Musa' , N'Dadaşov' , N'Köçürdən', -500),
(1 , N'Vasif' , N'Əliyev' , N'Çalışqan', 1500)

Select Avg(Salary) From EMPLOYYES

Select Name 'Ad', Surname as 'SoyAd', Salary [Maaş] From EMPLOYYES Where EMPLOYYES.Salary > (Select Avg(Salary) From EMPLOYYES)

Select Min(Salary) From EMPLOYYES

Select Max(Salary) From EMPLOYYES