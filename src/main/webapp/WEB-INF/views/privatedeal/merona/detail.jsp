<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/inc/top.jsp" %>
<link rel="stylesheet" href="/resources/css/mdetail.css">
</head>
<body>
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>
	 <div class="container-fluid">           
        <div class="container-fluid">           
            <div class="container">
            	<%@ include file="/WEB-INF/views/inc/detailcategory.jsp" %> 
                <h3>올때 메로나</h3>
          		<table class="table table-condensed">
          			<colgroup>
          				<col width="8%">
          				<col width="8%">
          				<col width="8%">
          				<col width="10%">
          				<col width="8%">
          				<col width="8%">
          				<col width="8%">
          				<col width="8%">
          				<col width="8%">
          				<col width="*">
          				<col width="8%">
          				<col width="8%">
          			</colgroup>          			
          			<tbody>
          				<tr>
          					<td colspan="10" style="padding-left:25px;"><c:out value="${merona.title }" /></td>
          					<td colspan="2"><fmt:formatDate value="${merona.createdate }" pattern="yyyy-MM-dd HH:mm"/></td>
          				</tr>
          				<tr class="detailinfo">
          					<th>아이디</th>
          					<td><c:out value="${merona.customer.username }" /></td>
          					<th>닉네임</th>
          					<td><c:out value="${merona.customer.nickname }"></c:out></td>
          					<th>구분</th>
          					<td>${merona.division.name }</td>
          					<th>상태</th>
          					<td>${merona.status.name }</td>
          					<th>희망가격</th>
          					<c:choose>
          						<c:when test="${not empty merona.desiredprice }">
          							<td><fmt:formatNumber value="${merona.desiredprice }" pattern="#,###" />원</td>	
          						</c:when>
          						<c:otherwise>
          							<td>없음</td>
          						</c:otherwise>
          					</c:choose>
          					
          					<th>조회수</th>
          					<td>${merona.clicked }</td>
          				</tr>
          			</tbody>
          		</table>
          		<div class="row contents well">
          			${merona.contents }
          		</div>
          		<div class="btnlist">
          			<div class="text-center">
	          			<a href="" class="btn btn-info">1:1 채팅</a>
	          			<button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal">안전거래</button> 		
	          		</div>
	          		<div class="text-center">
	          			<a href="" class="btn btn-primary">일부거래중</a>          		
		          		<a href="" class="btn btn-warning">거래중</a>          		
		          		<a href="" class="btn btn-default">거래완료</a>	
	          		</div>
	          		<div class="text-right">
	          			<a href="" class="btn btn-default">수정</a>
		          		<a href="" class="btn btn-danger">삭제</a> 
	          		</div>
          		</div>		

          		<div class="row comments well">
          			<span>댓글 </span><em>0</em>
          			<div class="commentslist">
          				<div>
          					<strong>sdsd547</strong><small> 2017-11-09</small>
          					<a href="" class="btn btn-info btn-xs">답글</a>
          					<div class="pull-right">
          						<a href="" class="btn btn-default btn-xs">수정</a> <a href="" class="btn btn-danger btn-xs">삭제</a>
          					</div>          					
          					<p>댓글내용입니다.</p>
          				</div>
          				<div class="reply">
          					<form action="" method="post" class="form-inline">
          						<div class="form-group">
	          						└ <textarea name="" class="form-control"></textarea>          						
          						</div>
	          					<button type="submit" class="btn btn-info btn-lg">등록</button>
          					</form>
          				</div>
          				<div>
          					<strong>└ qqwajs6665</strong><small> 2017-11-09</small>
          					<a href="" class="btn btn-info btn-xs">답글</a>
          					<div class="pull-right">
          						<a href="" class="btn btn-default btn-xs">수정</a> <a href="" class="btn btn-danger btn-xs">삭제</a>
          					</div> 
          					<p><span>sdsd547 </span>답글내용입니다.</p>
          				</div>
          				<div class="comment">
	      					<form action="" method="post" class="form-inline">
	      						<div class="form-group">
	      							<textarea name="" class="form-control"></textarea>
	      						</div>	      						
      							<button type="submit" class="btn btn-info btn-lg">등록</button>
	      					</form>
	      				</div>         				
          			</div>          			
          		</div>
            </div>      
        </div>
    </div>

    <div class="modal fade" id="myModal" role="dialog">
	    <div class="modal-dialog">
	    
	      <!-- Modal content-->
	      <div class="modal-content">
	        <div class="modal-header">
	          <button type="button" class="close" data-dismiss="modal">&times;</button>
	          <h4 class="modal-title">신청내용</h4>
	        </div>
	        <form action="" method="post">
		        <div class="modal-body">
		        	<div class="form-group">
		        		<textarea name="" rows="10" class="form-control"></textarea>
		        	</div>		         	
		         	<div class="form-group">
		         		<label for="">희망가격</label>
		         		<input type="number" name="" > 원
		         	</div>		         	
		        </div>
		        <div class="modal-footer">
		        	<button type="submit" class="btn btn-success">신청</button>
		         	<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
		        </div>
	        </form>
	      </div>
	      
	    </div>
	</div>
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>
</body>
</html>