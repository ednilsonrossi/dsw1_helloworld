<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Soma números</title>
</head>
<body>
<%
	/* Objeto request recupera os parametros recebidos na requisição HTTP. */
	String strN1 = request.getParameter("a");
	String strN2 = request.getParameter("b");
	
	/* Os parametros chegam como string, é necessário converte-los. */
	int n1, n2;
	try {
		n1 = Integer.parseInt(strN1);
		n2 = Integer.parseInt(strN2);
	} catch (NumberFormatException e){
		n1 = 0;
		n2 = 0;
	}
%>
	<h1>Soma números</h1>
	<p><%= n1 %> + <%= n2 %> = <%= n1 + n2 %></p>
</body>
</html>