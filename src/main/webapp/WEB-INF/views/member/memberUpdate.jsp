<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberUpdate</title>
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

	<form method="post" id="frm" action="./memberUpdate">

		<div class="joinMain">
			<div class="joinMain_sub">
				<div class="InputMain">
					<h1 class="jointitle">정보 수정</h1>
					<br>
					<div class="joinInputBox">
						<div class="joinInputBox_cover">
							<div>

								<div>
									<label for="email">Email </label> <input type="text" id="email"
										readonly="readonly" name="email" value="   ${member.email}"
										class="updateInput">
								</div>
								<br> <label for="pw">Pw </label> <input type="password"
									id="pw" name="pw" value="${member.pw}" class="joinInput">
							</div>
							<br>

							<div>
								<label for="name">Name </label> <input type="text" id="name"
									name="name" value=" ${member.name}" class="joinInput">
							</div>
							<br>

							


							<br> <a href="memberUpdate"><input type="submit"
								id="update" value="Update" class="Joinbtn"></a>

						</div>
					</div>
				</div>
			</div>
		</div>
	</form>

	<c:import url="../layout/navFoot.jsp"></c:import>

	<script type="text/javascript">
		
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


