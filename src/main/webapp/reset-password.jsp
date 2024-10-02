<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Reset Password</title>
</head>
<body>
    <h2>Reset Password</h2>
    <% 
        String token = request.getParameter("token");
        if (token == null) {
            out.print("Invalid reset token.");
        } else {
    %>
    <form action="ResetPasswordServlet" method="post">
        <input type="hidden" name="token" value="<%= token %>">
        <label for="password">New Password:</label>
        <input type="password" id="password" name="password" required>
        <button type="submit">Reset Password</button>
    </form>
    <% } %>
</body>
</html>
