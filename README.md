DataBaseManagementSystems


CS457/557 Spring 2017
Assignment 2 – Intro to DBs, Relational and SQL  

Mode: Individual 
Due Date:  Feb. 8 in class - turn in hard copy of questions 1-6, email 7-16 (7-20 for CS557) to vnakade@crimson.ua.edu  

You must TYPE your answers to Questions 1-6.

1.  What is the difference between a database schema and a database state?

2.  List several DB utilities.  Choose one and discuss when it is useful.  Explain why it is needed.

3.  In the ER model, what is a cardinality ratio and what is a participation constraint? 

4. Use the Company DB to answer the following
        a)  Create a superkey using the Company DB that is not minimal 
        b)  In the Company DB ER diagram, find an attribute that is designated as a candidate key but was not chosen as a primary key in the relational schema 
        c) Give an example of a minimal key in the Company DB relational schema that has more than one column
        d) Give an example of a composite attribute in the Company ER Diagram

5. What are the advantages to using a minimal superkey in the relational model instead of one that is not minimal? Are there any disadvantages?

6. Give a small example (different from any used in class) of 2 relation instances and illustrate the difference between the tuples resulting from a Cartesian product, an inner join and an outer join.

Write the following queries in SQL and email the code to vnakade@crimson.ua.edu . The grader should be able to cut and paste your code into SQL developer and run it without having to make any changes to the code/file, etc.  Otherwise, you will lose points.  Include the question number in a comment before each query.

7.  List the ssn, fname, lname of employees who do not work in the Research department nor in a department with a manager whose SSN is 888665555.  
        a) Write this using a single block query
        b) Write this using the keyword ‘join’ in the FROM clause
        c) Write this as a nested query using the ‘not in’ predicate
        d) Write this as a nested query using a quantified predicate containing <>          
        e) Write this as a correlated nested query using the ‘not exists’ predicate 
        f) Write this using a nested query in the FROM clause

8. List the SSN, lname, and hours of all employees (with a dependent) who work <= 10 hours per week on the Computerization project. List each employee only once if they have more than one dependent.

9. List the ssn of employees who do not work on the ProductY project.
        a)  Write this query using the minus operation
        b)  Write this query without using a set operation

10. List the ssn, address of employees who work on both ProductY and ProductZ.

11. Display the total number of dependents and rename the column num_dep.

12. Display the number of employees who have dependents.

13. For each employee with dependents, list the fname, lname of the employee and the number of dependents they have.  Write this using group by.

14. List the fname, lname of the employee and the number of dependents each employee has. Include all employees, even those without dependents. Sort the result by lname.
        a)  Write without using a nested query.  
        b)  Write using a nested query.

15. List the fname, lname and number of dependents of employees who have fewer than 3 dependents.  Include all employees, even those without dependents.  Write without using a nested select.

16.  Write the above query 15. using a nested select in the where clause.
 