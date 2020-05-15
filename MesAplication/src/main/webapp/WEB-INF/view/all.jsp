<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false"%>   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" type="text/css" href="css/tabela4.css" />
  <script src="webjars/jquery/3.3.1/jquery.min.js"></script>
  <script src="webjars/bootstrap/4.4.1-1/js/bootstrap.min.js"></script>
  <script src="webjars/chartjs/2.9.3/Chart.min.js"></script>
  <%--<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script> --%>
  <script src="/js/allwykres.js"></script>
<title>Wszystkie rekordy</title>
</head>
<body>
<div style="width:50%;height:100px">
<canvas id="myChart"></canvas>
</div>
<div align="center">


	<table class="blueTable">
	<tr>
	<th>
	<%--<form action="<c:url value="/dodaj" />" method="GET" > --%>
	<form action="<c:url value="/addrecord" />" method="GET" >
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
	


							<table class="greenTable">
								<tr>
									<th>ID</th>
									<th>maszyna</th>
									<th>operacja</th>
									<th>czas</th>
									<th>norma</th>
									<th>material</th>
									<th>wykonano</th>
									<th>ustawienia</th>
	
								</tr>
							
							<c:forEach items="${nowaLista}" var="produkcja">
							<tr>
								<td>${produkcja.id}</td>
								<td>${produkcja.maszyna}</td>
								<td>${produkcja.operacja}</td>
								<td>${produkcja.czas}</td>
								<td>${produkcja.norma}</td>
								<td>${produkcja.material}</td>
								<td>${produkcja.opis}</td>
								<td><a href="/edit?id=${produkcja.id}"  style="text-decoration:none">edytuj</a>
										&nbsp;&nbsp;&nbsp;
									<a href="/delete?id=${produkcja.id}"  style="text-decoration:none">usun</a>
								</td>
							
							</tr>
							</c:forEach>
							
							</table>

</div>

</body>
</html>