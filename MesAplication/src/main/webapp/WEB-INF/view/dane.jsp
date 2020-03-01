<%@ page language="java" contentType="text/html; charset=iISO-8859-2"
    pageEncoding="ISO-8859-2"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false"%>   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" type="text/css" href="css/tabela.css" />
<title>Wszystkie dane</title>
</head>
<body>
<div align="center">



							<table class="blueTable">
								<tr>
									<th>materiał</th>
									<th>Operacja</th>
									<th>Czas</th>
									<th>Norma</th>
										
								</tr>
							
							<c:forEach items="${lista}" var="dane">
							<tr>
								<td>${dane.material}</td>
								<td>${dane.operacja}</td>
								<td>${dane.wartoscstandardowa2}</td>
								<td>${dane.norma}</td>
																
							</tr>
							</c:forEach>
							
							</table>

</div>

</body>
</html>