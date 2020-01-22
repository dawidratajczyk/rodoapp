<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<html>
<body>
	<h2>How to fetch data from database in Spring MVC</h2>


	<table border="1">

		<th>material</th>
		<th>operacje</th>
		<th>czas</th>

		<c:forEach var="aMaszyny" items="${ListaDb}">
			<tr>
				<td>${aMaszyny.material}</td>
				<td>${aMaszyny.Operacje}</td>
				<td>${aMaszyny.czas}</td>

			</tr>
		</c:forEach>
	</table>

</body>
</html>