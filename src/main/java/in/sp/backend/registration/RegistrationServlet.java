package in.sp.backend.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegistrationServlet extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        // Retrieve form parameters
        String username = req.getParameter("username");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String confirmPassword = req.getParameter("confirmPassword");

        // Validate form inputs
        if (username == null || email == null || password == null || confirmPassword == null ||
            username.isEmpty() || email.isEmpty() || password.isEmpty() || confirmPassword.isEmpty()) 
        {
            req.setAttribute("error", "All fields are required.");
            req.getRequestDispatcher("/register.html").forward(req, resp);
            return;
        }

        if (!password.equals(confirmPassword)) 
        {
            req.setAttribute("error", "Passwords do not match.");
            req.getRequestDispatcher("/register.html").forward(req, resp);
            return;
        }

        try 
        {   
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/universitymanagementsystem1", "root", "Abhipsa299@");
            
            // SQL query to insert user data
            String query = "INSERT INTO registration(username, email, password) VALUES (?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, email);
            ps.setString(3, password); // Note: Password should be hashed in a real application
            
            int result = ps.executeUpdate();
            
            if (result > 0) 
            {
                // Registration successful
                resp.sendRedirect("index.jsp"); // Redirect to login page or a success page
            } 
            else 
            {
                req.setAttribute("error", "Registration failed. Please try again.");
                req.getRequestDispatcher("/regd.jsp").forward(req, resp);
            }
            
            con.close();
        } 
        catch (ClassNotFoundException | SQLException e) 
        {
            e.printStackTrace();
            req.setAttribute("error", "An error occurred. Please try again.");
            req.getRequestDispatcher("/regd.jsp").forward(req, resp);
        }
    }
}
