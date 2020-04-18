  $(document).ready(function(){
	  $('#maszyny').on('change', function(){   
		console.log("dziala");
	 $.ajax({
		type:'GET',
		url: 'http://localhost:8080/obszary',	 
				success: function(result){
				var result = JSON.parse(result);
				var s = '';
				for(var i = 0; i < result.length; i++) {
					s += '<option>' + result[i].obszar + '</option>';
					
				}
				$('#case').html(s);
				
				
			}
		
	 })
	})
  })