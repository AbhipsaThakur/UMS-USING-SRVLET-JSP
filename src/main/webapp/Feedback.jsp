<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faculty Feedback Form</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #fff;
            margin: 0;
            padding: 0;
            height: 100vh;
        }

        form {
            padding: 30px;
            width: 100%;
            height: 100vh;
            overflow-y: auto;
        }

        h1 {
            text-align: center;
            margin-bottom: 30px;
            color: #4F63C2;
            font-size: 36px;
            letter-spacing: 1px;
        }

        .faculty-section {
            margin-bottom: 30px;
            border-bottom: 1px solid #ddd;
            padding-bottom: 20px;
        }

        .faculty-info {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
        }

        .faculty-info img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            border: 3px solid #4F63C2;
            margin-right: 20px;
        }

        .faculty-info h3 {
            margin: 0;
            font-size: 22px;
            color: #4F63C2;
        }

        .faculty-info span {
            display: block;
            font-size: 16px;
            color: #666;
        }

        .rating {
            display: flex;
            margin: 10px 0;
        }

        .rating input[type="radio"] {
            display: none;
        }

        .rating label {
            font-size: 30px;
            color: #ccc;
            cursor: pointer;
            transition: color 0.3s ease;
        }

        .rating input:checked ~ label,
        .rating label:hover,
        .rating label:hover ~ label {
            color: #FFD700;
        }

        textarea {
            width: 100%;
            padding: 12px;
            margin-top: 10px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 14px;
            background-color: #f7f7f7;
        }

        input[type="submit"] {
            width: 100%;
            background-color: #4F63C2;
            color: #fff;
            border: none;
            padding: 15px;
            font-size: 18px;
            border-radius: 8px;
            margin-top: 20px;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .faculty-info {
                flex-direction: column;
                text-align: center;
            }

            .faculty-info img {
                margin-bottom: 10px;
            }

            h1 {
                font-size: 28px;
            }
        }
    </style>
</head>
<body>
<div class="feedback-container">
    <h1>Faculty Feedback Form</h1>

    <form action="FeedbackServlet" method="post">

        <!-- Faculty 1 -->
        <div class="faculty-section">
            <div class="faculty-info">
                <img src="img/avatar-removebg-preview.jpeg" alt="Faculty 1">
                <div>
                    <h3>Prof. Rakesh Ray</h3>
                    <span>Subject: Advanced Java (Software Technology Domain)</span>
                </div>
            </div>
            <label>Rate this faculty:</label>
            <div class="rating">
                <input type="radio" id="star5-1" name="rating1" value="5"><label for="star5-1">★</label>
                <input type="radio" id="star4-1" name="rating1" value="4"><label for="star4-1">★</label>
                <input type="radio" id="star3-1" name="rating1" value="3"><label for="star3-1">★</label>
                <input type="radio" id="star2-1" name="rating1" value="2"><label for="star2-1">★</label>
                <input type="radio" id="star1-1" name="rating1" value="1"><label for="star1-1">★</label>
            </div>
            <label for="feedback1">Your Thoughts:</label>
            <textarea id="feedback1" name="feedback1" rows="4" placeholder="Write your feedback here..."></textarea>
        </div>

        <!-- Faculty 2 -->
        <div class="faculty-section">
            <div class="faculty-info">
                <img src="img/avatar-removebg-preview.jpeg" alt="Faculty 2">
                <div>
                    <h3>Prof. Rashmi Prakash Swain</h3>
                    <span>Subject: Android App Development (Software Technology Domain)</span>
                </div>
            </div>
            <label>Rate this faculty:</label>
            <div class="rating">
                <input type="radio" id="star5-2" name="rating2" value="5"><label for="star5-2">★</label>
                <input type="radio" id="star4-2" name="rating2" value="4"><label for="star4-2">★</label>
                <input type="radio" id="star3-2" name="rating2" value="3"><label for="star3-2">★</label>
                <input type="radio" id="star2-2" name="rating2" value="2"><label for="star2-2">★</label>
                <input type="radio" id="star1-2" name="rating2" value="1"><label for="star1-2">★</label>
            </div>
            <label for="feedback2">Your Thoughts:</label>
            <textarea id="feedback2" name="feedback2" rows="4" placeholder="Write your feedback here..."></textarea>
        </div>
        
        <!-- Faculty 3 -->
        <div class="faculty-section">
            <div class="faculty-info">
                <img src="img/avatar-removebg-preview.jpeg" alt="Faculty 3">
                <div>
                    <h3>Prof. Rakesh Ray</h3>
                    <span>Subject: Product Development (Software Technology Domain)</span>
                </div>
            </div>
            <label>Rate this faculty:</label>
            <div class="rating">
                <input type="radio" id="star5-3" name="rating3" value="5"><label for="star5-3">★</label>
                <input type="radio" id="star4-3" name="rating3" value="4"><label for="star4-3">★</label>
                <input type="radio" id="star3-3" name="rating3" value="3"><label for="star3-3">★</label>
                <input type="radio" id="star2-3" name="rating3" value="2"><label for="star2-3">★</label>
                <input type="radio" id="star1-3" name="rating3" value="1"><label for="star1-3">★</label>
            </div>
            <label for="feedback3">Your Thoughts:</label>
            <textarea id="feedback3" name="feedback3" rows="4" placeholder="Write your feedback here..."></textarea>
        </div>
        
        <!-- Faculty 4 -->
        <div class="faculty-section">
            <div class="faculty-info">
                <img src="img/avatar-removebg-preview.jpeg" alt="Faculty 4">
                <div>
                    <h3>Prof. Bishnupada Kamila</h3>
                    <span>Subject: Spring Boot (Software Technology Domain)</span>
                </div>
            </div>
            <label>Rate this faculty:</label>
            <div class="rating">
                <input type="radio" id="star5-4" name="rating4" value="5"><label for="star5-4">★</label>
                <input type="radio" id="star4-4" name="rating4" value="4"><label for="star4-4">★</label>
                <input type="radio" id="star3-4" name="rating4" value="3"><label for="star3-4">★</label>
                <input type="radio" id="star2-4" name="rating4" value="2"><label for="star2-4">★</label>
                <input type="radio" id="star1-4" name="rating4" value="1"><label for="star1-4">★</label>
            </div>
            <label for="feedback4">Your Thoughts:</label>
            <textarea id="feedback4" name="feedback4" rows="4" placeholder="Write your feedback here..."></textarea>
        </div>

        <input type="submit" value="Submit Feedback">
    </form>
</div>
</body>
</html>
