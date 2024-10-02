package in.sp.backend.login.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection 
{
	public static Connection initializeDatabase() throws SQLException, ClassNotFoundException {
        // Load the MySQL JDBC driver
        Class.forName("com.mysql.jdbc.Driver");

        // Define the database URL, username, and password
        String url = "jdbc:mysql://localhost:3306/your_database_name";
        String username = "root";
        String password = "Abhipsa299@";

        // Establish and return the connection
        Connection conn = DriverManager.getConnection(url, username, password);
        return conn;
    }
}
