  $(document).ready(function(){
	 //var URL = 'http://localhost:8080/'
		 var URL =	 window.location.protocol + "//" + window.location.hostname + (window.location.port ? ':' + window.location.port: '/');
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
				$('#material').html(s);
				$('#operacja').html('<option></option>');
				$('#czas').html('<option></option>');
				$('#norma').html('<option></option>');
				
			}
		
	 })
	})
	

	
	
		  $('#material').on('change', function(){   
		var material = this.value;
	 $.ajax({
		type:'GET',
		url: URL + 'findoperation?mat=' + material,	
				success: function(result){
				//var result = JSON.parse(result);//
				var s = '<option>wybierz operacje</option>';
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
			var mate = material.value;
			var operacja = this.value;
	 $.ajax({
		type:'GET',
		url: URL + 'findtime?mat=' + mate +"&op=" + operacja,
				success: function(result){
				//var result = JSON.parse(result);//
				var s = '';
				for(var i = 0; i < result.length; i++) {
					s += '<option>' + result[i].wartoscstandardowa2 + '</option>';
					
				}
				$('#czas').html(s);
				var n = s.replace(",",".");
				n = n.replace("<option>","");
				n = n.replace("</option>","");
				n = parseFloat(n);
				var w = (60 / n);
				//w = Math.round((w + Number.EPSILON) * 100) / 100
				w = parseInt(w);
				w = '<option>' + w + '</option>'
				$('#norma').html(w);

				
				
			}
		
	 })
	})
	

	

	
	
	
	
  })