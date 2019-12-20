<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <c:import url="/resources/bootStrap/bootStrap.jsp"></c:import>
				
				<div class="Reservation_tB_title" style="border-left: 3px solid black; font-size: 28px;">　예약 내역</div>
				<br>
				<table class="table table-striped" style="margin-top: 50px;">
							<thead>
								<tr>
									<th>예약 번호</th>
									<th>예약 인원수</th>
									<th>투어이름</th>
									<th>이메일</th>
									<th>가격</th>
									<th>아이디</th>
									<th></th>
									<th></th>
				
									
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${list2}" var="vo" varStatus="str">
									<tr>
										<td style="width: 110px; height: 56px; line-height: 38px;">${vo.reNum}</td>
										<td style="width: 110px; height: 56px; line-height: 38px;">${vo.personNum}</td>
										<td style="width: 110px; height: 56px; line-height: 38px;">${vo.tourName}</td>
										<td style="width: 110px; height: 56px; line-height: 38px;">${vo.tourEmail}</td>
										<td style="width: 110px; height: 56px; line-height: 38px;">${vo.totalPrice}</td>
										<td style="width: 110px; height: 56px; line-height: 38px;">${vo.email}</td>
										
										<td style="width: 50px; height: 56px; line-height: 38px;">
										<input type="button" value="예약 결제" class="btn btn-dark" id="goMoney"></td>
												
										<td style="width: 50px; height: 56px; line-height: 38px;">
										<input type="button" value="예약 취소" class="btn btn-dark" id="byeMoney"></td>
										
									</tr>
								</c:forEach>
							</tbody>
						</table>
						
						<script type="text/javascript">
							$("#goMoney").click(function() {
								var result = confirm("정말 예약을 취소하시겠습니까?");
								if(result)
							});
						</script>
					