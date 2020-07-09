  $(document).ready(function(){
	  
	  	 var labels1 = []; 
		 var data1 = [];
		 var ctx1 = roundChart.getContext('2d');
		 /*ctx1.canvas.width = 150;
		 ctx1.canvas.height = 50;*/
		 var table = document.querySelector('myTable')
		 
		$('#myTable > tbody  > tr').each(function(i,el){
			 labels1.push($(this).find('td').eq(5).text())
			 data1.push($(this).find('td').eq(6).text())
		 });
		 

		 console.log(labels1)
		 console.log(data1)
		
		
			 
			  	var config1 = {
						   type: 'pie',					  
			  			   data: {
						   labels: labels1,
							 options: {
								    responsive: true, 
								    maintainAspectRatio: false
								},
						   datasets: [{
						         label: 'Wykres ilości',
						         data: data1,
						         backgroundColor: 'rgba(180,240,100,0.5)'
						      }]
						   }
			  			
						
			  	  
						  
						};
			 
			  	 if(window.bar1 != undefined)
			  	    window.bar1.destroy();
			  	 window.bar1 =  new Chart(ctx1, config1);
			  	 
			 
				
		
			 
		 })


		 	
		

  
