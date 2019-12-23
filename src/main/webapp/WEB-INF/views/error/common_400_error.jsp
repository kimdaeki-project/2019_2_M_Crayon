<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>errorPage</title>
<link href="<c:url value="/resources/css/layout/header.css"/>"
	rel="stylesheet">
	<link href="<c:url value="/resources/css/layout/admin.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/reset.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/footer.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/error.css"/>"
	rel="stylesheet">
</head>
<body>

	<c:import url="../layout/nav.jsp"></c:import>

	
	<div class="body2">
		<div class="b404">404</div>
		<div class="b4042">Not Found - 잘못된 경로입니다.</div>
	</div>
</body>
</html>