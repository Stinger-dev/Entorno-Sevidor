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

	<h1>Calculadora</h1>
	<hr>
	
	<%
		Calculadora calc = new Calculadora(request.getParameter("a"),request.getParameter("b"),request.getParameter("operacion"));
		
		try{
			out.println("El resultado es " + calc.operar());
			
			}catch(Exception e){
				
			}
	%>
	<form action="Calculadora2.jsp" method="get">
		<input name="a" type="number" placeholder=0 step=".00001" required>
		<br>
		<input name="b" type="number" placeholder=0 step=".00001" required> 
		<br>
		<input type="radio" name="operacion" value="+"> Suma
	
		<input type="radio" name="operacion" value="-"> Resta

		<br>
		<input type="submit" value="Calcular" >
		
		
	</form>
</body>
</html>