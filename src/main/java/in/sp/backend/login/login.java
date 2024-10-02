package in.sp.backend.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class login extends HttpServlet {
    // Initialize Database connection
    public static Connection initializeDatabase() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/universitymanagementsystem1";
        String username = "root";
        String password = "Abhipsa299@";
        return DriverManager.getConnection(url, username, password);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Trim inputs to avoid leading/trailing whitespace issues
        String email = req.getParameter("t1").trim();
        String password = req.getParameter("t2").trim();

        // Validate inputs
        if (email == null || password == null || email.isEmpty() || password.isEmpty()) {
            req.setAttribute("error", "All fields are required.");
            req.getRequestDispatcher("/login.jsp").forward(req, resp);
            return;
        }

        try {
            // Establish connection to the database
            Connection con = initializeDatabase();

            // SQL query to fetch user details with matching email and password
            String query = "SELECT * FROM registration WHERE email = ? AND password = ?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password); // Adjust this part if you are hashing passwords

            ResultSet rs = ps.executeQuery();

            // If user is found, set session and redirect to dashboard
            if (rs.next()) {
                HttpSession session = req.getSession();
                session.setAttribute("username", rs.getString("username"));

                // Redirect to Student Dashboard after successful login
                resp.sendRedirect("Studentdashboard.jsp");
            } else {
                // If invalid login, return error message
                req.setAttribute("error", "Invalid email or password.");
                req.getRequestDispatcher("login.jsp").forward(req, resp);
            }

            // Close database connection
            con.close();
        } catch (ClassNotFoundException | SQLException e) {
            // Print stack trace for debugging
            e.printStackTrace();

            // Set error attribute and forward back to login page in case of an exception
            req.setAttribute("error", "An error occurred. Please try again.");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
    }
}
