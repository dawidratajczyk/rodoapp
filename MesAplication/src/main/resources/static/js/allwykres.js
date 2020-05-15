  $(document).ready(function(){
	  
	  	 var labels = []; 
		 var data = [];
		 var ctx = myChart.getContext('2d');
		 var URL =	 window.location.protocol + "//" + window.location.hostname + (window.location.port ? ':' + window.location.port: '')+ '/';
		 var JsonData = $.ajax({
			 type: 'GET',
			 datatype: 'json',
			 url: URL + "test2",

		 }).done(function(results){
			
			 results.forEach(function(e) {
			      labels.push(e.material);
			      data.push(parseInt(e.opis));
			 
			 
			 
		 })
		 })

		 	console.log(labels);
			var config = {
					   type: 'bar',
					   data: {
					      labels: labels,
					      datasets: [{
					         label: 'Graph Line',
					         data: data,
					         backgroundColor: 'rgba(0, 119, 204, 0.3)'
					      }]
					   }
					};
				
			var chart = new Chart(ctx, config);
					 //koniec myChart

  
  })