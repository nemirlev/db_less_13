-- Create a new table named "test_table"
CREATE TABLE test_table (
    id SERIAL PRIMARY KEY,
    data VARCHAR(255)
);

-- Insert 20 rows of dummy data into the table
INSERT INTO test_table (data)
VALUES
    ('dummy data 1'),
    ('dummy data 2'),
    ('dummy data 3'),
    ('dummy data 4'),
    ('dummy data 5'),
    ('dummy data 6'),
    ('dummy data 7'),
    ('dummy data 8'),
    ('dummy data 9'),
    ('dummy data 10'),
    ('dummy data 11'),
    ('dummy data 12'),
    ('dummy data 13'),
    ('dummy data 14'),
    ('dummy data 15'),
    ('dummy data 16'),
    ('dummy data 17'),
    ('dummy data 18'),
    ('dummy data 19'),
    ('dummy data 20');


-- To test if data is coming from the master or slave database in PostgreSQL, you can use the following SQL query:

-- Check the current database role
SELECT pg_is_in_recovery();

-- This query uses the pg_is_in_recovery() function, which returns true if the current database is a slave and false if
-- it is the master. For example, if the query returns false, it means that the data you are querying is coming
-- from the master database.