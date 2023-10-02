<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
		height: 20%;
		border-radius: 4px;
   		overflow-x: auto;
   		font-size: 50px;
   		text-align: right;
	}
	
	
	</style>

</head>
<body>

	<div id="wrapWholeCalculator" class="centradoXY centrarX">
		<textarea id="pantalla"></textarea>
		
		<div>
		<p>Elija la operacion:
		  <select>
		    <option value="+">+</option>
		    <option value="-">-</option>
		  </select>
		  </p>
		</div>
	
	</div>

</body>
</html>