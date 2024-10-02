<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback Submission Successful</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e0f7fa;
            text-align: center;
            padding: 50px;
        }
        h1 {
            color: #00796b;
        }
        p {
            font-size: 1.2em;
            color: #004d40;
        }
        .container {
            border: 1px solid #00796b;
            border-radius: 10px;
            padding: 20px;
            background-color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            display: inline-block;
        }
        a {
            text-decoration: none;
            color: white;
            background-color: #00796b;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        a:hover {
            background-color: #004d40;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Feedback Submitted Successfully!</h1>
        <p>Thank you for your feedback. Your responses have been recorded.</p>
        <a href="index.jsp">Go Back to Home</a>
    </div>
</body>
</html>
