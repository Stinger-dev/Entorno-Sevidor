<%@page import="org.apache.catalina.startup.CatalinaBaseConfigurationSource"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="utilities.Calculadora"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<style >
	body {
		background-color:beige;
		margin: 0px;
		height: 100%;
		width: 100%;
	}
	.centradoXY{
	    position: absolute;
	    top: 50%;
	    left: 50%;
	    transform: translate(-50%, -50%);
	}
	#pantalla{
		
		resize: none;
	}	
	#wrapWholeCalculator{
		background-color: tomato;
		height: 70%;
		aspect-ratio: 1/1;
		min-height: 500px;
		border-radius: 4px	
	}
	.centrarX{
		text-align: center;
	}
	
	#pantalla{
		margin-top: 10%;
		width: 70%;
		border-radius: 4px;
   		overflow-x: scroll;
   		font-size: 80px;
   		text-align: right;
   		white-space: nowrap;
   		
   	}
   	
   	.selector{
   		font-size: 20px;
   	}
   		
 	
	</style>

</head>
<body>
	<% 
	String acumulado = request.getParameter("pantalla") != null ? request.getParameter("pantalla").concat(request.getParameter("operador")).concat(request.getParameter("numero"))  : "" ; 
		try {
			if(request.getParameter("calcular") != null){
				acumulado = String.valueOf(Calculadora.calc(acumulado));
			}
			
			if(request.getParameter("reset") != null){
				acumulado = "";
			}
		} catch (Exception e) {
			acumulado = "Syntax error";
		}
		
	%>
	<div id="wrapWholeCalculator" class="centradoXY centrarX">
		<form method="get" action="Calculadora.jsp" >
			<textarea name="pantalla" id="pantalla" rows="1" readonly><%= acumulado %></textarea>
		 	<p class="selector" >Elija la operacion:
			  <select name="operador" id="operador">
				<option value=""></option>  
			    <option value="+">+</option>
			    <option value="-">-</option>
			  </select>
		 	</p>
		 	<input name="numero" type="number" placeholder=0 step=".00001">
		 	<br>
		 	<input type="submit" name="calcular" value="Calcular">
		 	<input type="submit" name="reset" value="Resetear">
		 	<input type="submit" value="Añadir">
		 	
		</form>
	</div>

</body>
</html>