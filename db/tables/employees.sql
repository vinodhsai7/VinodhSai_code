CREATE TABLE employees (
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR2(50),
    salary NUMBER
);

INSERT INTO employees VALUES (101, 'John Doe', 55000);
INSERT INTO employees VALUES (102, 'Jane Smith', 60000);
COMMIT;
