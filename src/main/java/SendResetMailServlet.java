import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;
import java.util.UUID;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/SendResetMailServlet")
public class SendResetMailServlet extends HttpServlet {
    private static final long serialVersionUID = 7010933452795786893L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String dbUrl = "jdbc:mysql://localhost:3306/universitymanagementsystem1";
        String dbUser = "root";
        String dbPass = "Abhipsa299@";

        String host = "smtp.gmail.com";
        final String senderEmail = "jagannathuniversityoftechnolog@gmail.com";
        final String senderPassword = "Abhipsa299@";
        String errorMessage = null;
        String successMessage = null;
        boolean emailExists = false;
        String resetToken = UUID.randomUUID().toString();

        Connection con = null; // Declare outside try-catch
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(dbUrl, dbUser, dbPass);

            PreparedStatement ps = con.prepareStatement("SELECT * FROM registration WHERE email=?");
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                emailExists = true;
                PreparedStatement psUpdate = con.prepareStatement("UPDATE registration SET reset_token=? WHERE email=?");
                psUpdate.setString(1, resetToken);
                psUpdate.setString(2, email);
                psUpdate.executeUpdate();
            } else {
                errorMessage = "Email not found!";
            }
        } catch (Exception e) {
            errorMessage = "Database connection error!";
            e.printStackTrace();
        } finally {
            if (con != null) {
                try {
                    con.close(); // Ensure the connection is closed
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        if (emailExists) {
            Properties props = new Properties();
            props.put("mail.smtp.host", host);
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.port", "587");

            Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(senderEmail, senderPassword);
                }
            });

            try {
                MimeMessage message = new MimeMessage(mailSession);
                message.setFrom(new InternetAddress(senderEmail));
                message.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
                message.setSubject("Password Reset Request");

                String resetLink = "http://localhost:8088/University_Management_System/reset-password.jsp?token=" + resetToken;
                message.setText("Click the following link to reset your password: " + resetLink);

                Transport.send(message);
                successMessage = "A password reset link has been sent to your email.";
            } catch (MessagingException e) {
                errorMessage = "Error sending email!";
                e.printStackTrace();
            }
        }

        HttpSession session = request.getSession();
        if (errorMessage != null) {
            session.setAttribute("errorMessage", errorMessage);
        }
        if (successMessage != null) {
            session.setAttribute("successMessage", successMessage);
        }
        response.sendRedirect("ForgotPassword.jsp");
    }
}
