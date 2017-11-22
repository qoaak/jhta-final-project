$(function() {
	$("#clicked").click(function() {
		$("#productQuestion").click();
	})
    $("#day").mouseenter(function() {
        $("#day").click();
    })
    $("#free").mouseenter(function() {
        $("#free").click();
    })
    
   $("#img2").hide(); 
    $("#img11").mouseenter(function() {
       $("#img1").show(); 
        $("#img11").css("border", "orange solid 2px");
        $("#img2").hide();
        $("#img21").css("border", "");
    });
    $("#img21").mouseenter(function() {
       $("#img2").show(); 
        $("#img21").css("border", "orange solid 2px");
        $("#img1").hide();
        $("#img11").css("border", "");
    });
    $("#btn-buy").click(function() {
        alert("상세옵션을 선택해 주세요.")
    });
    $("#btn-cart").click(function() {
        alert("상세옵션을 선택해 주세요.")
    });
 	$(window).scroll(function() {
     var sclTop = $(this).scrollTop();
     if(sclTop > 649) {
             $('#sc').css('position', 'fixed').css('top', '1px'); 
             $('#scr').css('position', 'fixed');
             $("#top").show();
             $("#bottom").show();
        } else {
           $('#sc').css('position', '').css('top', '');
           $('#scr').css('position', '');
           $("#top").hide();
            $("#bottom").hide();
        }
 	})
 	
 	function pagination(pageNo) {
 		$(":input[name=pageNo]").val(pageNo);
 		
	 	$.ajax({
	 		type:"GET",
	 		url:"getProquelist.do",
	 		data:$('#search-form').serialize(),
	 		dataType:'json',
	 		success:function(results) {
	 			//console.log(results);
				// 
				productque = results.productque;
	 			//console.log(productque);
	  			var html1 = "";
				$("#qnaitemstable table").empty();
	 			 if (productque != null) {
		 			$.each(productque, function(index, item) {
		 				//console.log(item);
		 				html1 += "<tr>";
		 				html1 += "<td>"+item.id+"</td>";
		 				html1 += "<td class='on' id='questiontitle_"+item.id+"'><a href='javascript:void(0);'>"+item.title+"</a></td>";
		 				html1 += "<td>"+item.customer.username+"</td>";
		 				html1 += "<td>"+item.strCreateDate+"</td>";
		 				html1 += "</tr>"; 
		 			});
	 			} else {
	 				$("#quelists").append("<tr><td colspan='5' class='text-center'>검색된 결과가 없습니다</td></tr>");
	 			} 
	 			
	 			$("#quelists").html(html1);
	 			
	 			var html2 = "";
	 			// ajax로 페이징 처리 
	 			$("#pagination-product-qna").empty();
	 			pagings = results.pagination;
	 			console.log(pagings);
				if (pagings.totalRows > 0) {
					if (pagings.pageNo > 1) {
						html2 += "<li><a href=''><span>&lt;&lt;</span></li>";
					} else {
						html2 += "<li class='disabled'><span>&lt;&lt;</span></li>";
					}
					for (var i = pagings.beginPage; i <= pagings.endPage; i++) {
						html2 += "<li class='"+ (pagings.pageNo == i ? 'active' : "") +"'><a href='"+i+"'>"+i+"</a></li>";
					}
					if (pagings.pageNo < pagings.totalPages) {
						html2 += "<li id='clicked'><a href='"+(pagings.pageNo + 1)+"'>&gt;&gt;</a></li>";
					} else {
						html2 += "<li class='disabled'><span>&gt;&gt;</span></li>";
					}
				}
				$("#pagination-product-qna").html(html2);
	 		}
	 	});
 	}
 	
 	pagination(1);
 	
 	$("#btn-search").click(function() {
 		$(":input[name=pageNo]").val(1);
 	});
 	
 	$("#pagination-product-qna").on('click', "a", function(event) {
 		event.preventDefault();
 		pagination($(this).attr('href'));
 	});
 	
 	$("#allSearch").click(function() {
 		$("#keywordwidth").val("");
 		$("#btn-search").click();
 	}); 
 	
 	$("#quelists").on('click', 'td.off',function(event){
 		//console.log($(this));
 		var $tr = $(this).closest('tr');
 		$tr.next().remove();
 		$(this).removeClass('off');
 		$(this).addClass('on');
 	});
 	$("#quelists").on('click', 'td.on', function(event) {
 		event.preventDefault();
 		//console.log('click');
 		var $tr = $(this).closest('tr');
 		var $td = $(this);
 		id = $td.attr('id').replace("questiontitle_", "");
 		//console.log(id);
 		if($td.attr('class') == 'on')
 			$.ajax({
 				type:"GET",
 				url:"getQueContent.do",
 				data:{id:id},
 				dataType:'json',
 				success:function(content) {
 					console.log(content);
 					var html3 = "<tr>";
 					html3 += "<td colspan='4'>"+content.question+"</td>";
 					html3 += "</tr>";
 					
 					$tr.after(html3);
 				}
 			}).done(function(){
 				$td.removeClass('on');
 				$td.addClass('off');
 			});
 	});
 	
 	$("#quelists").on('click', 'td.off',function(event){
 		//console.log($(this));
 		var $tr = $(this).closest('tr');
 		$tr.next().remove();
 		$(this).removeClass('off');
 		$(this).addClass('on');
 	});
 	
 	$("#quelists").on('click', 'td.on', function(event) {
 		event.preventDefault();
 		//console.log('click');
 		var $tr = $(this).closest('tr');
 		var $td = $(this);
 		id = $td.attr('id').replace("questiontitle_", "");
 		//console.log(id);
 		if($td.attr('class') == 'on')
 			$.ajax({
 				type:"GET",
 				url:"getAnsContent.do",
 				data:{id:id},
 				dataType:'json',
 				success:function(result) {
 					console.log(result);
 					var html4 = "<tr>";
 					html4 += "<td colspan='4'>"+result.answer+"</td>";
 					html4 += "</tr>";
 					
 					$tr.after(html4);
 				}
 			}).done(function(){
 				$td.removeClass('on');
 				$td.addClass('off');
 			});
 	});
 	
 	
});