import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ResetPasswordServlet")
public class ResetPasswordServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String token = request.getParameter("token");
        String newPassword = request.getParameter("password");
        
        String dbUrl = "jdbc:mysql://localhost:3306/universitymanagementsystem1";
        String dbUser = "root";
        String dbPass = "Abhipsa";

        try (Connection con = DriverManager.getConnection(dbUrl, dbUser, dbPass)) {
            PreparedStatement ps = con.prepareStatement("UPDATE registration SET password=?, reset_token=NULL WHERE reset_token=?");
            ps.setString(1, newPassword); // Store the hashed version of the password here
            ps.setString(2, token);
            int updatedRows = ps.executeUpdate();

            if (updatedRows > 0) {
                response.getWriter().write("Password has been reset successfully.");
            } else {
                response.getWriter().write("Invalid token or token has expired.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().write("Database connection error.");
        }
    }
}
