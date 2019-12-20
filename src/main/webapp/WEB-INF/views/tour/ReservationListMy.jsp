<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 <link href="<c:url value="/resources/css/layout/tourVIP.css"/>"
	rel="stylesheet">
	
				
				<div class="Reservation_tB" style="border-left: 3px solid black; font-size: 28px;">　예약 내역</div>
				<br>
				<div class="table table-striped" style="margin-bottom: 150px;">
						
							<div class="vr_wrap">
							<c:forEach items="${list2}" var="vo" varStatus="str">
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
										
								
										<div class=vr_wrap_mini>${vo.reNum}</div>
										<div class=vr_wrap_mini>${vo.personNum}</div>
										<div class=vr_wrap_mini>${vo.tourName}</div>
										<div class=vr_wrap_mini>${vo.tourEmail}</div>
										<div class=vr_wrap_mini>${vo.totalPrice}</div>
										<div class=vr_wrap_mini>${vo.email}</div>
										
										<div class=vr_wrap_mini></div>
										
										 	
										
										<div class="vr_wrap_mini"></div>
									
									</div>
								</c:forEach>
							</div>
						</div>

				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
			