<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Złóż podpis</title>


<link href="/rodo/css/jquery.signaturepad.css" rel="stylesheet">

<link rel="stylesheet" type="text/css" href="css/form.css" />

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

<script src="/rodo/js/jquery.signaturepad.js"></script>

<script src="/rodo/js/json2.min.js"></script>



</head>
<body>
<form:form action="saveRodo" method="post" modelAttribute="rodo">
<div id="main">
<div align="center" id="italicFont">
	
					<h2>Zgoda na przetwarzanie danych osobowych</h2>
</div>
		<div align="center" id="rodo">
						<p>Ja, niżej podpisana/ny</p>

	<form:input path="pacjent"/>
						<p>
						Wyrażam zgodę na przetwarzanie moich danych osobowych w podanym niżej zakresie:</p>
			
						<p> 
						Twoje dane osobowe są przetwarzane do celów:
						- profilaktyki zdrowotnej (podstawa z art. 9 ust. 2 lit. h RODO* w związku z art.3 ust.
						2 ustawy o działalności leczniczej oraz art. 24 ustawy o prawach pacjenta i
						Rzeczniku Praw Pacjenta),
						- diagnozy medycznej i leczenia (podstawa z art. 9 ust. 2 lit. h RODO*
						 w związku z
						art. 3 ust. 1 ustawy o działalności leczniczej oraz art. 24 ustawy o prawach pacjenta
						i Rzeczniku Praw Pacjenta),
						- zapewnienia opieki zdrowotnej oraz zarządzania systemami i usługami opieki
						zdrowotnej (podstawa z art. 9 ust. 2 lit h RODO*
						 w związku z art. 3 ust. 1 ustawy o
						działalności leczniczej art. 24 ustawy o prawach pacjenta i Rzeczniku Praw
						Pacjenta). 
						</p>


						<h2>Administratorem Danych jest:</h2>
	<form:input path="firma"/>


						<h2>Uwagi:</h2>	



	<form:input path="uwaga"/> 

						<p>[cel	przetwarzania	danych	(np.
						
						otrzymywanie newslettera z informacjami marketingowymi, przesyłania ofert marketingowych)].</p>
						
						<p>Informujemy, że Państwa zgoda może zostać cofnięta w dowolnym momencie przez wysłanie wiadomości e-mail na adres naszej firmy spod adresu, którego zgoda dotyczy.</p>
</div>



		<div class="sigPad" id="smoothed" style="width:404px;">
			<br><br>
			
			<ul class="sigNav">
			
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

				<tr><td colspan="2"><input type="submit" value="Zapisz">
                <input type="button" value="Anuluj" onclick="history.back();"></td></tr>

</table>
</div>
</form:form>
</body>

<script>
	$(document).ready(function() {
	
	  $('#smoothed').signaturePad({
	
	    drawOnly:true,
	
	    drawBezierCurves:true,
	
	    lineTop:200
	
	  });
	
	});

</script>

<style>


</style>

</html>