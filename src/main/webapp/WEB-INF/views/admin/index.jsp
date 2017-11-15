<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/header.jsp"%>
<html>
<title>행쇼-회원관리</title>
<%@ include file="/WEB-INF/views/admin/common.jsp" %>
<link rel="stylesheet" href="/resources/css/admin/prolist.css">
<link rel="stylesheet" href="/resources/css/admin/index.css">
 <script type="text/javascript" src="/resources/js/admin/index.js"></script>
 <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
</head>
<body>
<%@ include file="/WEB-INF/views/admin/nav.jsp" %>
<%@ include file="/WEB-INF/views/admin/sidenav/index.jsp" %>

	<div id="body-container-body">
		<div class="container">
			<div class="col-sm-12 charts">
                    <h3>판매·판매량 실적</h3>
                    <span class="more"><a class="btn btn-default btn-xs">더보기</a></span>
                    <hr>
                    <div id="chart_div"></div>
                    <span><div id="donutchart"></div></span>
               </div>
			<div class="col-sm-6 middletitle">
				<h3>상품리스트</h3>
				<span class="more"><a class="btn btn-default btn-xs">더보기</a></span>
				<hr>
				<table class="table table-bordered table-hover table-condensed">
					<thead>
						<tr>
							<th>번호</th>
							<th>상품이름</th>
							<th>판매자</th>
							<th>누적판매량</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>001</td>
							<td>[루리]곰팡이방지 단열벽지</td>
							<td>RooRi</td>
							<td>2,014개</td>
						</tr>
						<tr>
							<td>002</td>
							<td>[루리]곰팡이방지 단열벽지</td>
							<td>RooRi</td>
							<td>2,014개</td>
						</tr>
						<tr>
							<td>003</td>
							<td>[루리]곰팡이방지 단열벽지</td>
							<td>RooRi</td>
							<td>2,014개</td>
						</tr>
						<tr>
							<td>004</td>
							<td>[루리]곰팡이방지 단열벽지</td>
							<td>RooRi</td>
							<td>2,014개</td>
						</tr>
					</tbody>
					<tbody></tbody>
				</table>
			</div>
			<div class="col-sm-6 middletitle">
				<h3>회원관리</h3>
				<span class="more"><a class="btn btn-default btn-xs">더보기</a></span>
				<hr>
				<table class="table table-bordered table-hover table-condensed">
					<thead>
						<tr>
							<th>번호</th>
							<th>상품이름</th>
							<th>판매자</th>
							<th>누적판매량</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>001</td>
							<td>[루리]곰팡이방지 단열벽지</td>
							<td>RooRi</td>
							<td>2,014개</td>
						</tr>
						<tr>
							<td>002</td>
							<td>[루리]곰팡이방지 단열벽지</td>
							<td>RooRi</td>
							<td>2,014개</td>
						</tr>
						<tr>
							<td>003</td>
							<td>[루리]곰팡이방지 단열벽지</td>
							<td>RooRi</td>
							<td>2,014개</td>
						</tr>
						<tr>
							<td>004</td>
							<td>[루리]곰팡이방지 단열벽지</td>
							<td>RooRi</td>
							<td>2,014개</td>
						</tr>
					</tbody>
					<tbody></tbody>
				</table>
			</div>
			<div class="col-sm-6 middletitle">
				<h3>문의접수</h3>
				<span class="more"><a class="btn btn-default btn-xs">더보기</a></span>
				<hr>
				<table class="table table-bordered table-hover table-condensed">
					<thead>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>판매자</th>
							<th>누적판매량</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>001</td>
							<td>[루리]곰팡이방지 단열벽지</td>
							<td>RooRi</td>
							<td>2,014개</td>
						</tr>
						<tr>
							<td>002</td>
							<td>[루리]곰팡이방지 단열벽지</td>
							<td>RooRi</td>
							<td>2,014개</td>
						</tr>
						<tr>
							<td>003</td>
							<td>[루리]곰팡이방지 단열벽지</td>
							<td>RooRi</td>
							<td>2,014개</td>
						</tr>
						<tr>
							<td>004</td>
							<td>[루리]곰팡이방지 단열벽지</td>
							<td>RooRi</td>
							<td>2,014개</td>
						</tr>
					</tbody>
					<tbody></tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>