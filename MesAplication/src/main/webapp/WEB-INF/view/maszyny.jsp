<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false"%>   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <link rel="stylesheet" type="text/css" href="css/tabela4.css" />
  <link href="/mes/webjars/bootstrap/4.4.1-1/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="css/main.css" />
<title>Wszystkie rekordy</title>
</head>
<body>
<div align="center" id="main">
	<table>
	<tr>
	<th>
<form action="<c:url value="/dodajmaszyne" />" method="GET">
    <input type="submit" value="Dodaj maszyne"/>    
</form>
</th>
<th>
<form action="<c:url value="/show" />" method="GET">
    <input type="submit" value="Menu główne"/>    
</form>
</th>
</tr>
	</table>
	


							<table class="table table-striped table-responsive-md btn-table">
							<thead>
								<tr>
									<th>id</th>
									<th>maszyna</th>
									<th>obszar</th>
									<th>ustawienia</th>
								</tr>
							</thead>
							<c:forEach items="${maszyny}" var="maszyny">
							<tr>
								<td>${maszyny.id}</td>
								<td>${maszyny.maszyna}</td>
								<td>${maszyny.obszar}</td>
								<td><a href="/mes/deletemachine?id=${maszyny.id}"  style="text-decoration:none">usun</a>
								</td>
							
							</tr>
							</c:forEach>
							
							</table>

</div>
</body>
</html>