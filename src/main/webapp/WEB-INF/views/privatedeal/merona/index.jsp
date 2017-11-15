<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/inc/top.jsp" %>
<link rel="stylesheet" href="/resources/css/merona.css">
</head>
<body>
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>
	<div class="container-fluid">
        <div class="container">
            <div class="row category_wrap">
                <ul class="categorylist">
                    <li><a href="/index.do">홈</a><span>＞</span></li>
                    <li><a href="">전체</a><div class="triangle_down"></div><span>＞</span>
                        <ul>
                            <li><a href="index.do?bc=400">유럽</a></li>
                            <li><a href="index.do?bc=500">아시아</a></li>
                            <li><a href="index.do?bc=600">북아메리카</a></li>
                            <li><a href="index.do?bc=700">남아메리카</a></li>
                            <li><a href="index.do?bc=800">오세아니아</a></li>
                            <li><a href="index.do?bc=900">아프리카</a></li>
                        </ul>
                    </li>
                    <li><a href="">동아시아</a><div class="triangle_down"></div><span>＞</span>
                        <ul>
                        	<li><a href="">동아시아</a></li>
                            <li><a href="">동남아시아</a></li>                            
                        </ul>
                    </li>
                    <li><a href="">대한민국</a><div class="triangle_down"></div>
                        <ul>
                        	<li><a href="">대한민국</a></li>
                            <li><a href="">일본</a></li>
                            <li><a href="">중국</a></li>
                            <li><a href="">대만</a></li>
                            <li><a href="">홍콩·마카오</a></li>                            
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="text-center">
                <h2>올때 메로나</h2>
            </div>
            <hr/>
            <div class="row">
                <div>
                    <ul class="categoryd">
                        <li><a href="">전체</a></li>
                        <li><a href="">유럽</a></li>
                        <li><a href="">아시아</a></li>
                        <li><a href="">북아메리카</a></li>
                        <li><a href="">남아메리카</a></li>
                        <li><a href="">오세아니아</a></li>                      
                        <li><a href="">아프리카</a></li>                      
                    </ul>
                </div>                          
            </div>           
            <hr/>
        </div>       
        <div class="container-fluid">           
            <div class="container">
                <div class="row">                             
                    <div class="col-sm-8">                        
                        <form action="home.do" class="form-inline" id="search-form">
                            <input type="hidden" name="pageNo" value="${param.pageNo }">
                            <input type="hidden" name="rows" value="${param.rows }">
                            <div class="form-group">
                                <select class="form-control" id="rows-box">
                                    <option value="sale"> 전체 보기</option>
                                    <option value="sale"> 판매목록만 보기</option>
                                    <option value="buy"> 구매목록만 보기</option>                               
                                </select>
                                <label class="sr-only">검색조건</label>
                                <select class="form-control" name="opt">
                                    <option value="title"> 제목</option>
                                    <option value="writer"> 아이디</option>
                                    <option value="contents"> 내용</option>                                    
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="sr-only">키워드</label>
                                <input type="text" class="form-control" name="keyword" value="" />
                            </div>
                            <button type="submit" class="btn btn-success" id="btn-search">조회</button>
                        </form>
                    </div>
                    <div class="text-right write_sb">
                        <a href="/meronaform.do" class="btn btn-success">글쓰기</a>                    
                    </div>                               
                </div>                
                <table class="table table-condensed privatedeal">
                    <colgroup>
                        <col width="10%">
                        <col width="*">
                        <col width="10%">
                        <col width="10%">
                        <col width="10%">                        
                        <col width="10%">                        
                        <col width="10%">                        
                    </colgroup>
                    <thead>
                        <tr>
                            <th>번호</th>
                            <th>제목</th>
                            <th>희망가격</th>
                            <th>상태</th>
                            <th>닉네임</th>
                            <th>등록일</th>
                            <th>조회수</th>                            
                        </tr>
                    </thead>
                    <tbody>
                    	<c:if test="${empty meronalist }">
                    		<tr>
                    			<td colspan="7" class="text-center">검색된 결과가 없습니다.</td>
                    		</tr>
                    	</c:if>
                    	<c:forEach var="merona" items="${meronalist}">
                    		<tr>
	                            <td>${merona.id }</td>
	                            <td><a href="detail.do"><strong class="${merona.division.id eq 'S  ' ? 'text-danger' : 'text-primary' }">[${merona.division.name }]</strong> <c:out value="${merona.title}" /></a></td>
	                            <td><fmt:formatNumber value="${merona.desiredprice }" pattern="#,###" />원</td>
	                            <c:choose>
	                            	<c:when test="${merona.status.id eq 'DP '}">
	                            		<td class="text-success">${merona.status.name }</td>
	                            	</c:when>
	                            	<c:when test="${merona.status.id eq 'DPI'}">
	                            		<td class="text-primary">${merona.status.name }</td>
	                            	</c:when>
	                            	<c:when test="${merona.status.id eq 'DI '}">
	                            		<td class="text-warining">${merona.status.name }</td>
	                            	</c:when>
	                            	<c:when test="${merona.status.id eq 'DC '}">
	                            		<td class="text-danger">${merona.status.name }</td>
	                            	</c:when>
	                            </c:choose>	                            
	                            <td><c:out value="${merona.customer.nickname }" /></td>
	                            <td><fmt:formatDate value="${merona.createdate }" pattern="yyyy-MM-dd"/></td>
	                            <td>${merona.clicked }</td>
	                        </tr>
                    	</c:forEach> 
                    </tbody>
                </table>                              
                <div class="text-center">
                    <ul class="pagination">                            
                        <li><a href="${navi.pageNo - 1 }">&lt;</a></li>       
                        <li class=""><a href="${num }">1</a></li>
                        <li class=""><a href="${num }">2</a></li>
                        <li class=""><a href="${num }">3</a></li>
                        <li class=""><a href="${num }">4</a></li>
                        <li class=""><a href="${num }">5</a></li>
                        <li><a href="${navi.pageNo + 1 }">&gt;</a></li>  
                    </ul>
                </div>
            </div>        
        </div>
    </div>
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>
</body>
<script type="text/javascript">
	$(function() {
		console.log(${merona.status.id});
		if (${merona.status.id} == "DP ") {
			$(".status").addClass("text-success");		
		} else if (${merona.status.id} == "DPI") {
			$(".status").addClass("text-primary");
		} else if (${merona.status.id} == "DI ") {
			$(".status").addClass("text-warining");
		} else if (${merona.status.id} == "DC ") {
			$(".status").addClass("text-danger");
		}
	});
</script>
</html>