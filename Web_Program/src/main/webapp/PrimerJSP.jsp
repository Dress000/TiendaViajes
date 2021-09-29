<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>JSP se usa para mesclar HTML con instrucciones de JAVA</h2>
	
	<p>
	Expresiones: Escribir dentro de los tag la instruccion Java<% %> Ejemplo: <br>
	Hoy es: <%= new java.util.Date() %>
	
	Servlets/Scriptles: Escribir dentro de los tags algunas instrucciones Java, Ejemplo:
	
	Para cada uno de los elementos se tiene un codigo: (Los codigos son:)<br>
	
	<%
		for(int i=1; i<20; i++)
		{
			out.println(i);
			if(i==5){
				out.println("Este codigo esta ocupado");	
			}
		}
	%>
	
	<h2>Otra funcion</h2>
	
	<%! 
		private String nombre = "Marcela";
		int resultado= 0;
		
		public int metodoSuma(int a, int b){
			resultado = a+b;
					return resultado;
		}
	%>
	
	
	
	</p>
</body>
</html>