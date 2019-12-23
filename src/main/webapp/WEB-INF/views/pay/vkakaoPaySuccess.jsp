<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
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
<link href="<c:url value="/resources/css/layout/kakaoPaySuccess.css"/>"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<c:import url="/resources/bootStrap/bootStrap.jsp"></c:import>
</head>
<body>
<c:import url="../layout/nav.jsp"></c:import>

<div class="body_head" >
		<div class="body_back">
		</div>
		</div>
		<!-- 넣을거 -->
		<div class="body_main">
			<div class="body_name">　결제완료</div>
			<div class="body_inner">
				<div class="inner2"> 
				<div class="katxt">결제일시 : ${info.approved_at}</div><br/>
				<div class="katxt">예약번호 : ${info.partner_order_id}</div><br/>
				<div class="katxt">상품명 : ${info.item_name}</div><br/>
				<div class="katxt">결제금액 : ${info.amount.total}</div><br/>
				<div class="katxt">결제방법 : ${info.payment_method_type}</div><br/>
				<div class="katxt">쌍용크레파스 VIP 맞춤투어 </div>
				<div class="katxt">결제가 정상적으로 처리되었습니다.</div>
				</div>
				<br>
				<br> 
				<div style="text-align: center;font-size:20px; font-weight: 600; letter-spacing:-2px;">쌍용크레파스를 이용해주셔서 감사합니다</div>

			
			</div>
		</div>
 


 <c:import url="../layout/navFoot.jsp"></c:import>
</body>
</html>