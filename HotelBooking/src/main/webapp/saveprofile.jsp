<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    // Get profile data from the form
    String name = request.getParameter("name");
    String interests = request.getParameter("interests");
    String hobbies = request.getParameter("hobbies");
    
    // Store profile data in session attributes
    session.setAttribute("name", name);
    session.setAttribute("interests", interests);
    session.setAttribute("hobbies", hobbies);
    
    // Redirect back to index.jsp
    response.sendRedirect("Select.jsp");
%>
