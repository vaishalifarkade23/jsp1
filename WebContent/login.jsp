<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
    String name=request.getParameter("user");
	String pas=request.getParameter("pass");
	if(name.equalsIgnoreCase("admin") && (pas.equalsIgnoreCase("admin123")))
	{
		session.setAttribute("sesuser", name);
		response.sendRedirect("home.jsp");
	}
	else
	{
		session.setAttribute("sesuser"," Wrong credintial");
		response.sendRedirect("index.jsp");
	}
	
%>

</body>
</html>