<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberLogin</title>
<link href="<c:url value="/resources/css/layout/member.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/header.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/reset.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/footer.css"/>"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/a076d05399.js">
</script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
	<c:import url="../layout/nav.jsp"></c:import>

	<form id="frm" action="./memberLogin" method="POST">


		<div class="login_main_form">
			<div class="login_main_form_sub">
				<div class="login_form">
					<h1 class="logtitle">로그인</h1>
					<br>
					<div class="inputform">
						<div class="email">
							<label for="email"></label> <input type="email" id="email"
								placeholder="   이메일을 입력해주세요" name="email" class="inputform_sub">
						</div>
						<br>
						<div class="pw">
							<label for="pw"></label> <input type="password" id="pw"
								placeholder="   비밀번호를 입력해주세요" name="pw" class="inputform_sub">
						</div>

						<div class="welcomjoin">
							아직 파리크레파스 회원이 아니세요? <a href="./memberJoin">회원가입</a>
						</div>
					</div>

					<div class="btnform">
						<br> <input type="submit" id="login" value="로그인"
							class="logbtn"> 
							<br> 
							<div class="findbtn">
							<a href="./memberSearchID">Email찾기</a> 
							<a href="./memberSearchPW">PW찾기</a>
							</div>
					</div>
				</div>

			</div>
		</div>
	</form>

	<c:import url="../layout/navFoot.jsp"></c:import>



</body>
</html>