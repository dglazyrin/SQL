/* Задача 1
Создайте таблицу с мобильными телефонами, используя графический интерфейс. Необходимые поля таблицы: product_name (название товара), manufacturer (производитель), product_count (количество), price (цена). Заполните БД произвольными данными.
*/

/* Задача 2
Напишите SELECT-запрос, который выводит название товара, производителя и цену для товаров, количество которых превышает 2
*/
SELECT manufacturer, product_name, price FROM homework1.cell_phones WHERE product_count>2;

/* Задача 3
Выведите SELECT-запросом весь ассортимент товаров марки “Samsung”
*/
SELECT * FROM homework1.cell_phones WHERE manufacturer = "Samsung";

/* Задача 4.1
С помощью SELECT-запроса с оператором LIKE / REGEXP найти товары, в которых есть упоминание "Iphone"
*/
SELECT * FROM homework1.cell_phones WHERE product_name REGEXP 'Iphone'

/* 4.2.
С помощью SELECT-запроса с оператором LIKE / REGEXP найти товары, в которых есть упоминание "Samsung"
*/
SELECT * FROM homework1.cell_phones WHERE product_name REGEXP "Samsung";

/* Задача 4.3
С помощью SELECT-запроса с оператором LIKE / REGEXP найти товары, в названии которых есть ЦИФРЫ
*/
SELECT * FROM homework1.cell_phones WHERE product_name REGEXP '[0-9]'

/* 4.2.
С помощью SELECT-запроса с оператором LIKE / REGEXP найти товары, в которых есть ЦИФРА "8"
*/
SELECT * FROM homework1.cell_phones WHERE product_name REGEXP '[8]'