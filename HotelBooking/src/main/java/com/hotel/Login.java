package com.hotel;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	
	protected void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		LoginDao dao = new LoginDao();
		try {
			if(dao.checkDetails(uname, pass))
			{
				HttpSession ses=request.getSession();
				ses.setAttribute("username", uname);
				response.sendRedirect("Select.jsp");
				
			}
			else 
			{
				response.sendRedirect("Login.jsp" );
				
			}
		} catch (SQLException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


	

}
