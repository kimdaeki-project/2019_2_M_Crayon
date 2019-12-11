<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="<c:url value="/resources/css/layout/header.css"/>"
	rel="stylesheet">
	<link href="<c:url value="/resources/css/layout/admin.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/reset.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/footer.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/bodyMain.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/review.css"/>"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<c:import url="/resources/bootStrap/bootStrap.jsp"></c:import>
</head>
<body>
	<c:if test="${sessionScope.member.aCheck ne 1}">
		<c:import url="../layout/nav.jsp"></c:import>
	</c:if>

	<div class="body">

		<c:if test="${sessionScope.member.aCheck ne 1}">
			<div class="body_head">
				<div class="body_back">
					<div class="body_h_txt">“파리크레파스 리얼후기”</div>
					<div class="body_h_txt2">생생한 리뷰를 들려주세요!</div>
				</div>
			</div>
		</c:if>

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
						<a href="#" style="color: white; font-size: 24px">Reservation
							<i class="fa fa-bus" style="font-size: 24px"></i>
						</a>
					</div>
					<div class="adminWrite">
						<a href="../review/reviewList"
							style="color: white; font-size: 24px">Review <i
							class="fa fa-pencil-square-o" style="font-size: 28px"></i></a>
					</div>
					<div class="adminAdd">
						<a href="#" style="color: white; font-size: 24px">AddTour <i
							class="fa fa-plus-square-o" style="font-size: 28px"></i></a>
					</div>
					<div class="adminAdd">
						<a href="../qna/qnaHome" style="color: white; font-size: 24px">Qna
							<i class="fa fa-question-circle-o" style="font-size: 24px"></i>
						</a>
					</div>

				</div>
				
				</c:if>
		
		
		<!-- 넣을거 -->
		<div class="body_main">
			<div class="body_name">  후기게시판</div>
			<div class="body_inner">
				<div class="contents">
					<!-------- 여기부터 테이블 시작 ----------->

					<form action="./reviewList" id="frm">
						<input type="hidden" id="curPage" value="1" name="curPage">
						<select id="kind" name="kind">
							<option id="kc" value="kc" selected="selected">TOURNAME</option>
							<option id="kt" value="kt">TITLE</option>
							<option id="kw" value="kw">WRITER</option>
						</select> <input type="text" id="search" name="search"
							value="${pager.search}">
						<button class="btn btn-basic">검색</button>
					</form>

					<table class="table table-striped">
						<thead>
							<tr>
								<th></th>
								<th>TOURNAME</th>
								<th>TITLE</th>
								<th>WRITER</th>
								<th>DATE</th>
								<th>HIT</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${list}" var="dto" varStatus="st">
								<tr>
									<td style="width: 55px; height: 56px; line-height: 38px;">${dto.num}</td>
									<td style="width: 350px; height: 56px; line-height: 38px;">${dto.tourName}</td>
									<td style="width: 300px; height: 56px; line-height: 38px;"><a
										href="./reviewSelect?num=${dto.num}">${dto.title}</a></td>
									<td style="width: 120px; height: 56px; line-height: 38px;">${dto.writer}</td>
									<td style="width: 120px; height: 56px; line-height: 38px;">${dto.day}</td>
									<td style="width: 55px; height: 56px; line-height: 38px;">${dto.hit}</td>
									<td><a href="./reviewDelete?num=${dto.num}"><input type="button" value="글 삭제" class="btn btn-dark"></a></td>
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

						<span> <a href="./reviewWrite" class="btn btn-default"
							style="float: right; width: 100px;">글쓰기</a>
						</span>

					</div>
				</div>
			</div>
		</div>
	</div>


<c:if test="${sessionScope.member.aCheck ne 1}">
	<!-- --------footer -->
	<div class="footer">
		<div class="footer_box">
			<br>
			<br>
			<br>상호 : 파리크레파스 | 대표 : 김은경ㅣ<a href="#">[사업자 정보보기]</a> <br>한국
			주소 : 인천광역시 부평구 부일로19번길 8,1층 TEL : 070-4645-8279 | E-MAIL :
			PARISCRAYON@NAVER.COM <br>한국 사업자 등록 번호 : 122-14-72077 ㅣ통신 판매업
			등록번호 : 제 2014 인천부평 - 00850 호 ㅣ 한국 관광 등록 번호 : 제2015-000003호 <br>
			<br>한국 인 허가 보증보험번호 : 제 100-000-2016 0161 1483 호 <br>
			<br>프랑스 주소 : 9 RUE ANDRE PINGAT 51100 REIMS ㅣ프랑스 라인센스 번호
			2015/21/0000464 | 프랑스 허가 번호 JEV 11 15 02414 <br>프랑스 사업자 번호 :
			SIRET:805 399 433 R.C.S REIMS <br>
			<br>COPYRIGHT(C)2008 PARIS CRAYON. ALL RIGHT RESERVED. CREATED
			BY PARISCRAYON. <br>
			<br> <input type=button id="view1" value="이용약관">ㅣ<input
				type=button id="view2" value="개인정보 보호방침">

		</div>

	</div>
	<!-- footer끝 -->
	</c:if>


	<!-------------------------------- java Script ---------------------------------------->

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