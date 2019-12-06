<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
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
<meta charset="UTF-8">
<title>E-mail 중복확인</title>
</head>
<body>


	<form action="./memberIdCheck">

		<c:if test="${not empty param.email}">
			<h1>${param.email}:${msg}</h1>
		</c:if>

		<div>
			<label for="email">Email:</label> <input type="text" id="email"
				name="email" value="${param.email}">
		</div>

		<button type="submit" class="CheckIDBtn">확인</button>

		<c:if test="${empty dto and not empty param.email}">

			<input type="button" value="사용하기" id="useEmail" >

		</c:if>

	</form>


	<script type="text/javascript">
		$("#useEmail").click(function() {
			email = $("#email").val();

			$("#email", opener.document).val(email);
			window.self.close();
		});
		
		
		var pattern = /[^가-힣a-z0-9\s,.!~()?]/;
		$("#email").blur(
				function() {

					if (pattern.test($('#email').val()) == true) {
						alert('특수문자를 제외하고 입력해주세요.')
						$('#email').val("");
						$('#email').focus();
						return;
					}
				});
		
		
	</script>




</body>
</html>