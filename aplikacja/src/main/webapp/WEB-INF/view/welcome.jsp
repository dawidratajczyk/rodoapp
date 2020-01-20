<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<html>
<body>
	<h2>Best Car of the year 2020</h2>

	<c:if test="${not empty lists}">

		<ul>
			<c:forEach var="listValue" items="${lists}">
				<li>${listValue}</li>
		
			</c:forEach>
		</ul>

	</c:if>
</body>
</html>