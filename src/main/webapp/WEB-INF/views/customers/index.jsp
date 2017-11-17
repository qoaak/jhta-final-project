<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/inc/top.jsp"%>
<link rel="stylesheet" href="/resources/css/mypage.css">
</head>
<body>
	<%@ include file="/WEB-INF/views/inc/header.jsp"%>
	<%@ include file="/WEB-INF/views/customers/inc.jsp"%>
	<!-- Tab panes -->
	<div class="tab-content">
		<div role="tabpanel" class="tab-pane active" id="home">
			<div class="buy_lst">
				<div class="row">
					<div style="margin-top: 20px" class="btn-group col-sm-3 date-btn"
						role="group" aria-label="...">
						<button type="button" class="btn btn-warning btn-sm"
							date-search="-1">전체</button>
						<button type="button" class="active btn btn-warning btn-sm"
							date-search="3">3개월</button>
						<button type="button" class="btn btn-warning btn-sm"
							date-search="6">6개월</button>
						<button type="button" class="btn btn-warning btn-sm"
							date-search="12">1년</button>
					</div>
					<form>
						<div></div>
						<div class="form-group col-sm-2">
							<label>특정 날짜로 찾기</label> <input type="date" class="form-control" />
						</div>
						<div class="form-group col-sm-2">
							<label>특정 날짜로 찾기</label> <input type="date" class="form-control" />
						</div>
					</form>
				</div>


				<h2>구매내역</h2>
				<table border="1" class="custom-table2">
					<colgroup>
						<col width="170">
						<col width="500">
						<col width="122">
						<col width="175">
					</colgroup>
					<thead>
						<tr>
							<th scope="colgroup" colspan="2">구매내역</th>
							<th scope="col">유효기간/배송상태</th>
							<th scope="col">관리</th>
						</tr>
					</thead>
					<c:choose>
						<c:when test="${not empty orders }">
							<tbody class="well">
								<c:forEach var="order" items="${orders }">

									<tr>
										<th scope="rowgroup" rowspan="2" class="deal_info">
											<div class="date_num">
												<p class="dt">
													<strong><fmt:formatDate
															value="${order.orderDate }" pattern="yyyy.MM.dd" /> </strong>
												</p>
												<i>(<fmt:formatDate value="${order.orderDate }"
														pattern="HH:mm:ss" />)
												</i>
												<p class="buy_num">
													<em class="txt">주문번호</em> <strong>${order.id }</strong>
												</p>
											</div>
											<div class="payment">
												<p>총 주문 금액</p>
												<p class="won">
													<em><fmt:formatNumber pattern=",###">${order.price }</fmt:formatNumber></em><i>원</i>
												</p>
												<p class="coupon">
													<i>티몬캐쉬·적립금 사용</i><em>0</em><em>원</em>
												</p>
											</div>
											<div class="btn">
												<!--신규 옵션별로 현금영수증 대상이 있다면 나오는 로직 추가 -->
												<!-- 일반 영수증 출력 -->
												<a href="#" class="" onclick="">영수증 출력</a>
											</div>
										</th>

										<th class="well">
										<% int oldPId = 0; %>
										<c:set target="<%=oldPId %>"  var="pId" value="0" />
											<c:forEach var="orderDetail" items="${order.orderDetails }">
												<c:if test="${pId != orderDetail.item.product.id }">
													<c:set target="<%=oldPId %>"  var="pId" value="${orderDetail.item.product.id  }" />
													
													<div class="product-list">
														<div class="thmb_area">
															<a href="/deal/680182918?isHistory=Y" tl:area="PDCO"
																tl:ord="1" target="blank"><img
																src="${orderDetail.item.product.image.path }"
																width="106" height="71" alt="구매상품 썸네일" class="thmb">
															</a>
															<h4>
																<a href="/deal/680182918?isHistory=Y" tl:area="PDCO"
																	tl:ord="1" target="blank">${orderDetail.item.product.name }</a>
															</h4>

														</div>
														<p class="add_date_info">&nbsp;</p>
														<p class="add_date_info">
															배송완료일 : <strong>2017.09.20</strong>
														</p>
														<ul class="list-unstyled">
														
														<%int productPriceSum = 0; %>
															<c:forEach var="orderDetail"
																	items="${order.orderDetails }">
																	<c:if test="${orderDetail.item.product.id == pId }">
																	<c:set var="sum" target="<%= productPriceSum %>" value="${sum + orderDetail.realPrice * orderDetail.orderQuantity}"  scope="page"/>
															<li>
																	<div class="text-left">
																		<div class="tit">
																			<strong>${orderDetail.item.options }</strong>
																			<p>
																				(구매수량<em>${orderDetail.orderQuantity}</em>개)
																			</p>
																		</div>
																	</div>
																</li>
																
																	</c:if>
																</c:forEach>
															<p class="pay_info">
																<span class="won"><em><fmt:formatNumber
																			pattern=",###">${sum}</fmt:formatNumber></em>원</span>(${order.condition })
															</p>
															<c:remove var="sum" scope="page"/>
														</ul>
													</div>
												</c:if>
											</c:forEach>
											 <c:remove var="pId" scope="page" /></th>
											
										<td class="expiry">
											<p class="delivery_condition">
												<strong>배송완료</strong> <a class="parcel"
													href="javascript:pop_delivery_trace_self('1553184610','680182918','892247254','341025784653','CJ대한통운');">CJ대한통운<br>341025784653
												</a> <span> <a href="'#" class="btn_delivery_trace" id="">배송추적</a>
												</span>
											</p>
										</td>
										<td id="td_1553184610_680182918" class="manage">
											<div class="ly_btn">
												<div class="refund_qes">
													<button type="submit" class="btn btn-default btn-sm">
														<a href="javascript:noticeClaim('N_DP05');"
															class="cncl_inquiry">환불문의</a>
													</button>
												</div>
												<div class="af_orderwrite">
													<button type="submit" class="btn btn-warning btn-sm">
														<a
															href="javascript:layer_process('review', 'review', '1553184610', '680182918', '1', '');"
															class="review_w" id="review_1553184610_680182918">구매후기쓰기</a>
													</button>
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<td colspan="3" class=" delivery"><span title=""
											class="adr">
												<p class="addr">
													<em>배송지 정보 : </em><span>${order.receiver }, (${order.delivery.postalCode }) ${order.delivery.mainAddress } </span>
												</p>
												<p class="etc">${order.delivery.detailAddress }</p>
										</span></td>
									</tr>





								</c:forEach>
						</c:when>
						<c:otherwise>
							<tbody>
								<tr>
									<td colspan="4" class="none_lst text-center"><strong>구매내역이
											없습니다.</strong><br> <span>오늘의 티몬</span>에서 알찬 구매 어떠세요?
										<p style="margin: 10px;">
											<button type="submit" class="btn btn-default btn-md">
												<a href="/">오늘의 티몬 보러가기</a>
											</button>
										</p></td>
								</tr>
							</tbody>
						</c:otherwise>
					</c:choose>
				</table>
			</div>
		</div>
	</div>
	<br />
	<br />
	<br />

	<%@ include file="/WEB-INF/views/inc/footer.jsp"%>
</body>
<script>
	$(function() {
		$('.date-btn button').click(function() {
			console.log($(this).attr('date-search'));
			$(this).addClass('active');
			$(this).siblings().removeClass('active');
		});
	})
</script>
</html>