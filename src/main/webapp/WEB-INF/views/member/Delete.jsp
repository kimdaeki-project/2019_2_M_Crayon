<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberDelete</title>
</head>
<body>
	<h1>${param.email}:정말탈퇴하시겠습니까?</h1>

	<form action="./Delete">

		<div>
			<div class="pw">
				<label for="pw"></label> <input type="password" id="pw" name="pw"
					class="joinInput">
			</div>
		</div>

		
	</form>

</body>
</html>