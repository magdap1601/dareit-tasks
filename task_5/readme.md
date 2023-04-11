 # **Task 5**

 The goal of this task is to create first Cloud SQL instance.

 - [x] In GCP choose Cloud SQL and click create instance.
 - [x] Choose PostgreSQL for database.
 - [x] Use Dbeaver to connect to the database and play with data.
 - [x] Create a schema in the database.
 - [x] Add column to the students table called age with type int.
 - [x] Add 5 more rows to the table with some proper data. So information about 5 more students.
 - [x] Prepare a query that will answer the question what is average age of the students in the class?
    The query is:
    
    SELECT AVG(age)
    FROM students s ;

 - [x] Extract to [database.txt](https://github.com/magdap1601/dareit-tasks/blob/main/task_5/database.txt) from the students table
 - [x] The answer to question from point 3 is 22,5
