	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false"%>   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wszystkie rekordy</title>
	<script src="webjars/jquery/3.3.1/jquery.min.js"></script>
  	<link href="webjars/bootstrap/4.4.1-1/css/bootstrap.min.css" rel="stylesheet">
	<script src="webjars/bootstrap/4.4.1-1/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/tabela.css" />

	
  	<%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>--%>
	<script src="/js/dane.js"></script>

</head>
<body>
<div align="center">


											
								
								
<form>
	<table class="blueTable">
	<%-- Pierwszy rekord, wybór fragmentu kodu --%>
	<tr>
	<td>Wpisz fragment kodu</td>
	<td><input type="text" id="fragment"></input></td>
	<td><button id="szukaj" type="button">szukaj</button></td>
	</tr>
	
	<%-- drugi rekord, wybor pelnego kodu --%>
	<tr>
		<td>wybierz kod</td>
		<td>
		<select id ="kod">
											
											<%--<c:forEach items="${listDanych}" var="dane">
											<option>${dane.material}</option>
											</c:forEach>--%>
											
		</select>
		</td>
	</tr>
	
	<%-- trzeci rekord, wybór operacji --%>
	<tr>
		<td>operacja</td>
		<td>
		<select id ="operacja"></select>
		</td>
	</tr>
	
	<%-- Czwarty rekord - czas --%>
	<tr>
		<td>czas</td>
		<td>
		<select id ="czas"></select>
		</td>
	
	
	</tr>
	
		<%-- Piąty rekord - norma --%>
	<tr>
		<td>norma</td>
		<td>
		<select id ="norma"></select>
		</td>
	
	
	</tr>
</table>
</form>

</div>
</body>
</html>