  $(document).ready(function(){
	  $('#maszyny').on('change', function(){   
		document.body.style.backgroundColor = "red";
		console.log("dziala");
	 $.ajax({
		type:'GET',
		URL: 'http://localhost:8080/obszary'
		success: function(result){
			var result = Json.parse(result);
			var s = '';
			for(var i = 0; i < result.length; i++) {
				s += '<option value="' + result[i].id + '">' + result[i].name + '</option>';
			}
			$('#case').html(s);
			
			
		}
		 
		 
		 
		 
	 }) 
	}
  }