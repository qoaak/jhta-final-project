<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/inc/top.jsp" %>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script src="js/jquery.bxslider.min.js"></script>
<script src="js/category.js"></script>
<link rel="stylesheet" href="/resources/css/category.css">
</head>
<body>
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>
    <div class="container-fluid">
        <div class="container">
            <form>
                <div id="pro-category" class="row">
                    <div class="col-sm-2">
                    <select class="form-control" name="opt1">
                        <option value="전체">전체</option>
                        <option value="전체">대분류1</option>
                        <option value="전체">대분류2</option>
                    </select>
                    </div>
                    <div class="col-sm-2">
                        <select class="form-control" name="opt2">
                            <option value="전체">전체</option>
                            <option value="전체">소분류1</option>
                            <option value="전체">소분류2</option>
                        </select>
                    </div>
                </div>
            </form>
            <div class="text-center">
                <h2><strong>가구</strong></h2>
            </div>
            <hr/>
            <div class="row">
                <div class="col-sm-3">
                    <a href="#">전체</a>
                </div>
                <div class="col-sm-3">
                    <a href="#">침실가구</a>
                </div>
                <div class="col-sm-3">
                    <a href="#">거실가구</a>
                </div>
                <div class="col-sm-3">
                    <a href="#">주방가구</a>
                </div>
                <div class="col-sm-3">
                    <a href="#">주방가구</a>
                </div>
                <div class="col-sm-3">
                    <a href="#">주방가구</a>
                </div>
                <div class="col-sm-3">
                    <a href="#">주방가구</a>
                </div>
                <div class="col-sm-3">
                    <a href="#">주방가구</a>
                </div>
                <div class="col-sm-3">
                    <a href="#">주방가구</a>
                </div>
                <div class="col-sm-3">
                    <a href="#">주방가구</a>
                </div>
                <div class="col-sm-3">
                    <a href="#">주방가구</a>
                </div>
                <div class="col-sm-3">
                    <a href="#">주방가구</a>
                </div>
            </div>
            <hr/>
        <!--
            <div class="row">
                <div class="col-sm-12">
                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                        
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                            <li data-target="#myCarousel" data-slide-to="2"></li>
                        </ol>

                        
                        <div class="carousel-inner">
                            
                            <div class="item active">
                                <img src="../image/001.jpg" style="width:100%;">
                            </div>

                            <div class="item">
                                <img src="../image/002.jpg" style="width:100%;">
                            </div>

                            <div class="item">
                                <img src="../image/003.jpg" style="width:100%;">
                            </div>
                        </div>

                       
                        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#myCarousel" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="col-sm-12">
                    
                    </div>
                </div>
            </div>        
            
           
            <hr/>
             -->
        </div>
        
        <div id="body-new">
           <div class="container">
                <h3 class="text-center">NEW</h3>
                <div class="row p-list">                  
                    <ul class="slider">
                        <li>
                            <div>
                                <div class="thumbnail">
                                    <a href="#">
                                        <img src="../image/slider001.jpg"/>
                                        <div class="caption">
                                            <div>
                                                <p>[벨리카]디바 거실장 풀세트</p> 
                                                <p class="text-right"><small>70,000원</small></p>
                                                <p class="text-right"><span>할인가 </span><strong>58,000 원</strong></p>           
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div>
                                <div class="thumbnail">
                                    <a href="#">
                                        <img src="../image/slider013.jpg"/>
                                        <div class="caption">
                                            <div>
                                                <p>[벨리카]디바 거실장 풀세트</p> 
                                                <p class="text-right"><small>70,000원</small></p>
                                                <p class="text-right"><span>할인가 </span><strong>58,000 원</strong></p>           
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div>
                                <div class="thumbnail">
                                    <a href="#">
                                        <img src="../image/slider003.jpg"/>
                                        <div class="caption">
                                            <div>
                                                <p>[벨리카]디바 거실장 풀세트</p> 
                                                <p class="text-right"><small>70,000원</small></p>
                                                <p class="text-right"><span>할인가 </span><strong>58,000 원</strong></p>           
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div>
                                <div class="thumbnail">
                                    <a href="#">
                                        <img src="../image/slider008.jpg"/>
                                        <div class="caption">
                                            <div>
                                                <p>[벨리카]디바 거실장 풀세트</p> 
                                                <p class="text-right"><small>70,000원</small></p>
                                                <p class="text-right"><span>할인가 </span><strong>58,000 원</strong></p>           
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </li>
                        
                    </ul>
                </div>
            </div>
            
        </div>
        
        <div class="container-fluid" id="body-main">
            <div class="flowbar" id="flow-bar">
                <div>
                    <p><strong>최근본상품</strong></p>
                    <ul>
                        <li><a href="#"><img src="../image/slider014.jpg"></a></li>
                        <li><a href="#"><img src="../image/slider014.jpg"></a></li>
                        <li><a href="#"><img src="../image/slider014.jpg"></a></li>
                    </ul>
                    <a class="btn btn-xs btn-default">&lt;</a>
                    
                    <a class="btn btn-xs btn-default">&gt;</a>
                </div>
            </div>
        <div class="container">
        
            <div class="text-right" id="star-recent">
                <a href="#">인기순</a> ｜
                <a href="#">최신순</a>
            </div>

            <div id="product-body" class="row">
                <ul class="list">
                    <li>
                        <div class="col-sm-4">
                            <div class="thumbnail">
                                <a href="#">
                                    <img src="../image/sm001.jpg" width="100%"/>
                                    <div class="caption">
                                        <div>
                                            <p>모던한 거실가구</p>
                                            <h4><strong>[벨리카]디바 거실장 풀세트</strong></h4>
                                            <p>
                                                <span class="rating">★★★★☆</span>
                                                <span><small>(201)</small></span>
                                            </p>
                                            <h4 class="text-right"><strong>139,000원</strong></h4>
                                            <hr />
                                                <label class="btn btn-info btn-xs">당일배송</label>
                                            <span class="pull-right"><small>11개 구매</small></span>            
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="col-sm-4">
                            <div class="thumbnail">
                                <a href="#">
                                    <img src="../image/sm002.jpg" width="100%"/>
                                    <div class="caption">
                                        <div>
                                            <p>모던한 거실가구</p>
                                            <h4><strong>[벨리카]디바 거실장 풀세트</strong></h4>
                                            <p>
                                                <span class="rating">★★★★☆</span>
                                                <span><small>(201)</small></span>
                                            </p>
                                            <h4 class="text-right"><strong>139,000원</strong></h4>
                                            <hr />
                                                <label class="btn btn-info btn-xs">당일배송</label>
                                            <span class="pull-right"><small>11개 구매</small></span>            
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="col-sm-4">
                            <div class="thumbnail">
                                <a href="#">
                                    <img src="../image/sm003.jpg" width="100%"/>
                                    <div class="caption">
                                        <div>
                                            <p>모던한 거실가구</p>
                                            <h4><strong>[벨리카]디바 거실장 풀세트</strong></h4>
                                            <p>
                                                <span class="rating">★★★★☆</span>
                                                <span><small>(201)</small></span>
                                            </p>
                                            <h4 class="text-right"><strong>139,000원</strong></h4>
                                            <hr />
                                                <label class="btn btn-info btn-xs">당일배송</label>
                                            <span class="pull-right"><small>11개 구매</small></span>            
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="col-sm-4">
                            <div class="thumbnail">
                                <a href="#">
                                    <img src="../image/sm004.jpg" width="100%"/>
                                    <div class="caption">
                                        <div>
                                            <p>모던한 거실가구</p>
                                            <h4><strong>[벨리카]디바 거실장 풀세트</strong></h4>
                                            <p>
                                                <span class="rating">★★★★☆</span>
                                                <span><small>(201)</small></span>
                                            </p>
                                            <h4 class="text-right"><strong>139,000원</strong></h4>
                                            <hr />
                                                <label class="btn btn-info btn-xs">당일배송</label>
                                            <span class="pull-right"><small>11개 구매</small></span>            
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="thumbnail">
                                <a href="#">
                                    <img src="../image/sm004.jpg" width="100%"/>
                                    <div class="caption">
                                        <div>
                                            <p>모던한 거실가구</p>
                                            <h4><strong>[벨리카]디바 거실장 풀세트</strong></h4>
                                            <p>
                                                <span class="rating">★★★★☆</span>
                                                <span><small>(201)</small></span>
                                            </p>
                                            <h4 class="text-right"><strong>139,000원</strong></h4>
                                            <hr />
                                                <label class="btn btn-info btn-xs">당일배송</label>
                                            <span class="pull-right"><small>11개 구매</small></span>            
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="thumbnail">
                                <a href="#">
                                    <img src="../image/sm004.jpg" width="100%"/>
                                    <div class="caption">
                                        <div>
                                            <p>모던한 거실가구</p>
                                            <h4><strong>[벨리카]디바 거실장 풀세트</strong></h4>
                                            <p>
                                                <span class="rating">★★★★☆</span>
                                                <span><small>(201)</small></span>
                                            </p>
                                            <h4 class="text-right"><strong>139,000원</strong></h4>
                                            <hr />
                                                <label class="btn btn-info btn-xs">당일배송</label>
                                            <span class="pull-right"><small>11개 구매</small></span>            
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="thumbnail">
                                <a href="#">
                                    <img src="../image/sm004.jpg" width="100%"/>
                                    <div class="caption">
                                        <div>
                                            <p>모던한 거실가구</p>
                                            <h4><strong>[벨리카]디바 거실장 풀세트</strong></h4>
                                            <p>
                                                <span class="rating">★★★★☆</span>
                                                <span><small>(201)</small></span>
                                            </p>
                                            <h4 class="text-right"><strong>139,000원</strong></h4>
                                            <hr />
                                                <label class="btn btn-info btn-xs">당일배송</label>
                                            <span class="pull-right"><small>11개 구매</small></span>            
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="thumbnail">
                                <a href="#">
                                    <img src="../image/sm004.jpg" width="100%"/>
                                    <div class="caption">
                                        <div>
                                            <p>모던한 거실가구</p>
                                            <h4><strong>[벨리카]디바 거실장 풀세트</strong></h4>
                                            <p>
                                                <span class="rating">★★★★☆</span>
                                                <span><small>(201)</small></span>
                                            </p>
                                            <h4 class="text-right"><strong>139,000원</strong></h4>
                                            <hr />
                                                <label class="btn btn-info btn-xs">당일배송</label>
                                            <span class="pull-right"><small>11개 구매</small></span>            
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="thumbnail">
                                <a href="#">
                                    <img src="../image/sm004.jpg" width="100%"/>
                                    <div class="caption">
                                        <div>
                                            <p>모던한 거실가구</p>
                                            <h4><strong>[벨리카]디바 거실장 풀세트</strong></h4>
                                            <p>
                                                <span class="rating">★★★★☆</span>
                                                <span><small>(201)</small></span>
                                            </p>
                                            <h4 class="text-right"><strong>139,000원</strong></h4>
                                            <hr />
                                                <label class="btn btn-info btn-xs">당일배송</label>
                                            <span class="pull-right"><small>11개 구매</small></span>            
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="thumbnail">
                                <a href="#">
                                    <img src="../image/sm004.jpg" width="100%"/>
                                    <div class="caption">
                                        <div>
                                            <p>모던한 거실가구</p>
                                            <h4><strong>[벨리카]디바 거실장 풀세트</strong></h4>
                                            <p>
                                                <span class="rating">★★★★☆</span>
                                                <span><small>(201)</small></span>
                                            </p>
                                            <h4 class="text-right"><strong>139,000원</strong></h4>
                                            <hr />
                                                <label class="btn btn-info btn-xs">당일배송</label>
                                            <span class="pull-right"><small>11개 구매</small></span>            
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </li>
                    
                </ul>
                
            </div>
        </div>
        </div>
    </div>
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>
</body>
</html>