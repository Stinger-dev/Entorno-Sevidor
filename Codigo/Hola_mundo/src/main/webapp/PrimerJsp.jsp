<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="paquete.FechaHoy" %> 
     <%@ page import="paquete.Persona" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h1> hola mundo <%= FechaHoy.getFecha() %> </h1>

<%
	Persona p = new Persona("Gon", "oses");
	p.setNombre("asdfi");
	out.println("escribiendo"+p.toString());
	request.getParameter("nombreInput");
%>
</body>
</html>	
