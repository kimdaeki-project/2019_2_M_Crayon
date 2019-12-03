<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
				<a href="./memberUpdate"> <input type="submit" id="update"
					value="회원정보 수정" class="btns_p"></a> <a href="./memberLogout">
					<input type="submit" id="logout" value="로그아웃" class="btns">
				</a> 
				<a href="./memberDelete?email=${member.email}"><input type="submit" id="delete" value="Delete" class="btns"></a> 
			</div>
		</div>
	</div>
	<div class="mypageContain">
	
	</div>


	<c:import url="../layout/navFoot.jsp"></c:import>



</body>
</html>