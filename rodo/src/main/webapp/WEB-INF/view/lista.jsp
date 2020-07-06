<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false"%>   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <link rel="stylesheet" type="text/css" href="css/tabela.css" />
  
  <link href="/rodo/webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
 

<title>Wszystkie rekordy</title>
</head>
<body>
		<div id="main">
		
		
		<form method="get" action="/rodo/sign">
		    <button type="submit">Dodaj RODO!</button>
		</form><br>
				
		
				<table id="myTable" class="table table-striped table-responsive-md btn-table">
				<tr>	<th>ID</th>					<th>Pacjent</th>				<th>opcje</th>			</tr>
				
				
		<c:forEach items="${lista}" var="rodo">
				
				
				<tr>	<td>${rodo.id}</td>		<td>${rodo.pacjent}</td>		<td><a href="/rodo/rodo?id=${rodo.id}"  style="text-decoration:none">pokaż</a></td>						</tr>
	
				
		</c:forEach>		
				
				</table>
		
		
		</div>

</body>
<style>
#main {
font-family: Georgia, serif;
font-size: 18px;
letter-spacing: 2.4px;
word-spacing: 2px;
color: #545454;
font-weight: 400;
text-decoration: none;
font-style: normal;
font-variant: small-caps;
text-transform: none;
margin-left: auto;
margin-right: auto;
width: 600px;
text-align: center;
padding:20px;

background: #EFEFEF;
background: -moz-linear-gradient(-45deg, #EFEFEF 0%, #FFFFFF 50%, #D8D8D8 100%);
background: -webkit-linear-gradient(-45deg, #EFEFEF 0%, #FFFFFF 50%, #D8D8D8 100%);
background: linear-gradient(135deg, #EFEFEF 0%, #FFFFFF 50%, #D8D8D8 100%);

-webkit-box-shadow: 0px 10px 13px -7px #000000, 5px 5px 15px 5px rgba(0,0,0,0); 
box-shadow: 0px 10px 13px -7px #000000, 5px 5px 15px 5px rgba(0,0,0,0);

}
</style>
</html>