<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/abcompany/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
  <title>등록된 상품 리스트</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
</style>
<body>
<%@ include file="/WEB-INF/views/abcompany/navi.jsp" %>
    <div id="body-container" class="container-fluid">     
        <div id="body-container-body">
            <div class="container">
    			
                <!--판매중인 상품 리스트-->
                <div class="row">
                    <div class="row" id="sale-product-area">
                       <h1>현재 판매중인 상품 리스트</h1>
                    </div>
                    <hr/>
                    
                    <!-- 검색창 -->
                    <div class="row text-right">
                        <form action="" class="form-inline">
                            <select class="form-control" name="opt">
                                <option>선택</option>
                                <option value="productName">상품명</option>
                                <option value="category">카테고리</option>
                                <option value="open">공개여부</option>
                            </select>
                            <input type="text" class="form-control" name="keyword"/>
                            <div class="form-group">
                                <button type="submit" class="btn btn-info">검색</button>
                            </div>
                        </form>
                    </div>
                    
                    <!-- 상품 리스트 테이블-->
                    <div class="row" id="sale-product-table">
                        <table class="table table-hover" id="sale-product">
                            <colgroup>
                                <col width="10%">
                                <col width="15%">
                                <col width="*%">
                                <col width="15%">
                                <col width="15%">
                                <col width="15%">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>번호</th>
                                    <th>분류</th>
                                    <th>상품명</th>
                                    <th>할인율<em><small>(단위: %)</small></em></th>
                                    <th>등록일</th>
                                    <th>판매여부</th>
                                </tr>
                            </thead>
                            <tbody>
                            	<c:forEach var="product" items="${products }" varStatus="status">
                            		<tr>
	                                    <td>${status.count }</td>
	                                    <td>${product.smallCategory.name }</td>
	                                    <td><a href="deatil.do?no=${product.id }" >${product.name }</a></td>
	                                    <td>${product.discountRatio }</td>
	                                    <td></td>
	                                    <td>${product.show }</td>
	                                </tr>
                            	</c:forEach>
                            </tbody>
                        </table>
                        <div class="text-right" id="add-btn">
                            <a href="form.do" class="btn btn-info btn-sm">새 상품 추가</a>
                        </div>
                    </div>
                                       
                    <!-- 페이지네이션-->
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
    </div>  
</body>
</html>