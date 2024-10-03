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

        /* Payment Form */
        .payment-container {
            text-align: center;
        }

        .payment-form {
            margin-top: 30px;
        }

        .payment-form input, .payment-form select {
            padding: 10px;
            margin: 10px;
            width: 300px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .payment-form button {
            padding: 10px 20px;
            background-color: #1976D2;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        .payment-form button:hover {
            background-color: #2196F3;
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

            .payment-form input, .payment-form select {
                width: 100%;
            }
        }

        /* Animation */
        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>Course Fees Structure</h1>
        <table class="fee-table">
            <thead>
                <tr>
                    <th>Course</th>
                    <th>Department</th>
                    <th>Duration</th>
                    <th>Fees (per year)</th>
                </tr>
            </thead>
            <tbody>
                <tr class="cs">
                    <td>Bachelor of Science</td>
                    <td>Computer Science</td>
                    <td>3 years</td>
                    <td>$5000</td>
                </tr>
                <tr class="psychology">
                    <td>Bachelor of Arts</td>
                    <td>Psychology</td>
                    <td>3 years</td>
                    <td>$4500</td>
                </tr>
                <tr class="nursing">
                    <td>Bachelor of Nursing</td>
                    <td>Nursing</td>
                    <td>4 years</td>
                    <td>$6000</td>
                </tr>
                <tr class="economics">
                    <td>Bachelor of Arts</td>
                    <td>Economics</td>
                    <td>3 years</td>
                    <td>$4000</td>
                </tr>
            </tbody>
        </table>

        <!-- Payment Form -->
        <div class="payment-container">
            <h2>Make a Payment</h2>
            <form class="payment-form" id="paymentForm">
                <input type="text" id="studentName" placeholder="Student Name" required><br>
                <input type="email" id="studentEmail" placeholder="Student Email" required><br>
                <select id="course">
                    <option value="" disabled selected>Select Course</option>
                    <option value="Bachelor of Science (CS)">Bachelor of Science (CS) - $5000</option>
                    <option value="Bachelor of Arts (Psychology)">Bachelor of Arts (Psychology) - $4500</option>
                    <option value="Bachelor of Nursing">Bachelor of Nursing - $6000</option>
                    <option value="Bachelor of Arts (Economics)">Bachelor of Arts (Economics) - $4000</option>
                </select><br>

                <!-- Payment Methods -->
                <select id="paymentMethod" required>
                    <option value="" disabled selected>Select Payment Method</option>
                    <option value="Credit Card">Credit Card</option>
                    <option value="UPI">UPI</option>
                    <option value="Cash Counter">Cash at Counter</option>
                </select><br>

                <!-- Conditional Inputs for Payment Methods -->
                <div id="cardDetails" style="display: none;">
                    <input type="text" id="cardNumber" placeholder="Card Number"><br>
                    <input type="text" id="expiryDate" placeholder="Expiry Date (MM/YY)"><br>
                    <input type="text" id="cvv" placeholder="CVV"><br>
                </div>

                <div id="upiDetails" style="display: none;">
                    <input type="text" id="upiId" placeholder="UPI ID"><br>
                </div>

                <button type="button" onclick="makePayment()">Submit Payment</button>
            </form>
        </div>
    </div>

    <script>
        const paymentMethod = document.getElementById('paymentMethod');
        const cardDetails = document.getElementById('cardDetails');
        const upiDetails = document.getElementById('upiDetails');

        paymentMethod.addEventListener('change', function () {
            cardDetails.style.display = paymentMethod.value === 'Credit Card' ? 'block' : 'none';
            upiDetails.style.display = paymentMethod.value === 'UPI' ? 'block' : 'none';
        });

        function makePayment() {
            const studentName = document.getElementById('studentName').value;
            const studentEmail = document.getElementById('studentEmail').value;
            const course = document.getElementById('course').value;
            const paymentMethodValue = document.getElementById('paymentMethod').value;

            // Payment Details based on method
            let paymentDetails = '';

            if (paymentMethodValue === 'Credit Card') {
                const cardNumber = document.getElementById('cardNumber').value;
                const expiryDate = document.getElementById('expiryDate').value;
                const cvv = document.getElementById('cvv').value;

                if (!cardNumber || !expiryDate || !cvv) {
                    alert("Please fill in all the Credit Card details.");
                    return;
                }
                paymentDetails = `Card Number: ${cardNumber}, Expiry Date: ${expiryDate}, CVV: ${cvv}`;
            } else if (paymentMethodValue === 'UPI') {
                const upiId = document.getElementById('upiId').value;
                if (!upiId) {
                    alert("Please fill in your UPI ID.");
                    return;
                }
                paymentDetails = `UPI ID: ${upiId}`;
            } else if (paymentMethodValue === 'Cash Counter') {
                paymentDetails = 'Payment will be made at the cash counter.';
            } else {
                alert("Please select a payment method.");
                return;
            }

            // Simulate payment processing
            alert(`Payment for ${course} by ${studentName} (${paymentMethodValue}) has been processed successfully!\nDetails: ${paymentDetails}`);

            // Reset the form
            document.getElementById('paymentForm').reset();
            cardDetails.style.display = 'none';
            upiDetails.style.display = 'none';
        }
    </script>
</body>
</html>
