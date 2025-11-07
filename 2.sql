--SELF JOIN
.shell cls

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

.shell echo employees
SELECT * FROM employees;

-- SELECT * 
-- FROM employees AS a
-- INNER JOIN employees AS b 
-- ON a.manager_id = b.id;

-- SELECT a.name, b.name
-- FROM employees AS a
-- INNER JOIN employees AS b 
-- ON a.manager_id = b.id;

SELECT a.name AS employeeName, b.name AS managerName
FROM employees AS a
LEFT JOIN employees AS b 
ON a.manager_id = b.id;