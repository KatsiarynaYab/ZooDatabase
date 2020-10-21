
/*Wy?wietl wszystkich chorych zwierzat ogrodu(ID, Imie, Numer komorki)*/
CREATE VIEW chore_zwierzeta AS
SELECT Zwierze_ID, Imie, Komorka_ID
FROM Zwierze
WHERE Czy_jest_chory = 1;

/*Prykladowe wyjście:*/
/*Zwierze_ID | Imie | Komorka_ID*/
/*	7    | Jan  | 123		
	6    | Han	| 213	*/

/*wyswietlienie resultatu*/
GO
SELECT * FROM [chore_zwierzeta];
GO

/*jaki pracownik odpowiada za jakie komorki?*/
SELECT Pracownik.Imie, Pracownik.Nazwisko, Komorka.Komorka_ID
FROM Komorka
INNER JOIN Pracownik ON Komorka.Pracownik_ID=Pracownik.Pracownik_ID
/*Prykladowe wyjście:*/
/* 	Imie	 |Nazwisko | Komorka_ID*/
/*	Jan	 | Masda   | 123		
	Konrad	 | Han	   | 213	*/

/*Jakiego gatunku sa zwierzeta*/
SELECT Zwierze.Imie, Gatunek.Nazwa
FROM Gatunek
JOIN Zwierze ON Gatunek.Gatunek_ID=Zwierze.Gatunek_ID
/*Prykladowe wyjście:*/
/*  	Imie	| Nazwa */
/*	Jan	| Dzik			
	Konrad	| Zajac	*/


/*wszystkie pracownicy odpowiadajace za chorych zwierzat*/
SELECT Imie, Nazwisko
FROM Pracownik
WHERE Pracownik_ID in (SELECT Pracownik_ID
					FROM Komorka
					WHERE Komorka_ID in (SELECT Komorka_ID
							FROM Zwierze
							WHERE Czy_jest_chory=1))
/*Prykladowe wyjście:*/
/*  	Imie	| Nazwisko */
/*	Jan	| Masda		
	Konrad	| Han		*/


/*ID szczepionek wypelnionych w terazniejszym roku*/

SELECT Szczepionka_ID
FROM Szczepionka
WHERE Kalendarz_ID in (SELECT Kalendarz_ID
					FROM Kalendarz
					WHERE YEAR(Data_kalendarza) = YEAR(CURRENT_TIMESTAMP))
/*Prykladowe wyjście:*/
/*  Szczepionka_ID */
/*	3252345		
	235324		*/

/*Ile zwierzat ma ogrod*/
SELECT COUNT(*) AS Zwierze_ID
FROM Zwierze
/*Ilosc zwierzat*/

/*Najstarsze zwierze ogrodu*/
SELECT MIN(Data_urodzenia)
From Zwierze
/*data urodzenia najstarszego zwierzecia*/

/*Ile kazdy pracownik ma komorek*/
SELECT COUNT(Komorka_ID),  Pracownik_ID
FROM Komorka
GROUP BY Pracownik_ID
 /*Prykladowe wyjście:*/
/*			| Pracownik_ID*/
/*		2	| 143			*/
/*		4	| 145			*/


/*Ile zwierzat mieszka w kazdej komorke*/
SELECT COUNT(Zwierze_ID), Komorka_ID
FROM Zwierze
GROUP BY Komorka_ID
/*Prykladowe wyjście:*/
/*			| Komorka_ID*/
/*		2	| 143			*/
/*		4	| 145			*/


/***************************************************************/
/*Wy?wietli, ile pracowników ogrodu sa odpowiedzialny za zwierzat w wyswietlonym wieku (sortowanie odno?nie wieku) */
SELECT Wiek = (YEAR(CURRENT_TIMESTAMP)-YEAR(Data_urodzenia)), COUNT(ID)
FROM Zwierze, (
	SELECT  /*Imie AS [Pracownik_Imie], Nazwisko AS [Pracownik_Nazwisko],*/ Pracownik_ID AS [ID]
	FROM Pracownik
	WHERE Pracownik_ID in (
		SELECT Pracownik.Pracownik_ID
		FROM Pracownik
		INNER JOIN Komorka ON Pracownik.Pracownik_ID = Komorka.Pracownik_ID
	)
) AS tmp
GROUP BY (YEAR(CURRENT_TIMESTAMP)-YEAR(Data_urodzenia))
ORDER BY Wiek;

