# Art-Store-Database

This is an art store database management for a typical store which sells art supplies. The system is made with **Oracle 11g DBMS**. The database is made of five tables:

* **Suppliers** : Consists of information about the suppliers who give the art supplies to the store
* **Products** : The products information, brought from the suppliers,  are stored here
* **Customer** : The customers who bought supplies from the store
* **C_order** : This is a relation between customer and products when a order is placed
* **Shipping** : Information about how orders are shipped to the customers. Every day, all the orders that are placed by a single customer, is shipped. If orders are placed on different days, they are shipped on different track.

The code for creating the tables are [here](https://github.com/Radhima/Art-Store-Database/blob/master/table_structure.sql).
Demo values are inserted in the table in [here](https://github.com/Radhima/Art-Store-Database/blob/master/insert.sql).

**Another version of the design using PostgreSQL can be found [here](https://github.com/Radhima/PostgreSQL) with documentation.**
