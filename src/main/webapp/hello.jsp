<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Random"%>
<%@ page import="java.time.LocalDateTime"%>
<%
	String messages[] = new String[]{
			"Hello, World!",
	        "Olá, Mundo!",
	        "¡Hola, Mundo!",
	        "Bonjour, le Monde!",
	        "Hallo, Welt!"
	};

	Random rand = new Random();
	int position = rand.nextInt(5);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Página Hello em JSP</title>
</head>
<body>

	<h1><%= messages[position] %></h1>
	<p>
		<% out.println("Agora no servidor: " + LocalDateTime.now().toString() ); %>
	</p>
</body>
</html>