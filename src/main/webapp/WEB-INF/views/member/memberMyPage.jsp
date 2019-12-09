<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
	<h1>여행예약 표로 만들기</h1>

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
				<a href="./memberDelete?email=${member.email}"><input type="submit" id="delete" value="Delete" class="btns"></a> 
				
			</div>
		</div>
	</div>
	<div class="mypageContain">
	
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
			
			
				
			
			
		
	</script>


</body>
</html>