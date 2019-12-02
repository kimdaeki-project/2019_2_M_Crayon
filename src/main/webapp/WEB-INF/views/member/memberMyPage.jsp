<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Page</title>
</head>
<body>
<h1>여행예약 표로 만들기</h1>



<a href="./memberDelete?email=${member.email}"><input type="submit" id="delete" value="Delete"></a> 
<a href="./memberUpdate"><input type="submit" id="update" value="Update"></a> 
<a href="./memberLogout"><input type="submit" id="logout" value="logout"></a>
</body>
</html>