CREATE TABLE netology.CUSTOMERS 
(
  id int(11) PRIMARY KEY AUTO_INCREMENT,
  name varchar(255),
  surname varchar(255),
  age int(11),
  phone_number varchar(255)
);

INSERT INTO netology.CUSTOMERS (id, name, surname, age, phone_number) VALUES
(1, 'IVAN', 'PETROV', 27, '11111'),
(2, 'MARIA', 'PETROVA', 26, '11112'),
(3, 'alexey', 'sidorov', 29, '11113'),
(4, 'Alexey', 'Petrov', 28, '11114');

CREATE TABLE netology.ORDERS
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    date Date,
    customer_id INT,
    product_name varchar(255),
    amount INT,
    FOREIGN KEY (customer_id)  REFERENCES netology.CUSTOMERS (id)
);

INSERT INTO netology.ORDERS (id, date, customer_id, product_name, amount) VALUES
(1, '2021-08-08', 1, 'apple', 4),
(2, '2021-08-10', 2, 'potato', 5),
(3, '2021-08-05', 1, 'apple', 5),
(4, '2021-08-06', 1, 'vodka', 3),
(5, '2021-08-03', 3, 'spaghetti', 15),
(6, '2021-08-07', 4, 'ketchup', 15);

SELECT O.product_name, C.name
FROM ORDERS O 
INNER JOIN CUSTOMERS C
ON O.customer_id = C.id
WHERE C.name LIKE 'alexey';
