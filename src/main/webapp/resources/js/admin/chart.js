function drawDailyChart(srcData) {
		google.charts.load('current', {packages: ['corechart', 'bar']});
		google.charts.setOnLoadCallback(function() {
			
			 var data = new google.visualization.DataTable();
		      data.addColumn('timeofday', 'Time of Day');
		      data.addColumn('number', 'Motivation Level');

		      var chartData = [];
		      for (var i=0; i<=23; i++) {
		    	 chartData.push([
		    		 {v:[i, 0, 0]},
		    	  	srcData["t" + i] 
		    	 ]) 
		      }
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
				        }
				      };

				      var chart = new google.visualization.ColumnChart(
				        document.getElementById('chart_div'));

				      chart.draw(data, options);
		});
	}

