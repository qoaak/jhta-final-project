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
                    <li><a href="#">홈</a><span>＞</span></li>
                    <li><a href="">아시아</a><div class="triangle_down"></div><span>＞</span>
                        <ul>
                            <li><a href="">유럽</a></li>
                            <li><a href="">아시아</a></li>
                            <li><a href="">북아메리카</a></li>
                            <li><a href="">남아메리카</a></li>
                            <li><a href="">오세아니아</a></li>
                            <li><a href="">아프리카</a></li>
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
                            <th>가격</th>
                            <th>상태</th>
                            <th>아이디</th>
                            <th>등록일</th>
                            <th>조회수</th>                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td><a href="detail.do"><strong class="text-danger">[판매] </strong>QM3 RE I 15/05식 I 40,000km I 인천 I 무사고 I 1490만원</a></td>
                            <td>17,900</td>
                            <td class="text-warning">거래중</td>
                            <td>lgfsdl301</td>
                            <td>2017-08-31</td>
                            <td>10</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td><a href=""><strong class="text-primary">[구매] </strong>QM3 RE I 15/05식 I 40,000km I 인천 I 무사고 I 1490만원</a></td>
                            <td>17,900</td>
                            <td class="text-danger">거래완료</td>
                            <td>lgfsdl301</td>
                            <td>2017-08-31</td>
                            <td>10</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td><a href=""><strong class="text-primary">[구매] </strong>QM3 RE I 15/05식 I 40,000km I 인천 I 무사고 I 1490만원</a></td>
                            <td>17,900</td>
                            <td class="text-info">일부 거래중</td>
                            <td>lgfsdl301</td>
                            <td>2017-08-31</td>
                            <td>10</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td><a href=""><strong class="text-danger">[판매] </strong>QM3 RE I 15/05식 I 40,000km I 인천 I 무사고 I 1490만원</a></td>
                            <td>17,900</td>
                            <td class="text-success">거래가능</td>
                            <td>lgfsdl301</td>
                            <td>2017-08-31</td>
                            <td>10</td>
                        </tr> 
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
</html>