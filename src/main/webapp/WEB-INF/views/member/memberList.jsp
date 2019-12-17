<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member List</title>
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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<c:import url="/resources/bootStrap/bootStrap.jsp"></c:import>
</head>
<body>


	<div class="body">
		<div class="admintop">
			<div class="adtopname">Paris Crayon administration</div>
		<div class="admintopicon">
		<div class="adminGoMyPage"><a href="./memberMyPage" style="color: white;">MyPage <i class="fa fa-user" style="font-size:24px"></i></a></div>
		</div>
		</div>
		<div class="sideBar_wrap">
		<div class="sideBar">
				<div class="adminintro"></div>
				<div class="adminBackHome">
					<a href="./adminPage" style="color: white; font-size: 24px;" >Home <i class="fa fa-home" style="font-size: 30px"></i></a>
				</div>
				<div class="adminMember">
					<a href="./memberList" style="color: white; font-size: 24px;">Member <i class="fa fa-address-book" style="font-size: 24px"></i></a>
				</div>
				<div class="adminTour">
				<a href="../tour/ReservationList" style="color: white; font-size: 24px;">Reservation <i class="fa fa-bus" style="font-size: 24px"></i></a>
				</div>
				<div class="adminWrite">
					<a href="../review/reviewList" style="color: white; font-size: 24px;">Review <i class="fa fa-pencil-square-o" style="font-size: 28px"></i></a>
				</div>
				<div class="adminAdd">
					<a href="#" style="color: white; font-size: 24px; ">AddTour <i class="fa fa-plus-square-o" style="font-size:28px"></i></a>
				</div>
				<div class="adminAdd">
					<a href="../qna/qnaHome" style="color: white; font-size: 24px">Qna <i
						class="fa fa-question-circle-o" style="font-size: 24px"></i></a>
				</div>
				
				
			</div>
			<!-- 넣을거 -->
			<div class="body_main">
				<div class="body_name">　회원 관리</div>
				<div class="body_inner">
					<div class="contents">
						<!-------- 여기부터 테이블 시작 ----------->

						<form action="./memberList" id="frm">
							<input type="hidden" id="curPage" value="1" name="curPage">
							<select id="kind" name="kind">
								<option id="ke" value="ke" selected="selected">ID</option>
								<option id="kn" value="kn">Name</option>
								<option id="kk" value="kk">KaKao</option>
							</select> <input type="text" id="search" name="search"
								value="${pager.search}">
							<button class="btn btn-basic">검색</button>
						</form>

						<table class="table table-striped">
							<thead>
								<tr>
									<th>ID</th>
									<th>PW</th>
									<th>Name</th>
									<th>Birth</th>
									<th>Kakao</th>
									<th>aCheck</th>
									<th></th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${list}" var="dto" varStatus="st">
									<tr>
										<td style="width: 55px; height: 56px; line-height: 38px;">${dto.email}</td>
										<td style="width: 350px; height: 56px; line-height: 38px;">${dto.pw}</td>
										<td style="width: 300px; height: 56px; line-height: 38px;">${dto.name}</td>
										<td style="width: 120px; height: 56px; line-height: 38px;">${dto.birth}</td>
										<td style="width: 120px; height: 56px; line-height: 38px;">${dto.kCheck}</td>
										<td style="width: 120px; height: 56px; line-height: 38px;">${dto.aCheck}</td>
										<td><input type="hidden" value="${dto.mnum}"></td>
										<td><a href="./memberAdminDelete?mnum=${dto.mnum}"><input type="button" value="회원 삭제" class="btn btn-dark"></a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<div>


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
		</div>
	</div>


	<script type="text/javascript">
		var kind = '${pager.kind}'
		if (kind == '') {
			kind = "kt"
		}
		$("#" + kind).prop("selected", true);

		$(".list").click(function() {
			$("#curPage").val($(this).attr("id"));
			$("#frm").submit();
		});
	</script>





</body>
</html>