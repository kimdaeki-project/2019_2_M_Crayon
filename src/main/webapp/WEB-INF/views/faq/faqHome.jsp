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
<script src="https://kit.fontawesome.com/a076d05399.js">	
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>


	<!-------------------------------header----------------------------->

	<div class="header">
		<div class="header_inner">
			<div class="logoWrap">
				<a href="#"><img alt="" src="../resources/images/header/logo_sub.jpg" id="main"></a>
			</div>
			<div class="navigationWrap">
				<a href="#">투어상품</a>
				<a href="#">FAQ</a>
				<a href="#">여행리뷰</a>
				<a href="#">회사소개</a>
				<a href="#">마이페이지</a>
			</div>
			<div class="snsWrap">
				<img alt="" src="../resources/images/header/sns_instagram_sub.jpg" id="insta">
				<img alt="" src="../resources/images/header/sns_kakao_sub.png" id="kakaplus">
			</div>

		</div>
	</div>
	
	<!-- body -->
	<div class="body">
		<div class="body_head">
			<div class="body_back">
				<div class="body_h_txt">“무엇을 도와드릴까요?”</div>
				<div class="body_h_txt2">파리크레파스에 대한 궁금한 점을 확인해주세요. 카카오톡 문의도 가능합니다.</div>
			</div>
		</div>
		<!-- 넣을거 -->
		<div class="body_main">
			<div class="body_name">
			　투어상품
			</div>
			<div class="body_inner">
			</div>
		</div><!-- body_main 끝 -->
		
	</div>	
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
				
				</div><!-- footer끝 -->
	

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