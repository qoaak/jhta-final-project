function drawDailyChart(srcData) {
		google.charts.load('current', {packages: ['corechart', 'bar']});
		google.charts.setOnLoadCallback(function() {
			
			 var data = new google.visualization.DataTable();
		      data.addColumn('timeofday', 'Time of Day');
		      data.addColumn('number', 'Motivation Level');
		      		      
		      var chartData = [];
		      for (var i=0; i<srcData.length; i++ ) {
		    	  chartData.push([ 
		    		{v:[i, 0, 0], f:srcData[i].qty+"개"},
		    			srcData[i].profit
		    	  ])
		      }
		      
		      /*
		      for (var i=0; i<=23; i++) {
		    	 chartData.push([
		    		 {v:[i, 0, 0]},
		    	  	srcData["t" + i] 
		    	 ]) 
		      }*/
		      
		      data.addRows(chartData);
		    
		      var options = {
				        title: 'Motivation Level Throughout the Day',
				        hAxis: {
				          title: 'Time of Day',
				          format: 'h:mm a',
				          viewWindow: {
				            min: [00, 00, 0],
				            max: [24, 00, 0]
				          }
				        },
				        vAxis: {
				          title: 'Rating (scale of 1-10000)',
				        viewWindow: {
				                  min: [0.0],
				                  max: [100000]
				                }	  
				        },
				        width:980,
				        height:500
				      };

				      var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));

				      chart.draw(data, options);
		});
	}


function drawMonthChart(srcData, yyyy, mm) {
	google.charts.load('current', {packages: ['corechart', 'line']});
	google.charts.setOnLoadCallback(function() {
	var data = new google.visualization.DataTable();
	      data.addColumn('date', 'Time of Day');
	      data.addColumn('number', 'profit');
	      console.log(yyyy);
	      var chartData = [];
	      for (var i=0; i<srcData.length; i++ ) {
	    	  chartData.push([ 
	    		  new Date(yyyy, mm, i),
	    		  srcData[i].profit
	    	  ])
	      }
	      
	      data.addRows(chartData);
	      
	      var options = {
	        hAxis: {
	          format: 'MM/dd',
	          gridlines: {count: 15}
	        },
	        vAxis: {
	                    title: 'profit',
	                    viewWindow: {
	                      min: [0.0],
	                      max: [100000]
	                    },
	                format: 'short'
	            },
		 width:980,
		 height:500
	      };
	  
	         
	      var chart = new google.visualization.LineChart(document.getElementById('line_chart_div'));
	      chart.draw(data, options);
	});
}

