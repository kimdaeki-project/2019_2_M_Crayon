<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<title>My Page</title>
<link href="<c:url value="/resources/css/layout/member.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/header.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/reset.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/footer.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/myPage.css"/>"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<c:import url="../layout/nav.jsp"></c:import>

<div class="mypageMain">
	<div class="mypageMain_sub">
		<div class="btnsBox">
			<input type="hidden" value="${member.kCheck}" id="kCheck">
			<c:if test="${sessionScope.member.aCheck eq 1}">
			<a href="./adminPage"><input type="submit" id="adminPage" value="관리자 페이지" class="btns_p"></a>
			</c:if>
			<c:if test="${sessionScope.member.aCheck ne 1}">
			<a href="./memberUpdate"><input type="submit" id="update" value="회원정보 수정" class="btns_p"></a> 
			</c:if>
			<a href="./memberLogout"><input type="submit" id="logout" value="로그아웃" class="btns"></a> 
			<input type="button" id="delete" value="Delete" class="btns">
			
		</div>
	</div>
</div>
<div class="mypageContain">
	<div class="body_main">
		<div class="body_name">　관심상품</div>
			<div class="body_inner" >
			
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
												<i class="fa fa-heart-o" style="font-size: 28px; color: red;"></i></a>
											</c:when>
											<c:otherwise>
												<i class="fa fa-heart" style="font-size: 28px; color: red; cursor: pointer;" name="${dto.tourNum}"></i>
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
				
				<div class="seeReserve">
					<div class="">
					</div>
				
				
				</div>
				
			
			</div>
	</div>
</div>

<c:import url="../layout/navFoot.jsp"></c:import>


<script type="text/javascript">
		$("#logout").click(function(){
			var kCheck = $("#kCheck").val();
			if(kCheck==1){
			window.open("https://accounts.kakao.com/logout?continue=https://accounts.kakao.com/weblogin/account", "",
					"width=500,height=230,top=200, left=600");
			location.replace("../");
			}
		});
		
		$("#delete").click(function() {
			if(confirm("정말로 탈퇴하시겠습니까?")){
				location.replace("./memberDelete?email=${member.email}");
			}else{
				alert("회원 탈퇴 취소, 홈페이지로 돌아갑니다")
				location.replace("../");
			}
		});
</script>

<script type="text/javascript">
	$('.fa-heart').click(function() {
		
		var tourNum = $(this).attr('name');
		alert(tourNum);
		
		if($(this).hasClass('fa-heart')){
			$(this).removeClass('fa-heart');
			$(this).addClass('fa-heart-o');
			$.ajax({
				type: 'GET',
				url:'./listDelete?tourNum='+tourNum,
				success: function(d){
					d = d.trim();
					if(d == 1){
						alert("delete success");
						location.reload();
					}else{
						alert("delete fail");
					}
				}
			});
		}else{
			$(this).addClass('fa-heart');
			$(this).removeClass('fa-heart-o');
		}
	});
</script>
</body>
</html>