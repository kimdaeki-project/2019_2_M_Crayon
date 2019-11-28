<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SearchPW</title>
</head>
<body>


			<h1>PW 찾기</h1>
					
					
					
		<form id="frm" action="./memberSearchPW" method="POST">	
		<div class="email">
		<label for="email">email:</label> <input type="text" id="email" placeholder="Enter email"name="email">
		</div>
		<br>


		<div class="birth">
			<label for="birth">birth:</label> <input type="date" id="birth" placeholder="Enter contents" name="birth">
		</div>
		<br>
		
		
		<input type="submit" id="SearchPW"  value="SearchPW">
		</form>




		<c:choose>
			<c:when test="${not empty pw}">
				<p>비밀번호는 ${pw}입니다.</p>
			</c:when>
			
    		<c:otherwise>
    		${msg}
    		</c:otherwise>
		
		</c:choose>





</body>
</html>