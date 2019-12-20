<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 <link href="<c:url value="/resources/css/layout/tourVIP.css"/>"
	rel="stylesheet">
	<c:import url="/resources/bootStrap/bootStrap.jsp"></c:import>
				
				<div class="VReservation_tB_title" style="border-left: 3px solid black; font-size: 28px;">　맞춤투어 예약 내역</div>
				<br>
				<div class="table table-striped" style="margin-bottom: 150px;">
						
							<div class="vr_wrap">
								<c:forEach items="${list3}" var="vvo" varStatus="str">
									<div >
									
										<div class="vr_wrap_cell">예약 번호
										</div>
										<div class="vr_wrap_cell">예약 날짜
										</div>
										<div class="vr_wrap_cell">예상 가격
										</div>
										<div class="vr_wrap_cell">이메일
										</div>
										<div class="vr_wrap_cell">이름
										</div>
										<div class="vr_wrap_cell">아이디
										</div>
										<div class="vr_wrap_cell">
										</div>
										
										<div class="vr_wrap_cell">
										</div>
										
								
										
										<div class=vr_wrap_mini>${vvo.vipno}</div>
										<div class=vr_wrap_mini>${vvo.vday}</div>
										<div class=vr_wrap_mini>${vvo.vprice}</div>
										<div class=vr_wrap_mini>${vvo.tourEmail}</div>
										<div class=vr_wrap_mini>${vvo.name}</div>
										<div class=vr_wrap_mini>${vvo.email}</div>
										<%-- <c:if test="${dto2.ac eq '예약 확정 결제 대기'}"> --%>
										<div class=vr_wrap_mini>
										<input type="button" value="예약 결제"  id="goMoney"></div>
										<%-- </c:if>	 --%>
										
										<div class="vr_wrap_mini">
										<input type="button" value="예약 취소"  id="byeMoney"></div>
									
									</div>
								</c:forEach>
							</div>
						</div>

						<script type="text/javascript">
							$("#goMoney").click(function() {
								var result = confirm("정말 예약을 취소하시겠습니까?");
								if(result)
							});
						</script>
					