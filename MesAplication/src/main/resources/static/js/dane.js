  $(document).ready(function(){
	  $('#fragment').on('change', function(){   
		var kod = this.value;
	 $.ajax({
		type:'GET',
		url: 'http://localhost:8080/findrecord?mat=' + kod,	
				success: function(result){
				//var result = JSON.parse(result);//
				var s = '';
				for(var i = 0; i < result.length; i++) {
					s += '<option>' + result[i].material + '</option>';
					
				}
				$('#kod').html(s);
				
				
			}
		
	 })
	})
	
	
		  $('#kod').on('change', function(){   
		var material = this.value;
	 $.ajax({
		type:'GET',
		url: 'http://localhost:8080/findoperation?mat=' + material,	
				success: function(result){
				//var result = JSON.parse(result);//
				var s = '';
				for(var i = 0; i < result.length; i++) {
					s += '<option>' + result[i].operacja + '</option>';
					
				}
				$('#operacja').html(s);
				
				
			}
		
	 })
	})
	
	
	
	
	
	
	
	
  })