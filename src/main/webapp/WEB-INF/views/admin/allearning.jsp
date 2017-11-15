<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/header.jsp"%>
<html>
<title>행쇼-실적관리</title>
<%@ include file="/WEB-INF/views/admin/common.jsp"%>
<link rel="stylesheet" href="/resources/css/admin/allearning.css">
<script type="text/javascript" src="/resources/js/admin/allearning.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
</head>
<body>
	<c:set var="menu" value="earning"></c:set>
	<c:set var="sidemenu" value="allearning"></c:set>
	<%@ include file="/WEB-INF/views/admin/nav.jsp"%>
	<%@ include file="/WEB-INF/views/admin/sidenav/earning.jsp"%>

	<div id="body-container-body">
		<ul class="nav nav-tabs">
			<li class="active"><a data-toggle="tab" href="#menu1">일</a></li>
			<li><a data-toggle="tab" href="#menu2">주</a></li>
			<li><a data-toggle="tab" href="#menu3">월</a></li>
			<li><a data-toggle="tab" href="#menu4">년</a></li>
		</ul>
		<div class="container">

			<div class="tab-content">
				<div id="menu1" class="tab-pane fade in active">
					<div class="col-sm-offset-1 col-sm-10">
						<div>
							<div id="chart_div"></div>
						</div>
						<div class="searchform">
							<form class="form-inline" action="allearning.do">
								<div class="form-group">
									<input type="date" class="form-control input-sm" name="beginday"/> <span>~</span> 
									<input type="date" class="form-control input-sm" name="endday"/>
								</div>
								<div class="form-group pull-right">
									<select class="form-control input-sm" name="opt">
										<option value="title" ${param.opt eq 'title' ? 'selected' : '' }>상품명</option>
										<option value="seller" ${param.opt eq 'seller' ? 'selected' : '' }>판매자</option>
									</select>
									<input type="text" class="form-control input-sm" name="keyword" value="${param.keyword }" />
									<button type="submit" class="btn btn-info btn-sm" id="search-btn">조회</button>
								</div>
							</form>
						</div>

						<div class="listtable">
							<table class="table table-condensed table-hover">
								<thead>
									<tr>
										<th>상품번호</th>
										<th>상품제목</th>
										<th>판매자</th>
										<th>카테고리</th>
									</tr>
								</thead>
								<tbody>
									<c:if test="${empty products }">
										<tr>
											<td colspan="5">검색 결과과 없습니다.</td>
										</tr>
									</c:if>
									<c:forEach var="product" items="${products }">
										<tr>
											<td>${product.id }</td>
											<td><c:out value="${product.name }"></c:out></td>
											<td>${product.company.name }</td>
											<td>${product.smallCategory.name }</td>
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
				<div id="menu4" class="tab-pane fade">
					<h3>Menu 3</h3>
					<p>Eaque ipsa quae ab illo inventore veritatis et quasi
						architecto beatae vitae dicta sunt explicabo.</p>
				</div>
			</div>
		</div>


	</div>

</body>
</html>