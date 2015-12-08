![One-to-one Schema](/week-8/imgs/one-to-one.png)

###Release 2
The students to id_cards relationship is one-to-one because each student will only have one id card, and each id card belongs to only one student. The student and their id card is a pair. The id card could essentially be NULL as well if the student has not been assigned an id card yet.

![Many-to-many Schema](/week-8/imgs/many-to-many.png)

###Release 6 (Reflection)
##What is a one-to-one database?
A one-to-one database contains data where the relationship shows that they are a pair. It only has that relationship with one thing and none others.
##When would you use a one-to-one database? (Think generally, not in terms of the example you created).
You would use one when you want to pair together two pieces of data. Also, you would want to use it when one of the data sets can be optionally left as NULL.
##What is a many-to-many database?
A many-to-many database is a database where the two tables can mix and match between each other. A join table is used to link the two tables.
##When would you use a many-to-many database? (Think generally, not in terms of the example you created).
You would use a many-to-many database when you have data in the first table that can belong to more than just one data in the second table, and in turn, that data can belong to more than one in the first table.
##What is confusing about database schemas? What makes sense?
It's a little confusing knowing which one to use. I found that it's a little hard to explain the different relationships in words. I think I understand when to use it when the examples come up though.