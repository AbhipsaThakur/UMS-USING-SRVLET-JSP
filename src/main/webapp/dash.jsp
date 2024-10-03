<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Dashboard</title>

    <!-- FontAwesome CDN for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <style>
        html, body {
            height: 100%;
        }

        body {
            display: flex;
            flex-direction: column;
            font-family: 'Arial', sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 0;
        }

        .navbar {
            background-color: #333;
            color: white;
            padding: 15px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }

        .navbar .menu-icon {
            font-size: 30px;
            cursor: pointer;
        }

        .navbar .user-info {
            display: flex;
            align-items: center;
            position: relative;
            margin-right: 20px;
        }

        .navbar .user-icon {
            font-size: 25px;
            cursor: pointer;
            margin-right: 10px;
        }

        .navbar .username {
            font-size: 18px;
            display: none;
            position: absolute;
            top: 40px; /* Adjusted to position below the user icon */
            right: 0;
            background-color: white;
            color: #333;
            padding: 5px 10px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .navbar .user-info:hover .username {
            display: block;
        }

        .notification-icon {
            position: relative;
            cursor: pointer;
        }

        .notification-icon .badge {
            position: absolute;
            top: -5px;
            right: -10px;
            background-color: red;
            color: white;
            border-radius: 50%;
            padding: 5px 8px;
            font-size: 14px;
        }

        .sidebar {
            background-color: #444;
            color: white;
            height: 100%;
            width: 250px;
            position: fixed;
            top: 0;
            left: -250px;
            transition: 0.3s;
            z-index: 999;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.2);
        }

        .sidebar ul {
            list-style: none;
            padding: 0;
        }

        .sidebar ul li {
            padding: 15px;
            border-bottom: 1px solid #555;
            transition: background-color 0.3s;
        }

        .sidebar ul li:hover {
            background-color: #555;
        }

        .sidebar ul li a {
            color: white;
            text-decoration: none;
            display: block;
            transition: color 0.3s;
        }

        .sidebar ul li a:hover {
            color: #FFC107;
        }

        .sidebar.show {
            left: 0;
        }

        .container {
            flex: 1; /* This allows the container to take up the remaining space */
            margin-top: 80px; /* Keep this to prevent overlap with the navbar */
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
        }

        h1 {
            text-align: center;
            margin-bottom: 10px;
            color: #333;
        }

        .welcome-message {
            text-align: center;
            margin-bottom: 30px;
            color: #555;
            font-size: 18px;
        }

        /* Search bar styles */
        .search-container {
            margin-bottom: 20px;
            width: 80%;
            display: flex;
            justify-content: center;
        }

        .search-container input[type="text"] {
            width: 70%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-right: 10px;
        }

        .search-container button {
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            background-color: #333;
            color: white;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .search-container button:hover {
            background-color: #555;
        }

        .dashboard-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
            grid-gap: 20px;
            width: 80%;
        }

        .dashboard-item {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            padding: 20px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            position: relative;
            overflow: hidden;
        }

        .dashboard-item:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
        }

        .dashboard-item i {
            font-size: 50px;
            margin-bottom: 10px;
            transition: color 0.3s;
        }

        .dashboard-item:hover i {
            color: #FFC107;
        }

        .dashboard-item p {
            font-size: 18px;
            margin: 10px 0 0;
            font-weight: bold;
        }

        /* Additional Styling for Icons */
        .attendance {
            background-color: #4CAF50;
            color: white;
        }

        .course,
        .fees {
            background-color: #2196F3;
            color: white;
        }

        .college-info,
        .performance {
            background-color: #FFC107;
            color: white;
        }

        .my-report-card,
        .feedback {
            background-color: #FF5722;
            color: white;
        }

        .time-table,
        .assignment,
        .project {
            background-color: #9C27B0;
            color: white;
        }

        /* Footer styles */
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 15px 0;
            width: 100%;
            margin-top: auto; /* This ensures the footer stays at the bottom */
            animation: footerAnimation 5s infinite alternate;
        }

        @keyframes footerAnimation {
            0% {
                transform: translateY(0);
            }

            100% {
                transform: translateY(-5px);
            }
        }

        /* Link styling */
        a {
            text-decoration: none;
            color: inherit;
        }
    </style>
</head>

<body>

    <div class="navbar">
        <div class="menu-icon" onclick="toggleSidebar()">
            <i class="fas fa-bars"></i>
        </div>
        <div class="search-container">
            <input type="text" id="searchInput" placeholder="Search Attendance..." aria-label="Search Dashboard">
            <button type="button" onclick="searchAttendance()"><i class="fas fa-search"></i></button>
        </div>
        <div class="user-info">
            <i class="fas fa-bell notification-icon">
                <span class="badge">3</span>
            </i>
            <i class="fas fa-user user-icon"></i>
            <div class="username">
                <%
                    HttpSession sp = request.getSession(false);
                    if (sp != null) {
                        String username = (String) sp.getAttribute("username");
                        out.print(username);
                    }
                %>
            </div>
        </div>
    </div>

    <div class="sidebar" id="sidebar">
        <ul>
            <li><a href="#">Attendance</a></li>
            <li><a href="#">Courses</a></li>
            <li><a href="#">Fees</a></li>
            <li><a href="#">College Info</a></li>
            <li><a href="#">Performance</a></li>
            <li><a href="#">My Report Card</a></li>
            <li><a href="#">Feedback</a></li>
            <li><a href="#">Timetable</a></li>
            <li><a href="#">Assignments</a></li>
            <li><a href="#">Projects</a></li>
        </ul>
    </div>

    <div class="container">
        <p class="welcome-message">Your success starts here!</p>

        <div class="dashboard-grid">
            <div class="dashboard-item attendance">
                <i class="fas fa-calendar-check"></i>
                <p>Attendance</p>
            </div>
            <div class="dashboard-item course">
                <i class="fas fa-book"></i>
                <p>Courses</p>
            </div>
            <div class="dashboard-item fees">
                <i class="fas fa-dollar-sign"></i>
                <p>Fees</p>
            </div>
            <div class="dashboard-item college-info">
                <i class="fas fa-university"></i>
                <p>College Info</p>
            </div>
            <div class="dashboard-item performance">
                <i class="fas fa-chart-line"></i>
                <p>Performance</p>
            </div>
            <div class="dashboard-item my-report-card">
                <i class="fas fa-file-alt"></i>
                <p>My Report Card</p>
            </div>
            <div class="dashboard-item feedback">
                <i class="fas fa-comments"></i>
                <p>Feedback</p>
            </div>
            <div class="dashboard-item time-table">
                <i class="fas fa-clock"></i>
                <p>Timetable</p>
            </div>
            <div class="dashboard-item assignment">
                <i class="fas fa-tasks"></i>
                <p>Assignments</p>
            </div>
            <div class="dashboard-item project">
                <i class="fas fa-briefcase"></i>
                <p>Projects</p>
            </div>
        </div>
    </div>

    <footer>
        &copy; 2024 Your University. All rights reserved.
    </footer>

    <script>
        function toggleSidebar() {
            document.getElementById('sidebar').classList.toggle('show');
        }

        function searchAttendance() {
            var input = document.getElementById('searchInput').value;
            alert("Searching for: " + input);
            // Implement the search functionality here
        }
    </script>
</body>

</html>
