<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/inc/top.jsp" %>
<link rel="stylesheet" href="/resources/css/dealdetail.css">
</head>
<body>
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>
	<div class="container">
		<h4>판매 상세 내역</h4>
		<table class="table table-condensed">
			<tbody>
				<tr>					
					<th>올때 메로나</th>
					<td><a href="">2017.11.30~12.10 일본 도쿄,오사카,교토,후쿠오카</a></td>
					<td>2017-11-11</td>
				</tr>
			</tbody>
		</table>
		<div class="text-center btn_list">
			<button class="btn btn-default btn-lg">결제대기중</button> ···
			<button class="btn btn-success btn-lg">결제완료</button> ···
			<button class="btn btn-default btn-lg">상품준비중</button> ···
			<button class="btn btn-default btn-lg">상품준비완료</button> ···
			<button class="btn btn-default btn-lg">배송중</button> ···
			<button class="btn btn-default btn-lg">배송완료</button> ···
			<button class="btn btn-default btn-lg">구매확정</button>
		</div>
		<div class="text-center">
			<button class="btn btn-warning">배송조회</button>
			<h4>결제금액: <span>490,000</span>원</h4>
		</div>
		<table class="table table-condensed">
			<tbody>
				<tr>
					<th>구매자</th>
					<td>sdjsd021</td>
					<th>연락처</th>
					<td>010-1111-1234</td>					
				</tr>
				<tr>
					<th>주소</th>
					<td colspan="3">서울시 종로구 종로3가 디아망 5층</td>
				</tr>			
			</tbody>			
		</table>
		<div>
			<a href="" class="btn btn-info">상품준비중</a>
			<a href="" class="btn btn-primary">상품준비완료</a>
			<button type="button" class="btn btn-warning" data-toggle="modal" data-target="#sendcomplete">상품발송완료</button>
		</div>
		<div>
			<button type="button" class="btn btn-success" data-toggle="modal" data-target="#pay">결제하기</button>
			<a href="" class="btn btn-info">구매확정</a>
		</div>
		<div class="text-center">			
			<a href="" class="btn btn-danger">판매취소</a>
			<a href="" class="btn btn-danger">구매취소</a>
		</div>		
	</div>
	
	<div class="modal fade" id="sendcomplete" role="dialog">
      <div class="modal-dialog">
      
        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">운송장번호</h4>
          </div>          
           <form action="" method="post">          
	            <div class="modal-body">           		
            		<input type="number" class="form-control">            	          	                          
	            </div>	            
	            <div class="modal-footer">
	            	<div class="text-center">	            		
	               		<button type="submit" class="btn btn-primary">확인</button>
	            	</div>	                            
	            </div>	            
            </form>        
        </div>        
      </div>
    </div>
    
    <div class="modal fade" id="pay" role="dialog">
      <div class="modal-dialog">
      
        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">결제</h4>
          </div>          
           <form action="" method="post">          
	            <div class="modal-body">           		
            		<input type="number" value="490000" class="form-control">            	          	                          
	            </div>	            
	            <div class="modal-footer">
	            	<div class="text-center">	            		
	               		<button type="submit" class="btn btn-primary">확인</button>
	            	</div>	                            
	            </div>	            
            </form>        
        </div>        
      </div>
    </div>
	
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>
</body>
</html>