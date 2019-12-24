<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 

			
							
								<c:forEach items="${list}" var="vo" varStatus="str">
								<div>
				<div style="font-size:18px; margin-top:15px;letter-spacing:-2px;text-align:center; font-weight:500;">* ${vo.tourName} </div>
				<div style="font-size:16px; letter-spacing:-1.5px">* 예약자 아이디 : ${vo.email}</div>
				<div style="font-size:16px; letter-spacing:-1.5px">* 예약자 이름 : ${vo.name}</div>
				<div style="font-size:16px; letter-spacing:-1.5px">* 예약자 전화번호: ${vo.phone}</div>
				<div style="font-size:16px; letter-spacing:-1.5px">* 예약 날짜 : ${vo.day}</div>
				<div style="font-size:16px; letter-spacing:-1.5px; margin-bottom:10px;">* 총 금액 : ${vo.totalPrice}</div>
				
			
	</div>
	
	<hr>
								</c:forEach>
						


