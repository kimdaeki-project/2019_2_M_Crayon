<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html>
<head>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link href="<c:url value="/resources/css/layout/tourVIP.css"/>"
	rel="stylesheet">
</head>
<body>
	
		<form action="../pay/kakaoPay" method="post" id="frm">
			<div class="Reservation_tB" style="border-left: 3px solid black; font-size: 28px;">　예약 내역</div>
			<br>
			<div class="table table-striped" style="margin-bottom: 150px;">
					
						<div class="vr_wrap">

								<div >
								
									<div class="vr_wrap_cell">예약 번호
									
									</div>
									<div class="vr_wrap_cell">예약 인원수
									
									</div>
									<div class="vr_wrap_cell">투어이름

									</div>
									<div class="vr_wrap_cell">이메일
									</div>
									<div class="vr_wrap_cell">가격
									</div>
									<div class="vr_wrap_cell">아이디
									</div>
									<div class="vr_wrap_cell">
									</div>
									<div class="vr_wrap_cell">
									</div>
									
							<c:forEach items="${list2}" var="vo" varStatus="str">
									<div class=vr_wrap_mini><input type="text" class="vr_input" readonly="readonly" name="reNum" value="${vo.reNum}"></div>
									<div class=vr_wrap_mini><input type="text" class="vr_input" readonly="readonly" name="personNum" value="${vo.personNum}"></div>
									<div class=vr_wrap_mini><input type="text" class="vr_input" readonly="readonly" name="tourName" value="${vo.tourName}"></div>
									<div class=vr_wrap_mini><input type="text" class="vr_input" readonly="readonly" name="tourEmail" value="${vo.tourEmail}"></div>
									<div class=vr_wrap_mini><input type="text" class="vr_input" readonly="readonly" name="totalPrice" value="${vo.totalPrice}"></div>
									<div class=vr_wrap_mini><input type="text" class="vr_input" readonly="readonly" name="email" value="${vo.email}"></div>
									<%-- <c:if test="${dto2.ac eq '예약 확정 결제 대기'}"> --%>
									<div class=vr_wrap_mini>
										<input type="button" value="예약 결제"  id="goMoney" class="pay">
									</div>
										
									<div class="vr_wrap_mini">
										<input type="button" value="예약 취소"  id="byeMoney">
									</div>
									
								</div>
								
								
							</c:forEach>
						</div>
				</div>
			</form>

			<script type="text/javascript">
				$("#byeMoney").click(function() {
					var result = confirm("정말 예약을 취소하시겠습니까?");
				});
			</script>
			
			<script type="text/javascript"> 
				$('.pay').click(function() {
					$('#frm').submit();
				});
			</script>
					
</body>
</html>

