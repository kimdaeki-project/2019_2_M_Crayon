<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reservation</title>
<link href="<c:url value="/resources/css/layout/Calendar.css"/>"
	rel="stylesheet">
</head>
<body>
	<form id="frm_1" action="./Reservation" method="POST">
		
		<div class="reservationTitle">
			<div class="ReserveT">예약자 정보</div><!--제목-->
		
			<div class="ReserveTN">예약상품 : ddd</div><!--예약 상품-->
			<div class="ReserveP_PN">투어날짜 /인원 : yy/mm/dd  / 20명</div> <!--가격, 인원-->
			
		</div><!-- Title의 끝-->
		<div class="InputIN">
				<div class="RN_wrap">
				 <div class="RN">ID</div><input type="text" id='email' name="email" class="RT"> 
				 <div class="RN">입금자</div><input type="text" id='moneyMan' name="moneyMan" class="RT"> 
				</div>
				<div class="RN2_wrap">
				<div class="RN2">이름</div> <input type="text" id='name' name="name" class="RT2"> 
				<div class="RN2">전화번호</div> <input type="text" id='phone' name="phone" class="RT2">
				</div>
				<br><br>
				<textarea id="ps" name="ps" class="RTT"></textarea>
		</div>
				<div id="Raccess"><!-- 이용약관-->
					사용자 이용약관<textarea id="access" name="access"></textarea>
					<div class="radioSelect">
					<div>동의</div><input type="radio">
					<div>동의하지 않음</div><input type="radio">
					</div>
				</div>
				<div class="ReserveButn">
					<input type="button" class="reserveOK" value="예약">
					<input type="button" class="NOreserve" value="취소">
				</div> 
	</form>


</body>
</html>