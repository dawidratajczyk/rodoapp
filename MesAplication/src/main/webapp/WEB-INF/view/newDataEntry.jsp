	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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


											
								
								
<form:form action="saveprod" method="post" modelAttribute="zapis">
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
		<form:select id ="material" path="material">
																					
		</form:select>
		</td>
	</tr>
	
	<%-- trzeci rekord, wybór operacji --%>
	<tr>
		<td>operacja</td>
		<td>
		<form:select id ="operacja" path="operacja"></form:select>
		</td>
	</tr>
	
		<%-- Pierwszy drugi, maszyna --%>
	<tr>
		<td>maszyna</td>
		<td>
		<form:select id ="maszyna" path="maszyna">
		<c:forEach items="${maszyny}" var = "maszyny">
		<form:option value="${maszyny.maszyna}" />
		</c:forEach>
		</form:select>	                    
		</td>
    </tr>
	
	
	<%-- Czwarty rekord - czas --%>
	<tr>
		<td>czas</td>
		<td>
		<form:select id ="czas" path="czas"></form:select>
		</td>
	
	
	</tr>
	
		<%-- Piąty rekord - norma --%>
	<tr>
		<td>norma</td>
		<td>
		<form:select id ="norma" path="norma"></form:select>
		</td>
	
	
	</tr>
	
		<%-- Szosty rekord - opis --%>
  	<tr>
                    <td>opis</td>
                    <td><form:input path="opis" /></td>
    </tr>    
	
	                <tr>
                    <td colspan="2"><input type="submit" value="save">
                   <input type="button" onclick="history.back();" value="Wstecz"></td>

                </tr>      
</table>
</form:form>

</div>
</body>
</html>