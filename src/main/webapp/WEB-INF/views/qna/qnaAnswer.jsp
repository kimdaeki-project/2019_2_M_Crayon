<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
	 <form action="./qnaAnswer" method="POST" class="window">
		<input type="hidden" value="${member.email}" id="${member.email}">
		 작성자 : ${member.name}
		<h1>A.</h1><input type="text" name="answer" id="answer">
		<input type="submit" id="btn" value="등록하기">
	</form>
</div>

</body>
</html>