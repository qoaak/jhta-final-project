<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/inc/top.jsp" %>
<link rel="stylesheet" href="/resources/css/mypage.css">	
</head>
<body>
<%@ include file="/WEB-INF/views/inc/header.jsp" %>
<%@ include file="/WEB-INF/views/customers/inc.jsp" %>

          <!-- Tab panes -->
            <div role="tabpanel" class="tab-pane" id="questions">
                <table  border="1" class="custom-table">
                    <caption>문의/답변(없을 때)</caption>
                        <colgroup>
                            <col width="170">
                            <col width="500">
                            <col width="121">
                            <col width="139">
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="colgroup" colspan="2">상품명</th>
                                <th scope="col">문의내용</th>
                                <th scope="col">등록일</th>
                                <th scope="col">답변여부</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td colspan="4" class="none_lst text-center">
                                    <strong>답변/문의내용이 없습니다.</strong><br>
                                </td>
                            </tr>
                        </tbody>
                </table>
                <hr/>
                <div class="container" id="ques-answer">
                    <span><a href="#">상품 문의/답변</a></span>|
                    <span><a href="#">1:1문의 답변</a></span>
                </div>
                <hr/>
                <div class="row">
                    <div style="margin-top: 20px" class="btn-group col-sm-3 date-btn" role="group">
                        <button type="button" class="btn btn-warning btn-sm" date-search="-1">전체</button>
                        <button type="button" class="active btn btn-warning btn-sm" date-search="3">3개월</button>
                        <button type="button" class="btn btn-warning btn-sm" date-search="6">6개월</button>
                        <button type="button" class="btn btn-warning btn-sm" date-search="12" > 1년</button>
                    </div>
                </div>
                <table  border="1" class="table table-condensed custom-table4">
                    <caption>문의/답변(있을 때)</caption>
                        <colgroup>
                            <col width="170">
                            <col width="500">
                            <col width="121">
                            <col width="139">
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="colgroup">상품명</th>
                                <th scope="col">문의내용</th>
                                <th scope="col">등록일</th>
                                <th scope="col">답변여부</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="exist-ques-lst1">갤럭시 노트 8</td>
                                <td class="exist-ques-lst2">전원이 켜지지 않습니다</td>
                                <td class="exist-ques-lst3">2017-11-02</td>
                                <td class="exist-ques-lst4">답변보류</td>
                            </tr>
                            <tr>
                                <td class="exist-ques-lst1">lg curve TV</td>
                                <td class="exist-ques-lst2">TV가 엉망진창으로 왔네요 환불받고 싶습니다</td>
                                <td class="exist-ques-lst3">2017-11-03</td>
                                <td class="exist-ques-lst4">답변완료</td>
                            </tr>
                        </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<%@ include file="/WEB-INF/views/inc/footer.jsp" %>
</body>
<script>
$(function(){

	
	$('.date-btn button').click(function() {
		console.log($(this).attr('date-search'));
		$(this).addClass('active');
		$(this).siblings().removeClass('active');
	});
	
})


</script>
</html>