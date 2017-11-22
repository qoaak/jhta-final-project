<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/abcompany/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>개별상품 페이지</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
	.mainthumbnail img {width: 280px;}
	.pro th {padding-top: 12px !important;}
	.pro td {padding-top: 12px !important;}
	.etc {padding-top: 12px !important;}
	.mainimage {height: 300px !important; padding: 0px !important;}
	#subimage img {width: 770px;}
	#subimage div {text-align: center;}
	.remot {width: 50px; height: 150px; #ccc; top: 350px; left: 50%; margin-left: 600px; position: fixed;}
	#table-area th {background-color: #e6f7ff;}
	#table-area {overflow-y: scroll !important; height: 150px;}
</style>
<body>
<%@ include file="/WEB-INF/views/abcompany/navi.jsp" %>
    <div id="body-container" class="container-fluid">     
        <div id="body-container-body">
            <div class="container">
				 <div class="col-sm-offset-1 col-sm-10">
				 	
				 	<h1>${item.options }</h1>
				 
				 	<div class="row text-right">
                    	<a href="modifyForm.do?itemId=${item.id }" class="btn btn-info btn-sm">수정</a>
                    	<a href="list.do" class="btn btn-primary btn-sm">목록</a>
                    </div>
				 
				 	<!-- 스크롤 -->
                    <div class="remot">
                        <a id="btn-top" class="btn btn-default btn-xm">▲</a>
                        <a id="btn-bottom" class="btn btn-default btn-xm">▼</a>
                    </div>
                    
                    <!-- 상품 상세 내용 -->
					<div class="row">
					    <table class="table">
					        <colgroup>
					            <col width="310px">
					            <col width="100px">
					        </colgroup>
							<tbody>
							    <tr>
							        <td class="mainthumbnail" rowspan="7"><img src=""></td>
							        <th class="etc">상품번호</th>
							        <td class="etc">${item.id }</td>
							        <th>등록날짜</th>
							        <td colspan="3">${item.createdate } </td>
							    </tr>
							    <tr class="pro">
							        <th>입고량</th>
							        <td colspan="3">${item.initialQuantity }개</td>
							    </tr>
							    <tr class="pro">
							        <th>판매량</th>
							        <td colspan="3">${item.saledQuantity }개</td>
							    </tr>
							    <tr class="pro">
							        <th>원가</th>
							        <td>${item.saledQuantity }원</td>
							    </tr>
							    <tr class="pro">
							        <th>원가</th>
							        <td>${item.salePrice }원</td>
							    </tr>
							    <tr><td colspan="7"></td></tr>
							</tbody>
					    </table>
					</div>
                    
                </div>
            </div>
        </div>
    </div>
</body>
</html>