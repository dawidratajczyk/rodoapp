<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false"%>   
      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" type="text/css" href="css/tabela.css" />
<title>Dodaj nowy rekord</title>

</head>
<body>
    <div align="center">
        <h2>Nowy wpis</h2>
        <form:form action="save" method="post" modelAttribute="marszruta">
            <table border="0" cellpadding="5" class="blueTable">
                <tr>
                    <td>maszyna: </td>
	                    <td>
	                    <form:select id ="maszynynbox" path="maszyna">
			                    <c:forEach items="${listofMachine}" var = "maszyny">
			                    			<form:option value="${maszyny.maszyna}" />
			                    </c:forEach>
	                    </form:select>	                    
	                    	
	                    </td>
                </tr>

                <tr>
                    <td>operacja: </td>
                    <td><form:input path="operacja" /></td>
                </tr>
                <tr>
                    <td>czas: </td>
                    <td><form:input path="czas" /></td>
                </tr>
                 <tr>
                    <td>material: </td>
                    <td><form:input path="material" /></td>
                </tr>  
                 <tr>
                    <td>opis: </td>
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