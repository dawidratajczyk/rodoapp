  $(document).ready(function(){
	 var URL = 'http://localhost:8080/'
	  $('#szukaj').on('click', function(){   
		var kod = fragment.value;
	 $.ajax({
		type:'GET',
		url: URL + 'findrecord?mat=' + kod,
				success: function(result){
				//var result = JSON.parse(result);//
				var s = '<option>wybierz kod</option>';
				for(var i = 0; i < result.length; i++) {
					s += '<option>' + result[i].material + '</option>';
					
				}
				$('#kod').html(s);
				$('#operacja').html('<option></option>');
				$('#czas').html('<option></option>');
				$('#norma').html('<option></option>');
				
			}
		
	 })
	})
	

	
	
		  $('#kod').on('change', function(){   
		var material = this.value;
	 $.ajax({
		type:'GET',
		url: URL + 'findoperation?mat=' + material,	
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
	
	
	//// Po wyborze kodu oraz operacji w polu czas pojawi sie czas.
	// poprawic norme
	  $('#operacja').on('change', function(){   
		var material = kod.value;
		var operacja = this.value;
	 $.ajax({
		type:'GET',
		url: URL + 'findtime?mat=' + material +"&op=" + operacja,
				success: function(result){
				//var result = JSON.parse(result);//
				var s = '';
				for(var i = 0; i < result.length; i++) {
					s += '<option>' + result[i].wartoscstandardowa2 + '</option>';
					
				}
				$('#czas').html(s);
				//var n = 60/(s.replace(",","."));
				var n = parseFloat(s.replace(",","."));
				var w = (n / 60);
				console.log(w);
				$('#norma').html(w);

				
				
			}
		
	 })
	})
	

	

	
	
	
	
  })