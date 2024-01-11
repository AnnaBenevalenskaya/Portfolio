 Необходимо написать запросы, которые будут выводить следующую информацию:
1.	Вывести названия всех компаний, которые не выполнили заказ с 15.11.1996 – 18.02.1997 
2.	Вывести названия компаний поставщиков, которые находятся в México D.F.;
3.	Вывести только те заказы, которые были оформлены с 12.12.1996 по 18.02.1997;
4.	Вывести только тех заказчиков,  название компании которых начинаются с ‘An’;
5.	Вывести названия компаний и заказы, которые они оформили, с суммой заказа более 17000. Использовать соединение таблиц.
6.	Вывести следующие колонки: имя поставщика, сумма заказа. Результаты отсортировать по поставщикам в порядке убывания
7.	Вывести следующие колонки: имя поставщика, дата заказа. Вывести  таким образом, чтобы все заказчики из таблицы 1 были показаны в таблице результатов.

Задание 1

SELECT
c.CompanyName
FROM
Customers  c
INNER JOIN
     	 Orders o
ON  c. CustomerID = o. CustomerID
WHERE
 o.OrderDate NOT BETWEEN ‘15.11.1996’ AND ‘18.02.1997’;

Задание 2
SELECT
CompanyName
FROM
Customers
WHERE
 City = ‘México D.F.’;

Задание 3
 SELECT
OrderID, OrderDate
FROM
Orders
WHERE
 OrderDate BETWEEN ‘12.12.1996’ AND ‘18.02.1997’;

Задание 4
SELECT
CustomerID
FROM
Customers
WHERE
 CompanyName LIKE ‘An%’;
 Задание 5
SELECT
c.CompanyName, o. OrderID
FROM
Customers  c
INNER JOIN
     	 Orders o
ON  c. CustomerID = o. CustomerID
WHERE
 o. OrderSum  > 17000;


Задание 6
SELECT
CustomerID, OrderSum
FROM
Orders
ORDER BY
 CustomerID DESC;


Задание 7
SELECT
c. CustomerID, o. OrderDate
FROM
Customers  c
LEFT JOIN
     	 Orders o
ON  c. CustomerID = o. CustomerID;
