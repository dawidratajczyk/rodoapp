<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false"%>   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="webjars/bootstrap/4.4.1-1/css/bootstrap.min.css" rel="stylesheet">
  <script src="webjars/jquery/3.3.1/jquery.min.js"></script>
  <script src="webjars/bootstrap/4.4.1-1/js/bootstrap.min.js"></script>
   <%--  <script src="webjars/datatables/1.9.4/media/js/jquery.dataTables.min.js"></script>
  <script src="webjars/datatables/1.9.4/media/css/jquery.dataTables.css"></script>
  <script src="webjars/datatables/1.9.4/media/css/jquery.dataTables_themeroller.css"></script>--%>
  <script src="webjars/chartjs/2.9.3/Chart.min.js"></script>
  <%-- <script src="/js/allwykres.js"></script>--%>
  <script src="/js/mainchart.js"></script>
  <%--<script src="/js/divider.js">  </script> --%>
  


<title>Wszystkie rekordy</title>
</head>
<body>
<div>
<canvas id="myChart" style="position: relative; height:20vh; width:40vw"></canvas>
</div>
<div align="center">


	<table>
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
	


							<table  id="myTable" class="table table-striped table-responsive-md btn-table">
							<thead>
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
							</thead>
							<tbody>
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
							</tbody>
							
							</table>

</div>

<div id="pagging" align="center">
<table>
<tr>
<td> strony : </td>
<c:forEach items="${pglist}" var = "page">
<td>
<a href="/show?pages=${page}"  style="text-decoration:none" class="button">${page}</a>
</td>
</c:forEach>
</tr>
</table>
${pgcurrent } z ${pgcount }
</div>

</body>
</html>