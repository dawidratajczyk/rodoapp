  $(document).ready(function(){
	  
	  	 var labels = []; 
		 var data = [];
		 var ctx = myChart.getContext('2d');
		 ctx.canvas.width = 300;
		 ctx.canvas.height = 50;
		 var table = document.querySelector('myTable')
		 
		$('#myTable > tbody  > tr').each(function(i,el){
			 labels.push($(this).find('td').eq(5).text())
			 data.push($(this).find('td').eq(6).text()/$(this).find('td').eq(4).text())
		 });
		 

		 console.log(labels)
		 console.log(data)
		
	
			 
			  	var config = {
						   type: 'bar',
						   //options: options,						  
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


		 	
		

  
