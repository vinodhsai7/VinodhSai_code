CREATE OR REPLACE PROCEDURE update_employee_salary(
    p_emp_id NUMBER,
    p_new_salary NUMBER
)
AS
BEGIN
    UPDATE employees
    SET salary = p_new_salary
    WHERE emp_id = p_emp_id;
    COMMIT;
END;
/
