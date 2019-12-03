<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body>
<div>
	 <form action="./qnaQuestion" method="POST">
		<input type="hidden" value="${member.email}" id="${member.email}">
		 작성자 : ${member.name}
		<h1>Q.</h1><input type="text" name="question" id="question">
		<input type="submit" id="btn" value="등록하기">
	</form>
</div>
</body>

</html>