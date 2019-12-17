<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reservation</title>
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link href="<c:url value="/resources/css/layout/Calendar.css"/>"
	rel="stylesheet">
</head>
<body>

	<form id="form11" action="./Reservation" method="POST">

		<div class="reservationTitle">
			<div class="ReserveT">예약자 정보</div>
			<!--제목-->

			예약상품 : <input type="text" class="ReserveTN" id="tourName" name="tourName" value="${param.tourName}"> <!--tourName-->
					<input type="hidden" id="tourNum" name="tourNum" value="${param.tourNum}"> <!--tourNum-->
					
			<!--예약 상품-->
			투어날짜 :<input type="text" id="day" name="day" class="ReserveP_PN" value="${param.day}"><!--day-->
					<input type="hidden" value="${param.adult}"> 
					<input type="hidden" value="${param.child}">
				
				
				 총: <input type="text" id="personNum" name="personNum" value="${param.personNum}">명  <!--personNum-->
				 가격: <input type="text" id="totalPrice" name="totalPrice" value="${param.totalPrice}"> 원 <!--totalPrice-->
				<!--가격, 인원-->

				</div>
				
		<!-- Title의 끝-->
		<div class="InputIN">
			<div class="RN_wrap">
				
				<div class="RN">ID</div>
				<input type="text" id='email' name="email" class="RT" readonly="readonly" value="${sessionScope.member.email}"> <!--email-->
				
				<div class="RN">KaKaoID</div>
				<input type="text" id='kakaoID' name="kakaoID" class="RT"><!--KaKaoID-->
			</div>
			
			<div class="RN2_wrap">
				
				<div class="RN2">이름</div>
				<input type="text" id='name' name="name" readonly="readonly" class="RT2" value="${sessionScope.member.name}"><!--name-->
				
				<div class="RN2">전화번호</div>
				<input type="text" id='phone' name="phone" class="RT2"><!--phone-->
			</div>
		
		<br>
			<br>
			
			<textarea id="ps" name="ps" class="RTT"></textarea> <!--ps-->
		</div>
		<div id="Raccess">
			<!-- 이용약관-->
			사용자 이용약관
			<textarea id="access" >
1. 개인정보의 처리 목적 
파리크레파스(이하 '여행사')는 다음의 목적을 위하여 개인정보를 처리하고 있으며, 다음의 목적 이외의 용도로는 이용하지 않습니다.
- 고객 가입의사 확인, 고객에 대한 서비스 제공에 따른 본인 식별.인증, 회원자격 유지.관리, 물품 또는 서비스 공급에 따른 금액 결제, 물품 또는 서비스의 공급.배송 등


2. 개인정보의 처리 및 보유 기간

① 여행사는 정보주체로부터 개인정보를 수집할 때 동의 받은 개인정보 보유․이용기간 또는 법령에 따른 개인정보 보유․이용기간 내에서 개인정보를 처리․보유합니다.

② 구체적인 개인정보 처리 및 보유 기간은 다음과 같습니다.
☞ 아래 예시를 참고하여 개인정보 처리업무와 개인정보 처리업무에 대한 보유기간 및 관련 법령, 근거 등을 기재합니다.
(예시)- 고객 가입 및 관리 : 서비스 이용계약 또는 회원가입 해지시까지, 다만 채권․채무관계 잔존시에는 해당 채권․채무관계 정산시까지
- 전자상거래에서의 계약․청약철회, 대금결제, 재화 등 공급기록 : 5년 

3. 정보주체와 법정대리인의 권리·의무 및 그 행사방법 이용자는 개인정보주체로써 다음과 같은 권리를 행사할 수 있습니다. 

① 정보주체는 여행사에 대해 언제든지 다음 각 호의 개인정보 보호 관련 권리를 행사할 수 있습니다.
1. 개인정보 열람요구
2. 오류 등이 있을 경우 정정 요구
3. 삭제요구
4. 처리정지 요구

4. 처리하는 개인정보의 항목 작성 

① 여행사는 다음의 개인정보 항목을 처리하고 있습니다.
투어신청 및 예약을위한 정보
- 필수항목 : 이메일, 휴대전화번호, 이름, 여행인원, 투어날짜, 입금자명
- 선택항목 : 카톡ID, 여행지숙소정보

5. 개인정보의 파기

여행사는원칙적으로 개인정보 처리목적이 달성된 경우에는 지체없이 해당 개인정보를 파기합니다. 파기의 절차, 기한 및 방법은 다음과 같습니다.
-파기절차
이용자가 입력한 정보는 목적 달성 후 별도의 DB에 옮겨져(종이의 경우 별도의 서류) 내부 방침 및 기타 관련 법령에 따라 일정기간 저장된 후 혹은 즉시 파기됩니다. 이 때, DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 다른 목적으로 이용되지 않습니다.

-파기기한
이용자의 개인정보는 개인정보의 보유기간이 경과된 경우에는 보유기간의 종료일로부터 5일 이내에, 개인정보의 처리 목적 달성, 해당 서비스의 폐지, 사업의 종료 등 그 개인정보가 불필요하게 되었을 때에는 개인정보의 처리가 불필요한 것으로 인정되는 날로부터 5일 이내에 그 개인정보를 파기합니다.

6. 개인정보 자동 수집 장치의 설치•운영 및 거부에 관한 사항 

여행사는 정보주체의 이용정보를 저장하고 수시로 불러오는 ‘쿠키’를 사용하지 않습니다.
                    
					</textarea>
			<div class="radioSelect">
				<div>동의</div>
				<input type="radio" name="radioCheck" checked="checked">
				<div>동의하지 않음</div>
				<input type="radio" name="radioCheck">
			</div>
		</div>
		<div class="ReserveButn">
			<input type="button" class="reserveOK" id="reserveOK" value="예약"> 
			<input type="button" class="NOreserve" id="NOreserve" value="취소">
		</div>
	</form>
	
	
	
	
	
	<script type="text/javascript">
		
	$(".reserveOK").click(function() {
		if ($("#kakaoID").val() == "") {
			alert("kakaoID를 입력하세요!");
			$("#kakaoID").focus();

		} else if ($("#phone").val() == "") {
			alert("전화번호를 입력하세요!")
			$("#phone").focus();
		} else {
		
			$("#form11").submit();
			alert("예약성공");
			window.self.close();
			opener.location.replace('../');
			
			
		}
	});
	
	
	$(".NOreserve").click(function() {
		alert("예약 취소");
		window.self.close();
	});
		
	
	
	
	</script>


</body>
</html>