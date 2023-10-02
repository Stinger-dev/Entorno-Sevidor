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
		String a =	request.getParameter("a");
		String b = request.getParameter("b");
		String operacion = request.getParameter("operacion");

		Calculadora calc = new Calculadora(a,b,operacion);
		
		
		try {
			out.println(calc.operar());
			
		} catch (Exception e) {
			out.println("sd");
		}

	%>
	<br>
	<a href="Calculadora.html" ><input type="button" value="Volver"></a>
	
	

</body>
</html>