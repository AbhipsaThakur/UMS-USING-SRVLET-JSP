<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Timetable | University Management System</title>

    <!-- FontAwesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <style>
        /* General Styles */
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #2196F3, #42A5F5, #90CAF9);
            margin: 0;
            padding: 0;
            color: #333;
        }

        .container {
            max-width: 1200px;
            margin: 40px auto;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            animation: fadeIn 1s ease-in-out;
        }

        h1 {
            text-align: center;
            margin-bottom: 30px;
            color: #333;
            font-size: 32px;
            font-weight: 700;
            position: relative;
        }

        h1::after {
            content: '';
            width: 80px;
            height: 4px;
            background-color: #2196F3;
            display: block;
            margin: 10px auto 0;
            border-radius: 2px;
        }

        /* Timetable Styles */
        .timetable-table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 40px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .timetable-table th, .timetable-table td {
            padding: 15px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        .timetable-table th {
            background-color: #1976D2;
            color: white;
            font-size: 18px;
            text-transform: uppercase;
        }

        .timetable-table td {
            background-color: #f9f9f9;
            color: #333;
            font-size: 16px;
        }

        .timetable-table tr:hover td {
            background-color: #f1f1f1;
        }

        /* Department Colors */
        .cs {
            background-color: #90CAF9;
        }

        .psychology {
            background-color: #FFAB91;
        }

        .nursing {
            background-color: #A5D6A7;
        }

        .economics {
            background-color: #FFCC80;
        }

        /* Hover Effect */
        .timetable-table tr:hover {
            transform: scale(1.02);
            transition: all 0.3s ease;
        }

        /* Responsive Styles */
        @media (max-width: 768px) {
            .timetable-table th, .timetable-table td {
                font-size: 14px;
                padding: 10px;
            }

            h1 {
                font-size: 26px;
            }

            .container {
                padding: 15px;
            }
        }

        /* Animation */
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

    </style>
</head>
<body>

    <div class="container">
        <h1>Department Timetable</h1>
        
        <!-- Timetable Table -->
        <table class="timetable-table">
            <thead>
                <tr>
                    <th>Day</th>
                    <th>9:00 - 10:00 AM</th>
                    <th>10:00 - 11:00 AM</th>
                    <th>11:00 - 12:00 PM</th>
                    <th>1:00 - 2:00 PM</th>
                    <th>2:00 - 3:00 PM</th>
                    <th>3:00 - 4:00 PM</th>
                </tr>
            </thead>
            <tbody>
                <!-- Monday Timetable -->
                <tr class="cs">
                    <td>Monday</td>
                    <td>Operating Systems (CS)</td>
                    <td>Psychology 101 (Psychology)</td>
                    <td>Medical Ethics (Nursing)</td>
                    <td>Microeconomics (Economics)</td>
                    <td>Data Structures (CS)</td>
                    <td>Human Anatomy (Nursing)</td>
                </tr>
                <!-- Tuesday Timetable -->
                <tr class="psychology">
                    <td>Tuesday</td>
                    <td>Object-Oriented Programming (CS)</td>
                    <td>Cognitive Psychology (Psychology)</td>
                    <td>Health Assessment (Nursing)</td>
                    <td>Macroeconomics (Economics)</td>
                    <td>Algorithms (CS)</td>
                    <td>Developmental Psychology (Psychology)</td>
                </tr>
                <!-- Wednesday Timetable -->
                <tr class="nursing">
                    <td>Wednesday</td>
                    <td>Networking (CS)</td>
                    <td>Psychotherapy (Psychology)</td>
                    <td>Pharmacology (Nursing)</td>
                    <td>Econometrics (Economics)</td>
                    <td>Machine Learning (CS)</td>
                    <td>Medical-Surgical Nursing (Nursing)</td>
                </tr>
                <!-- Thursday Timetable -->
                <tr class="economics">
                    <td>Thursday</td>
                    <td>Database Systems (CS)</td>
                    <td>Psychopathology (Psychology)</td>
                    <td>Nursing Leadership (Nursing)</td>
                    <td>Public Economics (Economics)</td>
                    <td>Artificial Intelligence (CS)</td>
                    <td>Abnormal Psychology (Psychology)</td>
                </tr>
                <!-- Friday Timetable -->
                <tr class="cs">
                    <td>Friday</td>
                    <td>Software Engineering (CS)</td>
                    <td>Social Psychology (Psychology)</td>
                    <td>Community Health Nursing (Nursing)</td>
                    <td>International Economics (Economics)</td>
                    <td>Web Development (CS)</td>
                    <td>Health Policy (Nursing)</td>
                </tr>
            </tbody>
        </table>
    </div>

</body>
</html>
