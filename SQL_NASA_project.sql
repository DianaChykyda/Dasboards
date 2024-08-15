SELECT *
FROM objects;


-----Знайди всі об'єкти, які є потенційно небезпечними і мають орбітальну швидкість більше ніж 50,000.
SELECT name AS object_name
	, ROUND(relative_velocity, 3) AS velocity
	, is_hazardous AS hazardous
FROM objects
WHERE relative_velocity >= 50000 AND is_hazardouS IS TRUE;

-----Запит: Знайти 5 об'єктів з найменшою абсолютною зоряною величиною.
SELECT DISTINCT(name) AS object_name,
       absolute_magnitude
FROM objects
WHERE absolute_magnitude IS NOT NULL
ORDER BY absolute_magnitude ASC
LIMIT 5;


-------Запит: Знайти 100 найбільш потенціно небезпечних об'єктів : чим більше це відношення, тим швидше об'єкт пройде повз Землю на малій відстані.
SELECT name AS object_name
	,neo_id AS id
	,ROUND(relative_velocity / miss_distance,5) AS potential_danger
FROM objects
ORDER BY relative_velocity / miss_distance DESC
LIMIT 100;

----------Запит: Знайти об'єкт з найменшим мінімальним діаметром і об'єкт з найбільшим максимальним діаметром, об'єднати їх в один результат.
(
    SELECT name AS object_name,
           ROUND(estimated_diameter_min, 5) AS diameter
    FROM objects
	WHERE estimated_diameter_min IS NOT NULL
    ORDER BY estimated_diameter_min ASC
    LIMIT 1
)
UNION
(
    SELECT name AS object_name,
           ROUND(estimated_diameter_max,5) AS diameter
    FROM objects
	WHERE estimated_diameter_max IS NOT NULL
    ORDER BY estimated_diameter_max DESC
    LIMIT 1
);

------Визначити середній мінімальний і максимальний діаметри об'єктів, згрупованих за їхньою орбітальною швидкістю.
SELECT 
    CASE 
        WHEN relative_velocity BETWEEN 0 AND 10000 THEN '0-10k'
        WHEN relative_velocity BETWEEN 10001 AND 20000 THEN '10k-20k'
        WHEN relative_velocity BETWEEN 20001 AND 30000 THEN '20k-30k'
        WHEN relative_velocity BETWEEN 30001 AND 40000 THEN '30k-40k'
        ELSE '40k+'
    END AS velocity_group,
    ROUND(AVG(estimated_diameter_min),5) AS avg_min_diameter,
    ROUND(AVG(estimated_diameter_max),5) AS avg_max_diameter
FROM objects
GROUP BY velocity_group;


--------Запит: Знайти об'єкти, у яких найбільша різниця між максимальним і мінімальним діаметрами, відсортувати за спаданням цієї різниці.
SELECT 
    name AS object_name,
    estimated_diameter_max - estimated_diameter_min AS diameter_difference
FROM objects
ORDER BY diameter_difference DESC
LIMIT 10;
