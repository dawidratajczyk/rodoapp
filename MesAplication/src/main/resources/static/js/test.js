  $(document).ready(function(){
	  $('#maszyny').on('change', function(){   
		console.log("dziala");
	 $.ajax({
		type:'GET',
		url: 'http://192.168.0.107:8080/obszary',	 
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