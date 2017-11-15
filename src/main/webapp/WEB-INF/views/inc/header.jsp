<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<header id="header">		
	<div class="box_util">
		<div>
			<ul class="util_menu1">
				<li><a href="#">즐겨찾기</a></li>
				<li><a href="">입점신청<div class="triangle_down"></div></a>
					<ul><div class="triangle_up"><span></span></div>
						<li><a href="">배송상품</a></li>
						<li><a href="">여행·문화</a></li>
						<li><a href="">로켓배송</a></li>
					</ul>
				</li>					
			</ul>
			<ul class="util_menu2">
			<c:choose>
				<c:when test="${not empty LOGIN_INFO }">
				<c:choose>
					<c:when test="${LOGIN_INFO.USER_TYPE eq 'CUSTOMER'  }">
					<li><p>${LOGIN_INFO.LOGIN_USER.nickname }님 환영합니다.</p></li>
					</c:when>
					<c:otherwise>
					<li><p>${LOGIN_INFO.LOGIN_USER.name }님 환영합니다.</p></li>
					</c:otherwise>
				</c:choose>
					<li><a href="/customers/index.do">마이페이지</a></li>
					<li><a href="/company/index.do">기업회원</a></li>
					<li><a href="/customers/logout.do">로그아웃</a></li>
				</c:when>
				<c:otherwise>
					<li><a href="/customers/login.do">로그인</a></li>
					<li><a href="/customers/register.do">회원가입</a></li>
				</c:otherwise>
			</c:choose>
				
				<li><a href="#">고객센터</a></li>					
			</ul>
		</div>						
	</div>
	<div class="box_nav">
		<div class="tsmc">
			<h1><a href="/index.do"><img src="/resources/images/common/logo.jpg" alt="" width="200px"></a></h1>
			<form action="#" method="get" class="combine_sch">					
				<input type="text" name="search" id="search" placeholder=""><input type="image" src="/resources/images/common/searchicon.png" alt="검색">	
			</form>
			<figure class="mypage">
				<a href="/customers/index.do">
					<img src="/resources/images/common/mypage.png" alt="마이페이지">
					<figcaption>마이페이지</figcaption>						
				</a>				
			</figure>
			<figure class="cart">
				<a href="">
					<img src="/resources/images/common/cart.png" alt="장바구니">
					<em>0</em>
					<figcaption>장바구니</figcaption>						
				</a>
			</figure>
		</div>						
		<nav id="nav">			
			<ul class="gnb">
				<li><a href="">패션</a>
					<ul><div class="triangle_up"><span></span></div>
						<li><a href="">여성의류</a></li>							
						<li><a href="">캐주얼의류</a></li>							
						<li><a href="">남성의류·정장</a></li>						
						<li><a href="">해외의류</a></li>						
						<li><a href="">여성화</a></li>						
						<li><a href="">남성화</a></li>						
						<li><a href="">가방·소품·아이웨어</a></li>						
						<li><a href="">시계·쥬얼리</a></li>						
						<li><a href="">명품관</a></li>						
					</ul>
				</li>
				<li><a href="">가구</a>
					<ul><div class="triangle_up"><span></span></div>
						<li><a href="">침실가구</a></li>							
						<li><a href="">거실·수납가구</a></li>							
						<li><a href="">주방가구</a></li>						
						<li><a href="">서재·사무용가구</a></li>						
						<li><a href="">아동·학생가구</a></li>						
						<li><a href="">시공·DIY·정원가구</a></li>						
						<li><a href="">침구</a></li>					
					</ul>
				</li>
				<li><a href="">펫샵·도서</a>
					<ul><div class="triangle_up"><span></span></div>
						<li><a href="">스위티펫샵</a></li>							
						<li><a href="">강아지용품</a></li>							
						<li><a href="">고양이용품</a></li>						
						<li><a href="">관상어·소동물</a></li>						
						<li><a href="">도서</a></li>									
					</ul>
				</li>
				<li><a href="/merona/index.do">개인거래</a>
					<ul><div class="triangle_up"><span></span></div>
						<li><a href="/merona/index.do">올때 메로나</a></li>							
						<li><a href="/used/index.do">안전 중고나라</a></li>															
					</ul>
				</li>					
			</ul>
		</nav>	
	</div>			
</header>