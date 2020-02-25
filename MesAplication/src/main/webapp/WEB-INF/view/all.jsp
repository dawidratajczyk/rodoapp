<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false"%>   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" type="text/css" href="css/tabela.css" />
<title>Wszystkie rekordy</title>
</head>
<body>
<div align="center">

	<table class="blueTable">
	<tr>
	<th>
	<form action="<c:url value="/dodaj" />" method="GET" >
	    <input type="submit" value="Dodaj"/>    
	</form>
	</th>
<th>
	<form action="<c:url value="/maszyny" />" method="GET">
	    <input type="submit" value="ManagerMaszyn"/>    
	</form>
</th>
</tr>
	</table>
	


							<table class="blueTable">
								<tr>
									<th>ID</th>
									<th>maszyna</th>
									<th>operacja</th>
									<th>czas</th>
									<th>material</th>
									<th>opis</th>
								</tr>
							
							<c:forEach items="${nowaLista}" var="marszruta">
							<tr>
								<td>${marszruta.id}</td>
								<td>${marszruta.maszyna}</td>
								<td>${marszruta.operacja}</td>
								<td>${marszruta.czas}</td>
								<td>${marszruta.material}</td>
								<td>${marszruta.opis}</td>
							
							</tr>
							</c:forEach>
							
							</table>

</div>

</body>
</html>