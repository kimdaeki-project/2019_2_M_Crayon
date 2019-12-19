<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="<c:url value="/resources/css/layout/admin.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/reset.css"/>"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Admin-VIP Page</title>
</head>
<body>

<c:if test="${sessionScope.member.aCheck eq 1}">


			<div class="admintop">
				<div class="adtopname">Paris Crayon administration</div>
				<div class="admintopicon">
					<div class="adminGoMyPage">
						<a href="../member/memberMyPage" style="color: white;">MyPage <i
							class="fa fa-user" style="font-size: 24px"></i></a>
					</div>
				</div>
			</div>

			<div class="sideBar_Qna">
				<div class="adminintro"></div>
				<div class="adminBackHome">
					<a href="../member/adminPage" style="color: white; font-size: 24px">Home
						<i class="fa fa-home" style="font-size: 30px"></i>
					</a>
				</div>
				<div class="adminMember">
					<a href="../member/memberList"
						style="color: white; font-size: 24px">Member <i
						class="fa fa-address-book" style="font-size: 24px"></i>
					</a>
				</div>
				<div class="adminTour">
					<a href="../tour/ReservationList" style="color: white; font-size: 24px">Reservation <i
						class="fa fa-bus" style="font-size: 24px"></i>
					</a>
				</div>
				<div class="adminTour">
					<a href="../tour/VReservationList" style="color: white; font-size: 24px">VIP <i
						class="fa fa-money" style="font-size: 24px"></i></a>
				</div>
				<div class="adminWrite">
					<a href="../review/reviewList"
						style="color: white; font-size: 24px">Review <i
						class="fa fa-pencil-square-o" style="font-size: 28px"></i></a>
				</div>
				<div class="adminAdd">
					<a href="../tour/tourWrite" style="color: white; font-size: 24px">TourWrite <i
						class="fa fa-plus-square-o" style="font-size: 28px"></i></a>
				</div>
				<div class="adminAdd">
					<a href="../qna/qnaHome" style="color: white; font-size: 24px">Qna
						<i class="fa fa-question-circle-o" style="font-size: 24px"></i>
					</a>
				</div>

			</div>

		</c:if>

</body>
</html>