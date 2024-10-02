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

        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
        }

        h1 {
            text-align: center;
            margin-bottom: 30px;
            color: #333;
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
        .attendance {
            background-color: #4CAF50;
            color: white;
        }

        .course, .fees {
            background-color: #2196F3;
            color: white;
        }

        .college-info, .performance {
            background-color: #FFC107;
            color: white;
        }

        .my-report-card, .feedback {
            background-color: #FF5722;
            color: white;
        }

        .time-table, .assignment, .project {
            background-color: #9C27B0;
            color: white;
        }

        /* Link styling */
        a {
            text-decoration: none;
            color: inherit;
        }

    </style>
</head>
<body>

    <div class="container">
        <h1>Student Dashboard</h1>
        <div class="dashboard-grid">

            <a href="attendance.jsp">
                <div class="dashboard-item attendance">
                    <i class="fas fa-check-circle"></i>
                    <p>Attendance</p>
                </div>
            </a>

            <a href="cource.jsp">
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

</body>
</html>
