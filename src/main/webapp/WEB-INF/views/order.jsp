<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/inc/top.jsp"%>
<script type="text/javascript" src='/resources/js/order.js?dummy=' ></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<link rel="stylesheet" href="/resources/css/order.css">

</head>
<body>
   <%@ include file="/WEB-INF/views/inc/header.jsp"%>
   <div class="container">

      <h1 class="pd">주문/결제</h1>
      <div class="row spd">
         <div class="col-sm-2">
            <img src="${image.path }" width="90%" />
         </div>
         <div class="col-sm-10 ck">
            <h5>
               <strong class="d">${product.name }</strong> 상품을 주문합니다.
            </h5>
            <div>
               <small class="gray">선택하신 상품의 가격과 옵션정보는 하단 주문상품 정보에서 확인하실 수
                  있습니다.</small>
            </div>
         </div>
      </div>
      <h4 class="pd">배송지 정보</h4>

      <div class="row">
         <div class="col-sm-2 spds">
            <strong id="delivery1">기본 배송지</strong>
         </div>
         <div class="radio">
            <input type="radio" name="optionsRadios1" id="optionsRadios1"
               value="option1" checked="checked">
           <div class="col-sm-1 spd">
               <input type="text" class="form-control" name="postalcode"
                  id="postalcode1" placeholder="우편번호"
                  value="${customer.postalcode }" disabled>
            </div>
            <div class="col-sm-4 spd">
               <input type="text" class="form-control" name="address"
                  id="address1" placeholder="주소를 입력하세요."
                  value="${customer.mainaddress }" disabled>
            </div>
            
            <div class="col-sm-4 spd">
               <input type="text" class="form-control" name="detailaddress"
                  id="detailaddress1" placeholder="상세주소를 입력하세요."
                  value="${customer.detailaddress }" disabled>
            </div>
         </div>
         <div class="col-sm-1 btnposition">
            <button class="btn btn-warning btn-sm" data-toggle="modal"
               data-target="#deliaddr1">주소 수정</button>
            <div class="modal fade" id="deliaddr1" tabindex="-1" role="dialog"
               aria-labelledby="exampleModalLongTitle" aria-hidden="true">
               <div class="modal-dialog" role="document">
                  <div class="modal-content">
                     <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">우편번호 검색</h5>
                        <button type="button" class="close" data-dismiss="modal"
                           aria-label="Close">
                           <span aria-hidden="true">&times;</span>
                        </button>
                     </div>
                     <div class="modal-body">

                        <div class="form-group">
                           <div id="address-package">
                              <input type="text" maxlength="5"
                                 class="form-control postal-area" name="postalcode"
                                 id="postal-code1" placeholder="우편번호" readonly /> <a href=""
                                 id="address-btn1"
                                 class="form-control  btn btn-default postal-area">주소검색</a>
                           </div>
                        </div>
                        <div class="form-group">
                           <input type="text" name="mainaddress" class="form-control"
                              placeholder="주소" id="main-address1">
                        </div>
                        <div class="form-group">
                           <input type="text" name="detailaddress" class="form-control"
                              placeholder="상세 주소를 입력해 주세요" id="address-detail-input1">
                        </div>

                     </div>
                     <div class="modal-footer">
                        <button type="button" class="btn btn-primary" id="useadd1"
                           data-dismiss="modal">사용</button>
                        <button type="button" class="btn btn-secondary"
                           data-dismiss="modal">취소</button>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <c:forEach var="deliverys" items="${delivery }" varStatus="status">
      <div class="row">
         <div class="col-sm-2 spds">
            <strong id="delivery${status.index+2}">${deliverys.title }</strong>
         </div>
         <div class="radio">
            <input type="radio" name="optionsRadios1" id="optionsRadios${status.index+2}"
               value="option2">
               <div class="col-sm-1 spd">
               <input type="text" class="form-control" name="postalcode"
                  id="postalcode${status.index+2}" placeholder="우편번호"
                  value="${deliverys.postalCode }" disabled>
            	</div>
            <div class="col-sm-4 spd">
               <input type="text" class="form-control" name="address"
                  id="address${status.index+2}" placeholder="주소를 입력하세요." value="${deliverys.mainAddress }" disabled>
            </div>
            <div class="col-sm-4 spd">
               <input type="text" class="form-control" name="detailAddress"
                  id="detailaddress${status.index+2}" placeholder="상세주소를 입력하세요." value="${deliverys.detailAddress }" disabled>
            </div>
         </div>
         <div class="col-sm-1 btnposition">
            <button class="btn btn-warning btn-sm" data-toggle="modal"
               data-target="#deliaddr${status.index+2 }">주소 수정</button>
            <div class="modal fade" id="deliaddr${status.index+2 }" tabindex="-1" role="dialog"
               aria-labelledby="exampleModalLongTitle" aria-hidden="true">
               <div class="modal-dialog" role="document">
                  <div class="modal-content">
                     <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">우편번호 검색</h5>
                        <button type="button" class="close" data-dismiss="modal"
                           aria-label="Close">
                           <span aria-hidden="true">&times;</span>
                        </button>
                     </div>
                     <div class="modal-body">

                        <div class="form-group">
                           <div id="address-package">
                              <input type="text" maxlength="5"
                                 class="form-control postal-area" name="postalcode"
                                 id="postal-code${status.index+2 }" placeholder="우편번호" readonly /> <a href=""
                                 id="address-btn${status.index+2 }"
                                 class="form-control  btn btn-default postal-area">주소검색</a>
                           </div>
                        </div>
                        <div class="form-group">
                           <input type="text" name="mainAddress" class="form-control"
                              placeholder="주소" id="main-address${status.index+2 }">
                        </div>
                        <div class="form-group">
                           <input type="text" name="detailAddress" class="form-control"
                              placeholder="상세 주소를 입력해 주세요" id="address-detail-input${status.index+2 }">
                        </div>

                     </div>
                     <div class="modal-footer">
                        <button type="button" class="btn btn-primary" id="useadd${status.index+2 }"
                           data-dismiss="modal">사용</button>
                        <button type="button" class="btn btn-secondary"
                           data-dismiss="modal">취소</button>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      </c:forEach>
      <form action="/order/addOrder.do" method="post">
         <div class="row">
            <div class="col-sm-2 paddingtop">
               <strong>이름</strong>
            </div>
            <div class="col-sm-10 inputline">
               <input type="text" class="form-control" name="orderReceiver" id="name"
                  value="${customer.name }">
            </div>
         </div>
         <div class="row">
            <div class="col-sm-2 paddingtop">
               <strong>연락처</strong>
            </div>
            <div class="col-sm-10 inputline">
               <input type="text" class="form-control" name="phonenumber"
                  id="phonenumber" value="${customer.phonenumber }">
            </div>
         </div>
         <div class="row">
            <div class="col-sm-2 paddingtop">
               <strong id="home">주소</strong>
               <input type="hidden" name="deliveryTitle" id="delivery"/>
            </div>
            <div class="col-sm-10 inputline">
               <div class="col-sm-2">
               <input type="text" class="form-control" name="postalCode"
                  id="postalcode4" placeholder="우편번호"
                   value="${customer.postalcode }" disabled>
            	</div>
               <div class="col-sm-5">
                  <input type="text" class="form-control" name="main"
                     id="address4" placeholder="주소를 입력하세요."
                     value="${customer.mainaddress }" disabled>
               </div>
               <div class="col-sm-5">
                  <input type="text" class="form-control" name="detail"
                     id="detailaddress4" placeholder="상세주소를 입력하세요."
                     value="${customer.detailaddress }" disabled>
               </div>
            </div>
         </div>
         <div class="row">
            <div class="col-sm-2 spdss">
               <strong>배송메모</strong>
            </div>
            <div class="col-sm-10 spd">
               <select class="form-control" name="orderMessage">
                  <option value="부재 시 경비실에 맡겨주세요">부재 시 경비실에 맡겨주세요</option>
                  <option value="배송전에 연락주세요">배송전에 연락주세요</option>
               </select>
            </div>
         </div>
         <h4 class="pd">할인 쿠폰/적립혜택</h4>
         <div class="row spd">
            <div class="col-sm-2">
               <strong>적용가능 쿠폰</strong>
            </div>
            <div class="col-sm-10">
               딜전용 쿠폰 <strong class="d">${couponCount }</strong>장&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <a href=""
                  class="btn btn-warning btn-sm" id="couponbtn" data-toggle="modal"
                  data-target="#exampleModalLong">쿠폰적용</a>

               <div class="modal fade" id="exampleModalLong" tabindex="-1"
                  role="dialog" aria-labelledby="exampleModalLongTitle"
                  aria-hidden="true">
                  <div class="modal-dialog" role="document">
                     <div class="modal-content">
                        <div class="modal-header">
                           <h5 class="modal-title" id="exampleModalLongTitle">쿠폰창</h5>
                           <button type="button" class="close" data-dismiss="modal"
                              aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                           </button>
                        </div>
                        <div class="modal-body">
                        <c:if test="${empty coupons }">
                           <h4>사용가능한 쿠폰이 없습니다.</h4>
                        </c:if>
                        <c:forEach var="coupon" items="${coupons }">
                           <div>
                              <div class="showradio1">
                                 <div class="radio">
                                    <label class="grade">          
                                       <input type="radio" name="optionsRadios2" id="grade" data-discount="${coupon.discountPrice }" value="${customer.grade}" checked>
                                       <img src="/resources/images/coupon/${customer.grade}.jpg" />
                                       <input type="hidden" name="couponId" id="couponId" value="${coupon.id }">
                                    </label>
                                 </div>
                              </div>
                           </div>
                        </c:forEach>
                        </div>
                        <div class="modal-footer">
                           <button type="button" id="apply-coupon-btn" class="btn btn-primary" data-dismiss="modal">적용</button>
                           <button type="button" id="cancel-coupon-btn" class="btn btn-secondary" data-dismiss="modal">적용취소</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="row">
            <div class="col-sm-2 spd">
               <strong>쿠폰할인</strong>
            </div>
            <div class="col-sm-10 spd">
               <strong class="d dis">0</strong><strong>원</strong>
            </div>
         </div>
         
         <h4 class="pd">주문상품 정보</h4>
         <div class="row">
            <div class="col-sm-5 song">
               <strong>상품정보</strong>
            </div>
            <div class="col-sm-2 song">
               <strong>상품금액</strong>
            </div>
            <div class="col-sm-2 song">
               <strong>할인금액</strong>
            </div>
            <div class="col-sm-1 song">
               <strong>배송비</strong>
            </div>
            <div class="col-sm-2 song">
               <strong>주문금액</strong>
            </div>
         </div>
         <%int i = 0; %>
         <c:set var="index" target="<%=i%>"/>
         <c:forEach var="items" items="${itemDetail }">
            <div class="row">
               <div class="col-sm-5 ck">
                  <div class="col-sm-6">
                     <img src="${image.path }" width="80%" />
                  </div>
                  <h5>
                     <strong>${items.product.name }</strong>
                  </h5>
                  <div>
                     <small class="sm">${items.options } &nbsp;</small><small>1개</small> 
                     <input type="hidden" name="orderQuantity" value="1" > <!-- ${params.oq[0] } -->
                     <input type="hidden" name="itemId" value="${items.id }">
                     
                  </div>
               </div>
               <div class="col-sm-2" id="blue">
                  <h4><span class="originalPriceOne">${items.salePrice }</span>원</h4>
               </div>
               <div class="col-sm-2 kk">
                  <strong>- </strong><strong class="discountPriceOne"><fmt:formatNumber pattern="####"><c:out value="${items.salePrice * items.product.discountRatio/100 }"></c:out></fmt:formatNumber></strong><strong>원</strong>
               </div>
               <div class="col-sm-1 kk">
                  <strong class="deliveryFeeOne">${items.product.deliveryFee }</strong><strong>원</strong>
               </div>
               <div class="col-sm-2 kk">
                  <h3><span class="sumpriceone"><fmt:formatNumber pattern="####"><c:out value="${items.salePrice + items.product.deliveryFee - items.salePrice*(items.product.discountRatio/100) }"/></fmt:formatNumber></span><span>원</span></h3>
               </div>
   
            </div>
            
         <c:set var="index" value="${index + 1 }"/>
         <c:out value="${index }" />
         </c:forEach>
         
         <hr>
         <div class="row">
            <div class="col-sm-7"></div>
            <div class="col-sm-2">
               <div class="row">
                  <h4>
                     <strong>상품금액</strong>
                  </h4>
               </div>
               <div class="row">
                  <h4>
                     <strong>할인금액</strong>
                  </h4>
               </div>
               <div class="row">
                  <h4>
                     <strong>배송비</strong>
                  </h4>
               </div>
            </div>
            <div class="col-sm-3">
               <div class="row right">
                  <h4>
                  <%int totalPrice = 0; %>
                  <c:set target="<%=totalPrice %>" value="0" var="totalPrice"/>
                  <c:forEach var="item" items="${itemDetail }">
                  	<c:set var="totalPrice" value="${totalPrice + item.salePrice }" />
                  </c:forEach>
                     <strong class="originalPriceAll">${totalPrice }</strong><strong>원</strong>
                     
                  </h4>
               </div>
               <div class="row right">
                  <h4>
                  <%int totalSalePrice = 0; %>
                  <c:set target="<%=totalSalePrice %>" value="0" var="totalSalePrice"></c:set>
                  <c:forEach var="item" items="${itemDetail }">
                  	<fmt:formatNumber pattern="####"><c:set var="totalSalePrice" value="${totalSalePrice + item.salePrice*(item.product.discountRatio/100) }"></c:set></fmt:formatNumber>
                  </c:forEach>
                     <strong>- </strong><strong class="salePriceAll"><fmt:formatNumber pattern="####">${totalSalePrice }</fmt:formatNumber></strong><strong>원</strong>
                  </h4>
               </div>
               <div class="row right">
                  <h4>
                  <%int totalDeliveryFee = 0; %>
                  <c:set target="<%=totalDeliveryFee %>" value="0" var="totalDeliveryFee"></c:set>
                  <c:forEach var="item" items="${itemDetail }">
                  	<c:set var="totalDeliveryFee" value="${totalDeliveryFee + item.product.deliveryFee }"></c:set>
                  </c:forEach>
                     <strong class="deliveryFeeAll">${totalDeliveryFee }</strong><strong>원</strong>
                  </h4>
               </div>
            </div>
         </div>
         <hr>
         <div class="row right pd">
            <div class="col-sm-2">
               <h3>총 주문금액</h3>
            </div>
            <h4>
            <%int totalPriceAll =0; %>
            <c:set target="<%=totalPriceAll %>" value="0" var="totalPriceAll"></c:set>
            <c:forEach var="item" items="${itemDetail }">
                <c:set var="totalPriceAll" value="${ totalDeliveryFee + totalPrice - totalSalePrice}"></c:set>
            </c:forEach>
            	
               <span class="sumpriceall"><fmt:formatNumber pattern="####"><c:out value="${totalPriceAll }"/></fmt:formatNumber></span><strong>원</strong>
               <input type="hidden" name="orderPrice" id="totalPrice">
            </h4>
         </div>

         <h4 class="pd">
            <strong>결제수단</strong>
         </h4>
         <div class="row spd">
            <div class="col-sm-2">
               <strong>결제 방법</strong>
            </div>
            <div class="col-sm-6">
               <div class="radio">
                  <label> <input type="radio" name="optionsRadios3"
                     value="option1" checked>신용카드
                  </label>
               </div>
               <div class="radio">
                  <label> <input type="radio" name="optionsRadios3"
                     value="option2"> 휴대폰 결제
                  </label>
               </div>
               <div class="radio">
                  <label> <input type="radio" name="optionsRadios3"
                     value="option3"> 무통장 입금
                  </label>
               </div>
            </div>

            <div class="col-sm-4">
               <h4>티몬캐쉬·적립금 사용</h4>


               <div class="col-sm-8">
                  <input type="cash" class="form-control" id="Inputcash"
                     placeholder="0">
               </div>
               <div class="col-sm-2">원</div>
               <div class="col-sm-2">
                  <a href="" class="btn btn-warning btn-sm">전액사용</a>
               </div>
            </div>

         </div>
         <div class="row">
            <div class="col-sm-2">카드 종류</div>
            <div class="col-sm-6">
               <select class="form-control">
                  <option>신한</option>
                  <option>2</option>
                  <option>3</option>
                  <option>4</option>
                  <option>5</option>
               </select>
            </div>
         </div>
         <div class="row">
            <div class="col-sm-2">할부 기간</div>
            <div class="col-sm-6">
               <select class="form-control">
                  <option>일시불</option>
                  <option>2</option>
                  <option>3</option>
                  <option>4</option>
                  <option>5</option>
               </select>
            </div>

         </div>
         <hr>
         <h4 class="pd">약관 동의</h4>
         <div class="row">
            <div class="col-sm-8">
               <div class="row spd">
                  <h4>
                     <input type="checkbox" id="allCheck" />&nbsp;&nbsp;<strong>전체
                        동의하기</strong>
                  </h4>
               </div>
               <div class="row">
                  <input type="checkbox" name="checked" />&nbsp;&nbsp;개인정보 제3자 제공에
                  동의합니다.
               </div>
               <div class="row">
                  <input type="checkbox" name="checked" />&nbsp;&nbsp;결제대행서비스 이용약관에
                  동의합니다.
               </div>
               <div class="row">
                  <input type="checkbox" name="checked" />&nbsp;&nbsp;주문할 상품설명에 명시된
                  내용과 사용조건을 확인하였으며, 취소. 환불규정에 동의합니다.
               </div>
            </div>
            <div class="col-sm-4">
               <div class="row">
                  <div class="col-sm-6">
                     <strong>총 주문금액</strong>
                  </div>
                  <div class="col-sm-6 text-right">
                  
                     <strong class="allPrice"><fmt:formatNumber pattern="####"><c:out value="${totalPriceAll }" /></fmt:formatNumber></strong><strong>원</strong>
                     <input type="hidden" name="orderRealPrice" id="realPrice">
                  </div>
               </div>
               <div class="row">
                  <div class="col-sm-6">
                     <strong>쿠폰할인금액</strong>
                  </div>
                  <div class="col-sm-6 text-right">
                     <strong>- </strong><strong class="dis couponPrice">0</strong><strong>원</strong>
                  </div>
               </div>
               <div class="row spd">
                  <div class="col-sm-6">
                     <strong>적립금 사용</strong>
                  </div>
                  <div class="col-sm-6 text-right">
                     <strong>- </strong><strong>0원</strong>
                  </div>
               </div>
               <div class="row">
                  <h4 class="d">총 결제금액</h4>
               </div>
               <div class="row text-right">
                  
                  <h3 class="d">
                  
                     <span class="sumpricepay"><fmt:formatNumber pattern="####"><c:out value="${totalPriceAll }" /></fmt:formatNumber></span><span>원</span>
                  </h3>
               </div>
            </div>
            <div class="text-center">
               <button class="btn btn-warning btn-md" id="submit-btn" type="submit">결제</button>
               <button class="btn btn-warning btn-md">뒤로</button>
            </div>
         </div>
      </form>
   </div>
   <%@ include file="/WEB-INF/views/inc/footer.jsp"%>
</body>
</html>