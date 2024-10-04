package in.backend.logout;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException {
        // Get the current session, if it exists
        HttpSession session = request.getSession(false);

        // If there is an existing session, invalidate it
        if (session != null) {
            session.invalidate(); // This removes the session
        }

        // Redirect the user to the index page after logging out
        response.sendRedirect("index.jsp"); // Changed to index.jsp
    }
}
