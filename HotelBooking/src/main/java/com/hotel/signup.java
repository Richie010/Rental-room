package com.hotel;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SignupServlet")
public class signup extends HttpServlet {
    
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uname = request.getParameter("username");
        String pass = request.getParameter("password");
        String email = request.getParameter("email");

        if (uname != null && !uname.isEmpty() && pass != null && !pass.isEmpty() && email != null && !email.isEmpty()) {
            // Call LoginDao to store the signup data in the database
            LoginDao loginDao = new LoginDao();
            boolean signupSuccess = loginDao.storeSignupData(uname, pass, email);

            if (signupSuccess) {
                // Signup successful, redirect to login page
                response.sendRedirect("Login.jsp");
            } else {
                // Signup failed, handle error (e.g., display error message, redirect to error page)
                response.sendRedirect("error.jsp"); // Change to appropriate error handling
            }
        } else {
            // If any field is empty, display a popup message
            response.getWriter().println("<script>alert('Please fill out all fields');</script>");
        }
    }
}
