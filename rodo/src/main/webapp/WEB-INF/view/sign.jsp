<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link href="/css/jquery.signaturepad.css" rel="stylesheet">

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

<%-- <script src="/js/numeric-1.2.6.min.js"></script> --%>

<%--<script src="/js/bezier.js"></script> --%>

<script src="/js/jquery.signaturepad.js"></script>

<script src="/js/json2.min.js"></script>


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


	<p>Administratorem Danych jest:</p>
	<form:input path="firma"/>


			<p>Uwagi:</p>	



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
                   <input type="button" value="Anuluj"></td></tr>

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
#rodo {
font-family: Georgia, serif;
font-size: 20px;
letter-spacing: 0.8px;
word-spacing: 1.4px;
color: #545454;
font-weight: normal;
text-decoration: none;
font-style: normal;
font-variant: normal;
text-transform: none;
}

#italicFont {
font-family: Georgia, serif;
font-size: 20px;
letter-spacing: 0.8px;
word-spacing: 2.4px;
color: #545454;
font-weight: normal;
text-decoration: none;
font-style: italic;
font-variant: normal;
text-transform: none;
}

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