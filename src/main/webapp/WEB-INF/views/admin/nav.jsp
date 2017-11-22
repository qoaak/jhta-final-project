<%@ page pageEncoding="UTF-8"%>
<nav class="navbar navbar-default navbar-fixed-top navbar-inverse">
	<ul class="nav navbar-nav">
		<li><a href="/admin/index.do">회사로고다용</a></li>
		<li class="${menu eq 'earning' ? 'active' : '' }"><a href="/admin/earning.do">판매실적</a></li>
		<li class="${menu eq 'product' ? 'active' : '' }"><a href="/admin/prolist.do">상품관리</a></li>
		<li class="${menu eq 'qna' ? 'active' : '' }"><a href="/admin/qnalist.do">문의접수</a></li>
		<li class="${menu eq 'member' ? 'active' : '' }"><a href="/admin/membercom.do">회원관리</a></li>
	</ul>
	<ul class="nav navbar-nav navbar-right">
		<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>로그아웃</a></li>
	</ul>
</nav>