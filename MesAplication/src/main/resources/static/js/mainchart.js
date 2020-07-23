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
						   						
						   datasets: [{
						         label: 'Wykres wydajności maszyny',
						         data: data,
						         backgroundColor: backgroundColor
						      }]
						   },
						   options: {
							   title: {
						            display: true,
						            fontSize:25,
						            text: 'Wykres wydajności',
						            
						        },
							   legend: {
						            display: false,
						        },
						        tooltips: { 
						        	enabled: false,
						        	bodyFontSize: 20 
						        	},
						        plugins: {
						            datalabels: {
						            	 formatter: function(value, context) {
						            		 return  Math.round(value*100) + '%';
						            		 /*return context.chart.data.labels + ' : ' + Math.round(value*100) + '%';*/
						            	 },
						            	clamp:true,
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
						        },
						        legend: {
						            display: false
						        },
						        scales: {
						            xAxes: [{
						                ticks: {
						                    fontSize: 25
						                }
						            }],
						            yAxes: [{
						                ticks: {
						                    display: false
						                    
						                }
						            }]
						        }
						    }
			  			
						
			  	  
						  
						};
			 
			  	 if(window.bar != undefined)
			  	    window.bar.destroy();
			  	 window.bar =  new Chart(ctx, config);
			  	 
			 
				
		
			 
		 })


		 	
		

  
