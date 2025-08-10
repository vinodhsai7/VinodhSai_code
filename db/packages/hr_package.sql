CREATE OR REPLACE PACKAGE hr_package AS
    PROCEDURE hire_employee(p_id NUMBER, p_name VARCHAR2, p_salary NUMBER);
    PROCEDURE remove_employee(p_id NUMBER);
END hr_package;
/

CREATE OR REPLACE PACKAGE BODY hr_package AS
    PROCEDURE hire_employee(p_id NUMBER, p_name VARCHAR2, p_salary NUMBER) AS
    BEGIN
        INSERT INTO employees VALUES (p_id, p_name, p_salary);
        COMMIT;
    END;

    PROCEDURE remove_employee(p_id NUMBER) AS
    BEGIN
        DELETE FROM employees WHERE emp_id = p_id;
        COMMIT;
    END;
END hr_package;
/
