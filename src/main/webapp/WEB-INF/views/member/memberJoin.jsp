<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>memberJoin</title>
</head>
<body>




	<form id="frm" action="./memberJoin" method="POST">


		<div class="email">
			<label for="email">email:</label> <input type="email" id="email"
				name="email" readonly="readonly" class="checkEmail">
		</div>


		<br>


		<div class="pw">
			<label for="pw">pw:</label> <input type="password" id="pw"
				placeholder="Enter password" name="pw">


		</div>
		<br>

		<div class="pwCheck">
			<label for="pwCheck">pwCheck:</label> <input type="password"
				id="pwCheck" placeholder="Enter password" name="pwCheck">
		</div>
		<span id=pwResult></span> <br>

		<div class="name">
			<label for="name">name:</label> <input type="text" id="name"
				placeholder="Enter name" name="name">
		</div>
		<span id=nameResult></span> <br>


		<div class="birth">
			<label for="birth">birth:</label> <input type="date" id="birth"
				placeholder="Enter contents" name="birth">
		</div>
		<span id=birthResult></span> <br>

		<div class="gender">
			<label for="gender">gender:</label> <select id="sel1" name="gender">
				<option>F</option>
				<option>M</option>
			</select> <span id=genderResult></span> <br>
		</div>

		<input type="button" class="btn" id="join" class="btn btn-default"
			value="Join"> <a href="../" class="btn btn-info">Go list</a>
	</form>




	<script type="text/javascript">
		//필수입력

	//이메일 체크
		$(".checkEmail").click(
				function() {
					var email = $("#email").val();
					window.open("./memberIdCheck?email=" + email, "",
							"width=500,height=500,top=200, left=600");
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
				
			}else if ($("#pwCheck").val() == "") {
			
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

		$("#pw").blur(function() {
			
			if ($('#pw').val() != "" && passwordRule.test($('#pw').val()) != true) 
			  { 
			    alert('6~14자리 내에 영문과 숫자 특수문자 로만 사용해주세요.'); 
			    $('#pw').val(""); 
			    $('#pw').focus(); 
			    return; 
			 } 
			
		
		});

	</script>





</body>
</html>