<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>memberJoin</title>
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
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<meta charset="UTF-8">

</head>
<body>

	<c:import url="../layout/nav.jsp"></c:import>

	<form id="frm" action="./memberJoin" method="POST">

		<div class="joinMain">
			<div class="joinMain_sub">
				<div class="InputMain">
					<h1 class="jointitle">회원가입</h1>
					<br>
					<div class="joinInputBox">
						<div class="joinInputBox_cover">
							<div class="email">
								<label for="email"></label> <input type="email" id="email"
									name="email" readonly="readonly" placeholder="   Email 입력"
									class="checkEmail joinInput">
							</div>

							<br>
							<div class="pw">
								<label for="pw"></label> <input type="password" id="pw"
									placeholder="   비밀번호" name="pw" class="joinInput">
							</div>
							<br>
							<div class="pwCheck">
								<label for="pwCheck"></label> <input type="password"
									id="pwCheck" placeholder="   비밀번호 재확인" name="pwCheck"
									class="joinInput">
							</div>
							<span id=pwResult></span> <br>

							<div class="name">
								<label for="name"></label> <input type="text" id="name"
									placeholder="   이름" name="name" class="joinInput">
							</div>
							<span id=nameResult></span> <br>

							<div class="birth">
								<label for="birth"></label> <input type="date" id="birth"
									name="birth" class="joinInput">
							</div>
							<span id=birthResult></span> <br>

							<div class="gender">
								<label for="gender"></label> <select id="sel1" name="gender"
									class="joinInput">
									<option>F</option>
									<option>M</option>
								</select> <span id=genderResult></span> <br> <br> <input
									type="button" class="Joinbtn" id="join" value="Join">
							</div>
						</div>
					</div>


				</div>
			</div>
		</div>
	</form>

	<c:import url="../layout/navFoot.jsp"></c:import>




	<script type="text/javascript">
		//필수입력

		//이메일 체크
		$(".checkEmail").click(
				function() {
					var email = $("#email").val();
					window.open("./memberIdCheck?email=" + email, "",
							"width=500,height=230,top=200, left=600");
				});

		//비밀번호 체크
		$('#pwCheck').keyup(function() {
			if ($('#pw').val() != $('#pwCheck').val()) {
				$("#pwResult").html('암호가 맞지 않습니다.');
			} else {
				$("#pwResult").html('암호가 일치합니다.');
			}
		});

		//모두 입력 확인
		$("#join").click(function() {

			if ($("#email").val() == "") {
				alert("이메일을 입력하세요!");
				$("#email").focus();

			} else if ($("#pw").val() == "") {
				alert("비밀번호를 입력하세요!");
				$("#pw").focus();

			} else if ($("#pwCheck").val() == "") {

				alert("비밀번호를 확인하세요!");
				$("#pwCheck").focus();

			} else if ($("#pw").val() != $("#pwCheck").val()) {
				alert("비밀번호를 확인하세요!");
				$("#pwCheck").focus();

			} else if ($("#name").val() == "") {
				alert("이름을 입력하세요!");
				$("#name").focus();

			} else if ($("#birth").val() == "") {
				alert("생일을 입력하세요!")
				$("#birth").focus();
			} else {

				$("#frm").submit();
			}
		});

		// 영숫자 특수문자 8자 이상 정규식 
		var passwordRule = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{6,14}$/;

		$("#pw").blur(
				function() {

					if ($('#pw').val() != ""
							&& passwordRule.test($('#pw').val()) != true) {
						alert('6~14자리 내에 영문과 숫자 특수문자 로만 사용해주세요.');
						$('#pw').val("");
						$('#pw').focus();
						return;
					}

				});
	</script>





</body>
</html>