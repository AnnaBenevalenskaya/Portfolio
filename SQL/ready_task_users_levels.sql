Задания на написание запросов к БД:                
1. Отобрать из таблицы user всех пользователей, у которых level_id=1, skill > 799000 и в имени встречается буква а                
2. Удалить всех пользователей, у которых skill меньше 100000                
3. Вывести все данные из таблицы user в порядке убывания по полю skill                 
4. Добавить в таблицу user нового пользователя по имени Oleg, с уровнем 4 и skill =10                
5. Обновить данные в таблице user -  для пользователей с level_id меньше 2 проставить skill 2000000                
6. Выбрать user_name всех пользователей уровня admin используя подзапрос                
7. Выбрать user_name всех пользователей уровня admin используя join

Задание 1

SELECT
user_name
FROM
user
WHERE
 level_id = 1 AND skill > 799000
 AND user_name LIKE ‘%a%’;

Задание 2

DELETE
FROM
user
WHERE
 skill < 100000;

Задание 3

SELECT *
FROM
user
ORDER BY
 skill DESC;

Задание 4

INSERT INTO user (user_name, level_id, skill)
VALUES (‘Oleg’, 4, 10);

Задание 5
UPDATE user
SET skill = 2000000
WHERE level_id < 2;






Задание 6

SELECT
user_name
FROM
user
WHERE
id IN (
SELECT id
FROM level
WHERE  level_name = ‘admin’
);

Задание 7
SELECT
u.user_name
FROM
user u
INNER JOIN level l
ON u.id = l.id
WHERE
l.level_name = ‘admin’;

