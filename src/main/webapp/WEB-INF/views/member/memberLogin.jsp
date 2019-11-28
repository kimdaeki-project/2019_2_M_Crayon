<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberLogin</title>
</head>
<body>

<form id="frm" action="./memberLogin" method="POST">


		<div class="email">
			<label for="email">email:</label> <input type="email" id="email" placeholder="Enter email"
				name="email">
		</div>
		<br>


		<div class="pw">
			<label for="pw">pw:</label> <input type="password" id="pw" placeholder="Enter password" name="pw">
			<div id=PwResult></div>
		</div>
		<br>
		<input type="submit" id="login" value="login">
		<a href="./memberSearchID">ID 찾기</a>
		<a href="./memberSearchPW">PW 찾기</a>
		
		<a href="./memberJoin">Join</a>
		
	</form>
		




</body>
</html>