<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback Submission Failed</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #ffebee;
            text-align: center;
            padding: 50px;
        }
        h1 {
            color: #d32f2f;
        }
        p {
            font-size: 1.2em;
            color: #b71c1c;
        }
        .container {
            border: 1px solid #d32f2f;
            border-radius: 10px;
            padding: 20px;
            background-color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            display: inline-block;
        }
        a {
            text-decoration: none;
            color: white;
            background-color: #d32f2f;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        a:hover {
            background-color: #b71c1c;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Oops! Something Went Wrong</h1>
        <p>We were unable to submit your feedback. Please try again later.</p>
        <a href="Feedback.jsp">Go Back to Feedback Form</a>
    </div>
</body>
</html>
