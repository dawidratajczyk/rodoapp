<%@ page contentType="text/html; charset=UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false"%>   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" type="text/css" href="css/tabela.css" />
  <link rel="stylesheet" type="text/css" href="css/main.css" />
<title>Wszystkie dane</title>


</head>
<body>
<div id="main" align="center">



							<table class="blueTable">
								<tr>
									<th>materiaĹ</th>
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