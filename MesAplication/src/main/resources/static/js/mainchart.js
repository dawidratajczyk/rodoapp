  $(document).ready(function(){
	  
	  	 var labels = []; 
		 var data = [];
		 var backgroundColor = [];
		 var ctx = myChart.getContext('2d');
		 /*ctx.canvas.width = 150;
		 ctx.canvas.height = 50;*/
		 var table = document.querySelector('myTable')
		 
		$('#myTable > tbody  > tr').each(function(i,el){
			 labels.push($(this).find('td').eq(5).text())
			 data.push($(this).find('td').eq(6).text()/$(this).find('td').eq(4).text())
			 backgroundColor.push('rgba(160, '+ Math.random()*255 +','+ Math.random()*255 +', 0.8)')
		 });
		 

		 console.log(labels)
		 console.log(data)
		 console.log(backgroundColor)
		

			 
			  	var config = {
						   type: 'bar',					  
			  			   data: {
						   labels: labels,
							 options: {
								    responsive: true, 
								    maintainAspectRatio: false,
							        legend: {
							            display: true,
							            labels: {
							                fontColor: 'rgb(255, 99, 132)',
							                	fontSize : 14
							            }
							        }
								},
						   datasets: [{
						         label: 'Wykres wydajności maszyny',
						         data: data,
						         backgroundColor: backgroundColor
						      }]
						   }
			  			
						
			  	  
						  
						};
			 
			  	 if(window.bar != undefined)
			  	    window.bar.destroy();
			  	 window.bar =  new Chart(ctx, config);
			  	 
			 
				
		
			 
		 })


		 	
		

  
