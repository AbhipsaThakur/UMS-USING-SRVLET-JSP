<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page session="true" %> <!-- Ensuring session is active -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admit Card</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .navbar {
            background-color: #007bff;
        }
        .navbar-brand {
            color: white;
        }
        .user-icon {
            font-size: 24px;
            color: white;
        }
        .dropdown-menu {
            right: 0;
            left: auto;
        }
        /* Hamburger menu styling */
        .navbar-toggler {
            border: none;
        }
        .navbar-toggler-icon {
            color: white;
        }
        .navbar-nav .nav-link {
            color: white !important;
        }

        /* Admit Card Styles */
        .admit-card {
            max-width: 800px;
            margin: 50px auto;
            background-color: #f9f9f9;
            border: 1px solid #007bff;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .admit-card h3 {
            text-align: center;
            color: #007bff;
            margin-bottom: 20px;
        }
        .admit-card table {
            width: 100%;
            margin-bottom: 20px;
        }
        .admit-card table th, .admit-card table td {
            padding: 10px;
            text-align: left;
        }
        .admit-card table th {
            background-color: #007bff;
            color: white;
        }
        .admit-card table td {
            background-color: #f1f1f1;
        }
        .admit-card-footer {
            text-align: center;
            margin-top: 20px;
        }
        .admit-card-footer p {
            font-size: 14px;
            color: gray;
        }

        /* Additional styling */
        body {
            background-color: #f4f4f4;
        }
        footer {
            background-color: #007bff;
            color: white;
            padding: 10px 0;
            text-align: center;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>

<!-- Navbar with Hamburger -->
<nav class="navbar navbar-expand-lg navbar-dark">
    <a class="navbar-brand" href="#">University Management System</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"><i class="fas fa-bars"></i></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="#">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Profile</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Logout</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle user-icon" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="fas fa-user-circle"></i>
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#">Profile</a>
                    <a class="dropdown-item" href="#">Logout</a>
                </div>
            </li>
            <!-- Displaying the username -->
            <li class="nav-item">
                <a class="nav-link" href="#">
                    Welcome, <strong><%= session.getAttribute("username") != null ? session.getAttribute("username") : "Guest" %></strong>
                </a>
            </li>
        </ul>
    </div>
</nav>

<!-- Admit Card Section -->
<div class="container mt-4">
    <div class="admit-card">
        <h3>Admit Card</h3>
        <table>
            <tr>
                <th>Student Name</th>
                <td><%= session.getAttribute("username") != null ? session.getAttribute("username") : "N/A" %></td>
            </tr>
            <tr>
                <th>Roll Number</th>
                <td>12345678</td>
            </tr>
            <tr>
                <th>Course</th>
                <td>Bachelor of Science (Computer Science)</td>
            </tr>
            <tr>
                <th>Exam Date</th>
                <td>10th October 2024</td>
            </tr>
            <tr>
                <th>Exam Center</th>
                <td>Main University Hall, Room 101</td>
            </tr>
        </table>

        <!-- Footer/Note Section -->
        <div class="admit-card-footer">
            <p>Please bring this admit card and a valid ID to the exam center.</p>
            <p>For any queries, contact the administration office.</p>
        </div>
    </div>
</div>

<!-- Sticky Footer -->
<footer>
    &copy; 2024 University Management System. All rights reserved.
</footer>

<script src="https://kit.fontawesome.com/a076d05399.js"></script> <!-- For user icon -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
