<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>
<head>
<title>TourGoods</title>
<link href="<c:url value="/resources/css/layout/tourGoods.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/layout/header.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/layout/reset.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/layout/footer.css"/>" rel="stylesheet">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link href="<c:url value="/resources/css/layout/Calendar.css"/>" rel="stylesheet">
<meta charset="UTF-8">

</head>
<body>
<c:import url="../layout/nav.jsp"></c:import>
	
	<div class= "body">	

		<div class="body_main1">

			<input type="hidden" class="goods_number" value="${dto2.tourNum}">

			<h1 class="goods_title">${dto2.tourName}</h1>
			
<%-- 			${dto.tourName}, --%>

			<div class="goods_main_img" style="max-width:1100px">
				<c:forEach items="${files}" var="file" >
					<div class="">
     					<img class="mySlides" src="/s5/resources/upload/tour/${file.fname}" style="width:100%">
					</div>
				</c:forEach>
			</div>
		<script><!--이미지 슬라이드코드-->
			var myIndex = 0;
			carousel();
			
			function carousel() {
			  var i;
			  var x = document.getElementsByClassName("mySlides");
			  for (i = 0; i < x.length; i++) {
			    x[i].style.display = "none";  
			  }
			  myIndex++;
			  if (myIndex > x.length) {myIndex = 1}    
			  x[myIndex-1].style.display = "block";  
			  setTimeout(carousel, 5000);    
			}
		</script>		
			<div id="m1"></div>
		</div><!-- body_main1끝 -->
		<div class="header_2">
			<ul class="header_2inner">
				<li class="goods_menu"><a class="aA" href="#m1">상품일정</a></li>
				<li class="goods_menu"><a class="aA" href="#m2">안내사항</a></li>
				<li class="goods_menu"><a class="aA" href="#m3">모임장소</a></li>
				<li class="goods_menu"><a class="aA" href="#m4">여행리뷰</a></li>
				<li class="goods_menu"><a class="aA" href="#m5">관련영상</a></li>
				<li class="goods_menu"><a class="aA" href="#m6">고객센터</a></li>
			</ul>
		</div>
		
			
<!-- Calendar-->
	
	<div class="reserveDate_wrap">

		<div class="select_all">
			<div class="select_text">날짜 / 인원선택</div>
		</div>
		<div class="all_wrap">
			투어날짜  <input type="text" id="date">
			<button id="datebn">선택</button>
			
			<form id="frm" action="./calcal" method="POST">
			<input type="hidden" value="30000" id="calPrice">
			</form>
			
			<br> 인원 <select id="adult_wrap"
				onchange="AdultFunction()">
				<option value=0>성인0명</option>
				<option value=1>성인1명</option>
				<option value=2>성인2명</option>
				<option value=3>성인3명</option>
				<option value=4>성인4명</option>
				<option value=5>성인5명</option>
				<option value=6>성인6명</option>
				<option value=7>성인7명</option>
				<option value=8>성인8명</option>
				<option value=9>성인9명</option>
				<option value=10>성인10명</option>
			</select> <br> <br><select id="child_wrap"
				onchange="ChildFunction()">
				<option value=0>어린이0명</option>
				<option value=1>어린이1명</option>
				<option value=2>어린이2명</option>
				<option value=3>어린이3명</option>
				<option value=4>어린이4명</option>
				<option value=5>어린이5명</option>
				<option value=6>어린이6명</option>
				<option value=7>어린이7명</option>
				<option value=8>어린이8명</option>
				<option value=9>어린이9명</option>
				<option value=10>어린이10명</option>
			</select>
		</div>
		<!--값을 넣는곳-->
		<div class="selectOption">
			<div id="Aresult">선택 옵션</div>
			<div id="reDay"></div>
			<div id="Nad"></div>
			<div id="Nch"></div>
		</div>

		<div class="Allmoney"></div><button id="priceBtn">총 가격 보기</button>
		
		<input type="button" value="예약하기" class="select_btn">

		
	</div>

	<!--Calendar 끝-->
		
		<div class="body_main2">
			<div class="menu1">
				<div class="m">상품일정 
					<span class="mText" style="font-size: 15px; color: gray;">날짜별로 일정이 조금씩 다르므로 아래 일정 확인해주세요</span>
				</div>
					<div class="scheduleT">
						<div class="scheduleText">2019.1.1 ~ 2019.12.31
							<div class="scheduleText2">여행일정</div>
						</div>
						
								<div class="planLine">
									<c:forEach items="${files}" var="file" varStatus="table">
							   			<div class="timeTableWrap">
							      			
								      			<img src="/s5/resources/upload/tour/${file.fname}" class="timeTableImg">
								      			<span class="timeText">${file.time}</span>
												<span class="tableText">${file.timeTable}</span>
							      			
							    		</div>
									</c:forEach>
									
								</div>
							
					</div>
				
			</div><!-- menu1 -->
			<div class="menu2">
				<div class="m">
					<input type="hidden" name="${dto.num}" value="${dto.num}"> 
					<div class="textCompared textWrap">
						<br><br><h4>타업체비교불가</h4><br>
						<span class="textText" style="width: 720px;">${dto.compared}</span>
					</div>
					<div class="textInclude textWrap"> 
						<h4>포함사항</h4><br>
						<span class="textText" style="width: 720px;">${dto.include}</span>
					</div>
					<div class="textExclude textWrap"> 
						<h4>불포함사항</h4><br>
						<span class="textText" style="width: 720px;">${dto.exclude}</span>
					</div>
					<div class="textAlert textWrap"> 
						<h4>안내사항</h4><br>
						<span class="textText" style="width: 720px;">${dto.alert}</span>
					</div>
					<div class="textPrepared textWrap"> 
						<h4>준비사항</h4><br>
						<span class="textText" style="width: 720px;">${dto.prepared}</span>
					</div>
					<div class="textAttention textWrap"> 
						<h4>주의사항</h4><br>
						<span class="textText" style="width: 720px;">${dto.attention}</span>
					</div>
					<div class="textRefund textWrap"> 
						<h4>환불규정</h4><br>
						<span class="textText" style="width: 720px;">${dto.refund}</span>
					</div>
					<c:forEach items="${files}" var="file" >
						<div class="">
     						<img src="/s5/resources/upload/tour/${file.fname}" style="width:720px;">
						</div>
					</c:forEach>
				</div>
			</div><!-- menu2 -->
			<div class="menu3">
				<div id="m3"></div>
				<div class="m m3 m3_main">모임장소<br><br>
					<img class="m3Img" src="../resources/images/tour/T3_1.jpg">
					<div class="m3Txt">M4호선 Cite 출구는 하나입니다.</div>
					<a href="https://www.google.com/maps/place/%EC%8B%9C%ED%85%8C+%EC%84%AC/@48.8546301,2.3472317,18.39z/data=!4m5!3m4!1s0x47e671e037bbc73d:0x9c2a87a32dd21743!8m2!3d48.8548825!4d2.3474928?hl=ko&shorturl=1">
						<img class="m3Map" src="../resources/images/tour/map_view_btn.png"></a>
				</div>
				
			</div><!-- menu3 -->
			<div class="menu4">
				<div id="m4"></div>
				<div class="m m4_main">여행리뷰</div>
				<div id="reviewT"></div>
				<button id="reviewGO" class="gocenterBtn" style="cursor: pointer;">모든 후기 보기</button>
				<script type="text/javascript">
				var xhttp;
			      if (XMLHttpRequest) {
			         xhttp = new XMLHttpRequest();
			      } else {
			         xhttp = new ActiveXObject("Microsoft.XMLHTTP");
			      }

			      xhttp.open("GET", "../review/tourReview");
			      xhttp.send();

			      xhttp.onreadystatechange = function() {
			         if (this.readyState == 4 && this.status == 200) {
			            $("#reviewT").html(this.responseText);
			         }
			      };	
				</script>
			</div><!-- menu4 -->
			<div class="menu5">
				<div id="m5"></div>
				<div class="m"></div>
				<div class="ytb"><iframe id ="ytb_box" src='${dto.youTube}' allowfullscreen="" frameborder="0"  width="640" height="360"></iframe></div>
			</div><!-- menu5 -->
			<div class="menu6">
				<div class="m" id="m6">고객센터</div>
				<div class="gocenter">
					<button id="qnaGO" class="gocenterBtn" style="cursor: pointer;">상품 문의</button>
					<button id="kakaoGO" class="gocenterBtn" style="cursor: pointer;">1:1 맞춤 카카오톡</button>
					<div class="gocenterImg"><img id ="instaGO" src="../resources/images/tour/insta_banner.jpg" style="width:100%"></div>
				</div>
				<script type="text/javascript">
				$("#kakaoGO").click(function(){
					open("http://pf.kakao.com/_vVuQT","_blank","resizable=yes,width=550,height=900px")
				});
				
				$("#instaGO").click(function(){
					open("https://www.instagram.com/pariscrapas/","_blank","resizable=yes,width=550,height=900px")
				});
				
				$("#qnaGO").click(function(){
					 location.href= "../qna/qnaHome"
				});
				
				$("#reviewGO").click(function(){
					 location.href= "../review/reviewList"
				});
				</script>
			</div><!-- menu6 -->
			<script type="text/javascript">
			 $(document).on('click','.goods_menu a',function(event){
				  var headerHeight = $('.header_2').outerHeight();
				  event.preventDefault();
				  	$("html,body").animate({
				    	scrollTop : $(this.hash).offset().top
				    },300)
				  });
			 
			
			</script>
		</div>
	</div><!-- body끝 -->
	
	
	<!--Calendar 스크립트-->
	
	<script type="text/javascript">
		$(function() {
			$("#date").datepicker(
					{
						dateFormat : "yy/mm/dd",
						beforeShowDay : function(date) {
							var day = date.getDay();
							
							return [ (day != 0 && day != 2 && day != 3
									&& day != 4 && day != 6) ];
						},
						minDate: 0,
						maxDate: new Date('2020-12-31'),
						onSelect : function(day) {

							var date = new Date($("#date").datepicker({
								dateFormat : "yy / mm / dd"
							}).val());

						}

					});

		});
	</script>

	<script type="text/javascript">
		$("#datebn").click(function() {

			var date = $("#date").val();
			$("#reDay").html(date);
		});

		function AdultFunction() {
			var adult = document.getElementById("adult_wrap").value;
			document.getElementById("Nad").innerHTML = "성인"+adult+"명";
		}

		function ChildFunction() {
			var child = document.getElementById("child_wrap").value;
			document.getElementById("Nch").innerHTML = "어린이"+child+"명";
		}
		
			$("#priceBtn").click(function() {
				
				var adult = document.getElementById("adult_wrap").value;
				var child = document.getElementById("child_wrap").value;
				var price = $("#calPrice").val();
				var tp = (adult*price)+(child*price);
				$(".Allmoney").html(tp+"원"); 
			})
		
	</script>
	

	<script type="text/javascript">
	
	  $(".select_btn").click(function() {
		  
		  	var adult = document.getElementById("adult_wrap").value;
			var child = document.getElementById("child_wrap").value;
			var personNum = (adult*1)+(child*1)
			var price = $("#calPrice").val();

			var totalPrice = (adult*price)+(child*price);
			var day = $("#date").val(); 
			var tourName = $(".goods_title").val();
			var tourNum = $(".goods_number").val();
			
			if(${sessionScope.member eq null}){
				alert("로그인을 해주세요");
				location.href="../member/memberLogin";
				}else if($("#date").val() == "") {
					alert("날짜를 선택하세요")
					$("#date").focus();
				} else if(($("#adult_wrap").val()+$("#child_wrap").val()) < 1){
					alert("한명이상은 선택해주세요")
					$("#adult_wrap").focus();
				}else{
					window.open("./Reservation?adult="+adult+'&child='+child+'&day='+day+'&totalPrice='+totalPrice+'&tourName='+tourName+'&personNum='+personNum+'&tourNum='+tourNum, "","width=800,height=979, left=600");	
					
			}

	     }); 


	</script>
	
	
	
	
	
	
<c:import url="../layout/navFoot.jsp"></c:import>
</body>
</html>