-- CROSS JOIN --
-- Zadanie 3 Jako właściciel sklepu odzieżowego chcesz wprowadzić promocję na swoje produkty. 
-- Oblicz ceny produktów dla wszystkich rodzajów obniżek.

CREATE TABLE products (
    id INTEGER PRIMARY KEY,
    productName TEXT,
    price DECIMAL(15,4)
);

CREATE TABLE discounts (
    id INTEGER PRIMARY KEY,
    discount INTEGER,
    discountName TEXT
);

INSERT INTO products (id, productName, price) VALUES
(1, 'T-Shirt', 20),
(2, 'Jeans', 50),        
(3, 'Shoes', 96),       
(4, 'Jackets', 75),    
(5, 'Socks', 5);

INSERT INTO discounts (id, discount, discountName) VALUES
(1,0,'Regular Price'),
(2,50,'50 % off'),
(3,75,'75 % off'),
(4,20,'20 % off');

SELECT * FROM products;
SELECT * FROM discounts;