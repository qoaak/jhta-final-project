<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/header.jsp"%>
<html>
<title>행쇼-실적관리</title>
<%@ include file="/WEB-INF/views/admin/common.jsp"%>
<link rel="stylesheet" href="/resources/css/admin/proearning.css">
<script type="text/javascript" src="/resources/js/admin/proearning.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="/resources/js/admin/chart.js"></script>
<script type="text/javascript">
$(function() {
	
	
	// 디폴트 오늘날짜
	var getStringToday = function () {
		var today = new Date();
		var year = today.getFullYear().toString();
		var month = (today.getMonth() + 1).toString();
		var day = today.getDate().toString();
		
		if (month.length == 1) {
			month = '0' + month;	
		}
		if (day.length == 1) {
			day = '0' + day;
		}
		return year + "-" + month + "-" + day;
	}
	$("#date-input").val(getStringToday);
	
	// 날짜 뽑기
	var date = getStringToday();
	
	// 상품 아이디 뽑기
	var itemid = $(".listtable tbody tr:first-child td:nth-child(2) a").attr("id").replace("itemid-", "");
	$(".itemid").click(function () {
		itemid = $(this).attr("id").replace("itemid-", '');
	})

	$("#views").click(function() {
		date = $("#date-input").val();

		$.ajax({
			type:"GET",
			url:"getDaily.do",
			data:{itemId:itemid, selectDate:date},
			dataType:"json",
			success:function(chartData) {
				
				drawDailyChart(chartData);
			}
		})	 
	})

	
})
</script>
</head>
<body>
	<c:set var="menu" value="earning"></c:set>
	<c:set var="sidemenu" value="allearning"></c:set>
	<%@ include file="/WEB-INF/views/admin/nav.jsp"%>
	<%@ include file="/WEB-INF/views/admin/sidenav/earning.jsp"%>

	<div id="body-container-body">
		<ul class="nav nav-tabs">
			<li class="active"><a data-toggle="tab" href="#menu1">일</a></li>
			<li><a data-toggle="tab" href="#menu2">월</a></li>
			<li><a data-toggle="tab" href="#menu3">년</a></li>
		</ul>
		<div class="container">

			<div class="tab-content">
				<div id="menu1" class="tab-pane fade in active">
					<div class="col-sm-offset-1 col-sm-10">
						<div>
							<div id="chart_div"></div>
						</div>
						
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

						<div class="listtable">
							<table class="table table-condensed table-hover">
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
											<td><a href="#" class="itemid" id="itemid-${item.id }"><c:out value="${item.options }"></c:out></a></td>
											<td>${item.product.name }</td>
											<td>${item.product.company.name }</td>
										</tr>
									</c:forEach>

								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div id="menu2" class="tab-pane fade">
					<h3>Menu 1</h3>
					<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco
						laboris nisi ut aliquip ex ea commodo consequat.</p>
				</div>
				<div id="menu3" class="tab-pane fade">
					<h3>Menu 2</h3>
					<p>Sed ut perspiciatis unde omnis iste natus error sit
						voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
				</div>
			</div>
		</div>
	</div>

</body>
</html>