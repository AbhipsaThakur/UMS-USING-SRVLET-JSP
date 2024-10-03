<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Dashboard</title>
    
    <!-- FontAwesome CDN for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    
    <style>
        body {
            font-family: Arial, sans-serif;
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
        }

        .navbar .menu-icon {
            font-size: 30px;
            cursor: pointer;
        }

        .navbar .user-info {
            display: flex;
            align-items: center;
            position: relative;
            margin-right: 50px;
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
            top: 40px;
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

        .sidebar {
            background-color: #333;
            color: white;
            height: 100%;
            width: 250px;
            position: fixed;
            top: 0;
            left: -250px;
            transition: 0.3s;
            z-index: 999;
        }

        .sidebar ul {
            list-style: none;
            padding: 0;
        }

        .sidebar ul li {
            padding: 15px;
            border-bottom: 1px solid #444;
        }

        .sidebar ul li a {
            color: white;
            text-decoration: none;
        }

        .sidebar.show {
            left: 0;
        }

        .container {
            margin-top: 80px;
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

        .dashboard-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            grid-gap: 20px;
            width: 80%;
        }

        .dashboard-item {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            text-align: center;
            padding: 20px;
            transition: transform 0.3s ease;
        }

        .dashboard-item:hover {
            transform: translateY(-5px);
        }

        .dashboard-item i {
            font-size: 50px;
            margin-bottom: 10px;
        }

        .dashboard-item p {
            font-size: 18px;
            margin: 10px 0 0;
        }

        /* Additional Styling for Icons */
        .attendance { background-color: #4CAF50; color: white; }
        .course, .fees { background-color: #2196F3; color: white; }
        .college-info, .performance { background-color: #FFC107; color: white; }
        .my-report-card, .feedback { background-color: #FF5722; color: white; }
        .time-table, .assignment, .project { background-color: #9C27B0; color: white; }

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
        <div class="user-info">
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
            <li><a href="index.jsp">Home</a></li>
            <li><a href="#">Profile</a></li>
            <li><a href="#">Settings</a></li>
            <li><a href="logout.jsp">Logout</a></li>
        </ul>
    </div>

    <div class="container">
        <div class="welcome-message">
            <% 
                if (sp != null) {
                    out.print("Welcome, " + (String) sp.getAttribute("username"));
                }
            %>
        </div>

        <div class="dashboard-grid">

            <a href="attendance.jsp">
                <div class="dashboard-item attendance">
                    <i class="fas fa-check-circle"></i>
                    <p>Attendance</p>
                </div>
            </a>

            <a href="course.jsp">
                <div class="dashboard-item course">
                    <i class="fas fa-book"></i>
                    <p>Course</p>
                </div>
            </a>

            <a href="collegeInfo.jsp">
                <div class="dashboard-item college-info">
                    <i class="fas fa-university"></i>
                    <p>College Info</p>
                </div>
            </a>

            <a href="fees.jsp">
                <div class="dashboard-item fees">
                    <i class="fas fa-money-bill-wave"></i>
                    <p>Fees</p>
                </div>
            </a>

            <a href="myReportCard.jsp">
                <div class="dashboard-item my-report-card">
                    <i class="fas fa-clipboard"></i>
                    <p>My Report Card</p>
                </div>
            </a>

            <a href="performance.jsp">
                <div class="dashboard-item performance">
                    <i class="fas fa-chart-line"></i>
                    <p>Performance</p>
                </div>
            </a>

            <a href="Feedback.jsp">
                <div class="dashboard-item feedback">
                    <i class="fas fa-comment"></i>
                    <p>Feedback</p>
                </div>
            </a>

            <a href="timetable.jsp">
                <div class="dashboard-item time-table">
                    <i class="fas fa-calendar-alt"></i>
                    <p>Timetable</p>
                </div>
            </a>

            <a href="assignment.jsp">
                <div class="dashboard-item assignment">
                    <i class="fas fa-tasks"></i>
                    <p>Assignment</p>
                </div>
            </a>

            <a href="project.jsp">
                <div class="dashboard-item project">
                    <i class="fas fa-project-diagram"></i>
                    <p>Project</p>
                </div>
            </a>

        </div>
    </div>

    <!-- JavaScript for toggling sidebar -->
    <script>
        function toggleSidebar() {
            document.getElementById("sidebar").classList.toggle("show");
        }
    </script>
</body>
</html>
