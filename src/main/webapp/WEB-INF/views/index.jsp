<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<html>
<head>
<title>Home</title>
<link href="<c:url value="/resources/css/layout/header.css"/>"
	rel="stylesheet">
	<link href="<c:url value="/resources/css/layout/reset.css"/>"
	rel="stylesheet">
	<link href="<c:url value="/resources/css/layout/main.css"/>"
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
				<img alt="" src="./resources/images/mainHome/logo.jpg">
			</div>
			<div class="navigationWrap">
				<a href="#">투어상품</a>
				<a href="#">FAQ</a>
				<a href="#">여행리뷰</a>
				<a href="#">회사소개</a>
				<a href="#">마이페이지</a>
			</div>
			<div class="snsWrap">
				<img alt="" src="./resources/images/mainHome/sns_instagram.jpg">
				<img alt="" src="./resources/images/mainHome/sns_kakao.jpg">
			</div>

		</div>
	</div>

	<!-------------------------------Main----------------------------->
	
	<div class="body">
		<div class="main_body">
			<div id="main_body_image">
			
				<div class="body_inner">
					<div class="main_font">
						<span>파리</span>
						<span>크레파스</span>
					</div>
					
					<div class="main_font2">
						<span>Paris</span>
						<span>Crayon</span>
					</div>
				</div>
			
			</div>
			
		</div> 
	
	</div>



</body>
</html>
