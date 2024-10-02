<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - University Management System</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="styles.css">
    <style>
        /* Global Styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: #333;
            background-color: #f9f9f9;
        }

        .hero {
            background: linear-gradient(to right, #007bff, #6f42c1);
            color: white;
            padding: 80px 0;
            text-align: center;
        }

        .hero h1 {
            font-size: 4rem;
            margin-bottom: 0.5rem;
            font-weight: 700;
        }

        .hero p {
            font-size: 1.5rem;
            margin-bottom: 1.5rem;
        }

        .section-title {
            font-size: 2.5rem;
            margin-bottom: 1rem;
            position: relative;
            text-align: center;
            color: #007bff;
            font-weight: 700;
        }

        .section-title::after {
            content: '';
            position: absolute;
            left: 50%;
            bottom: -10px;
            transform: translateX(-50%);
            width: 60px;
            height: 4px;
            background-color: #f44336;
        }

        .team .card {
            border: none;
            transition: transform 0.3s ease-in-out;
            border-radius: 10px;
            overflow: hidden;
        }

        .team .card:hover {
            transform: scale(1.05);
        }

        .team .card-img-top {
            height: 200px;
            object-fit: cover;
        }

        .team .card-body {
            background-color: #fff;
            padding: 20px;
            text-align: center;
        }

        .footer {
            background-color: #333;
            color: #fff;
            padding: 20px 0;
        }

        /* Animations */
        @keyframes gradientBG {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }
    </style>
</head>
<body>

    <header class="hero">
        <div class="container">
            <h1 class="display-4">About Us</h1>
            <p class="lead">Discover our mission, vision, and values that drive us to provide exceptional education.</p>
        </div>
    </header>

    <!-- About Us Section -->
    <section class="about-us py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-6 mb-4">
                    <h2 class="section-title">Our Mission</h2>
                    <p>Our mission is to provide quality education that fosters intellectual and personal growth, prepares students for successful careers, and contributes to the betterment of society.</p>
                </div>
                <div class="col-md-6 mb-4">
                    <h2 class="section-title">Our Vision</h2>
                    <p>We aim to be a leading institution known for academic excellence, innovative research, and a commitment to preparing students for a global society.</p>
                </div>
            </div>
            <div class="row mt-5">
                <div class="col-md-12">
                    <h2 class="section-title">Our Values</h2>
                    <ul class="list-unstyled text-center">
                        <li><i class="fas fa-check-circle" style="color: #007bff;"></i> Excellence</li>
                        <li><i class="fas fa-check-circle" style="color: #007bff;"></i> Integrity</li>
                        <li><i class="fas fa-check-circle" style="color: #007bff;"></i> Innovation</li>
                        <li><i class="fas fa-check-circle" style="color: #007bff;"></i> Respect</li>
                    </ul>
                </div>
            </div>
            <!-- Additional Information Section -->
            <div class="row mt-5">
                <div class="col-md-12">
                    <h2 class="section-title">Who We Are</h2>
                    <p>Our university welcomes students from diverse backgrounds, offering a broad spectrum of courses that cater to both technical and non-technical disciplines. From engineering and computer science to humanities and social sciences, we provide a holistic education that equips our students with the skills needed to thrive in today's competitive environment.</p>
                    <p>We believe in fostering a supportive and inclusive community that encourages collaboration, creativity, and critical thinking. Whether you are pursuing a career in technology or the arts, our dedicated faculty and comprehensive resources are here to guide you every step of the way.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Team Section -->
    <section class="team py-5 bg-light">
        <div class="container">
            <h2 class="section-title">Meet Our Team</h2>
            <div class="row">
                <div class="col-md-4 mb-4">
                    <div class="card">
                        <img src="img/avatar.svg" class="card-img-top" alt="Team Member 1">
                        <div class="card-body">
                            <h5 class="card-title">Dr. Ramachandra Majhi</h5>
                            <p class="card-text">President</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card">
                        <img src="img/avatar.svg" class="card-img-top" alt="Team Member 2">
                        <div class="card-body">
                            <h5 class="card-title">Dr. Sasmita Jena</h5>
                            <p class="card-text">Dean of Faculty</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card">
                        <img src="img/avatar.svg" class="card-img-top" alt="Team Member 3">
                        <div class="card-body">
                            <h5 class="card-title">Dr. Kumar Shyam</h5>
                            <p class="card-text">Head of Research</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section class="contact py-5">
        <div class="container text-center">
            <h2 class="section-title">Get in Touch</h2>
            <p>If you have any questions or need further information, please do not hesitate to contact us.</p>
            <a href="contactus.jsp" class="btn btn-primary">Contact Us</a>
        </div>
    </section>

    <!-- Footer -->
    <footer class="footer bg-dark text-white text-center py-4">
        <p>&copy; 2024 University Management System. All Rights Reserved.</p>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
</body>
</html>
