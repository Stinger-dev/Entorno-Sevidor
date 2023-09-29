<%@page import="paquete.Calculadora"%>
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
		double a =	Double.parseDouble(request.getParameter("a"));
		double b = Double.parseDouble(request.getParameter("b"));
		String operacion = request.getParameter("operacion");

		Calculadora calc = new Calculadora(a,b,operacion);
	
		out.println(calc.operar());
	
	%>
	

</body>
</html>