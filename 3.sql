-- CROSS JOIN --
.shell cls

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

.shell echo products
SELECT * FROM products;
.shell echo discounts
SELECT * FROM discounts;

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

SELECT productName,discountName,price-(price*discount)/100 
AS priceAfterDiscount FROM products
CROSS JOIN discounts;
