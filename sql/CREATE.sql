/*Usuniecie tablic*/
DROP TABLE Karmienie;
DROP TABLE Szczepionka;
DROP TABLE Szczepienie;
DROP TABLE Lek;
DROP TABLE Leczenie;
DROP TABLE Kalendarz;
DROP TABLE Zwierze;
DROP TABLE Gatunek;
DROP TABLE Porcja;
DROP TABLE Dieta;
DROP TABLE Karma;
DROP TABLE Komorka;
DROP TABLE Pracownik;
/**/


CREATE TABLE Pracownik (
	Pracownik_ID DECIMAL(10) IDENTITY PRIMARY KEY,
	Imie varchar(30),
	Nazwisko varchar(30),
	Stanowisko varchar(30),
	CHECK(Imie IS NOT NULL OR Nazwisko IS NOT NULL)
);

CREATE TABLE Komorka (
	Komorka_ID DECIMAL(3) IDENTITY PRIMARY KEY,
	Pracownik_ID DECIMAL(10) NOT NULL,
	FOREIGN KEY (Pracownik_ID) REFERENCES Pracownik(Pracownik_ID)
);

CREATE TABLE Karma (
	Karma_ID DECIMAL(10) IDENTITY PRIMARY KEY,
	Producent varchar(30),
	Nazwa_karmy	 varchar(30) NOT NULL
);


CREATE TABLE Dieta (
	Dieta_ID DECIMAL(10) IDENTITY PRIMARY KEY,
	Typ varchar(30),
	Czy_dla_chorego BIT DEFAULT 0
);

CREATE TABLE Porcja (
	Porcja_ID DECIMAL(10) IDENTITY PRIMARY KEY,
	Waga_karmy FLOAT(10) NOT NULL,
	Karma_ID DECIMAL(10),
	Dieta_ID DECIMAL(10),
	FOREIGN KEY (Karma_ID) REFERENCES Karma(Karma_ID)
		ON UPDATE CASCADE,
	FOREIGN KEY (Dieta_ID) REFERENCES Dieta(Dieta_ID)
		ON UPDATE CASCADE
);

CREATE TABLE Gatunek (
	Gatunek_ID DECIMAL(10) IDENTITY PRIMARY KEY,
	Nazwa varchar(50) NOT NULL
);

CREATE TABLE Zwierze (
	Zwierze_ID DECIMAL(10) IDENTITY PRIMARY KEY,
	Imie varchar(30),
	Data_urodzenia DATE DEFAULT CURRENT_TIMESTAMP,
	Czy_jest_chory BIT DEFAULT 0,
	Rodzic_ID DECIMAL(10),
	Komorka_ID DECIMAL(3),
	Gatunek_ID DECIMAL(10) NOT NULL,
	FOREIGN KEY (Rodzic_ID) REFERENCES Zwierze(Zwierze_ID),
	FOREIGN KEY (Komorka_ID) REFERENCES Komorka(Komorka_ID),
	FOREIGN KEY (Gatunek_ID) REFERENCES Gatunek(Gatunek_ID)
);

CREATE TABLE Kalendarz (
	Kalendarz_ID DECIMAL(10) IDENTITY PRIMARY KEY,
	Data_kalendarza DATE DEFAULT CURRENT_TIMESTAMP,
	Zwierze_ID DECIMAL(10),
	FOREIGN KEY (Zwierze_ID) REFERENCES Zwierze(Zwierze_ID)
		ON UPDATE CASCADE ON DELETE CASCADE
);


CREATE TABLE Lek (
	Lek_ID DECIMAL(10) IDENTITY PRIMARY KEY,
	Nazwa varchar(100) NOT NULL,
	Dawkowanie FLOAT(10)
);

CREATE TABLE Leczenie (
	Leczenie_ID DECIMAL(10) IDENTITY PRIMARY KEY,
	Pracownik_ID DECIMAL(10) NOT NULL,
	Kalendarz_ID DECIMAL(10),
	FOREIGN KEY (Pracownik_ID) REFERENCES Pracownik(Pracownik_ID),
	FOREIGN KEY (Kalendarz_ID) REFERENCES Kalendarz(Kalendarz_ID)
		ON UPDATE CASCADE ON DELETE CASCADE
);


CREATE TABLE Szczepienie (
	Szczepienie_ID DECIMAL(10) IDENTITY PRIMARY KEY,
	Nazwa varchar(30) NOT NULL,
	Czestotliwosc INT
);

CREATE TABLE Szczepionka (
	Szczepionka_ID DECIMAL(10) IDENTITY PRIMARY KEY,
	Pracownik_ID DECIMAL(10) NOT NULL,
	Kalendarz_ID DECIMAL(10),
	FOREIGN KEY (Pracownik_ID) REFERENCES Pracownik(Pracownik_ID),
	FOREIGN KEY (Kalendarz_ID) REFERENCES Kalendarz(Kalendarz_ID)
		ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Karmienie (
	Karmienie_ID DECIMAL(10) IDENTITY PRIMARY KEY,
	Pracownik_ID DECIMAL(10) NOT NULL,
	Dieta_ID DECIMAL(10),
	Kalendarz_ID DECIMAL(10),
	FOREIGN KEY (Pracownik_ID) REFERENCES Pracownik(Pracownik_ID),
	FOREIGN KEY (Dieta_ID) REFERENCES Dieta(Dieta_ID),
	FOREIGN KEY (Kalendarz_ID) REFERENCES Kalendarz(Kalendarz_ID)
		ON UPDATE CASCADE ON DELETE CASCADE
);

