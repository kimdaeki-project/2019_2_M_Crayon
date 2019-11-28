<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberJoin</title>
</head>
<body>



	<form id="frm" action="./memberJoin" method="POST"
		enctype="multipart/form-data">


		<div class="email">
			<label for="email">email:</label> <input type="email"
				class="form-control" id="email" placeholder="Enter email"
				name="email">
		</div>
		<br>


		<div class="pw">
			<label for="pw">pw:</label> <input type="password"
				class="form-control" id="pw" placeholder="Enter password" name="pw">
			<div id=PwResult></div>
		</div>
		<br>

		<div class="pw">
			<label for="pw">pw2:</label> <input type="password"
				class="form-control" id="pw2" placeholder="Enter password" name="pw2">
		</div>
		<br>

		<div class="name">
			<label for="name">name:</label> <input type="text"
				class="form-control" id="name" placeholder="Enter name"
				name="name">
		</div>
		<br>


		<div class="birth">
			<label for="birth">birth:</label> <input type="date"
				class="form-control" id="birth" placeholder="Enter contents"
				name="birth">
		</div>
		<br>

		<div class="gender">
			<label for="gender">gender:</label> <select class="form-control"
				id="sel1" name="gender">
				<option>F</option>
				<option>M</option>
			</select> <br>
		</div>

		<input type="button" id="join" class="btn btn-default" value="Join">
		<a href="./${board}List" class="btn btn-info">Go list</a>
	</form>





</body>
</html>