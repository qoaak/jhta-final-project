<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/header.jsp"%>
<html>
<title>행쇼-상품관리</title>
<%@ include file="/WEB-INF/views/admin/common.jsp"%>
<link rel="stylesheet" href="/resources/css/admin/prolist.css">
</head>
<body>
<c:set var="menu" value="product"></c:set>
<c:set var="sidemenu" value="prolist"></c:set>
<%@ include file="/WEB-INF/views/admin/nav.jsp"%>
<%@ include file="/WEB-INF/views/admin/sidenav/product.jsp"%>

	<div id="body-container-body">
		<div class="container">
			<div class="col-sm-offset-1 col-sm-10">
				<h3>상품 리스트</h3>
				<hr />
				<div class="searchform text-right">
					<form class="form-inline">
						<div class="form-group">
							<input type="date" class="form-control input-sm" name="begindate" />
							<span>~</span> <input type="date" class="form-control input-sm"
								name="enddate" />
						</div>
						<div class="form-group">
							<select class="form-control input-sm">
								<option>전체</option>
								<option>제목</option>
								<option>판매자</option>
							</select> <input type="text" class="form-control input-sm" name="keyword" />
							<button class="btn btn-info btn-sm">조회</button>
						</div>
					</form>
				</div>
				<div class="listtable">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>상품번호</th>
								<th>제목</th>
								<th>판매자</th>
								<th>날짜</th>
								<th>카테고리</th>
							</tr>
						</thead>
						<tbody>
							<c:if test="${empty products }">
								<tr>
									<td colspan="5" class="text-center">검색된 결과가 없습니다.</td>
								</tr>
							</c:if>
							<c:forEach var="product" items="${products }">
								<tr>
									<td>${product.id }</td>
									<td><a href="detail.do/id=${product.id }"><c:out value="${product.name }"></c:out> </a></td>
									<td><a href="">${product.company.name }</a></td>
									<td><fmt:formatDate value="${product.createDate }" pattern="yyyy-MM-dd"/></td>
									<td>${product.smallCategory.midCategory.bigCategory.name } &gt; 
											${product.smallCategory.midCategory.name } &gt; 
											${product.smallCategory.name }</td>
								</tr>
							</c:forEach>
							
							<!-- 
							<tr>
								<td>001</td>
								<td><a href="">[나이키]신상 에어맥스 97 슈즈 15종 득템찬스!</a></td>
								<td>쓱가</td>
								<td>2017-05-12</td>
								<td>하의</td>
							</tr>
							 -->
							
						</tbody>
					</table>
				</div>
				<div class="text-center">
					<ul class="pagination">
						<li><a href="#">&lt;</a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">&gt;</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

</body>
</html>