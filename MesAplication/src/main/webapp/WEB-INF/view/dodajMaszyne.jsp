<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dodaj nowa maszyne</title>
</head>
<body>
    <div align="center">
        <h2>Dodaj nowa maszyne</h2>
        <form:form action="saveMachine" method="post" modelAttribute="modelmaszyny">
            <table border="0" cellpadding="5">
                <tr>
                    <td>maszyna: </td>
                    <td><form:input path="maszyna" /></td>
                </tr>
                <tr>
                    <td>obszar: </td>
                    <td><form:input path="obszar" /></td>
                </tr>    
                <tr>
                    <td colspan="2"><input type="submit" value="Zapisz"></td>
</tr>                    
            </table>
        </form:form>
    </div>
</body>
</html>