![Outfit Schema](/database-intro/8.4-schema.png)

1.
SELECT *
FROM states;

2.
SELECT *
FROM regions;

3.
SELECT state_name, population
FROM states;

4.
SELECT state_name, population
FROM states
ORDER BY population DESC;

5.
SELECT state_name
FROM states
WHERE region_id = 7;

6.
SELECT state_name, population density
FROM states
WHERE population_density > 50
ORDER BY population_density;

7.
SELECT state_name
FROM states
WHERE population > 1000000 AND population < 1500000;

8.
SELECT state_name, region_id
FROM states
ORDER BY region_id;

9.
SELECT region_name
FROM regions
WHERE region_name LIKE '%Central%';

10.
SELECT regions.region_name, states.state_name
FROM regions
INNER JOIN states
on regions.id = states.region_id;

###What are databases for?
Databases are used to organize a large collection of data, generally in tables, so that the data can be retrieved or changed easily.
###What is a one-to-many relationship?
A one-to-many relationship is a type of schema relationship where one data variable has many data variables that fall under its category. Usually for one-to-many relationships, it may be useful to create another table. The example we are given is for states and their regions. Because many states fall into the category of one region, the states and regions are separated into two different tables.
###What is a primary key? What is a foreign key? How can you determine which is which?
A primary key is a key in the table that is unique. It identifies each row of data uniquely and can be used to connect to a foreign key of another table. The foreign key of a table is used to connect from one table to another. It references another table, rather than itself.
###How can you select information out of a SQL database? What are some general guidelines for that?
You can select information out of a SQL database using the SELECT clause. * can be used to select all data out of a table, and you specify the table you want to select data from with FROM. So if you wanted to select all data from the persons table, you would write SELECT * FROM persons;
You can also add conditions to the select statement using clauses like WHERE, ORDER BY, and LIKE.