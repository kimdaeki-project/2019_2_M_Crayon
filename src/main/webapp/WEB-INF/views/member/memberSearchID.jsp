<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SearchID</title>
</head>
<body>
						<h1>E-mail 찾기</h1>
					
					
					
		<form id="frm" action="./memberSearchID" method="POST">	
		<div class="name">
		<label for="name">name:</label> <input type="text" id="name" placeholder="Enter name"name="name">
		</div>
		<br>


		<div class="birth">
			<label for="birth">birth:</label> <input type="date" id="birth" placeholder="Enter contents" name="birth">
		</div>
		<br>
		
		
		<input type="submit" id="SearchID"  value="SearchID">
		</form>
		
		
		
		
		<c:choose>
			<c:when test="${not empty email}">
				<p>이메일은 ${email}입니다.</p>
			</c:when>
			
    		<c:otherwise>
    		${msg}
    		</c:otherwise>
		
		</c:choose>
		
		
		
</body>
</html>