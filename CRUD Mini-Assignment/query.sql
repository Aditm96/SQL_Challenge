--Select all rows and columns
select * from firepower;

--Find the rows that have a ReservePersonnel of
--0 and remove these rows from the dataset.
delete from firepower 
where reservepersonnel = 0;
select * from firepower;

--Every country in the world at least deserves one FighterAircraft—it only seems fair. 
--Let's add one to each nation that has none.
select country, fighteraircraft 
from firepower 
where fighteraircraft = 0;

Update firepower
Set fighteraircraft = 1
Where fighteraircraft = 0;

select * from firepower where fighteraircraft = 1;

--Find the Averages for TotalMilitaryPersonnel, TotalAircraftStrength, 
--TotalHelicopterStrength, and TotalPopulation, 
--and rename the columns with their designated average.

select round(avg(totalmilitarypersonnel), 2) as "Average_Miltiary_Personnel",
round(avg(totalaircraftstrength), 2) as "Average_Aircraft_Strength",
round(avg(totalhelicopterstrength), 2) as "Average_Helicopter_Strength",
round(avg(totalpopulation), 2) as "Average_Population"
from firepower;