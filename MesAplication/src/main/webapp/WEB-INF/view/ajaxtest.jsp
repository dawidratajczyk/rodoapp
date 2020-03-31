	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false"%>   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wszystkie rekordy</title>
  <link rel="stylesheet" type="text/css" href="css/tabela.css" />
  <%-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> --%>
   <%--<script src="webjars/jquery/3.3.1/jquery.min.js"></script>--%>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="/js/test.js"></script>

</head>
<body>
<div align="center">


								<table class="blueTable">
									<tr>
										<th>maszyna</th>
										<th>obszar</th>
									</tr>
								</table>
								
								<form>
								<table>
								<tr>
								
									<td>Maszyna</td>
										<td>
											<select id ="maszyny">
											<option>BENCR01</option>
											<option>BENCR02</option>
											</select>
										</td>
								
								</tr>
						
								<tr>
									<td>Wybor</td>
										
										<td>
										<select id ="case"></select>
										</td>
									
								</tr>
									
								
								
								
								</table>
								</form>

</div>
</body>
</html>