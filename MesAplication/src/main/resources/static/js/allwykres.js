  $(document).ready(function(){
	  
	  	 var labels = []; 
		 var data = [];
		 var ctx = myChart.getContext('2d');
		 ctx.canvas.width = 300;
		 ctx.canvas.height = 50;
		 var URL =	 window.location.protocol + "//" + window.location.hostname + (window.location.port ? ':' + window.location.port: '')+ '/';
		 var JsonData = $.ajax({
			 type: 'GET',
			 datatype: 'json',
			 url: URL + "test2",

		 }).done(function(results){
			
			 	results.forEach(function(e) {
			      labels.push(e.material);
			      data.push(parseInt(e.opis)/parseInt(e.norma)*100);
			      
			      var options = {				
					      tooltips: {enabled: false},
					      hover: {mode: null},
					      showTooltips: false,
								 };
			 
			  	var config = {
						   type: 'bar',
						   options: options,
			  			   data: {
						   labels: labels,
						   datasets: [{
						         label: 'Wykres ilości',
						         data: data,
						         backgroundColor: 'rgba(0, 119, 204, 0.3)'
						      }]
						   }
			  			
						
			  	  
						  
						};
			 
			  	 if(window.bar != undefined)
			  	    window.bar.destroy();
			  	 window.bar =  new Chart(ctx, config);
			  	 
			 
				
		
			 
		 })
		 })

		 	
		

  
  })