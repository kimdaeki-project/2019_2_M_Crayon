<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<c:url value="/resources/css/layout/header.css"/>"
	rel="stylesheet">
	<link href="<c:url value="/resources/css/layout/reset.css"/>"
	rel="stylesheet">
	<link href="<c:url value="/resources/css/layout/footer.css"/>"
	rel="stylesheet">
	<link href="<c:url value="/resources/css/layout/bodyMain.css"/>"
	rel="stylesheet">
	<link href="<c:url value="/resources/css/layout/company.css"/>"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>

	<c:import url="../layout/nav.jsp"></c:import>

	<!-------------------------------header----------------------------->
	
	<!-- body -->
	<div class="body">
		<div class="body_head">
			<div class="body_back">
				<div class="body_h_txt">“500년 역사의 전통 파리크레파스를 소개합니다.”</div>
				<div class="body_h_txt2">1519년 프랑스 파리의 여행가 크레파스씨로부터 시작한 파리크레파스를 소개합니다.</div>
			</div>
		</div>
		<!-- 넣을거 -->
		<div class="body_main">
			<div class="body_name">
			　회사소개
			</div>
			<div class="body_inner">
				<div class="contents">
					<p>
					프랑스 여행의 관련된 모든 서비스를 한 곳에서 해결할 수 있는 파리크레파스 여행사입니다.<br>
					합리적인 비용으로 여러분께 최상의 서비스와 감동을 드리겠습니다.<br>
					</p>
					<p>
					10년이상 베테랑 가이드들의 전문적인 노하우와 재미를 담아 여러분께 최고의 만족을 제공할 것을 약속합니다.<br>
					파리크레파스는 한국과 프랑스 양국 사업자를 모두 가지고 있는 합법 여행사입니다.<br>
					</p>
					<p class="bigText">
					프랑스 여행의 시작, 파리크레파스 여행사가 함께합니다.
					</p>
				</div>
			</div>
			
			<div>
				<div id="myModal" class="modal">
		  <span class="close cursor" onclick="closeModal()">&times;</span>
		  <div class="modal-content">
		  
			    <div class="mySlides">
			      <div class="numbertext">1 / 6</div>
			      <img src="../resources/images/certification/in_1.jpg" style="width:720px; height: 900px;">
			    </div>
			
			    <div class="mySlides">
			      <div class="numbertext">2 / 6</div>
			      <img src="../resources/images/certification/in_2.jpg" style="width:720px; height: 900px;">
			    </div>
			
			    <div class="mySlides">
			      <div class="numbertext">3 / 6</div>
			      <img src="../resources/images/certification/in_3.jpg" style="width:720px; height: 900px;">
			    </div>
			    
			    <div class="mySlides">
			      <div class="numbertext">4 / 6</div>
			      <img src="../resources/images/certification/in_4.jpg" style="width:720px; height: 900px;">
			    </div>
			    
			    <div class="mySlides">
			      <div class="numbertext">5 / 6</div>
			      <img src="../resources/images/certification/in_5.jpg" style="width:720px; height: 900px;">
			    </div>
			    
			   	<div class="mySlides">
			      <div class="numbertext">6 / 6</div>
			      <img src="../resources/images/certification/in_6.jpg" style="width:720px; height: 900px;">
			    </div>
					    
		    <div class="caption-container">
		      <p id="caption"></p>
		    </div>
			    
			    <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
			    <a class="next" onclick="plusSlides(1)">&#10095;</a>
			
<!-- 			    <div class="column"> -->
<!-- 			      <img class="demo cursor" src="../resources/images/certification/in_1.jpg" style="width: 200px; height: 100px;" onclick="currentSlide(1)" alt="Fall"> -->
<!-- 			    </div> -->
<!-- 			    <div class="column"> -->
<!-- 			      <img class="demo cursor" src="../resources/images/certification/in_2.jpg" style="width: 200px; height: 100px;" onclick="currentSlide(2)" alt="Snow"> -->
<!-- 			    </div> -->
<!-- 			    <div class="column"> -->
<!-- 			      <img class="demo cursor" src="../resources/images/certification/in_3.jpg" style="width: 200px; height: 100px;" onclick="currentSlide(3)" alt="Mountains and fjords"> -->
<!-- 			    </div> -->
<!-- 			    <div class="column"> -->
<!-- 			      <img class="demo cursor" src="../resources/images/certification/in_4.jpg" style="width: 200px; height: 100px;" onclick="currentSlide(4)" alt="Northern Lights"> -->
<!-- 			    </div> -->
<!-- 			    <div class="column"> -->
<!-- 			      <img class="demo cursor" src="../resources/images/certification/in_5.jpg" style="width: 200px; height: 100px;" onclick="currentSlide(5)" alt="person"> -->
<!-- 			    </div> -->
<!-- 			    <div class="column"> -->
<!-- 			      <img class="demo cursor" src="../resources/images/certification/in_6.jpg" style="width: 200px; height: 100px;" onclick="currentSlide(6)" alt="person"> -->
<!-- 			    </div> -->
			    
			  </div>
			</div>
			</div>
			
			<div class="certification_name">
			　인증서
			</div>
			
			<div class="certificationList row">
				<div class="imgWrap column">
<!-- 					<a href="../resources/images/certification/in_1.jpg?s=300x200" style="width:300px; height:100px;"> -->
						<img src="../resources/images/certification/in_1.jpg" style="width: 220px; height: 300px;" onclick="openModal();currentSlide(1)" class="hover-shadow cursor">
<!-- 					</a> -->
					<p>한국 사업자 등록증</p>
				</div>
				<div class="imgWrap column">
					<img src="../resources/images/certification/in_2.jpg" alt="한국 관광 사업자 등록증" style="width: 220px; height: 300px;" onclick="openModal();currentSlide(2)" class="hover-shadow cursor">
					<p>한국 관광 사업자 등록증 </p>
				</div>
				<div class="imgWrap column">
					<img src="../resources/images/certification/in_3.jpg" alt="한국인 허가 보험증" style="width: 220px; height: 300px;" onclick="openModal();currentSlide(3)" class="hover-shadow cursor">
					<p>한국인 허가 보증보험</p>
				</div>
				<div class="imgWrap column">
					<img src="../resources/images/certification/in_4.jpg" alt="프랑스 사업자등록증" style="width: 220px; height: 300px;" onclick="openModal();currentSlide(4)" class="hover-shadow cursor">
					<p>프랑스 사업자 등록증</p>
				</div>
				<div class="imgWrap column">
					<img src="../resources/images/certification/in_5.jpg" alt="프랑스 허가증" style="width: 220px; height: 300px;" onclick="openModal();currentSlide(5)" class="hover-shadow cursor">
					<p>프랑스 허가증 </p>
				</div>
				<div class="imgWrap column">
					<img src="../resources/images/certification/in_6.jpg" alt="프랑스 라이센스" style="width: 220px; height: 300px;" onclick="openModal();currentSlide(6)" class="hover-shadow cursor">
					<p>프랑스 라이센스 </p>
				</div>
			</div>
					    
		</div>
		
		</div>		
		<!-- body_main 끝 -->
	
	
				<!-- --------footer -->			
				<div class="footer">
					<div class="footer_box">
						<br><br><br>상호 : 파리크레파스 | 대표 : 김은경ㅣ<a href="#">[사업자 정보보기]</a>
						<br>한국 주소 : 인천광역시 부평구 부일로19번길 8,1층 TEL : 070-4645-8279 | E-MAIL : PARISCRAYON@NAVER.COM
						<br>한국 사업자 등록 번호 : 122-14-72077 ㅣ통신 판매업 등록번호 : 제 2014 인천부평 - 00850 호 ㅣ 한국 관광 등록 번호 : 제2015-000003호
						<br><br>한국 인 허가 보증보험번호 : 제 100-000-2016 0161 1483 호
						<br><br>프랑스 주소 : 9 RUE ANDRE PINGAT 51100 REIMS ㅣ프랑스 라인센스 번호 2015/21/0000464 | 프랑스 허가 번호 JEV 11 15 02414
						<br>프랑스 사업자 번호 : SIRET:805 399 433 R.C.S REIMS
						<br><br>COPYRIGHT(C)2008 PARIS CRAYON. ALL RIGHT RESERVED. CREATED BY PARISCRAYON.
						<br><br>
						<input type=button id="view1" value="이용약관">ㅣ<input type=button id="view2" value="개인정보 보호방침">
						
					</div>
				
				</div>
				<!-- footer끝 -->
	
	
	<!-- 사진 크게보기 script -->
	<script>
		function openModal() {
		  document.getElementById("myModal").style.display = "block";
		}
		
		function closeModal() {
		  document.getElementById("myModal").style.display = "none";
		}
		
		var slideIndex = 1;
		showSlides(slideIndex);
		
		function plusSlides(n) {
		  showSlides(slideIndex += n);
		}
		
		function currentSlide(n) {
		  showSlides(slideIndex = n);
		}
		
		function showSlides(n) {
		  var i;
		  var slides = document.getElementsByClassName("mySlides");
		  var dots = document.getElementsByClassName("demo");
		  var captionText = document.getElementById("caption");
		  if (n > slides.length) {slideIndex = 1}
		  if (n < 1) {slideIndex = slides.length}
		  for (i = 0; i < slides.length; i++) {
		      slides[i].style.display = "none";
		  }
		  for (i = 0; i < dots.length; i++) {
		      dots[i].className = dots[i].className.replace(" active", "");
		  }
		  slides[slideIndex-1].style.display = "block";
		  dots[slideIndex-1].className += " active";
		  captionText.innerHTML = dots[slideIndex-1].alt;
		}
	</script>
	
	

	<!-- footer script -->
	<script type="text/javascript">
		$("#kakaplus").click(function(){
			open("http://pf.kakao.com/_vVuQT","_blank","resizable=yes,width=550,height=900px")
		});
	
		
		$("#insta").click(function(){
			open("https://www.instagram.com/pariscrapas/","_blank","resizable=yes,width=550,height=900px")
		});
	
		$("#view1").click(function(){
			open("http://www.pariscrayon.com/html/row.html","_blank","resizable=yes,width=550,height=900px")
		});
	
		$("#view2").click(function(){
			open("http://www.pariscrayon.com/html/privacy.html","_blank","resizable=yes,width=550,height=900px")
		});
	</script>
	
	

</body>
</html>