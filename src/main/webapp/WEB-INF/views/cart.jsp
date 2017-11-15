<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/inc/top.jsp" %>
<link rel="stylesheet" href="/resources/css/cart.css">	
</head>
<body>
<%@ include file="/WEB-INF/views/inc/header.jsp" %>
<div class="container">
    <div class="header">
        <h2><strong>카트<p>&#40;0&#41;</p></strong></h2>

        <div class="text-right">
            <span>01 카트 ></span>
            <span>02 주문/결제 ></span>
            <span>03 결제완료</span>
        </div>
    </div>
   <table class="table table-hover">
       <colgroup>
           <col width="5%">
           <col width="*%">
           <col width="15%">
           <col width="13%">
       </colgroup>
       <thead>
            <tr>
               <th><input type="checkbox" checked="checked" /></th>
               <th><span><small>상품정보</small></span></th>
               <th><span><small>상품금액</small></span></th>
               <th><span><small>배송비</small></span></th>
            </tr>
        </thead>
        <tbody>
            <ul>
                <li>
                    <tr>
                        <td>
                            <div class="form-group">
                                <input type="checkbox" class="form-control" />
                            </div>
                        </td>
                        <td>
                            <div class="col-sm-2">
                                <img src="" alt="사진" />
                            </div>
                            <div class="col-offset-sm-1 col-sm-10">
                                <div class="row" id="product-title">
                                    <p><small><strong><a href="">[월동준비]펄룸겨울차렵침구</a></strong></small></p>
                                </div>
                                
                                <ul>
                                    <li>
                                        <div class="row" id="product-detail">
                                            <div class="col-sm-6">
                                               <span><small>01. 지투 라운드 숏 블랙 | 블랙 | L(100) - XL(105)</small></span>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="btn-group">
                                                    <button class="button"><span><small>-</small></span></button>
                                                    <input type="text" id="amount-input" />
                                                    <button class="button"><span><small>+</small></span></button>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="text-right">
                                                    <span>18,900원</span>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="row" id="product-detail">
                                            <div class="col-sm-6">
                                               <span><small>02. 지투 라운드 숏 블랙 | 블랙 | L(100) - XL(105)</small></span>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="btn-group">
                                                    <button class="button"><span><small>-</small></span></button>
                                                    <input type="text" id="amount-input" />
                                                    <button class="button"><span><small>+</small></span></button>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="text-right">
                                                    <span>18,900원</span>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                                <hr />
                                <div class="row text-right">
                                <a href="" class="btn btn-sm btn-default"><span><small>옵션변경/추가</small></span></a>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div id="product-price">
                                <strong>18,900원</strong>
                            </div>
                        </td>
                        <td><span><small><a href="" class="btn btn-sm btn-default" id="delivery-btn">무료배송</a></small></span></td>
                    </tr>
                </li>
                
                <li>
                    <tr>
                        <td>
                            <div class="form-group">
                                <input type="checkbox" class="form-control" />
                            </div>
                        </td>
                        <td>
                            <div class="col-sm-2">
                                <img src="" alt="사진" />
                            </div>
                            <div class="col-offset-sm-1 col-sm-10">
                                <div class="row" id="product-title">
                                    <p><small><strong><a href="">[월동준비]펄룸겨울차렵침구</a></strong></small></p>
                                </div>
                                
                                <ul>
                                    <li>
                                        <div class="row" id="product-detail">
                                            <div class="col-sm-6">
                                               <span><small>01. 지투 라운드 숏 블랙 | 블랙 | L(100) - XL(105)</small></span>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="btn-group">
                                                    <button class="button"><span><small>-</small></span></button>
                                                    <input type="text" id="amount-input" />
                                                    <button class="button"><span><small>+</small></span></button>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="text-right">
                                                    <span>18,900원</span>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="row" id="product-detail">
                                            <div class="col-sm-6">
                                               <span><small>02. 지투 라운드 숏 블랙 | 블랙 | L(100) - XL(105)</small></span>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="btn-group">
                                                    <button class="button"><span><small>-</small></span></button>
                                                    <input type="text" id="amount-input" />
                                                    <button class="button"><span><small>+</small></span></button>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="text-right">
                                                    <span>18,900원</span>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                                <hr />
                                <div class="row text-right">
                                <a href="" class="btn btn-sm btn-default"><span><small>옵션변경/추가</small></span></a>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div id="product-price">
                                <strong>18,900원</strong>
                            </div>
                        </td>
                        <td><span><small><a href="" class="btn btn-sm btn-default" id="delivery-btn">무료배송</a></small></span></td>
                    </tr>
                </li>
            </ul>

       </tbody>
    </table>
    <div class="row">
        <div id="bottom-button-group" class="col-sm-3">
            <input type="checkbox"/>
            <a href="#" class="btn btn-sm btn-default">찜한 상품에 저장</a>
            <a href="#" class="btn btn-sm btn-default">삭제</a>
        </div>
        <div class="col-sm-offset-3 col-sm-6">
            <span><small>카트에 담긴 상품은 최대 30일까지 보관되며 종료되거나 매진될 경우 자동으로 삭제됩니다.</small></span>
        </div>
    </div>
   
    <table class="table table-hover">
       <colgroup>
           <col width="*%">
           <col width="28%">
       </colgroup>
       <tbody>
            <tr id="total-price">
                <td>
                    <div class="row">
                        <h2><strong>총주문금액</strong></h2>
                    </div>
                </td>
                <td>
                    <div class="row">
                        <div class="col-sm-6"><h5><strong>총상품금액</strong></h5></div>
                        <div class="col-sm-6 text-right"><h5><strong>원</strong></h5></div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6"><h5><strong>즉시할인쿠폰</strong></h5></div>
                        <div class="col-sm-6 text-right"><h5><strong>-원</strong></h5></div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6"><h5><strong>배송비</strong></h5></div>
                        <div class="col-sm-6 text-right"><h5><strong>원</strong></h5></div>
                    </div>
               </td>
            </tr>
            <tr style="color: darkorange" id="expected-price">
                <td>
                    <div class="row">
                        <h4><strong>결제 예상금액</strong></h4>
                    </div>
                </td>
               <td class="text-right">
                   <div>
                       <h3><strong>29,900원</strong></h3>
                   </div>
               </td>
           </tr>
       </tbody>
    </table>
    <div class="row" id="btn-area">
        <a href="#" class="btn btn-default" id="keep-shoppig-btn"><p>쇼핑 계속하기</p></a>
        <a href="#" class="btn btn-default" id="purchasing"><p>구매하기</p></a>
    </div>
</div>
<%@ include file="/WEB-INF/views/inc/footer.jsp" %>
</body>
</html>