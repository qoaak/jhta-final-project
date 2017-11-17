<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/inc/top.jsp" %>
<link rel="stylesheet" href="/resources/css/deallist.css">	
</head>
<body>
<%@ include file="/WEB-INF/views/inc/header.jsp" %>
<%@ include file="/WEB-INF/views/customers/inc.jsp" %>

			      <div class="deallist">                    
		            <h4 class="salelist"><a href="" class="on">판매글 목록</a></h4>                              
		            <div class="first">
		                  <table class="table table-condensed">
		                        <colgroup>
		                              <col width="10%">
		                              <col width="10%">
		                              <col width="*">
		                              <col width="10%">
		                        </colgroup>
		                        <thead>
		                              <tr>
		                                    <th>번호</th>
		                                    <th>구분</th>
		                                    <th>제목</th>
		                                    <th>요청</th>                                           
		                              </tr>
		                        </thead>
		                        <tbody>
		                              <tr>
		                                    <td>1</td>
		                                    <td>중고나라</td>
		                                    <td><a href="">삼성 센스 노트북 팝니다.</a></td>
		                                    <td><button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#buycall">5건</button></td>		                                     
		                              </tr>
		                        </tbody>
		                  </table>
		            </div>                                          
		            <h4 class="salecall"><a href="">판매신청 목록</a></h4>
		            <div>
		                  <table class="table table-condensed">
		                        <colgroup>
		                              <col width="10%">
		                              <col width="10%">
		                              <col width="*">
		                              <col width="10%">
		                        </colgroup>
		                        <thead>
		                              <tr>
		                                    <th>번호</th>
		                                    <th>구분</th>
		                                    <th>제목</th>
		                                    <th>상태</th>                                           
		                              </tr>
		                        </thead>
		                        <tbody>
		                              <tr>
		                                    <td>1</td>
		                                    <td>중고나라</td>
		                                    <td><a href="">삼성 센스 노트북 삽니다.</a></td>
		                                    <td>승인<a class="btn btn-danger btn-xs disabled">취소</a></td>
		                              </tr>
		                        </tbody>
		                  </table>
		            </div>                  
		            <h4 class="sdlist"><a href="">판매내역 조회</a></h4>
		            <div>
		                  <table class="table table-condensed">
		                        <colgroup>
		                              <col width="10%">
		                              <col width="10%">
		                              <col width="*">
		                              <col width="10%">
		                        </colgroup>
		                        <thead>
		                              <tr>
		                                    <th>번호</th>
		                                    <th>구분</th>
		                                    <th>제목</th>
		                                    <th>상태</th>                                           
		                              </tr>
		                        </thead>
		                        <tbody>
		                              <tr>
		                                    <td>1</td>
		                                    <td>중고나라</td>
		                                    <td><a href="/deal/detail.do">삼성 센스 노트북 팝니다.</a></td>
		                                    <td>결제완료</td>
		                              </tr>
		                        </tbody>
		                  </table>
		            </div>                  
		            <h4 class="buylist"><a href="">구매글 목록</a></h4>
		            <div>
		                  <table class="table table-condensed">
		                        <colgroup>
		                              <col width="10%">
		                              <col width="10%">
		                              <col width="*">
		                              <col width="10%">
		                        </colgroup>
		                        <thead>
		                              <tr>
		                                    <th>번호</th>
		                                    <th>구분</th>
		                                    <th>제목</th>
		                                    <th>요청</th>                                           
		                              </tr>
		                        </thead>
		                        <tbody>
		                              <tr>
		                                    <td>1</td>
		                                    <td>메로나</td>
		                                    <td><a href="">캐나다 구스 삽니다.</a></td>
		                                    <td><button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#salecall">1건</button></td>
		                              </tr>
		                        </tbody>
		                  </table>
		            </div>                  
		            <h4 class="buycall"><a href="">구매신청 목록</a></h4>
		            <div>
		                  <table class="table table-condensed">
		                        <colgroup>
		                              <col width="10%">
		                              <col width="10%">
		                              <col width="*">
		                              <col width="10%">
		                        </colgroup>
		                        <thead>
		                              <tr>
		                                    <th>번호</th>
		                                    <th>구분</th>
		                                    <th>제목</th>
		                                    <th>상태</th>                                           
		                              </tr>
		                        </thead>
		                        <tbody>
		                              <tr>
		                                    <td>1</td>
		                                    <td>중고나라</td>
		                                    <td><a href="">삼성 센스 노트북 팝니다.</a></td>
		                                    <td>대기중<a class="btn btn-danger btn-xs">취소</a></td>
		                              </tr>
		                        </tbody>
		                  </table>
		            </div> 
		            <h4 class="bdlist"><a href="">구매내역 조회</a></h4>
		            <div>
		                  <table class="table table-condensed">
		                        <colgroup>
		                              <col width="10%">
		                              <col width="10%">
		                              <col width="*">
		                              <col width="10%">
		                        </colgroup>
		                        <thead>
		                              <tr>
		                                    <th>번호</th>
		                                    <th>구분</th>
		                                    <th>제목</th>
		                                    <th>상태</th>                                           
		                              </tr>
		                        </thead>
		                        <tbody>
		                              <tr>
		                                    <td>1</td>
		                                    <td>중고나라</td>
		                                    <td><a href="">삼성 센스 노트북 팝니다.</a></td>
		                                    <td>구매확정</td>
		                              </tr>
		                        </tbody>
		                  </table>		                  
		            </div>		                            
		      </div>
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

 	<div class="modal fade" id="buycall" role="dialog">
      <div class="modal-dialog">
      
        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">구매자 신청 목록</h4>
          </div>
          	<form action="" method="post">          
	            <div class="modal-body">            	
            		<ul class="calllist">
            			<li>
            				<input type="checkbox">
            				<p>slkjds210 <span class="pull-right">2017-11-08</span> </p> 
            				<p>삼성 센스 노트북 삽니다.</p>
            				<p>12000000원 <button class="btn btn-danger btn-xs pull-right">거절</button></p>            				            				
            			</li>
            			<li>
            				<input type="checkbox">
            				<p>slkjds210 <span class="pull-right">2017-11-08</span> </p> 
            				<p>삼성 센스 노트북 삽니다.</p>
            				<p>12000000원 <button class="btn btn-danger btn-xs pull-right">거절</button></p>            				            				
            			</li>
            			<li>
            				<input type="checkbox">
            				<p>slkjds210 <span class="pull-right">2017-11-08</span> </p> 
            				<p>삼성 센스 노트북 삽니다.</p>
            				<p>12000000원 <button class="btn btn-danger btn-xs pull-right">거절</button></p>            				            				
            			</li>
            			<li>
            				<input type="checkbox">
            				<p>slkjds210 <span class="pull-right">2017-11-08</span> </p> 
            				<p>삼성 센스 노트북 삽니다.</p>
            				<p>12000000원 <button class="btn btn-danger btn-xs pull-right">거절</button></p>            				            				
            			</li>
            			<li>
            				<input type="checkbox">
            				<p>slkjds210 <span class="pull-right">2017-11-08</span> </p> 
            				<p>삼성 센스 노트북 삽니다.</p>
            				<p>12000000원 <button class="btn btn-danger btn-xs pull-right">거절</button></p>            				            				
            			</li>
            		</ul>
	            	<input type="checkbox"> 전체선택 	            	            	                          
	            </div>	            
	            <div class="modal-footer">
	            	<div class="text-center">	            		
	               		<button type="submit" class="btn btn-success">승인</button>
	            	</div>	                            
	            </div>
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
            </form>           
        </div>        
      </div>
    </div> 
    
    <div class="modal fade" id="salecall" role="dialog">
      <div class="modal-dialog">
      
        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">판매자 신청 목록</h4>
          </div>          
           <form action="" method="post">          
	            <div class="modal-body">            	
            		<ul class="calllist">
            			<li>
            				<input type="checkbox">
            				<p>slkjds210 <span class="pull-right">2017-11-08</span> </p> 
            				<p>캐구 팝니다.</p>
            				<p>12000000원 <button class="btn btn-danger btn-xs pull-right">거절</button></p>            				            				
            			</li>            			
            		</ul>
	            	<input type="checkbox"> 전체선택            	                          
	            </div>	            
	            <div class="modal-footer">
	            	<div class="text-center">	            		
	               		<button type="submit" class="btn btn-success">승인</button>
	            	</div>	                            
	            </div>
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
            </form>        
        </div>        
      </div>
    </div>   
    
<%@ include file="/WEB-INF/views/inc/footer.jsp" %>
</body>
<script>
$(function() {
      $(".deallist h4 a").click(function(event) { 
            event.preventDefault();
            $(".deallist div:visible").hide();
            $(this).parent().next().show();
            $(".deallist .on").removeClass("on");
            $(this).addClass("on");       
      });
})
</script>
</html>