<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/inc/top.jsp" %>
<link rel="stylesheet" href="/resources/css/usedform.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="./resources/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
</head>
<script type="text/javascript">
	$(function(){
	    //전역변수
	    var obj = [];              
	    //스마트에디터 프레임생성
	    nhn.husky.EZCreator.createInIFrame({
	        oAppRef: obj,
	        elPlaceHolder: "editor",
	        sSkinURI: "./resources/editor/SmartEditor2Skin.html",
	        htParams : {
	            // 툴바 사용 여부
	            bUseToolbar : true,            
	            // 입력창 크기 조절바 사용 여부
	            bUseVerticalResizer : true,    
	            // 모드 탭(Editor | HTML | TEXT) 사용 여부
	            bUseModeChanger : true,
	        }
	    });
	    //전송버튼
	    $("#insertBoard").click(function(){
	        //id가 smarteditor인 textarea에 에디터에서 대입
	        obj.getById["editor"].exec("UPDATE_CONTENTS_FIELD", []);
	        //폼 submit
	        $("#insertBoardFrm").submit();
	    });
	});
</script>
<body>
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>
	<div class="container-fluid">           
        <div class="container-fluid">           
            <div class="container">
                <h3>안전한 중고나라</h3>            
                <form action="./insertUsed.do" method="post" id="insertBoardFrm" enctype="multipart/form-data">
                    <table class="table table-condensed meronaform">
                        <tbody>
                            <tr>
                                <th>구분</th>
                                <td>
                                    <select name="" id="">
                                        <option value="">판매</option>
                                        <option value="">구매</option>
                                    </select>
                                </td>
                                <th>카테고리</th>
                                <td class="category">
                                    <select name="bigCategory">
                                        <option>====대분류====</option>
                                        <option value="food">식품</option>
                                        <option value="fassion">패션</option>
                                        <option value="appliance">가전</option>
                                    </select>
                                    <select name="middleCategory">
                                        <option>====중분류====</option>
                                    </select>
                                     <select name="smallCategory">
                                        <option>====소분류====</option>
                                    </select>
                                </td>
                                <th>희망가격</th>
                                <td class="hopeprice"><input type="number" name=""> 원</td>
                            </tr>
                            <tr>
                                <th>제목</th>
                                <td colspan="5">
                                    <input type="text" name="title" class="titlei">
                                </td>
                            </tr>
                        </tbody>                        
                    </table> 
					
					<textarea name="editor" id="editor" style="width: 100%; height: 400px;"></textarea>				
                          
                    <div class="form-group text-center">
                        <button type="submit" class="btn btn-info">등록</button>
                        <a href="home.do" class="btn btn-default">취소</a>
                    </div>

                </form>
            </div>      
        </div>
    </div>
	<%@ include file="/WEB-INF/views/inc/footer.jsp" %>
</body>
<script>
    
    $(function() {
        $('select[name=bigCategory]').change(function() {
           var temp = $('select[name=middleCategory]');
           var tamp = $('select[name=smallCategory]');
            
            var bigc = $(this).val();
            
            temp.children().remove();
            temp.append('<option value="">====중분류====</option>');       
            
            if(bigc == 'food'){
            temp.append('<option value="fruit">과일</option>');
            temp.append('<option value="vagitable">채소</option>');
            temp.append('<option value="meat">고기</option>');           
            
           }
           if(bigc == 'fassion'){
            temp.append('<option value="female">여성의류</option>');
            temp.append('<option value="male">남성의류</option>');
            temp.append('<option value="bag">가방</option>');              
         
           }
           if(bigc == 'appliance'){
            temp.append('<option value="ckichen">주방가전</option>');
            temp.append('<option value="life">생활가전</option>');
            temp.append('<option value="health">건강가전</option>');              
         
           }

           tamp.children().remove();
            tamp.append('<option value="">====소분류====</option>');
          });
        
        $('select[name=middleCategory]').change(function() {
           var temp = $('select[name=smallCategory]');
            var midc = $(this).val();
            
            temp.children().remove();
            temp.append('<option value="">====소분류====</option>');

            if(midc == 'fruit'){
            temp.append('<option value="domestic">국산과일</option>');
            temp.append('<option value="import">수입과일</option>');
            temp.append('<option value="refre">냉동</option>');
           }
           if(midc == 'vagitable'){
            temp.append('<option value="cabbage">배추</option>');
            temp.append('<option value="herb">허브</option>');
            temp.append('<option value="salard">샐러드</option>');
           }
           if(midc == 'meat'){
            temp.append('<option value="pork">돼지고기</option>');
            temp.append('<option value="beef">소고기</option>');
            temp.append('<option value="chick">닭고기</option>');
           }
            
            
            if(midc == 'female'){
            temp.append('<option value="shirts">상의</option>');
            temp.append('<option value="pants">바지</option>');
            temp.append('<option value="skirt">치마</option>');
           }
           if(midc == 'male'){
            temp.append('<option value="shirts">상의</option>');
            temp.append('<option value="pants">바지</option>');
            temp.append('<option value="suits">정장</option>');
           }
           if(midc == 'bag'){
            temp.append('<option value="back">백팩</option>');
            temp.append('<option value="cross">크로스백</option>');
            temp.append('<option value="clutch">클러치백</option>');
           }
            
            
            if(midc == 'ckichen'){
            temp.append('<option value="pot">밥솥</option>');
            temp.append('<option value="oven">오븐</option>');
            temp.append('<option value="coffee">커피머신</option>');
           }
           if(midc == 'life'){
            temp.append('<option value="vaccum">청소기</option>');
            temp.append('<option value="tele">전화기</option>');
            temp.append('<option value="stand">스탠드</option>');
           }
           if(midc == 'health'){
            temp.append('<option value="massage">마사지기</option>');
            temp.append('<option value="skin">피부관리기</option>');
            temp.append('<option value="bidet">비데</option>');
           }
          });
    })

</script>
</html>