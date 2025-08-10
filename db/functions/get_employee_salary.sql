CREATE OR REPLACE FUNCTION get_employee_salary(p_emp_id NUMBER)
RETURN NUMBER
IS
    v_salary NUMBER;
BEGIN
    SELECT salary INTO v_salary
    FROM employees
    WHERE emp_id = p_emp_id;
    RETURN v_salary;
END;
/
