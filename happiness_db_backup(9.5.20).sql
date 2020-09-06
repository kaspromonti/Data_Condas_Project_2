DROP TABLE IF EXISTS Alcohol;
DROP TABLE IF EXISTS Marijuana;
DROP TABLE IF EXISTS Happiness;
DROP TABLE IF EXISTS Fitness;
DROP TABLE IF EXISTS Sports;
DROP TABLE IF EXISTS HealthCare;
DROP TABLE IF EXISTS WorkHours;
DROP TABLE IF EXISTS CountryReference;

CREATE TABLE CountryReference (
	incountryid serial UNIQUE,
	countryName varchar,
	region varchar,
	PRIMARY KEY (InCountryID)
);

CREATE TABLE Happiness (
	ExCountryID int,
	countryName varchar,
	region varchar,
	happinessRating float,
	gdpPerCapita float,
	socialSupport float,
	healthyLifeExpectancy float,
	freedomLifeChoice float,
	generosity float,
	perceptionOfCorruption float,
	dystopiaResidual float,
	year int,
	FOREIGN KEY (ExCountryID) REFERENCES CountryReference (InCountryID),
	PRIMARY KEY (countryName)
);

CREATE TABLE Alcohol (
	ExCountryID int,
	countryName varchar,
	alcoholPerYear float,
	alcoholPerDay float,
	beer float,
	wine float,
	spirits float,
	PRIMARY KEY (countryName),
	FOREIGN KEY (ExCountryID) REFERENCES CountryReference (InCountryID)
);

CREATE TABLE Marijuana (
	ExCountryID int,
	countryName varchar,
	recreational varchar,
	medical varchar,
	PRIMARY KEY (countryName),
	FOREIGN KEY (ExCountryID) REFERENCES CountryReference (InCountryID)
);

CREATE TABLE Fitness (
	ExCountryID int,
	countryName varchar,
	healthGrade float,
	pop2020 float,
	PRIMARY KEY (countryName),
	FOREIGN KEY (ExCountryID) REFERENCES CountryReference (InCountryID)
);

CREATE TABLE Sports (
	ExCountryID int,
	countryName varchar,
	sport varchar,
	PRIMARY KEY (countryName),
	FOREIGN KEY (ExCountryID) REFERENCES CountryReference (InCountryID)
);

CREATE TABLE HealthCare (
	ExCountryID int,
	countryName varchar,
	PRIMARY KEY (countryName),
	FOREIGN KEY (ExCountryID) REFERENCES CountryReference (InCountryID)
);

CREATE TABLE WorkHours (
	ExCountryID int,
	countryName varchar,
	avgHours float,
	PRIMARY KEY (countryName),
	FOREIGN KEY (ExCountryID) REFERENCES CountryReference (InCountryID)
);

select * from alcohol;

select * from Countries c
	inner join Alcohol a
	on c.incountryID = a.excountryid;


	