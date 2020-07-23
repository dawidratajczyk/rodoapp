function checkform(){
	/*var kod = document.saverec.kod.text;	
		var operacja = document.saverec.operacja.value;*/
			var count = document.getElementById('quantity').value;
			var mat = document.getElementById('material').value;
			var opera = document.getElementById('operacja').value;
				
	if (count == 0 || count == null ||
			mat == 0 || mat == null ||
			opera == 0 || opera == null
	
	){
		alert("WWybierz kod z listy, jeśli lista jest pusta to prawdopodobnie wpisany fragment kodu nie pasuje do żadnego wyniku")
		return false;
}	else {
	document.getElementById("saverec").submit();
		}
}