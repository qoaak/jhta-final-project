<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/inc/top.jsp" %>
<link rel="stylesheet" href="/resources/css/mypage.css">	
</head>
<body>
<%@ include file="/WEB-INF/views/inc/header.jsp" %>
<%@ include file="/WEB-INF/views/customers/inc.jsp" %>
          <!-- Tab panes -->
            <div role="tabpanel" class="tab-pane" id="private">
                <div class="row" id="pwd-check-form">
                    <div class="col-sm-4 col-sm-offset-4">
                        <div class="panel panel-default" style="margin: 5%">
                            <div class="panel-heading">
                                <h3 class="panel-title">비밀번호 재입력</h3>
                            </div>
                            <div class="panel-body">
                                <form>
                                    <div class="form-group">
                                        <label>비밀번호 입력</label>
                                        <input type="password" class="form-control" id="customer-pwd" name="customerpwd">
                                    </div>
                                    <div class="form-group text-right">
                                        <button type="submit" class="btn btn-primary btn-md" id="pwdcheck-btn">확인</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
	           </div> 
	           <hr>
	           <div id="info-modify-form">
	           		<form action="info-update.do" method="post">
	           			<div class="form-group">
	           				<label>이름</label>
	           				<input type="text" name="name" class="form-control" value="${ LOGIN_INFO.LOGIN_USER.name}"/>
	           			</div>
	           			<div class="form-group">
	           				<label>아이디(이메일)</label>
	           				<input type="text" name="email" disabled="disabled" class="form-control" value="${ LOGIN_INFO.LOGIN_USER.username}"/>
	           			</div>
	           			<div class="form-group">
	           				<label>새 비밀번호</label>
	           				<input type="password" name="password" class="form-control"/>
	           			</div>
	           			<div class="form-group">
	           				<label>새 비밀번호 확인</label>
	           				<input type="password" name="passwordCheck" class="form-control"/>
	           			</div>
	           			<div class="form-group">
	           				<label>연락처</label>
	           				<input type="text" name="phoneNumber" class="form-control" value="${ LOGIN_INFO.LOGIN_USER.phonenumber}"/>
	           			</div>
	           			<div class="form-group">
	           				<button type="submit" class="btn btn-md btn-primary">수정</button>
	           			</div>
	           		</form>
	           </div>
	           
        </div>
    </div>
</div>
<%@ include file="/WEB-INF/views/inc/footer.jsp" %>
</body>
<script>
$(function(){
	$('#pwdcheck-btn').click(function(event) {
		event.preventDefault();
		var pwdVal = $('#customer-pwd').val();		
		
		$.ajax({
			type : "GET", 
			url : 'pwdcheck.do', 
			data : {
				pwd : pwdVal, 
			}, 
			success : function(result) {
				console.log(result);
				if(result == "true" ){
				$('#pwd-check-form').hide();
				$('#info-modify-form').show();
				} else {
					alert("비밀번호를 확인하십시오.");
				}
			}
		})
		
	});
})


</script>
</html>