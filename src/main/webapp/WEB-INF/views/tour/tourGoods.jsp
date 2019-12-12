<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>TourGoods</title>
<link href="<c:url value="/resources/css/layout/tourGoods.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/header.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/reset.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/footer.css"/>"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/a076d05399.js">
</script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<meta charset="UTF-8">

</head>
<body>
<c:import url="../layout/nav.jsp"></c:import>
	
	<div class= "body">		
		
		<div class="body_main1">
			<h3 class="goods_title">파리워킹투어</h3>
			<div class="goods_main_img" style="max-width:1100px">
				<img class="mySlides" src="../resources/images/tour/TT4_1.jpg" style="width:100%">
			 	<img class="mySlides" src="../resources/images/tour/TT4_2.jpg" style="width:100%">
			 	<img class="mySlides" src="../resources/images/tour/TT4_3.jpg" style="width:100%">
			 	<img class="mySlides" src="../resources/images/tour/TT4_4.jpg" style="width:100%">
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
		<div class="body_main2">
			<div class="menu1">
				<div class="m">상품일정 
					<span class="mText" style="font-size: 15px; color: gray;">날짜별로 일정이 조금씩 다르므로 아래 일정 확인해주세요</span>
					
				</div>
				<ul class="planList">
					<li class="plan">
						<div class="planLine">
							<c:forEach items="${dto.files}" var="file">
								<div class="modal-content">
						   			<div class="mySlides">
						      			<img src="/s5/resources/upload/review/${file.fname}" style="width:720px; height: 900px;">
						    		</div>
						  		</div>
							</c:forEach>
						</div>
					</li>
				</ul>
			</div><!-- menu1 -->
			<div class="menu2">
				<div id="m2"></div>
				<div class="m">투어 안내
					<input type="text" name="${dto.num}" value="${dto.num}"> 
					<div class="textCompared">
						<h4>타업체비교불가</h4>
						<span>${dto.compared}</span>
					</div>
					<div class="textInclude"> 
						<h4>포함사항</h4>
						<span>${dto.include}</span>
					</div>
					<div class="textExclude"> 
						<h4>불포함사항</h4>
						<span>${dto.exclude}</span>
					</div>
					<div class="textAlert"> 
						<h4>안내사항</h4>
						<span>${dto.alert}</span>
					</div>
					<div class="textPrepared"> 
						<h4>준비사항</h4>
						<span>${dto.prepared}</span>
					</div>
					<div class="textAttention"> 
						<h4>주의사항</h4>
						<span>${dto.attention}</span>
					</div>
					<div class="textRefund"> 
						<h4>환불규정</h4>
						<span>${dto.refund}</span>
					</div>
					<c:forEach items="${dto.files}" var="file" >
						<div class="mySlides">
     						<img src="/s5/resources/upload/tour/${file.fname}" style="width:720px; height: 900px;">
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
				<button id="reviewGO" class="gocenterBtn">모든 후기 보기</button>
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
				<div class="ytb"><iframe id ="ytb_box" src='https://www.youtube.com/embed/Tj2W0o3h3OI' allowfullscreen="" frameborder="0"  width="640" height="360"></iframe></div>
			</div><!-- menu5 -->
			<div class="menu6">
				<div class="m" id="m6">고객센터</div>
				<div class="gocenter">
					<button id="qnaGO" class="gocenterBtn">상품 문의</button>
					<button id="kakaoGO" class="gocenterBtn">1:1 맞춤 카카오톡</button>
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
<c:import url="../layout/navFoot.jsp"></c:import>
</body>
</html>