<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="<c:url value="/resources/css/layout/header.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/reset.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/footer.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/bodyMain.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/review.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/admin.css"/>"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<c:import url="/resources/bootStrap/bootStrap.jsp"></c:import>
</head>
<body>

	<div class="body">

		<div class="admintop">
			<div class="adtopname">Paris Crayon administration</div>
			<div class="admintopicon">
				<div class="adminGoMyPage">
					<a href="../member/memberMyPage" style="color: white;">MyPage <i
						class="fa fa-user" style="font-size: 24px"></i></a>
				</div>
			</div>
		</div>

		<div class="sideBar">
			<div class="adminintro"></div>
			<div class="adminBackHome">
				<a href="../member/adminPage" style="color: white; font-size: 24px">Home
					<i class="fa fa-home" style="font-size: 30px"></i>
				</a>
			</div>
			<div class="adminMember">
				<a href="../member/memberList" style="color: white; font-size: 24px">Member
					<i class="fa fa-address-book" style="font-size: 24px"></i>
				</a>
			</div>
			<div class="adminTour">
				<a href="../tour/ReservationList"
					style="color: white; font-size: 24px">Reservation <i
					class="fa fa-bus" style="font-size: 24px"></i>
				</a>
			</div>
			<div class="adminTour">
					<a href="../tour/VReservationList" style="color: white; font-size: 24px">VIP <i
						class="fa fa-money" style="font-size: 24px"></i></a>
				</div>
			<div class="adminWrite">
				<a href="../review/reviewList" style="color: white; font-size: 24px">Review
					<i class="fa fa-pencil-square-o" style="font-size: 28px"></i>
				</a>
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



		<!-- 넣을거 -->
		<div class="body_main">
			<div class="body_name">　예약 관리페이지</div>
			<div class="body_inner">
				<div class="contents">
					<!-------- 여기부터 테이블 시작 ----------->

					<form action="./ReservationList" id="frm" style="width:1300px;">
					<input type="hidden" id="curPage" value="1" name="curPage">
					</form>
						<table class="table table-striped">
							<thead>
								<tr>
									
									<th>인원수</th>
									<th>아이디</th>
									<th>예약 날짜</th>
									<th>요구사항</th>
									<th>투어 이름</th>
									<th>성함</th>
									<th>연락처</th>
									<th>No.</th>
									<th>총 금액</th>
									<th>카카오 ID</th>
										<th></th>
								
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${list}" var="vo" varStatus="st">
									<tr>
										<td style="width: 150px; height: 56px; line-height: 38px;">${vo.personNum}</td>
										<td style="width: 150px; height: 56px; line-height: 38px;">${vo.email}</td>
										<td style="width: 150px; height: 56px; line-height: 38px;">${vo.day}</td>
										<td style="width: 150px; height: 56px; line-height: 38px;">${vo.ps}</td>
										<td style="width: 370px; height: 56px; line-height: 38px;">${vo.tourName}</td>
										<td style="width: 150px; height: 56px; line-height: 38px;">${vo.name}</td>
										<td style="width: 150px; height: 56px; line-height: 38px;">${vo.phone}</td>
										<td style="width: 150px; height: 56px; line-height: 38px;">${vo.tourNum}</td>
										<td style="width: 100px; height: 56px; line-height: 38px;">${vo.totalPrice}</td>
										<td style="width: 100px; height: 56px; line-height: 38px;">${vo.kakaoID}</td>

										<td><a href="./ReservationDelete?reNum=${vo.reNum}"><input
												type="button" value="예약 삭제" class="btn btn-dark"></a></td>

									</tr>
								</c:forEach>
							</tbody>
						</table>
						
						
						
						<ul class="pagination">
								<c:if test="${pager.curBlock gt 1}">
									<li><span id="${pager.startNum-1}" class="list">이전</span></li>
								</c:if>
								<c:forEach begin="${pager.startNum}" end="${pager.lastNum}"
									var="i">
									<li><span id="${i}" class="list">${i}</span></li>
								</c:forEach>
								<c:if test="${pager.curBlock lt pager.totalBlock}">
									<li><span id="${pager.lastNum+1}" class="list">다음</span></li>
								</c:if>
						</ul>
						
				</div>
				
				
			</div>
		</div>
	</div>

<script type="text/javascript">
	
		$(".list").click(function() {
			$("#curPage").val($(this).attr("id"));
			$("#frm").submit();
		});
	</script>




</body>
</html>

