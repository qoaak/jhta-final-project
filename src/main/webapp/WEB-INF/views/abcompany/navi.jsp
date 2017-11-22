<%@ page pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/abcompany/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
</head>
<style>
	#body-container {padding: 0;}
    #body-container-body {padding-left: 200px; padding-top: 100px;}
    .sidenav {padding-top: 100px;}
    .sidenav h3 {padding-left: 16px; margin-bottom: 30px;}
    a {text-decoration: none !important;}
    nav ul li:first-child {width: 200px; text-align: center;}
</style>
	<nav class="navbar navbar-default navbar-fixed-top">
		<ul class="nav navbar-nav">
			<li><a href="#">회사로고</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
		<c:choose>
			<c:when test="${not empty LOGIN_INFO}">
				<li><strong>${LOGIN_INFO.LOGIN_USER.name }</strong><span>님 환영합니다.</span></li>
				<li><a href="/customers/logout.do"><span class="glyphicon glyphicon-log-in"></span> 로그아웃</a></li>
			</c:when>
			<c:otherwise>
				<li><a href="/customers/login.do"><span class="glyphicon glyphicon-log-in"></span> 로그인</a></li>
			</c:otherwise>
		</c:choose>
		</ul>
	</nav>
		
	<div class="w3-sidebar w3-dark-gray w3-bar-block" style="width:200px">
		<div class="sidenav">
			<h3>관리목록</h3>
			<a href="#" class="w3-bar-item w3-button"><span></span>문의 접수</a>
			<a href="/product/list.do" class="w3-bar-item w3-button">상품 리스트</a>
			<a href="/item/list.do" class="w3-bar-item w3-button">아이템 리스트</a>
			<a href="#" class="w3-bar-item w3-button">전체 상품 판매량</a>
			
			<a href="#" class="w3-bar-item w3-button">개별상품 실적관리</a>
			<a href="#" class="w3-bar-item w3-button">전체상품 실적관리</a>
			
			<a href="#" class="w3-bar-item w3-button">개별상품 재고관리</a>
			<a href="#" class="w3-bar-item w3-button">전체상품 재고관리</a>
		</div>
	</div>
