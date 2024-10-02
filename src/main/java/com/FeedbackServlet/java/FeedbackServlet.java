package com.FeedbackServlet.java;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/FeedbackServlet")
public class FeedbackServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve feedback and ratings from the form
        String rating1 = request.getParameter("rating1");
        String feedback1 = request.getParameter("feedback1");
        String rating2 = request.getParameter("rating2");
        String feedback2 = request.getParameter("feedback2");
        String rating3 = request.getParameter("rating3");
        String feedback3 = request.getParameter("feedback3");
        String rating4 = request.getParameter("rating4");
        String feedback4 = request.getParameter("feedback4");

        // Database connection details
        String jdbcURL = "jdbc:mysql://localhost:3306/universitymanagementsystem1";
        String jdbcUsername = "root";
        String jdbcPassword = "Abhipsa299@";

        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);

            String sql = "INSERT INTO faculty_feedback (faculty_id, rating, feedback) VALUES (?, ?, ?)";

            preparedStatement = connection.prepareStatement(sql);

            // Insert feedback for faculty 1
            preparedStatement.setInt(1, 1); 
            preparedStatement.setString(2, rating1);
            preparedStatement.setString(3, feedback1);
            preparedStatement.executeUpdate();

            // Insert feedback for faculty 2
            preparedStatement.setInt(1, 2); 
            preparedStatement.setString(2, rating2);
            preparedStatement.setString(3, feedback2);
            preparedStatement.executeUpdate();

            // Insert feedback for faculty 3
            preparedStatement.setInt(1, 3); 
            preparedStatement.setString(2, rating3);
            preparedStatement.setString(3, feedback3);
            preparedStatement.executeUpdate();

            // Insert feedback for faculty 4
            preparedStatement.setInt(1, 4); 
            preparedStatement.setString(2, rating4);
            preparedStatement.setString(3, feedback4);
            preparedStatement.executeUpdate();

            // Close the prepared statement and connection
            response.sendRedirect("feedback_success.jsp");

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("feedback_error.jsp");
        } finally {
            try {
                if (preparedStatement != null) preparedStatement.close();
                if (connection != null) connection.close();
            } catch (Exception e) {
                e.printStackTrace(); 
            }
        }
    }
}
