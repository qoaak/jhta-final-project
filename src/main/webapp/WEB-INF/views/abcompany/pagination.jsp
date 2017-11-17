<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/abcompany/header.jsp" %>
<!DOCTYPE>
<html>
<head>
<title>Insert title here</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<!-- 페이지네이션 -->
	
	<div class="text-center">
        <ul class="pagination">
	        <c:if test="${criteria.totalRows gt 0 }">
	            <li><a href="#">&lt;</a></li>
	            <c:forEach var="num" begin="${criteria.beginPage }" end="${criteria.endPage }">
	            	<li class="${criteria.pageNo eq num ? 'active' : '' }"><a href="${num }">${num }</a></li>	
	            </c:forEach>
	            
	            <li><a href="#">&gt;</a></li>
	        </c:if>
        </ul>
    </div>
    
</body>
</html>