<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/mes/webjars/bootstrap/4.4.1-1/css/bootstrap.min.css" rel="stylesheet">
<script src="/mes/webjars/bootstrap/4.4.1-1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/main.css" />
<title>Nieprawidłowe dane</title>
</head>
<body>

<div id="main">
<table id="myTable" class="table table-striped table-responsive-md btn-table">
<tr><td>Dane są nieprawidłowe, wprowadż jeszcze raz</td></tr>
<tr>
<td><input type="button" onclick="history.back();" value="Wstecz">
<form action="/mes/show" method="GET">
    <input type="submit" value="MenuGlowne"/>    
</form>
</td>
</tr>
</table>
</div>
</body>
</html>