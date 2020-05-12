<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false"%>   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <link rel="stylesheet" type="text/css" href="css/tabela4.css" />
<title>Wszystkie rekordy</title>
</head>
<body>
<div align="center">
	<table>
	<tr>
	<th>
<form action="<c:url value="/dodajmaszyne" />" method="GET">
    <input type="submit" value="Dodaj-Maszyne"/>    
</form>
</th>
<th>
<form action="<c:url value="/show" />" method="GET">
    <input type="submit" value="MenuGlowne"/>    
</form>
</th>
</tr>
	</table>
	


							<table class="greenTable">
								<tr>
									<th>maszyna</th>
									<th>obszar</th>
								</tr>
							
							<c:forEach items="${maszyny}" var="maszyny">
							<tr>
								<td>${maszyny.maszyna}</td>
								<td>${maszyny.obszar}</td>
							
							</tr>
							</c:forEach>
							
							</table>

</div>
</body>
</html>