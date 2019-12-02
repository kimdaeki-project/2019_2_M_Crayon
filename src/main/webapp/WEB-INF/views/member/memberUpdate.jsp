<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberUpdate</title>
</head>
<body>

	<form method="post" id="frm" action="./memberUpdate">

		<div>
			<label for="pw">PASSWORD:</label> <input type="password" id="pw"
				name="pw" value="${member.pw}">
		</div>
		
		<div>
			<label for="name">NAME:</label> <input type="text" id="name"
				name="name" value="${member.name}">
		</div>
		<div>
			<label for="email">EMAIL:</label> <input type="text" id="email"
				readonly="readonly" name="email" value="${member.email}">
		</div>
		<div class="form-group" class="col-sm-4">
			<label for="sel1">GENDER:</label> <select id="sel1" name="gender"
				readonly="readonly">
				<c:if test="${member.gender eq 'M'}">
					<option value="M" selected="selected">남성</option>
					<option value="F">여성</option>
				</c:if>

				<c:if test="${member.gender eq 'F'}">
					<option value="M">남성</option>
					<option value="F" selected="selected">여성</option>
				</c:if>
			</select>
		</div>
		<div class="form-group">
			<label for="birth">BIRTH:</label> <input type="date" id="birth"
				name="birth" readonly="readonly" value="${member.birth}">
		</div>
		

			
			<a href="memberUpdate"><input type="submit" id="update" value="Update"></a> 

	</form>



</body>
</html>