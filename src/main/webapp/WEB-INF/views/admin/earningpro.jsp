<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/header.jsp"%>
<html>
<title>행쇼-실적관리</title>
<%@ include file="/WEB-INF/views/admin/common.jsp"%>
<link rel="stylesheet" href="/resources/css/admin/earningpro.css">
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="/resources/js/admin/chart.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/moment@2.19.2/moment.min.js"></script>
<script type="text/javascript">
$(function() {
	
	// 오늘날짜 뽑기
	var date = moment().format("YYYY-MM-DD");
	var month = moment().format("YYYY-MM");
	var year = moment().format("YYYY");
	// 디폴트 오늘날짜
	$("#date-input").val(date);
	$("#month-input").val(month);
	
	// 디폴트 상품리스트 맨 첫 행 아이템 아이디 뽑기
	var firsttr = $(".listtable tbody tr:first-child td:nth-child(2) a");
	var itemid = firsttr.attr("id").replace("itemid-", "");

	getAjaxDaily();
	getAjaxMonth();
	
	$("#a-date-left, #a-date-right").click(function() {
		var name = $(this).attr("id").replace("a-date-", "");
		
		if (name == 'left') {
			date = moment($("#date-input").val(), 'YYYY-MM-DD').add(-1, 'days').format("YYYY-MM-DD");
			$("#date-input").val(date);
			getAjaxDaily();
		} else {
			date = moment($("#date-input").val(), 'YYYY-MM-DD').add(+1, 'days').format("YYYY-MM-DD");
			$("#date-input").val(date);
			getAjaxDaily();
		}
	})
	
	$("#a-month-left, #a-month-right").click(function() {
		var name = $(this).attr("id").replace("a-month-", "");
		
		if (name == 'left') {
			month = moment($("#month-input").val(), 'YYYY-MM').add(-1, 'month').format("YYYY-MM");
			$("#month-input").val(month);
			getAjaxMonth();
		} else {
			month = moment($("#month-input").val(), 'YYYY-MM').add(+1, 'month').format("YYYY-MM");
			$("#month-input").val(month);
			getAjaxMonth();
		}
	})
	
	$(document).on("change", "#date-input", function () {
		date = $(this).val();
		getAjaxDaily();
	});
	
	$(document).on("change", "#month-input", function () {
		month = $(this).val();
		getAjaxMonth();
	});


	$(".listtable tbody tr").click(function() {
		var tr = $(this);
		tr.addClass("trbg").siblings().removeClass("trbg");
		itemid = tr.find("a").attr("id").replace("itemid-", "");
		console.log(itemid);
		date = $("#date-input").val();
		month = $("#month-input").val();
		
		getAjaxDaily();
		getAjaxMonth();
	})
	
	// daliyAjax
	function getAjaxDaily() {
		$.ajax({
			type:"GET",
			url:"getprodaily.do",
			data:{itemId:itemid, selectDate:date},
			dataType:"json",
			success:function(chartData) {
				drawDailyChart(chartData);
			}
		})	 
	}
	
	function getAjaxMonth() {
		$.ajax({
			type:"GET",
			url:"getpromonth.do",
			data:{itemId:itemid, selectDate:month},
			dataType:"json",
			success:function(chartData) {
				var yyyy = month.substring(0,4);
				var mm = (month.substring(5,7)) - 1;		
				drawMonthChart(chartData, yyyy, mm);
			}
		})	 
	}
})
</script>
<script type="text/javascript">
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
      var chartData = [];
      for (var i=0; i<srcData.length; i++ ) {
    	  chartData.push([ 
    		 {v: new Date(yyyy, mm, i + 1), f:yyyy+'/'+(mm + 1)+'/'+ (i+1)},
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


</script>
</head>
<body>
	<c:set var="menu" value="earning"></c:set>
	<c:set var="sidemenu" value="product"></c:set>
	<%@ include file="/WEB-INF/views/admin/nav.jsp"%>
	<%@ include file="/WEB-INF/views/admin/sidenav/earning.jsp"%>

	<div id="body-container-body">
		<ul class="nav nav-tabs">
			<li class="active"><a data-toggle="tab" href="#menu1">일</a></li>
			<li><a data-toggle="tab" href="#menu2">월</a></li>
			<li><a data-toggle="tab" href="#menu3">년</a></li>
		</ul>
		<div class="container main-div">

			<div class="tab-content">
				<div id="menu1" class="tab-pane fade in active">
					<div class="col-sm-offset-1 col-sm-10">

						<div class="col-sm-6 col-sm-offset-4 inputdate form-inline">
							<a href="#" id="a-date-left" class="form-group">◀</a> 
							<input class="form-group form-control form-con" id="date-input" type="date" /> 
							<a href="#" id="a-date-right" class="form-group">▶</a>
						</div>

						<div class="chartdiv row">
							<div id="chart_div"></div>
						</div>
						
						
					</div>
				</div>
				<div id="menu2" class="tab-pane fade">
					<div class="col-sm-offset-1 col-sm-10">
						<div class="col-sm-6 col-sm-offset-4 inputdate form-inline">
							<a href="#" id="a-month-left" class="form-group">◀</a> 
							<input class="form-group form-control form-con" id="month-input" type="month" /> 
							<a href="#" id="a-month-right" class="form-group">▶</a>
						</div>

						<div class="chartdiv row">
							<div id="line_chart_div"></div>
						</div>
						
					</div>
				</div>
				<div id="menu3" class="tab-pane fade">
					<div class="col-sm-offset-1 col-sm-10">
					</div>
				</div>
			</div>
			<div class="searchform">
							<form class="form-inline">
								<div class="form-group">
									<input type="date" class="form-control input-sm" name="begindate" /> 
									<span>~</span> <input type="date" class="form-control input-sm" name="enddate" />
								</div>
								<div class="form-group pull-right">
									<select class="form-control input-sm" name="opt">
										<option value="title"
											${param.opt eq 'title' ? 'selected' : '' }>상품명</option>
										<option value="seller"
											${param.opt eq 'seller' ? 'selected' : '' }>판매자</option>
									</select> <input type="text" class="form-control input-sm"
										name="keyword" />
									<button class="btn btn-info btn-sm">검색</button>
								</div>
							</form>
						</div>

						<!--   
						<div class="searchform">
							<form class="form-inline" action="proearning.do">
								<div class="form-group">
									<select class="form-control input-sm" name="opt">
										<option value="title" ${param.opt eq 'title' ? 'selected' : '' }>상품명</option>
										<option value="seller" ${param.opt eq 'seller' ? 'selected' : '' }>판매자</option>
									</select>
									<input type="text" class="form-control input-sm" name="keyword" value="${param.keyword }" />
									<button type="submit" class="btn btn-default btn-sm" id="search-btn">찾기</button>
								</div>
								<div class="form-group pull-right">
									<input type="date" id="date-input" class="form-control input-sm" />
									<a class="btn btn-info btn-sm" id="views">조회</a>
								</div>
	
							</form>
						</div>
 -->
						<div class="listtable">
							<table class="table table-condensed">
								<thead>
									<tr>
										<th>상품번호</th>
										<th>상품옵션</th>
										<th>상품명</th>
										<th>판매자</th>
									</tr>
								</thead>
								<tbody>
									<c:if test="${empty items }">
										<tr>
											<td colspan="5">검색 결과과 없습니다.</td>
										</tr>
									</c:if>
									<c:forEach var="item" items="${items }">
										<tr>
											<td>${item.id }</td>
											<td><a class="itemid" id="itemid-${item.id }"><c:out value="${item.options }"></c:out></a></td>
											<td>${item.product.name }</td>
											<td>${item.product.company.name }</td>
										</tr>
									</c:forEach>

								</tbody>
							</table>
						</div>
		</div>
	</div>

</body>
</html>