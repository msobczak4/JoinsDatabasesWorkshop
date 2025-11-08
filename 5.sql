-- Zadania na podsumowanie
-- 1.Wypisz zamówienia z danymi klientów
-- 2.Wypisz klientów, którzy nie złożyli zamówień
-- 3.Wypisz listę zamówionych produktów
-- 4.Wypisz klientów, którzy mieszkają w tym samym mieście
-- 5.Wygeneruj wszystkie możliwe kombinacje klientów i produktów

CREATE TABLE Klienci (
    id INTEGER PRIMARY KEY,
    imie TEXT,
    miasto TEXT
);

CREATE TABLE Zamowienia (
    id INTEGER PRIMARY KEY,
    klient_id INTEGER,
    data_zamowienia TEXT,
    FOREIGN KEY (klient_id) REFERENCES Klienci(id)
);

CREATE TABLE Produkty (
    id INTEGER PRIMARY KEY,
    nazwa TEXT,
    cena REAL
);

CREATE TABLE PozycjeZamowienia (
    id INTEGER PRIMARY KEY,
    zamowienie_id INTEGER,
    produkt_id INTEGER,
    ilosc INTEGER,
    FOREIGN KEY (zamowienie_id) REFERENCES Zamowienia(id),
    FOREIGN KEY (produkt_id) REFERENCES Produkty(id)
);

INSERT INTO Klienci (id, imie, miasto) VALUES
(1, 'Anna', 'Warszawa'),
(2, 'Krzysztof', 'Kraków'),
(3, 'Julia', 'Warszawa'),
(4, 'Marek', 'Poznań'),
(5, 'Ola', 'Gdańsk');

INSERT INTO Produkty (id, nazwa, cena) VALUES
(1, 'Chleb', 4.50),
(2, 'Mleko', 3.20),
(3, 'Masło', 7.60),
(4, 'Kawa', 18.90),
(5, 'Czekolada', 5.50);

INSERT INTO Zamowienia (id, klient_id, data_zamowienia) VALUES
(1, 1, '2025-01-12'),
(2, 1, '2025-01-15'),
(3, 3, '2025-01-14'),
(4, 4, '2025-01-18');

INSERT INTO PozycjeZamowienia (id, zamowienie_id, produkt_id, ilosc) VALUES
(1, 1, 1, 2),
(2, 1, 4, 1),
(3, 2, 2, 3),
(4, 2, 5, 2),
(5, 3, 3, 1),
(6, 3, 4, 1),
(7, 4, 1, 1),
(8, 4, 3, 2);
