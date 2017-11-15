<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/abcompany/header.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>패키지 상세</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="/WEB-INF/views/abcompany/navi.jsp" %>
    <div id="body-container" class="container-fluid">     
        <div id="body-container-body">
			<div class="container">
			
			    <div class="row">
			        <table class="table table-hover">
			            <colgroup>
			                <col width="20%">
			                <col width="*%">
			                <col width="10%">
			                <col width="20%">
			                <col width="10%">
			                <col width="10%">
			            </colgroup>
			            <tbody>
			                <tr>
			                    <th>상품 상세 번호</th>
			                    <td>${products.productsId}</td>
			                    <th>소분류</th>
			                    <td>${products.category.smallCategoryName}</td>
			                    <th>판매상태</th>
			                    <td>${products.productsShow}</td>
			                </tr>
			                <tr>
			                    <th>상품명</th>
			                    <td>${products.productsName}</td>
			                    <th>배송비</th>
			                    <td>${products.deliveryFee}</td>
			                </tr>
			                <tr>
			                    <th>조회수</th>
			                    <td><span>${products.productsClicked}</span><span>원</span></td>
			                    <th>할인률</th>
			                    <td>${products.discountRatio}</td>
			                </tr>
			                <tr>
			                	<th>상세 설명</th>
			                	<td>${products.productsDescription}</td>
			                </tr>
			           </tbody>
			        </table>
			    </div>
			    
			    <div class="text-right">
			        <a href="modify.do" class="btn btn-info">수정</a>
			        <a href="list.do" class="btn btn-success">목록</a>
			    </div>
			    
			</div>
		</div>
	</div>
</body>
</html>