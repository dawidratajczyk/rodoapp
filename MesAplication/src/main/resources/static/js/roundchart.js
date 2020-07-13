  $(document).ready(function(){
	  
	  	 var labels1 = []; 
		 var data1 = [];
		 var backgroundColor1 = [];
		 var ctx1 = roundChart.getContext('2d');
		 /*ctx1.canvas.width = 150;
		 ctx1.canvas.height = 50;*/
		 var table = document.querySelector('myTable')
		 
		$('#myTable > tbody  > tr').each(function(i,el){
			 labels1.push($(this).find('td').eq(5).text())
			 data1.push($(this).find('td').eq(6).text())
			 backgroundColor1.push('rgba(120, '+ Math.random()*255 +','+ Math.random()*255 +', 0.8)')
		 });
		 

		 console.log(labels1)
		 console.log(data1)
		
		
			 
			  	var config1 = {
						   type: 'pie',					  
			  			   data: {
						   labels: labels1,
						   options: {
							   		maintainAspectRatio: false,
								    legend: {
								    	display: true,
								    	labels:{
								    		fontsize: 20
										    	}
								    },
								    
									title: {
									    	display: true,
									    	text:{
									    		fontsize: 20
									    	},
									    	
							        scales: {
							            xAxes: [{
							                    ticks: {
							                     fontSize: 10
							                    }
							                   }]
							                 }
								    	
								    }
					
								},
								
						
							  
						   datasets: [{
						         label: 'Wykres ilości',
						         data: data1,
						         backgroundColor: backgroundColor1
						      }]
						   }
			  			
						
			  	  
						  
						};
			 
			  	 if(window.bar1 != undefined)
			  	    window.bar1.destroy();
			  	 window.bar1 =  new Chart(ctx1, config1);
			  	 
			 
				
		
			 
		 })


		 	
		

  
