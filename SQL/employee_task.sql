Написать два SQL запроса для выполнения задания:
1) Вывести среднюю заработную плату всех тестировщиков на проекте “ПУМЧД”.
Ответ должен содержать столбцы:
 Название проекта;
 Название должности;
 Средняя заработная плата.
2) Вывести всех работников, которые работают сразу на нескольких проектах.
Ответ должен содержать следующие столбцы:
 Имя и фамилия сотрудника;
 Название должности.

Задание 1

SELECT
pr.project_name,
t.title_name,
AVG(p.salary) AS Средняя заработная плата
FROM
projects pr
JOIN positions p
ON  pr.project_id = p.project_id
JOIN titles t
ON  p.title_id = t.id
WHERE
t.title_name = ‘Тестировщик’
AND pr.project_name = ‘ПУМЧД’;

Задание 2

SELECT
CONCAT(e.first_name, ‘ ‘, e.last_name) AS ФИО,
t.title_name AS Должность
FROM
positions p
JOIN employee e
ON p.employee_id = e.employee_id
JOIN titles t
ON  p.title_id = t.id
GROUP BY CONCAT(e.first_name, ‘ ‘, e.last_name), t.title_name
HAVING COUNT(p.project_id) > 1;
