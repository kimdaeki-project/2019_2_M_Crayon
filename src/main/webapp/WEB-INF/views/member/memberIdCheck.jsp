<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<meta charset="UTF-8">
<title>E-mail 중복확인</title>
</head>
<body>
	

		<form action="./memberIdCheck">
		
		 	<c:if test="${not empty param.email}">
			<h1>${param.email}: ${msg}</h1>
			</c:if>
		
			<div>
				<label for="email">Email:</label> 
				<input type="email" id="email" name="email" value="${param.email}">
			</div>

			<button type="submit">확인</button>

			<c:if test="${empty dto and not empty param.email}">
				
				<input type="button" value="사용하기" id="useEmail">
				
			</c:if>

		</form>
		
		
		<script type="text/javascript">
		
		
		
		
			$("#useEmail").click(function() {
				email = $("#email").val();
				
				$("#email",opener.document).val(email);
				window.self.close();
			});	
			
			
			
		
		</script>




</body>
</html>