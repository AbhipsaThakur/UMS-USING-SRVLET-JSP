<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fees | University Management System</title>
    
    <!-- External CSS for Icons (FontAwesome) -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <style>
        /* General Styles */
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #42A5F5, #2196F3);
            margin: 0;
            padding: 0;
            color: #333;
        }

        .container {
            max-width: 1200px;
            margin: 40px auto;
            padding: 20px;
            background-color: #fff;
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

        /* Fee Table Styles */
        .fee-table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 40px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .fee-table th, .fee-table td {
            padding: 15px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        .fee-table th {
            background-color: #1976D2;
            color: white;
            font-size: 18px;
            text-transform: uppercase;
        }

        .fee-table td {
            background-color: #f9f9f9;
            color: #333;
            font-size: 16px;
        }

        .fee-table tr:hover td {
            background-color: #f1f1f1;
        }

        /* Course Department Colors */
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

        /* Responsive Styles */
        @media (max-width: 768px) {
            .fee-table th, .fee-table td {
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
        <h1>University Fees Structure</h1>

        <!-- Fee Structure Table -->
        <table class="fee-table">
            <thead>
                <tr>
                    <th>Department</th>
                    <th>Course Name</th>
                    <th>Yearly Tuition Fee</th>
                    <th>Hostel Fee (Optional)</th>
                    <th>Miscellaneous Charges</th>
                    <th>Total Fees</th>
                </tr>
            </thead>
            <tbody>
                <!-- Computer Science Fees -->
                <tr class="cs">
                    <td>Computer Science</td>
                    <td>Bachelor of Computer Science</td>
                    <td>$8,000</td>
                    <td>$1,500</td>
                    <td>$500</td>
                    <td>$10,000</td>
                </tr>
                <tr class="cs">
                    <td>Computer Science</td>
                    <td>Master of Computer Science</td>
                    <td>$10,000</td>
                    <td>$1,500</td>
                    <td>$600</td>
                    <td>$12,100</td>
                </tr>
                <!-- Psychology Fees -->
                <tr class="psychology">
                    <td>Psychology</td>
                    <td>Bachelor of Psychology</td>
                    <td>$7,500</td>
                    <td>$1,200</td>
                    <td>$400</td>
                    <td>$9,100</td>
                </tr>
                <tr class="psychology">
                    <td>Psychology</td>
                    <td>Master of Psychology</td>
                    <td>$9,000</td>
                    <td>$1,200</td>
                    <td>$500</td>
                    <td>$10,700</td>
                </tr>
                <!-- Nursing Fees -->
                <tr class="nursing">
                    <td>Nursing</td>
                    <td>Bachelor of Nursing</td>
                    <td>$9,000</td>
                    <td>$1,800</td>
                    <td>$600</td>
                    <td>$11,400</td>
                </tr>
                <tr class="nursing">
                    <td>Nursing</td>
                    <td>Master of Nursing</td>
                    <td>$11,000</td>
                    <td>$1,800</td>
                    <td>$700</td>
                    <td>$13,500</td>
                </tr>
                <!-- Economics Fees -->
                <tr class="economics">
                    <td>Economics</td>
                    <td>Bachelor of Economics</td>
                    <td>$7,000</td>
                    <td>$1,300</td>
                    <td>$300</td>
                    <td>$8,600</td>
                </tr>
                <tr class="economics">
                    <td>Economics</td>
                    <td>Master of Economics</td>
                    <td>$8,500</td>
                    <td>$1,300</td>
                    <td>$400</td>
                    <td>$10,200</td>
                </tr>
            </tbody>
        </table>
    </div>

</body>
</html>
