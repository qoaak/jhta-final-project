<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/abcompany/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>개별 상품 등록</title>
</head>
<body>
<%@ include file="/WEB-INF/views/abcompany/navi.jsp" %>
    <div id="body-container" class="container-fluid">     
        <div id="body-container-body">
			<div class="container">
				<form class="form-inline" action="addDetail.do" id="form">
					<table class="table table-hover table-bordered">
			            <colgroup>
			                <col width="20%">
			                <col width="*%">
			            </colgroup>
		                <tbody>
		                       <tr>
		                        <th>분류</th>
		                        <td>
		                            <div class="form-group">
		                                <select name="bigCategory">
		                                    <option>대분류</option>
		                                    <option value="food">식품</option>
		                                    <option value="fassion">패션</option>
		                                    <option value="appliance">가전</option>
		                                </select>
		                                <span>&gt;</span>
		                                <select name="middleCategory">
		                                    <option>중분류</option>
		                                </select>
		                                <span>&gt;</span>
		                                <select name="smallCategory">
		                                    <option>소분류</option>
		                                </select>
		                            </div>
		                        </td>
		                    </tr>
		                    <tr>
		                        <th>개별 상품 등록</th>
		                        <td>
		                            <div class="form-group">
		                                <select class="form-control" name="packageName">
		                                	<option>상품 패키지명</option>
		                                	<c:forEach var="" items="">
		                                    	<option value=""></option>
		                                    </c:forEach>
		                                </select>
		                            </div>
		                        </td>
		                    </tr>
		                    <tr>
		                        <th>원가</th>
		                        <td>
		                            <input type="number" pattern="[0-9]*" class="form-control" min="0" max="9999999" maxlength="7" oninput="maxLengthCheck(this)" name="originprice" />
		                        </td>
		                    </tr>
		                    <tr>
		                        <th>판매가</th>
		                        <td>
		                            <input type="number" pattern="[0-9]*" class="form-control" min="0" max="9999999" maxlength="7" oninput="maxLengthCheck(this)" name="saleprice" />
		                        </td>
		                    </tr>
		                    <tr>
		                        <th>등록 수량</th>
		                        <td>
		                            <input type="number" pattern="[0-9]*" class="form-control" min="0" max="9999999" maxlength="7" oninput="maxLengthCheck(this)" name="initialquantity" />
		                        </td>
		                    </tr>
		                    <tr>
		                        <th>상품 상세 이미지</th>
		                        <td>
		                            <input type="file" class="form-control" name="imagefile" />
		                        </td>
		                    </tr>
		                </tbody>
		       		</table>
		        </form>
		        <div class="text-right">
		            <button type="submit" class="btn btn-success">상품 등록</button>
		            <a href="list.do" class="btn btn-primary">목록</a>
		        </div>
			</div>
		</div>
	</div>
</body>
</html>