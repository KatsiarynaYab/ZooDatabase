/*Przykładowe wypełnienie bazy dannych*/

/*Usuniecie tablic*/
Delete Karmienie;
Delete Szczepionka;
Delete Szczepienie;
Delete Leczenie;
Delete Lek;
Delete Kalendarz;
Delete Zwierze;
Delete Gatunek;
Delete Porcja;
Delete Dieta;
Delete Karma;
Delete Komorka;
Delete Pracownik;
/**/

INSERT INTO Pracownik(Imie, Nazwisko, Stanowisko) VALUES('Antonina', 'Cie?lak', 'Kasjer' );
INSERT INTO Pracownik(Imie, Nazwisko, Stanowisko) VALUES('Maja' , 'Marciniak', 'Kasjer' );
INSERT INTO Pracownik(Imie, Nazwisko, Stanowisko) VALUES('Kacper', 'Maciejewski', 'Lekarz Weterynarii' );
INSERT INTO Pracownik(Imie, Nazwisko, Stanowisko) VALUES('Wojciech', 'Grabowski', 'Lekarz Weterynarii' );
INSERT INTO Pracownik(Imie, Nazwisko, Stanowisko) VALUES('Amelia', 'Czarnecka', 'Lekarz Weterynarii' );
INSERT INTO Pracownik(Imie, Nazwisko, Stanowisko) VALUES('Magdalena', 'Kowalska', 'Dyrektor' );
INSERT INTO Pracownik(Imie, Nazwisko, Stanowisko) VALUES('Maciej', 'Markiewicz', 'Opiekun' );
INSERT INTO Pracownik(Imie, Nazwisko, Stanowisko) VALUES('Joanna', 'Kurek', 'Opiekun' );
INSERT INTO Pracownik(Imie, Nazwisko, Stanowisko) VALUES('Wiktoria', 'Adamczyk', 'Opiekun' );

/************************************Komorka*/
INSERT INTO Komorka(Pracownik_ID) VALUES (6);
INSERT INTO Komorka(Pracownik_ID) VALUES (7);
INSERT INTO Komorka(Pracownik_ID) VALUES (8);
INSERT INTO Komorka(Pracownik_ID) VALUES (8);
INSERT INTO Komorka(Pracownik_ID) VALUES (8);
INSERT INTO Komorka(Pracownik_ID) VALUES (8);
INSERT INTO Komorka(Pracownik_ID) VALUES (9);
INSERT INTO Komorka(Pracownik_ID) VALUES (9);

/***********************************Karma*/
INSERT INTO Karma(Producent, Nazwa_karmy) VALUES ('Wood Stab', 'trawa');
INSERT INTO Karma(Producent, Nazwa_karmy) VALUES ('Week Bulletin', 'trawa');
INSERT INTO Karma(Producent, Nazwa_karmy) VALUES ('Animonda', 'GranCarno Original');
INSERT INTO Karma(Producent, Nazwa_karmy) VALUES ('Purizon', 'Single Meat');
INSERT INTO Karma(Producent, Nazwa_karmy) VALUES ('Wolf of Wilderness', 'Adult Wild Hills');
INSERT INTO Karma(Producent, Nazwa_karmy) VALUES ('Wolf of Wilderness', '"Wild Hills"');
INSERT INTO Karma(Producent, Nazwa_karmy) VALUES ('Gourmet Gold', 'Kawa?ki w sosie');
INSERT INTO Karma(Producent, Nazwa_karmy) VALUES ('Royal Canin', 'Mini Adult');
INSERT INTO Karma(Producent, Nazwa_karmy) VALUES ('Animonda vom Feinsten', 'Junior');
INSERT INTO Karma(Producent, Nazwa_karmy) VALUES ('Purizon', 'Adult Sterilised');

/**********************************Dieta*/
INSERT INTO Dieta(Typ, Czy_dla_chorego) VALUES ('Grzyzonie', 1);
INSERT INTO Dieta(Typ, Czy_dla_chorego) VALUES ('Ptaki', 1);
INSERT INTO Dieta(Typ, Czy_dla_chorego) VALUES ('Drapie?ne', 1);
INSERT INTO Dieta(Typ, Czy_dla_chorego) VALUES ('Naczelnie', 1);
INSERT INTO Dieta(Typ, Czy_dla_chorego) VALUES ('Trabowce',1);
INSERT INTO Dieta(Typ, Czy_dla_chorego) VALUES ('Grzyzonie', 0);
INSERT INTO Dieta(Typ, Czy_dla_chorego) VALUES ('Ptaki', 0);
INSERT INTO Dieta(Typ, Czy_dla_chorego) VALUES ('Drapie?ne', 0);
INSERT INTO Dieta(Typ, Czy_dla_chorego) VALUES ('Naczelnie', 0);
INSERT INTO Dieta(Typ, Czy_dla_chorego) VALUES ('Trabowce', 0);


/**********************************Porcja*/
INSERT INTO Porcja(Waga_karmy, Karma_ID, Dieta_ID) VALUES (125.250, 1, 9);
INSERT INTO Porcja(Waga_karmy, Karma_ID, Dieta_ID) VALUES (1000.500, 2, 8);
INSERT INTO Porcja(Waga_karmy, Karma_ID, Dieta_ID) VALUES (25.250, 3, 1);
INSERT INTO Porcja(Waga_karmy, Karma_ID, Dieta_ID) VALUES (140.000, 4, 3);
INSERT INTO Porcja(Waga_karmy, Karma_ID, Dieta_ID) VALUES (100.800, 5, 2);
INSERT INTO Porcja(Waga_karmy, Karma_ID, Dieta_ID) VALUES (180.360, 6, 5);
INSERT INTO Porcja(Waga_karmy, Karma_ID, Dieta_ID) VALUES (1255.000, 7, 6);
INSERT INTO Porcja(Waga_karmy, Karma_ID, Dieta_ID) VALUES (130.250, 8, 7);
INSERT INTO Porcja(Waga_karmy, Karma_ID, Dieta_ID) VALUES (10.000, 9, 4);


/**********************************Gatunek*/
INSERT INTO Gatunek(Nazwa) VALUES ('Lama pacos');
INSERT INTO Gatunek(Nazwa) VALUES ('Tolypeutes matacus');
INSERT INTO Gatunek(Nazwa) VALUES ('Tragelaphus eurycerus isaaci');
INSERT INTO Gatunek(Nazwa) VALUES ('Dama dama');
INSERT INTO Gatunek(Nazwa) VALUES ('Halichoerus grypus');
INSERT INTO Gatunek(Nazwa) VALUES ('Hippopotamus amphibius');
INSERT INTO Gatunek(Nazwa) VALUES ('Gorilla gorilla gorilla');
INSERT INTO Gatunek(Nazwa) VALUES ('Lama glama');
INSERT INTO Gatunek(Nazwa) VALUES ('Lemur catta');
INSERT INTO Gatunek(Nazwa) VALUES ('Panthera leo');
INSERT INTO Gatunek(Nazwa) VALUES ('Ursus maritimus');
INSERT INTO Gatunek(Nazwa) VALUES ('Ovis aries aries domestic');

/**********************************Zwierze*/
INSERT INTO Zwierze(Imie, Data_urodzenia, Czy_jest_chory, Komorka_ID, Gatunek_ID) VALUES ('Eryk', '1999-05-07', 1, 1, 11);
INSERT INTO Zwierze(Imie, Data_urodzenia, Czy_jest_chory, Komorka_ID, Gatunek_ID) VALUES ('Kinga', '1985-04-12', 1, 4, 1);
INSERT INTO Zwierze(Imie, Data_urodzenia, Czy_jest_chory, Komorka_ID, Gatunek_ID) VALUES ('Kacper', '2005-07-13', 1, 6, 5);
INSERT INTO Zwierze(Imie, Data_urodzenia, Czy_jest_chory, Komorka_ID, Gatunek_ID) VALUES ('Barbara', '1999-07-05', 1, 7, 2);
INSERT INTO Zwierze(Imie, Data_urodzenia, Czy_jest_chory, Komorka_ID, Gatunek_ID) VALUES ('Karol', '1988-01-17', 0, 3, 3);
INSERT INTO Zwierze(Imie, Data_urodzenia, Czy_jest_chory, Komorka_ID, Gatunek_ID) VALUES ('Jakub', '2001-12-07', 0, 4, 4);
INSERT INTO Zwierze(Imie, Data_urodzenia, Czy_jest_chory, Komorka_ID, Gatunek_ID) VALUES ('Anna', '2014-02-07', 0 ,4, 8);
INSERT INTO Zwierze(Imie, Data_urodzenia, Czy_jest_chory, Komorka_ID, Gatunek_ID) VALUES ('Szymon', '2000-10-30', 1, 6, 9);
INSERT INTO Zwierze(Imie, Data_urodzenia, Czy_jest_chory, Komorka_ID, Gatunek_ID) VALUES ('Aleksandra', '1999-09-28', 1, 1, 5);
INSERT INTO Zwierze(Imie, Data_urodzenia, Czy_jest_chory, Komorka_ID, Gatunek_ID) VALUES ('Nina', '1999-05-07', 0, 1, 2);

/**********************************Kalendarz*/
INSERT INTO Kalendarz(Data_kalendarza, Zwierze_ID) VALUES ('2019-01-01', 9);
INSERT INTO Kalendarz(Data_kalendarza, Zwierze_ID) VALUES ('2019-01-02', 1);
INSERT INTO Kalendarz(Data_kalendarza, Zwierze_ID) VALUES ('2019-01-03', 2);
INSERT INTO Kalendarz(Data_kalendarza, Zwierze_ID) VALUES ('2019-01-04', 3);
INSERT INTO Kalendarz(Data_kalendarza, Zwierze_ID) VALUES ('2019-01-05', 8);
INSERT INTO Kalendarz(Data_kalendarza, Zwierze_ID) VALUES ('2019-01-06', 5);
INSERT INTO Kalendarz(Data_kalendarza, Zwierze_ID) VALUES ('2019-01-07', 7);
INSERT INTO Kalendarz(Data_kalendarza, Zwierze_ID) VALUES ('2019-01-08', 4);
INSERT INTO Kalendarz(Data_kalendarza, Zwierze_ID) VALUES ('2019-01-09', 6);
INSERT INTO Kalendarz(Data_kalendarza, Zwierze_ID) VALUES ('2019-01-17', 10);

/**********************************Lek*/
INSERT INTO Lek(Nazwa, Dawkowanie) VALUES ('Exitel', 3.25);
INSERT INTO Lek(Nazwa, Dawkowanie) VALUES ('Neoway', 50.0);
INSERT INTO Lek(Nazwa, Dawkowanie) VALUES ('Marbodex', 3.0);
INSERT INTO Lek(Nazwa, Dawkowanie) VALUES ('Spotinor', 3.25);
INSERT INTO Lek(Nazwa, Dawkowanie) VALUES ('Equinor', 2.50);
INSERT INTO Lek(Nazwa, Dawkowanie) VALUES ('Chanazone', 100.0);
INSERT INTO Lek(Nazwa, Dawkowanie) VALUES ('Endo', 30.00);
INSERT INTO Lek(Nazwa, Dawkowanie) VALUES ('Fibratop', 250.00);
INSERT INTO Lek(Nazwa, Dawkowanie) VALUES ('Vetoquinol', 10.0);
INSERT INTO Lek(Nazwa, Dawkowanie) VALUES ('Alta-derm', 5.0);
INSERT INTO Lek(Nazwa, Dawkowanie) VALUES ('Bal-Derm', 5.0);

/*********************************Leczenie*/
INSERT INTO Leczenie(Pracownik_ID) VALUES (3);
INSERT INTO Leczenie(Pracownik_ID) VALUES (3);
INSERT INTO Leczenie(Pracownik_ID) VALUES (3);
INSERT INTO Leczenie(Pracownik_ID) VALUES (4);
INSERT INTO Leczenie(Pracownik_ID) VALUES (4);
INSERT INTO Leczenie(Pracownik_ID) VALUES (4);
INSERT INTO Leczenie(Pracownik_ID) VALUES (5);
INSERT INTO Leczenie(Pracownik_ID) VALUES (5);
INSERT INTO Leczenie(Pracownik_ID) VALUES (5);

/*********************************Szczepienie*/
INSERT INTO Szczepienie(Nazwa, Czestotliwosc) VALUES ('BOVITRICHOVAC', 90);
INSERT INTO Szczepienie(Nazwa, Czestotliwosc) VALUES ('APTOVAC', 180);
INSERT INTO Szczepienie(Nazwa, Czestotliwosc) VALUES ('MYCOSALMOVIR', 1090);
INSERT INTO Szczepienie(Nazwa, Czestotliwosc) VALUES ('PM – VAC', 365);
INSERT INTO Szczepienie(Nazwa, Czestotliwosc) VALUES ('SALMOVIR', 800);
INSERT INTO Szczepienie(Nazwa, Czestotliwosc) VALUES ('STREPTOVAC', 365);
INSERT INTO Szczepienie(Nazwa, Czestotliwosc) VALUES ('W?CIEKLIZNA', 3000);

/*********************************Szczepionka*/
INSERT INTO Szczepionka(Pracownik_ID) VALUES (3);
INSERT INTO Szczepionka(Pracownik_ID) VALUES (3);
INSERT INTO Szczepionka(Pracownik_ID) VALUES (3);
INSERT INTO Szczepionka(Pracownik_ID) VALUES (4);
INSERT INTO Szczepionka(Pracownik_ID) VALUES (4);
INSERT INTO Szczepionka(Pracownik_ID) VALUES (4);
INSERT INTO Szczepionka(Pracownik_ID) VALUES (5);
INSERT INTO Szczepionka(Pracownik_ID) VALUES (5);
INSERT INTO Szczepionka(Pracownik_ID) VALUES (5);


/*********************************Karmienie*/
INSERT INTO Karmienie(Pracownik_ID, Dieta_ID) VALUES (3, 1);
INSERT INTO Karmienie(Pracownik_ID, Dieta_ID) VALUES (3, 2);
INSERT INTO Karmienie(Pracownik_ID, Dieta_ID) VALUES (3, 5);
INSERT INTO Karmienie(Pracownik_ID, Dieta_ID) VALUES (4, 2);
INSERT INTO Karmienie(Pracownik_ID, Dieta_ID) VALUES (4, 3);
INSERT INTO Karmienie(Pracownik_ID, Dieta_ID) VALUES (4, 4);
INSERT INTO Karmienie(Pracownik_ID, Dieta_ID) VALUES (5, 3);
INSERT INTO Karmienie(Pracownik_ID, Dieta_ID) VALUES (5, 1);
INSERT INTO Karmienie(Pracownik_ID, Dieta_ID) VALUES (5, 6);

