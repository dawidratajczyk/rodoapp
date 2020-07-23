  $(document).ready(function(){
	  
	  	 var labels1 = []; 
		 var data1 = [];
		 var backgroundColor1 = [];
		 var ctx1 = roundChart.getContext('2d');
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
						   datasets: [{
						         label: 'Wykres ilości',
						         data: data1,
						         backgroundColor: backgroundColor1
						      }]
						   },
						   options: {
								   title: {
							            display: true,
							            fontSize:25,
							            text: 'Wykres ilości',
							            
							        },
							      legend: {
							           display: true,
							            labels: {
							                fontSize: 25,
							            }
							        },
							        tooltips: { 
							        	enabled: false,
							        	bodyFontSize: 20 
							        	},
						        plugins: {
						            datalabels: {				            
						                color: 'white',
						                labels: {
						                    title: {
						                        font: {
						                            weight:'bold',
						                            size: 25
						                        }
						                    },
						                    value: {
						                    	display: false
						                    	
						                    }
						                }
						            }
						        }
						    }
			  			};
			 
			  	 if(window.bar1 != undefined)
			  	    window.bar1.destroy();
			  	 window.bar1 =  new Chart(ctx1, config1);
			  	 
			 
				
		
			 
		 })


		 	
		

  
