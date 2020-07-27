<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Podgląd RODO</title>



<link href="/css/jquery.signaturepad.css" rel="stylesheet">

<link rel="stylesheet" type="text/css" href="css/form.css" />

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

<script src="/js/jquery.signaturepad.js"></script>


<script src="/js/json2.min.js"></script>



</head>
<body>

			
<div id="main">
<div align="center" id="italicFont">
	
<h2>Przykładowa zgoda na RODO</h2>

</div>
<p>${context }</p> <br>
<div align="center" id="rodo">
	<h2>Ja, niżej podpisana/ny</h2>
	<h3>${rodo.pacjent }</h3>
	<h2>Administratorem Danych jest:</h2>
	<h3>${rodo.firma }</h3>
	<h2>Uwagi:</h2>	
	<h3>${rodo.pacjent }</h3>
</div>
			
			
			
					<div class="sigPad" id="smoothed" style="width:404px;">
					<br><br>					
					<div class="sig sigWrapper" style="height:auto;">					
					<div class="typed"></div>					
					<canvas class="pad" width="400" height="250"></canvas>					
					<input type="hidden" name="output" class="output">					
					</div>					
					</div>
					
			<table>
			
								<tr>
			                   <td><button onclick="window.location.href='/list'">Wróć do listy</button>    </td>
			                   </tr>
			
			</table>
			</div>

</body>

<script>
	$(document).ready(function() {
	
	  $('#smoothed').signaturePad({
	
	    drawOnly:false,
	
	    drawBezierCurves:false,
	    
	    displayOnly :true,
	    
	    penWidth : 1,
	    
		penColour :'#12312',
		
		


	
	    lineTop:200
	    
	    
	    
	  })
	
	});
	

    $(document).ready(function() {
      $('.sigPad').signaturePad({displayOnly:true}). regenerate(${ rodo.podpis});
    });
  


</script>

<style>

</style>

</html>