<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Recibir datos</title>
</head>
<body>

<h1>Capturando Datos...</h1>

<%
	 String Cedula = request.getParameter("cedula");
	 String Direccion = request.getParameter("direccion");
	 String Correo = request.getParameter("correo");
	 String Nombre = request.getParameter("nombre");
	 String Usuario = request.getParameter("usuario");
	 String Telefono = request.getParameter("telefono");

	out.println("Cedula: " + Cedula);
	out.println("Direccion: " + Direccion);
	out.println("Correo: " + Correo);
	out.println("Nombre: " + Nombre);
	out.println("Usuario: " + Usuario);
	out.println("Telefono: " + Telefono);
	
	Class.forName("com.mysql.jdbc.driver");
	try
	{
		java.sql.Connection con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/BD_TiendaViajes","root","Admin_2021");
		java.sql.Statement stmt = con.createStatement();
		String sql = "INSERT INTO T_Usuarios (cedula_usuario,direccion_cliente,email_cliente,nombre_cliente,usuarioscol,telefono_cliente) Values('"+Cedula+"','"+Direccion+"','"+Correo+"','"+Nombre+"','"+Usuario+"','"+Telefono+"');'";
		stmt.executeUpdate(sql);
		out.println("Usuario Registrado");
		
	} catch (Exception e){
		
		out.println("Error: "+e);
	}
	
	
%>

<form>
	<input type ="submit" value="Guardar">
</form>


</body>
</html>