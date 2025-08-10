package com.example;

import java.sql.*;

public class EmployeeService {
    public static void main(String[] args) {
        try {
            // Connect to Oracle Database
            Connection conn = DriverManager.getConnection(
                "jdbc:oracle:thin:@localhost:1521:xe", "your_username", "your_password");

            // Call Oracle function
            CallableStatement stmt = conn.prepareCall("{ ? = call get_employee_salary(?) }");
            stmt.registerOutParameter(1, Types.NUMERIC);
            stmt.setInt(2, 101);
            stmt.execute();

            double salary = stmt.getDouble(1);
            System.out.println("Salary for Employee 101: " + salary);

            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
