$(function() {


google.charts.load('current', {packages: ['corechart', 'bar']});
google.charts.setOnLoadCallback(drawBasic);

function drawBasic() {

      var data = new google.visualization.DataTable();
      data.addColumn('timeofday', 'Time of Day');
      data.addColumn('number', 'Motivation Level');

      data.addRows([
        [{v: [8, 0, 0], f: '8 am'}, 11000],
        [{v: [9, 0, 0], f: '9 am'}, 2],
        [{v: [10, 0, 0], f:'10 am'}, 3],
        [{v: [11, 0, 0], f: '11 am'}, 4],
        [{v: [12, 0, 0], f: '12 pm'}, 5],
        [{v: [13, 0, 0], f: '1 pm'}, 6],
        [{v: [14, 0, 0], f: '2 pm'}, 7],
        [{v: [15, 0, 0], f: '3 pm'}, 8],
        [{v: [16, 0, 0], f: '4 pm'}, 9],
        [{v: [17, 0, 0], f: '4 pm'}, 10000],
        [{v: [18, 0, 0], f: '4 pm'}, 10000],
        [{v: [19, 0, 0], f: '4 pm'}, 10000],
        [{v: [20, 0, 0], f: '4 pm'}, 10000],
        [{v: [21, 0, 0], f: '4 pm'}, 10000],
        [{v: [22, 0, 0], f: '4 pm'}, 10000],
        [{v: [24, 0, 0]}, 10000],
      ]);

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
    }

})
