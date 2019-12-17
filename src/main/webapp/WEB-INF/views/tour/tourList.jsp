<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<link href="<c:url value="/resources/css/layout/tour.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/reset.css"/>"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<c:import url="/resources/bootStrap/bootStrap.jsp"></c:import>
</head>
<body>

	<c:if test="${sessionScope.member.aCheck ne 1}">
		<c:import url="../layout/nav.jsp"></c:import>
	</c:if>

	<div class="body">
		<div class="body_head">
			<div class="body_back">
				<div class="body_h_txt">“파리크레파스 리얼후기”</div>
				<div class="body_h_txt2">생생한 리뷰를 들려주세요!</div>
			</div>
		</div>
		<!-- 넣을거 -->
		<div class="body_main">
			<div class="body_name">　투어상품2</div>
			<div class="body_inner" >
				<div class="contents">

					<div class="tour_MainForm" style="overflow: auto; margin: auto;">
						<c:forEach items="${list}" var="dto" varStatus="st">
							<div class="tour_wrap">
								<div class="tourIMG_wrap">	
								<c:forEach items="${dto.files}" var="ck" begin="0" end="0">
									<img alt="img" src="/s5/resources/upload/tour/${ck.fname}" width="320px" height="200px">
								</c:forEach>
									<div class="tourIMG">
										<div class="tourLike">
											<c:choose>
												<c:when test="${sessionScope.member eq null}">
													<a href='../member/memberLogin'>
													<i class="fa fa-heart-o" style="font-size: 28px;"></i></a>
												</c:when>
												<c:otherwise>
													<i class="fa fa-heart-o" style="font-size: 28px; color: red; cursor: pointer;" name="${dto.tourNum}"></i>
												</c:otherwise>
											</c:choose>
										</div>
									</div>
								</div>
								<div class="TN_wrap">
									<a href="./tourGoods?tourNum=${dto.tourNum}">
									<div class="tourNN_wrap">
										<div class="tourNUM">${dto.tourName}</div>
										<div class="tourNAME">
										<fmt:formatNumber type="number" value="${dto.price}"></fmt:formatNumber>원~
										</div>
									</div></a>
								</div>
							</div>
							<!--tour_wrap 끝-->
						</c:forEach>
					</div>
					<!--tour_MainForm 끝-->
				</div>
			</div>


		</div>
			<div class="tour_white_btn">
				<a href="./tourWrite">글쓰기</a>
			</div>
	</div>


	<c:import url="../layout/navFoot.jsp"></c:import>

	<script type="text/javascript">
		$('.fa-heart-o').click(function() {
			
			var tourNum = $(this).attr('name');
			
			if($(this).hasClass('fa-heart')){
				$(this).removeClass('fa-heart');
				$(this).addClass('fa-heart-o');
				$.ajax({
					url: '../member/listDelete?tourNum'+tourNum,
					success:function(){
						alert("success");
					},
					error:function(){
						alert("fail");
					}
				})
			}else{
				$(this).addClass('fa-heart');
				$(this).removeClass('fa-heart-o');
				$.ajax({
					url: '../member/listInsert?tourNum='+tourNum,
					success:function(){
						alert("success");
					},
					error:function(){
						alert("fail");
					}
					
				})
				
			}
		});
	</script>

</body>
</html>