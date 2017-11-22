<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/inc/top.jsp" %>
<link rel="stylesheet" href="/resources/css/mdetail.css">
</head>
<body>
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>
	
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
       					<td colspan="10" class="title"><c:out value="${merona.title }" /></td>
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
       			<c:if test="${(LOGIN_INFO.LOGIN_USER.id ne merona.customer.id) and merona.status.id ne 'DC'}">
      				<div class="text-center">
       					<a href="" class="btn btn-info">1:1 채팅</a>
       					<button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal">안전거래</button>	          			 		
       				</div>
        		</c:if>
        		<c:if test="${(not empty LOGIN_INFO) && (LOGIN_INFO.LOGIN_USER.id eq merona.customer.id) and merona.status.id ne 'DC'}">
         			<div class="text-center">
         				<a href="dpi.do?no=${merona.id }" class="btn btn-primary">일부거래중</a>          		
          				<a href="di.do?no=${merona.id }" class="btn btn-warning">거래중</a>          		
          				<a class="btn btn-default" id="dc">거래완료</a>	
         			</div>	          		
         			<div class="text-right">
         				<a href="/modify.do?no=${merona.id }" class="btn btn-default">수정</a>
          				<a class="btn btn-danger" id="deleteBoard">삭제</a> 
         			</div>
        		</c:if>	          		
       		</div>		

          	<div class="row comments well" id="comment-list">
          		<span>댓글 </span><em>0</em>
          		<div class="commentlist">
          			<c:forEach var="comment" items="${comments }">          			
          				<c:choose>
          					<c:when test="${comment.id eq comment.repliedId.id }">
			          			<div>
				          			<strong><c:out value="${comment.customer.nickname }" /></strong><small> <fmt:formatDate value="${comment.createdate }" pattern="yyyy-MM-dd HH:mm"/></small>
				          			<button class="btn btn-info btn-xs" id="reply-${comment.id }">답글</button>
				          			<div class="pull-right">
				          				<button class="btn btn-default btn-xs">수정</button> <button class="btn btn-danger btn-xs" id="btn-del-comment-${comment.id }">삭제</button>
				          			</div>          					
			       					<p><c:out value="${comment.comment }" /></p>
			       				</div>
          					</c:when>
          					<c:otherwise>
          						<div>
				          			<strong>└ <c:out value="${comment.customer.nickname }" /></strong><small> <fmt:formatDate value="${comment.createdate }" pattern="yyyy-MM-dd HH:mm"/></small>
				          			<button class="btn btn-info btn-xs" id="reply-${comment.id }">답글</button>
				          			<div class="pull-right">
				          				<button class="btn btn-default btn-xs">수정</button> <button class="btn btn-danger btn-xs" id="btn-del-comment-${comment.id }">삭제</button>
				          			</div>          					
			       					<p><span><c:out value="${comment.repliedId.customer.nickname }" /> </span><c:out value="${comment.comment }" /></p>
			       				</div>
          					</c:otherwise>
          				</c:choose>	       					       		
       				</c:forEach>          			       				        				
     			</div>  
     			<div class="comment">
 					<form class="form-inline">
 						<div class="form-group">
 							<textarea class="form-control"></textarea>
							<button class="btn btn-info btn-lg" id="btn-add-comment">등록</button>
 						</div>	      						
 					</form>
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
	</div>
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>
</body>
<script type="text/javascript">
	$(function() {
		
		$("#dc").click(function(event) {
			event.preventDefault();
			var result = confirm("거래완료하시겠습니까?");
			if (result) {
				$(location).attr('href', 'dc.do?no=${merona.id}');				
			} else {
				return false;
			}
		})
		
		$("#deleteBoard").click(function(event) {
			event.preventDefault();
			var result = confirm("정말 삭제하시겠습니까?");
			if (result) {
				$(location).attr('href', 'delete.do?no=${merona.id}');
			} else {
				return false;
			}
		})
		
		function reloading(){
			$.ajax({
				type:"GET",
				url:"/getCommentlist.do",
				data:{boardNo:'${merona.id}'},
				dataType:"json",
				success:function(result) {
					var html = "";
					$.each(result, function(index, comment) {
						if (comment.id == comment.repliedId.id) {
							html += "<div> <strong>"+comment.customer.nickname+"</strong> <small>"+comment.createdate+" </small>";
							html += " <button class='btn btn-info btn-xs' id='reply-"+result.comment.id +"'>답글</button>";
							html += "<div class='pull-right'>";
							html += "<button class='btn btn-default btn-xs'>수정</button> <button class='btn btn-danger btn-xs' id='btn-del-comment-"+comment.id+"'>삭제</button> </div>";
							html += "<p>"+comment.comment+"</p> </div>"
						} else {
							html += "<div> <strong>└ "+comment.customer.nickname+"</strong> <small>"+comment.createdate+" </small>";
							html += " <button class='btn btn-info btn-xs' id='reply-"+result.comment.id +"''>답글</button>";
							html += "<div class='pull-right'>";
							html += "<button class='btn btn-default btn-xs'>수정</button> <button class='btn btn-danger btn-xs' id='btn-del-comment-"+comment.id+"'>삭제</button> </div>";
							html += "<p><span>"+comment.repliedId.customer.nickname+" </span>"+comment.comment+"</p> </div>"
						}						
					});
					$(".commentlist").html(html);
				}
			})
		}
    	
    	$("#btn-add-comment").click(function(event) {
    		event.preventDefault();
    	
    		$.ajax({
    			type:"POST",
    			url:"/addComment.do",
    			data:{comment:$(this).parent().find("textarea").val(), boardNo:'${merona.id}'},
    			dataType:"json",
    			success:function(result) {
    				if (result.success) {
    					var html = "<div>";
    					html += "<strong>"+result.comment.customer.nickname+"</strong>";
    					html += " <small>"+result.comment.createdate+"</small>";
    					html += " <button class='btn btn-info btn-xs' id='reply-"+result.comment.id +"'>답글</button>";
    					html += "<div class='pull-right'>";
    					html += "<button class='btn btn-default btn-xs'>수정</button> <button class='btn btn-danger btn-xs' id='btn-del-comment-"+result.comment.id+"'>삭제</button> </div>";
    					html += "<p>"+result.comment.comment+"</p> </div>";    					
    					
    					$(".commentlist").append(html);
    					
    					$("textarea").val("");				
    			
    				} else {
    					alert("로그인이 필요한 서비스입니다.");
    					$(location).attr('href', '/customers/login.do?error=deny');
    				}
    			}
    		})
    	});
		
		$(".commentlist").on('click', 'button[id^=btn-reply-comment]', function(event) {
			event.preventDefault();
			
			$(".replycomment").css("display", "none");
			
			var button = this;
			var rno = $(button).attr("id").replace("btn-reply-comment-", "");		
			
			$.ajax({
				type:"POST",
				url:"/addReply.do",
				data:{comment:$(this).parent().find("textarea").val(), boardNo:'${merona.id}', rno:rno},
				dataType:"json",
				success:function(result) {					
					if (result.success) {    					
    					
    					$("textarea").val("");
    					
    					reloading();
    			
    				} else {
    					alert("로그인이 필요한 서비스입니다.");
    					$(location).attr('href', '/customers/login.do?error=deny');
    				}			
				}
			})
			
		})
		
		$(".commentlist").on('click', 'button[id^=reply]', function() {     		
     		var button = this;
     		var no = $(button).attr("id").replace("reply-", "");
     		
     		var html = "";
			html += "<div class='replycomment'>";
			html += "<form class='form-inline'> <div class='form-group'>";
			html += "└ <textarea class='form-control'></textarea>";
			html += " <button class='btn btn-info btn-lg' id='btn-reply-comment-"+no+"'>등록</button> </div> </form> </div>";
			
			$(".replycomment").remove();
			$(button).closest('div').after(html);
    	})
    	
    	$(".commentlist").on('click', 'button[id^=btn-del-comment]', function() {
    		var button = this;
    		var cNo = $(button).attr("id").replace("btn-del-comment-", "");
    		
    		$.ajax({
    			type:"GET",
    			url:"/delComment.do",
    			data:{commentNo:cNo},
    			dataType:"json",
    			success:function(comment) {
    				
    			}
    		})
    	})
    	
	})
</script>
</html>