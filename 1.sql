-- Prerekwizyty
-- sqlite3
-- winget install -e --id SQLite.SQLite
-- https://www.sqlite.org/lang_select.html
-- Opcjonalnie - drukowanie ładnych tabelek w sqlite = .mode table

-- Zadanie 1 Połącz tabele Klienci i Zamówienia przy pomocy klauzul INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL OUTER JOIN.
CREATE TABLE Klienci (
    imie TEXT,
    miasto TEXT,
    id INTEGER PRIMARY KEY
);

CREATE TABLE Zamowienia (
    klient_id INTEGER,
    id INTEGER PRIMARY KEY,
    kwota TEXT
);

INSERT INTO Klienci (imie, miasto,id) VALUES 
('Anna', 'Poznań',1),
('Jan', 'Warszawa',2),
('Ola', 'Kraków',3);

INSERT INTO Zamowienia (klient_id, id, kwota) VALUES 
(1,101, 120),
(2,102, 80),
(2,103, 50),
(4,104, 200);

SELECT * FROM Klienci;
SELECT * FROM Zamowienia;
