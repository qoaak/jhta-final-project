<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/admin/header.jsp"%>
<html>
<title>행쇼-상품관리</title>
<%@ include file="/WEB-INF/views/admin/common.jsp"%>
<link rel="stylesheet" href="/resources/css/admin/prolist.css">
</head>
<body>
<c:set var="menu" value="qna"></c:set>
<c:set var="sidemenu" value="qna"></c:set>
<%@ include file="/WEB-INF/views/admin/nav.jsp"%>
<%@ include file="/WEB-INF/views/admin/sidenav/qna.jsp"%>

	<div id="body-container-body">
		<div class="container">
			<div class="col-sm-offset-1 col-sm-10">
				<h3>문의 리스트</h3>
				<hr />
				<div class="searchform text-right">
					<form class="form-inline">
						<div class="form-group pull-left">
							<button class="btn btn-sm btn-default">답변작성</button>
							<button class="btn btn-sm btn-default">답변완료</button>
						</div>
						<div class="form-group">
							<input type="date" class="form-control input-sm" name="begindate" />
							<span>~</span> <input type="date" class="form-control input-sm"
								name="enddate" />
						</div>
						<div class="form-group">
							<select class="form-control input-sm">
								<option>유형전체</option>
								<option>반품문의</option>
								<option>상품문의</option>
								<option>취소문의</option>
							</select> <input type="text" class="form-control input-sm" name="keyword" />
							<button class="btn btn-info btn-sm">조회</button>
						</div>
					</form>
				</div>
				<div class="listtable">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>유형</th>
								<th>제목</th>
								<th>작성자</th>
								<th>날짜</th>
								<th>답변유무</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>반품문의</td>
								<td><a href="">[나이키]신상 에어맥스 97 슈즈 15종 득템찬스!</a></td>
								<td>김나은</td>
								<td>2017-05-12</td>
								<td>답변완료</td>
							</tr>
							<tr class="complete">
								<td></td>
								<td><a href="#">→ 답변입니다.</a></td>
								<td>행복쇼핑</td>
								<td colspan="2">2017-05-13</td>
							</tr>
							<tr>
								<td>반품문의</td>
								<td><a href="">[나이키]신상 에어맥스 97 슈즈 15종 득템찬스!</a></td>
								<td>김나은</td>
								<td>2017-05-12</td>
								<td><label class="btn btn-info btn-xs">답변작성</label></td>
							</tr>
							<tr>
								<td>반품문의</td>
								<td><a href="">[나이키]신상 에어맥스 97 슈즈 15종 득템찬스!</a></td>
								<td>김나은</td>
								<td>2017-05-12</td>
								<td><label class="btn btn-default btn-xs">답변완료</label></td>
							</tr>
							<tr class="complete">
								<td></td>
								<td>→ 답변입니다.</td>
								<td>행복쇼핑</td>
								<td colspan="2">2017-05-13</td>
							</tr>
							<tr>
								<td>반품문의</td>
								<td><a href="">[나이키]신상 에어맥스 97 슈즈 15종 득템찬스!</a></td>
								<td>김나은</td>
								<td>2017-05-12</td>
								<td>답변완료</td>
							</tr>
							<tr class="complete">
								<td></td>
								<td>→ 답변입니다.</td>
								<td>행복쇼핑</td>
								<td colspan="2">2017-05-13</td>
							</tr>
							<tr>
								<td>반품문의</td>
								<td><a href="">[나이키]신상 에어맥스 97 슈즈 15종 득템찬스!</a></td>
								<td>김나은</td>
								<td>2017-05-12</td>
								<td>답변완료</td>
							</tr>
							<tr class="complete">
								<td></td>
								<td>→ 답변입니다.</td>
								<td>행복쇼핑</td>
								<td colspan="2">2017-05-13</td>
							</tr>
							<tr>
								<td>반품문의</td>
								<td><a href="">[나이키]신상 에어맥스 97 슈즈 15종 득템찬스!</a></td>
								<td>김나은</td>
								<td>2017-05-12</td>
								<td>답변완료</td>
							</tr>
							<tr>
								<td>반품문의</td>
								<td><a href="">[나이키]신상 에어맥스 97 슈즈 15종 득템찬스!</a></td>
								<td>김나은</td>
								<td>2017-05-12</td>
								<td>답변완료</td>
							</tr>
							<tr>
								<td>반품문의</td>
								<td><a href="">[나이키]신상 에어맥스 97 슈즈 15종 득템찬스!</a></td>
								<td>김나은</td>
								<td>2017-05-12</td>
								<td>답변완료</td>
							</tr>
							<tr>
								<td>반품문의</td>
								<td><a href="">[나이키]신상 에어맥스 97 슈즈 15종 득템찬스!</a></td>
								<td>김나은</td>
								<td>2017-05-12</td>
								<td>답변완료</td>
							</tr>
							<tr>
								<td>반품문의</td>
								<td><a href="">[나이키]신상 에어맥스 97 슈즈 15종 득템찬스!</a></td>
								<td>김나은</td>
								<td>2017-05-12</td>
								<td>답변완료</td>
							</tr>
							<tr>
								<td>반품문의</td>
								<td><a href="">[나이키]신상 에어맥스 97 슈즈 15종 득템찬스!</a></td>
								<td>김나은</td>
								<td>2017-05-12</td>
								<td>답변완료</td>
							</tr>
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