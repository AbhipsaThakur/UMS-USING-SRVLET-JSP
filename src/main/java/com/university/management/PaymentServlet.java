package com.university.management;

import java.io.IOException;

import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/processPayment")
public class PaymentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public PaymentServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Set response content type
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Retrieve the form data
        String studentName = request.getParameter("studentName");
        String studentEmail = request.getParameter("studentEmail");
        String course = request.getParameter("course");
        String paymentMethod = request.getParameter("paymentMethod");

        // Variables to hold payment details
        String paymentDetails = "";

        // Validate payment method and get additional details
        switch (paymentMethod) {
            case "Credit Card":
                String cardNumber = request.getParameter("cardNumber");
                String expiryDate = request.getParameter("expiryDate");
                String cvv = request.getParameter("cvv");

                if (cardNumber == null || expiryDate == null || cvv == null || cardNumber.isEmpty() || expiryDate.isEmpty() || cvv.isEmpty()) {
                    out.println("<html><body>");
                    out.println("<h3>Payment Failed: Missing credit card details!</h3>");
                    out.println("</body></html>");
                    return;
                }

                paymentDetails = "Card Number: " + cardNumber + ", Expiry Date: " + expiryDate + ", CVV: " + cvv;
                break;

            case "UPI":
                String upiId = request.getParameter("upiId");

                if (upiId == null || upiId.isEmpty()) {
                    out.println("<html><body>");
                    out.println("<h3>Payment Failed: Missing UPI details!</h3>");
                    out.println("</body></html>");
                    return;
                }

                paymentDetails = "UPI ID: " + upiId;
                break;

            case "Cash Counter":
                paymentDetails = "Payment will be made at the cash counter.";
                break;

            default:
                out.println("<html><body>");
                out.println("<h3>Payment Failed: Invalid payment method!</h3>");
                out.println("</body></html>");
                return;
        }

        out.println("<html><body>");
        out.println("<h2>Payment Success</h2>");
        out.println("<p>Student Name: " + studentName + "</p>");
        out.println("<p>Course: " + course + "</p>");
        out.println("<p>Payment Method: " + paymentMethod + "</p>");
        out.println("<p>Payment Details: " + paymentDetails + "</p>");
        out.println("<h4>Payment processed successfully!</h4>");
        out.println("</body></html>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.sendRedirect("payment.html");
    }
}
