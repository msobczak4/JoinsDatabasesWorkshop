--SELF JOIN

CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    name TEXT,
    manager_id INTEGER
);

INSERT INTO employees (id, name, manager_id) VALUES
(1, 'Jan', NULL),
(2, 'Anna', 1),        
(3, 'Marek', 1),       
(4, 'Karolina', 2),    
(5, 'Tomasz', 2),      
(6, 'Agnieszka', 3);   

SELECT * FROM employees;