<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    String token = request.getParameter("token");
    String newPassword = request.getParameter("newPassword");
    String errorMessage = null;
    String successMessage = null;

    String dbUrl = "jdbc:mysql://localhost:3306/universitymanagementsystem1";
    String dbUser = "root";
    String dbPass = "Abhipsa299@";

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection(dbUrl, dbUser, dbPass);

        PreparedStatement ps = con.prepareStatement("UPDATE registration SET password=?, reset_token=NULL WHERE reset_token=?");
        ps.setString(1, newPassword);
        ps.setString(2, token);
        int updatedRows = ps.executeUpdate();

        if (updatedRows > 0) {
            successMessage = "Password has been successfully updated.";
        } else {
            errorMessage = "Error: Invalid token or token expired.";
        }
        con.close();
    } catch (Exception e) {
        errorMessage = "Error: Unable to connect to the database.";
        e.printStackTrace();
    }

    // Logic to display success/error messages
    if (errorMessage != null) {
        out.println("<div style='color:red;'>" + errorMessage + "</div>");
    }
    if (successMessage != null) {
        out.println("<div style='color:green;'>" + successMessage + "</div>");
    }
%>
