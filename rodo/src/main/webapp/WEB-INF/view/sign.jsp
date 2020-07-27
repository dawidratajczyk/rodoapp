<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Złóż podpis</title>


<link href="/css/jquery.signaturepad.css" rel="stylesheet">

<link rel="stylesheet" type="text/css" href="css/form.css" />

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

<script src="/js/jquery.signaturepad.js"></script>

<script src="/js/json2.min.js"></script>



</head>
<body>
<form:form action="saveRodo" method="post" modelAttribute="rodo">
<div id="main">
<div align="center" id="italicFont">
<button onclick="window.location.href='/list'">Pokaż Listę RODO</button>    


<h2>Przykładowa zgoda na RODO</h2>

</div>
<p>${context }</p> <br>
<div align="center" id="rodo">
	<p>Ja, niżej podpisana/ny</p>
	<form:input path="pacjent" value="Jan Kowalski" id="rodoinput"/>
	<h2>Administratorem Danych jest:</h2>
	<form:input path="firma" value="Przychodnia Stomatologiczna Zdrowy Ząbek"  id="rodoinput"/>
	<h2>Uwagi:</h2>	
	<form:input path="uwaga" value="brak"  id="rodoinput"/> 
</div>



		<div class="sigPad" id="smoothed" style="width:404px;">
			<br><br><ul class="sigNav">			
			<li class="drawIt"><a href="#draw-it" >Obszar podpisu</a></li>			
			<li class="clearButton"><a href="#clear">Wyczyść</a></li>			
			</ul>			
			<div class="sig sigWrapper" style="height:auto;">			
			<div class="typed"></div>			
			<canvas class="pad" width="400" height="250"></canvas>			
			<form:input type="hidden" name="output" class="output" path="podpis"/>			
			</div>		
		</div>
		
<table>

				<tr><td colspan="2">
				
				<input type="submit" value="Zapisz">
                
                </td></tr>

</table>
</div>

</form:form>



</body>

<script>
	$(document).ready(function() {
	
	  $('#smoothed').signaturePad({
	
	    drawOnly:true,
	
	    drawBezierCurves:true,
	
	    lineTop:200,
	    
	    validateFields: true,
	    
	    errorMessageDraw: false
	
	  });
	
	});

</script>

<style>


</style>

</html>