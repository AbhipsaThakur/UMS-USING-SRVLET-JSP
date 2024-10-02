<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>University Management System</title>
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            color: #333;
            line-height: 1.6;
        }

        header {
            background: linear-gradient(45deg, #004d7a, #00b4db);
            color: white;
            padding: 20px 0;
            position: relative;
            overflow: hidden;
        }

        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 10%;
            z-index: 10;
            position: relative;
        }

        nav ul {
            list-style: none;
            display: flex;
        }

        nav ul li {
            margin-left: 20px;
        }

        nav ul li a {
            color: white;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        nav ul li a:hover {
            color: #ffcc00;
        }

        .hero {
            position: relative;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            color: white;
            z-index: 1;
        }

        .logo img {
            max-width: 270px;
            height: auto;
        }

        #bg-video {
            position: absolute;
            top: 0;
            left: 0;
            height: 100%;
            width: 100%;
            object-fit: cover;
            z-index: -1;
        }

        .hero-content .hero-img {
            max-width: 100%;
            height: 100%;
            margin-bottom: 20px;
        }

        .hero-content h1 {
            font-size: 4rem;
            margin-bottom: 20px;
            animation: fadeInDown 1s ease-out;
        }

        .hero-content p {
            font-size: 1.2rem;
            margin-bottom: 30px;
            animation: fadeInUp 1s ease-out;
        }

        .cta-btn {
            text-decoration: none;
            font-weight: bold;
            padding: 15px 30px;
            border-radius: 50px;
            transition: background-color 0.3s ease;
        }

        .primary-btn {
            background-color: #ffcc00;
            color: #004d7a;
        }

        .primary-btn:hover {
            background-color: #f39c12;
        }

        .secondary-btn {
            background-color: transparent;
            border: 2px solid #ffcc00;
            color: #ffcc00;
        }

        .secondary-btn:hover {
            background-color: #ffcc00;
            color: #004d7a;
        }

        @keyframes fadeInDown {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .features {
            padding: 50px 10%;
            text-align: center;
            background-color: #f8f9fa;
        }

        .feature-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
        }

        .feature {
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .feature i {
            font-size: 2rem;
            color: #004d7a;
        }

        .feature h3 {
            margin-top: 10px;
            font-size: 1.5rem;
            color: #004d7a;
        }

        .feature p {
            color: #666;
        }

        .feature:hover {
            transform: translateY(-10px);
            box-shadow: 0 6px 8px rgba(0, 0, 0, 0.15);
        }

        .events {
            padding: 50px 10%;
            text-align: center;
            background-color: #f8f9fa;
        }

        .events h2 {
            margin-bottom: 20px;
        }

        .event-card {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        .event-card h3 {
            color: #004d7a;
            margin-bottom: 10px;
        }

        .event-card p {
            color: #666;
        }

        .testimonials {
            padding: 50px 10%;
            text-align: center;
        }

        .testimonial-carousel {
            display: flex;
            justify-content: space-around;
            gap: 20px;
        }

        .testimonial-item {
            max-width: 300px;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .testimonial-item img {
            border-radius: 50%;
            width: 80px;
            margin-bottom: 10px;
        }

        .testimonial-item p {
            font-style: italic;
            color: #555;
        }

        .testimonial-item h3 {
            margin-top: 10px;
            font-size: 1.2rem;
            color: #004d7a;
        }

        .rating i {
            color: #ffcc00;
        }

        footer {
            background-color: #004d7a;
            color: white;
            padding: 20px 0;
            text-align: center;
        }

        .footer-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 10%;
        }

        .footer-links a {
            color: white;
            text-decoration: none;
            margin: 0 10px;
        }

        .footer-links a:hover {
            text-decoration: underline;
        }

        .social-media a {
            color: white;
            margin: 0 10px;
            font-size: 1.2rem;
            transition: color 0.3s ease;
        }

        .social-media a:hover {
            color: #ffcc00;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .feature-grid {
                grid-template-columns: 1fr;
            }

            .testimonial-carousel {
                flex-direction: column;
                align-items: center;
            }
        }
    </style>
</head>
<body>
    <header class="header">
        <nav>
            <div class="logo">
                <img src="img/Screenshot_2024-08-27_000348-removebg-preview.png" alt="University Logo">
            </div>
            <div class="nav-links">
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="AboutUs.jsp">About</a></li>
                    <li><a href="cource.jsp">Courses</a></li>
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="contactus.jsp">Contact</a></li>
                </ul>
            </div>
        </nav>

        <div class="hero-content">
            <img src="img/university3.jpeg" alt="Hero Image" class="hero-img">
            <h1>Shape Your Future with Us</h1>
            <p>Join our diverse community of learners and leaders.</p>
            <a href="#programs" class="cta-btn primary-btn">Explore Programs</a>
            <a href="#apply" class="cta-btn secondary-btn">Apply Now</a>
        </div>
    </header>

    <main>
        <section class="features">
            <h2>Why Choose Us?</h2>
            <div class="feature-grid">
                <div class="feature">
                    <i class="fas fa-lightbulb"></i>
                    <h3>Innovative Courses</h3>
                    <p>We offer a wide range of courses designed to prepare you for the future.</p>
                </div>
                <div class="feature">
                    <i class="fas fa-users"></i>
                    <h3>Experienced Faculty</h3>
                    <p>Learn from industry experts and seasoned educators.</p>
                </div>
                <div class="feature">
                    <i class="fas fa-globe"></i>
                    <h3>Global Opportunities</h3>
                    <p>Access internships and study abroad programs worldwide.</p>
                </div>
            </div>
        </section>

        <section class="events" id="events">
            <h2>Upcoming Events</h2>
            <div class="event-card">
                <h3>Open House</h3>
                <p>Join us for our Open House event on January 15th, 2025. Discover our programs and campus life.</p>
            </div>
            <div class="event-card">
                <h3>Career Fair</h3>
                <p>Meet potential employers at our annual Career Fair on February 20th, 2025. Don't miss it!</p>
            </div>
            <div class="event-card">
                <h3>Annual Graduation Ceremony</h3>
                <p>Celebrate our graduates on March 25th, 2025. All are welcome to attend!</p>
            </div>
        </section>

        <section class="testimonials">
            <h2>What Our Students Say</h2>
            <div class="testimonial-carousel">
                <div class="testimonial-item">
                    <img src="img/avatar.svg" alt="Student 1">
                    <p>"This university transformed my life. The faculty is amazing!"</p>
                    <h3>Abhipsa Thakur</h3>
                </div>
                <div class="testimonial-item">
                    <img src="img/avatar.svg" alt="Student 2">
                    <p>"I found my passion here and made lifelong friends!"</p>
                    <h3>Rashmi Ranjan Prusty</h3>
                </div>
                <div class="testimonial-item">
                    <img src="img/avatar.svg" alt="Student 3">
                    <p>"The resources available to students are incredible!"</p>
                    <h3>Jeevan Jyoti Sahoo</h3>
                </div>
            </div>
        </section>
    </main>

    <footer>
        <div class="footer-container">
            <div class="footer-links">
                <a href="#">Privacy Policy</a>
                <a href="#">Terms of Use</a>
            </div>
            <div class="social-media">
                <a href="#"><i class="fab fa-facebook"></i></a>
                <a href="#"><i class="fab fa-twitter"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
                <a href="#"><i class="fab fa-linkedin"></i></a>
            </div>
        </div>
        <p>&copy; 2024 University Management System. All rights reserved.</p>
    </footer>
</body>
</html>
