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
				<div class="m">상품일정</div>
				<ul class="planList">
					<li class="plan"><div class="planLine"></div></li>
					<li class="plan"><div class="planLine"></div></li>
					<li class="plan"><div class="planLine"></div></li>
					<li class="plan"><div class="planLine"></div></li>
				</ul>
			</div><!-- menu1 -->
			<div class="menu2">
				<div class="m" id="m2">포함사항</div>
			</div><!-- menu2 -->
			<div class="menu3">
				<div class="m" id="m3">모임장소</div>
			</div><!-- menu3 -->
			<div class="menu4">
				<div class="m" id="m4">여행리뷰</div>
			</div><!-- menu4 -->
			<div class="menu5">
				<div class="m" id="m5">ㄱ</div>
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