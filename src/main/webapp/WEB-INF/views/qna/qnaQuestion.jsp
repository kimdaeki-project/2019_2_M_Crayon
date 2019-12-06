<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link href="<c:url value="/resources/css/layout/mini.css"/>"
	rel="stylesheet">
</head>
<body>
<div>
	 <form action="./qnaQuestion" method="POST" class="window">
	 	<div class="h_Css"><img alt="" src="../resources/images/header/logo_sub.jpg">
		<input type="hidden" value="${member.email}" id="${member.email}" name="email">
		 작성자 : ${member.name}
		<h1>Q.</h1><input type="text" name="question" id="question">
		<div class="qhfk"></div>
		
		<input type="submit" id="btn" value="등록하기" class="btn btn-default">
		</div>
	</form>
</div>
</body>
<script type="text/javascript">
	$("#btn").click(function() {
		alert("등록이 완료되었습니다.");
		window.close();
	});
</script>

</html>