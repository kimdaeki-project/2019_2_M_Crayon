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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
			<div class="body_name">　VIP 예약 관리페이지</div>
			<div class="body_inner">
				<div class="contents">
					<!-------- 여기부터 테이블 시작 ----------->

					<form action="./VReservationList" id="frm" style="width:1300px;">
					<input type="hidden" id="curPage" value="1" name="curPage">
						</form>
						<table class="table table-striped">
							<thead>
								<tr>
									
									<th>No</th>
									<th>예약자 아이디</th>
									<th>예약 날짜</th>

			
									<th>예약자 성함</th>
												
									<th>총 금액</th>
									<th>예약상태</th>
									<th></th>
									<th></th>
									<th>예약승인</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${list}" var="vo" varStatus="st">
									<tr id="ya">
										<td style="width: 50px; height: 56px; line-height: 38px;">${vo.vipno}</td>
										<td style="width: 150px; height: 56px; line-height: 38px;">${vo.email}</td>
										<td style="width: 150px; height: 56px; line-height: 38px;">${vo.vday}</td>
										
										<td style="width: 150px; height: 56px; line-height: 38px;">${vo.name}</td>
										
										<td style="width: 100px; height: 56px; line-height: 38px;" class="e2" id="e3"><input type="text" value="${vo.vprice}" name="vprice" class="e1" id="vprice"style="background:transparent; border:none; border-bottom:1px solid #999"></td>
										<td class="rescheck" style="width: 200px; height: 56px; line-height: 38px;">${vo.ac}</td>
										<td>
										
										<div>
										<input type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal${st.index}" value="상세보기 "style="color:whtie">
										</div>
										<!-- Modal -->
  <div class="modal fade" id="myModal${st.index}" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
        	<div class="ad_mo">
        	 	N.${vo.vipno}
        	</div>
        	<div class="ad_mo">
        	 	kakaoID	: ${vo.kakaoID}
        	</div>
        	<div class="ad_mo">
        		Phone	: ${vo.vphone}
        	</div>
        	<div class="ad_mo">
        		Route	:${vo.content}
        	</div>
        	
        	<div class="ad_mo" style="border:none">
        		Ask
        	</div>
	        <input type="text" value="${vo.vps}" readonly="readonly" style="width:510px; height:170px; border:none;">
        	
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
         </div>
  </div>
										
										</td>
										
										
										<td><a href="./VReservationDelete?vipno=${vo.vipno}"><input
												type="button" value="예약 취소" class="btn btn-dark"></a></td>
										<td id="ds">
											<c:if test="${vo.ac eq '관리자 승인 대기'}">
											<input type="button" class="btn btn-dark vobtn" value="예약 승인" id="${vo.vipno}">
											</c:if>
											<c:if test="${vo.ac eq '예약 확정 결제 대기'}">
											<input type="button" class="btn btn-dark vobtn2" value="이메일 전송" id="${vo.tourEmail}">	
											</c:if>
										</td>
														
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
											
										function refreshMemList(){
											location.reload();
										}
										
											$(".vobtn").click(function(){
												var vipno = $(this).parent().parent().children("td:eq(0)").text();
												var vprice = $(this).parent().parent().children("td:eq(4)").children("input").val();
				
												$.ajax({
													type:'post',
													url:"./VReservationUpdate1",
													data:{
														vipno:vipno,
														vprice:vprice
													},
												    success : function(data) {
												        alert("예약을 승인하였습니다.");
												    }

													
												});
												refreshMemList();
												
											});
											
											
											$(".vobtn2").click(function(){
												var vipno = $(this).parent().parent().children("td:eq(0)").text();
												var vprice = $(this).parent().parent().children("td:eq(4)").children("input").val();
												var tourEmail = $(this).attr('id');
												var name = $(this).parent().parent().children("td:eq(3)").text();
												var name = $(this).parent().parent().children("td:eq(3)").text();
												var content = 
												$.ajax({
													type:'get',
													url:"./VReservationUpdate2",
													data:{
														vipno:vipno,
														vprice:vprice,
														tourEmail:tourEmail,
														name:name
													},
												    success : function(data) {
												    	
												        alert("견적서 이메일 발송.");
												    }

													
												});
												
											});
										</script>



<script type="text/javascript">
	
		$(".list").click(function() {
			$("#curPage").val($(this).attr("id"));
			$("#frm").submit();
		});
	</script>




</body>
</html>

