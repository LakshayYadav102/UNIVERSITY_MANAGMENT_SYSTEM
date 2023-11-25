import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Store valid username-password pairs
    private static final Map<String, String> validCredentials = new HashMap<>();

    static {
        // Add multiple username-password pairs
        validCredentials.put("lakshay", "yadav");
        validCredentials.put("vaibhav", "kadian");
        validCredentials.put("ksitij", "verma");
        validCredentials.put("ayush", "dalal");
        // Add more as needed
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Check if the provided username and password match any valid credentials
        if (validCredentials.containsKey(username) && validCredentials.get(username).equals(password)) {
            // Redirect to success page
            response.sendRedirect("index.jsp");
        } else {
            // Redirect to login page with an error parameter
            response.sendRedirect("login.jsp?error=true");
        }
    }
}
