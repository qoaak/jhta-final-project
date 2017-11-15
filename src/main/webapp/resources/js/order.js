$(function() {
	
		$("#allCheck").click(function() {
			if($("#allCheck").prop("checked")) {
				$("input[name=checked]").prop("checked",true);
			} else {
				$("input[name=checked]").prop("checked",false);
			}
		});
	
        $("#optionsRadios1").click(function() {
            $("#address4").val("");
            $("#detailaddress4").val("");
            
            var addre = $("#address1").val();
            var detailaddre = $("#detailaddress1").val();
            
            $("#address4").val(addre);
            $("#detailaddress4").val(detailaddre);
        });
        
        $("#optionsRadios2").click(function() {
            $("#address4").val("");
            $("#detailaddress4").val("");
            
            var addre = $("#address2").val();
            var detailaddre = $("#detailaddress2").val();
            
            $("#address4").val(addre);
            $("#detailaddress4").val(detailaddre);
        });
        
        $("#optionsRadios3").click(function() {
            $("#address4").val("");
            $("#detailaddress4").val("");
            
            var addre = $("#address3").val();
            var detailaddre = $("#detailaddress3").val();
            
            $("#address4").val(addre);
            $("#detailaddress4").val(detailaddre);
        });
            
        
        $("#useadd1").click(function() {
            var addr1 = $("#main-address1").val();
            var detailaddr = $("#address-detail-input1").val();
            
            $("#address1").val(addr1);
            $("#detailaddress1").val(detailaddr);
        });
        
        $("#useadd2").click(function() {
            var addr1 = $("#main-address2").val();
            var detailaddr = $("#address-detail-input2").val();
            
            $("#address2").val(addr1);
            $("#detailaddress2").val(detailaddr);
        });
        
        $("#useadd3").click(function() {
            var addr1 = $("#main-address3").val();
            var detailaddr = $("#address-detail-input3").val();
            
            $("#address3").val(addr1);
            $("#detailaddress3").val(detailaddr);
        });
        
        
    
        $("#address-btn1").click(function(event) {
            event.preventDefault();
            new daum.Postcode({
                oncomplete: function(data) {
                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                    // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    var fullAddr = ''; // 최종 주소 변수
                    var extraAddr = ''; // 조합형 주소 변수

                    // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                    if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                        fullAddr = data.roadAddress;

                    } else { // 사용자가 지번 주소를 선택했을 경우(J)
                        fullAddr = data.jibunAddress;
                    }

                    // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                    if(data.userSelectedType === 'R'){
                        //법정동명이 있을 경우 추가한다.
                        if(data.bname !== ''){
                            extraAddr += data.bname;
                        }
                        // 건물명이 있을 경우 추가한다.
                        if(data.buildingName !== ''){
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                        fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                    }

                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    $('#postal-code1').val(data.zonecode); //5자리 새우편번호 사용
                   $('#main-address1').val( fullAddr);

                    // 커서를 상세주소 필드로 이동한다.
                    $('#address-detail-input1').focus();
                }
            }).open();
        });
        $("#address-btn2").click(function(event) {
            event.preventDefault();
            new daum.Postcode({
                oncomplete: function(data) {
                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                    // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    var fullAddr = ''; // 최종 주소 변수
                    var extraAddr = ''; // 조합형 주소 변수

                    // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                    if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                        fullAddr = data.roadAddress;

                    } else { // 사용자가 지번 주소를 선택했을 경우(J)
                        fullAddr = data.jibunAddress;
                    }

                    // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                    if(data.userSelectedType === 'R'){
                        //법정동명이 있을 경우 추가한다.
                        if(data.bname !== ''){
                            extraAddr += data.bname;
                        }
                        // 건물명이 있을 경우 추가한다.
                        if(data.buildingName !== ''){
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                        fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                    }

                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    $('#postal-code2').val(data.zonecode); //5자리 새우편번호 사용
                   $('#main-address2').val( fullAddr);

                    // 커서를 상세주소 필드로 이동한다.
                    $('#address-detail-input2').focus();
                }
            }).open();
        });
        $("#address-btn3").click(function(event) {
            event.preventDefault();
            new daum.Postcode({
                oncomplete: function(data) {
                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                    // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    var fullAddr = ''; // 최종 주소 변수
                    var extraAddr = ''; // 조합형 주소 변수

                    // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                    if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                        fullAddr = data.roadAddress;

                    } else { // 사용자가 지번 주소를 선택했을 경우(J)
                        fullAddr = data.jibunAddress;
                    }

                    // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                    if(data.userSelectedType === 'R'){
                        //법정동명이 있을 경우 추가한다.
                        if(data.bname !== ''){
                            extraAddr += data.bname;
                        }
                        // 건물명이 있을 경우 추가한다.
                        if(data.buildingName !== ''){
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                        fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                    }

                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    $('#postal-code3').val(data.zonecode); //5자리 새우편번호 사용
                   $('#main-address3').val( fullAddr);

                    // 커서를 상세주소 필드로 이동한다.
                    $('#address-detail-input3').focus();
                }
            }).open();
        });
        
    })