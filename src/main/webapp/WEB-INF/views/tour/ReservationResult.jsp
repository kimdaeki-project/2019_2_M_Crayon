<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<c:forEach items="${list}" var="vo" varStatus="str">
	<div>
		
				<div>예약 인원수 : ${vo.personNum} || 예약자 이름 : ${vo.name}</div>
				<div>예약자 아이디 : ${vo.email} || 예약자 전화번호: ${vo.phone}</div>
				<div>예약 날짜 : ${vo.day} || 투어 번호 : ${vo.tourNum}</div>
				<div>요구사항 : ${vo.ps} || 총 금액 : ${vo.totalPrice}</div>
				<div>투어 이름 : ${vo.tourName} || 카카오 아이디 : ${vo.kakaoID}</div>
			
	</div>
	<hr>
</c:forEach>