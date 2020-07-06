<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="/mes/webjars/bootstrap/4.4.1-1/js/bootstrap.min.js"></script>
<title>Nieprawidłowe dane</title>
</head>
<body>


<table class="table table-striped table-responsive-md btn-table">
<tr><td>Dane są nieprawidłowe, wprowadż jeszcze raz</td></tr>
<tr>
<td><input type="button" onclick="history.back();" value="Wstecz"></td>
<td><form action="/mes/show" method="GET">
    <input type="submit" value="MenuGlowne"/>    
</form>
</td>
</tr>
</table>
</body>
</html>