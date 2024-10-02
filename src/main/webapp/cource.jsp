<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>University Courses</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }

        .hero {
            background-color: #007bff;
            color: white;
            padding: 60px 20px;
            text-align: center;
            position: relative;
        }

        .hero h1 {
            font-size: 2.5rem;
        }

        .hero p {
            font-size: 1.2rem;
            margin-bottom: 30px;
        }

        .course-card {
            background-color: white;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s, box-shadow 0.2s;
        }

        .course-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .course-title {
            font-size: 1.5rem;
            color: #007bff;
        }

        .btn-enroll {
            background-color: yellow;
            color: black;
            transition: background-color 0.3s;
            border: none; /* Remove border */
        }

        .btn-enroll:hover {
            background-color: #f0d500; /* Darker yellow on hover */
        }

        .footer {
            background-color: #007bff;
            color: white;
            text-align: center;
            padding: 20px 0;
        }
    </style>
</head>

<body>

    <!-- Hero Section -->
    <section class="hero">
        <div class="container">
            <h1>Explore Our Courses</h1>
            <p>Join us and elevate your learning experience with diverse courses across various departments.</p>
        </div>
    </section>

    <!-- Courses Section -->
    <section class="courses my-5">
        <div class="container">
            <div class="row">
                <div class="col-md-4 mb-4">
                    <div class="card course-card text-center p-4">
                        <h5 class="course-title">Computer Science</h5>
                        <p>Delve into programming, algorithms, and software development.</p>
                        <a href="enrollement.jsp?course=Computer%20Science&description=Delve%20into%20programming,%20algorithms,%20and%20software%20development." class="btn btn-enroll">Enroll Now</a>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card course-card text-center p-4">
                        <h5 class="course-title">Business Administration</h5>
                        <p>Learn the essentials of management, finance, and marketing.</p>
                        <a href="enrollement.jsp?course=Business%20Administration&description=Learn%20the%20essentials%20of%20management,%20finance,%20and%20marketing." class="btn btn-enroll">Enroll Now</a>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card course-card text-center p-4">
                        <h5 class="course-title">Engineering</h5>
                        <p>Explore various branches of engineering, from mechanical to civil.</p>
                        <a href="enrollement.jsp?course=Engineering&description=Explore%20various%20branches%20of%20engineering,%20from%20mechanical%20to%20civil." class="btn btn-enroll">Enroll Now</a>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card course-card text-center p-4">
                        <h5 class="course-title">Psychology</h5>
                        <p>Understand human behavior and mental processes.</p>
                        <a href="enrollement.jsp?course=Psychology&description=Understand%20human%20behavior%20and%20mental%20processes." class="btn btn-enroll">Enroll Now</a>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card course-card text-center p-4">
                        <h5 class="course-title">Nursing</h5>
                        <p>Learn the skills necessary for patient care and healthcare management.</p>
                        <a href="enrollement.jsp?course=Nursing&description=Learn%20the%20skills%20necessary%20for%20patient%20care%20and%20healthcare%20management." class="btn btn-enroll">Enroll Now</a>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card course-card text-center p-4">
                        <h5 class="course-title">Education</h5>
                        <p>Prepare for a rewarding career in teaching and educational leadership.</p>
                        <a href="enrollement.jsp?course=Education&description=Prepare%20for%20a%20rewarding%20career%20in%20teaching%20and%20educational%20leadership." class="btn btn-enroll">Enroll Now</a>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card course-card text-center p-4">
                        <h5 class="course-title">Economics</h5>
                        <p>Study the principles of economics and their application in real life.</p>
                        <a href="enrollement.jsp?course=Economics&description=Study%20the%20principles%20of%20economics%20and%20their%20application%20in%20real%20life." class="btn btn-enroll">Enroll Now</a>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card course-card text-center p-4">
                        <h5 class="course-title">Art and Design</h5>
                        <p>Explore creativity through various art mediums and design principles.</p>
                        <a href="enrollement.jsp?course=Art%20and%20Design&description=Explore%20creativity%20through%20various%20art%20mediums%20and%20design%20principles." class="btn btn-enroll">Enroll Now</a>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card course-card text-center p-4">
                        <h5 class="course-title">Biology</h5>
                        <p>Learn about living organisms and their interactions with the environment.</p>
                        <a href="enrollement.jsp?course=Biology&description=Learn%20about%20living%20organisms%20and%20their%20interactions%20with%20the%20environment." class="btn btn-enroll">Enroll Now</a>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card course-card text-center p-4">
                        <h5 class="course-title">Mathematics</h5>
                        <p>Master the concepts of mathematics, from algebra to calculus.</p>
                        <a href="enrollement.jsp?course=Mathematics&description=Master%20the%20concepts%20of%20mathematics,%20from%20algebra%20to%20calculus." class="btn btn-enroll">Enroll Now</a>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card course-card text-center p-4">
                        <h5 class="course-title">Physics</h5>
                        <p>Explore the principles of physics and their application in the real world.</p>
                        <a href="enrollement.jsp?course=Physics&description=Explore%20the%20principles%20of%20physics%20and%20their%20application%20in%20the%20real%20world." class="btn btn-enroll">Enroll Now</a>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card course-card text-center p-4">
                        <h5 class="course-title">Chemistry</h5>
                        <p>Study the properties and reactions of different substances.</p>
                        <a href="enrollement.jsp?course=Chemistry&description=Study%20the%20properties%20and%20reactions%20of%20different%20substances." class="btn btn-enroll">Enroll Now</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer Section -->
    <footer class="footer">
        <div class="container">
            <p>&copy; 2024 University Management System. All rights reserved.</p>
        </div>
    </footer>

</body>

</html>
