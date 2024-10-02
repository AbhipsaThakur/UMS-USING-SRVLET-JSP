<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enrollment Details</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }

        .container {
            margin-top: 50px;
        }

        .header {
            text-align: center;
            margin-bottom: 30px;
        }

        .table {
            margin-top: 20px;
        }

        .btn-submit {
            background-color: #007bff;
            color: white;
        }

        .btn-submit:hover {
            background-color: #0056b3;
        }
    </style>
</head>

<body>

    <div class="container">
        <div class="header">
            <h1>Enrollment Details</h1>
            <p>Complete your enrollment by providing the necessary information.</p>
        </div>

        <div class="card p-4">
            <h4>Course Information</h4>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Subject Name</th>
                        <th>Duration (Years)</th>
                        <th>Subject Fee</th>
                        <th>Hostel Fee</th>
                        <th>Tuition Fee</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Computer Science</td>
                        <td>4</td>
                        <td>$4000</td>
                        <td>$2000</td>
                        <td>$3000</td>
                    </tr>
                    <tr>
                        <td>Business Administration</td>
                        <td>3</td>
                        <td>$3500</td>
                        <td>$1800</td>
                        <td>$2500</td>
                    </tr>
                    <tr>
                        <td>Engineering</td>
                        <td>4</td>
                        <td>$4500</td>
                        <td>$2200</td>
                        <td>$3200</td>
                    </tr>
                    <tr>
                        <td>Psychology</td>
                        <td>3</td>
                        <td>$3500</td>
                        <td>$1800</td>
                        <td>$2500</td>
                    </tr>
                    <tr>
                        <td>Nursing</td>
                        <td>4</td>
                        <td>$4000</td>
                        <td>$2000</td>
                        <td>$3000</td>
                    </tr>
                    <tr>
                        <td>Education</td>
                        <td>3</td>
                        <td>$3000</td>
                        <td>$1600</td>
                        <td>$2400</td>
                    </tr>
                    <tr>
                        <td>Economics</td>
                        <td>3</td>
                        <td>$3200</td>
                        <td>$1600</td>
                        <td>$2400</td>
                    </tr>
                    <tr>
                        <td>Art and Design</td>
                        <td>3</td>
                        <td>$2800</td>
                        <td>$1500</td>
                        <td>$2300</td>
                    </tr>
                    <tr>
                        <td>Biology</td>
                        <td>3</td>
                        <td>$3000</td>
                        <td>$1600</td>
                        <td>$2400</td>
                    </tr>
                    <tr>
                        <td>Physics</td>
                        <td>3</td>
                        <td>$3200</td>
                        <td>$1600</td>
                        <td>$2400</td>
                    </tr>
                </tbody>
            </table>

            <h4>Enrollment Form</h4>
            <form action="submitEnrollment.jsp" method="post">
                <div class="form-group">
                    <label for="name">Full Name:</label>
                    <input type="text" class="form-control" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" class="form-control" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="phone">Phone Number:</label>
                    <input type="tel" class="form-control" id="phone" name="phone" required>
                </div>
                <div class="form-group">
                    <label for="course">Select Course:</label>
                    <select class="form-control" id="course" name="course" required>
                        <option value="">--Select Course--</option>
                        <option value="Computer Science">Computer Science</option>
                        <option value="Business Administration">Business Administration</option>
                        <option value="Engineering">Engineering</option>
                        <option value="Psychology">Psychology</option>
                        <option value="Nursing">Nursing</option>
                        <option value="Education">Education</option>
                        <option value="Economics">Economics</option>
                        <option value="Art and Design">Art and Design</option>
                        <option value="Biology">Biology</option>
                        <option value="Physics">Physics</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-submit">Submit Enrollment</button>
            </form>
        </div>
    </div>

</body>

</html>
