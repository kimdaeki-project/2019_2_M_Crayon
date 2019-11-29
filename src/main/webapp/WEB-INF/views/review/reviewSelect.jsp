<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../layout/bootStrap.jsp"></c:import>
</head>
<body>
	<div class="container">
		<table class="table">
			<thead>
				<tr class="danger"><th>NUM</th><th>TITLE</th><th>WRITER</th><th>DATE</th><th>HIT</th></tr>
			</thead>
			<tbody>
				<tr class="active">
					<td>${dto.num}</td>
					<td>${dto.title}</td>
					<td>${dto.writer}</td>
					<td>${dto.day}</td>
					<td>${dto.hit}</td>
				</tr>
			</tbody>
		</table>
	</div>
		
	<div class="container">
		<form class="form-group">
			<label for="comment">CONTENTS</label>
			<div class="well">${dto.contents}</div>
		</form>
	</div>
	
	<div class="container">
		<a href="./reviewUpdate?num=${dto.num}" class="btn btn-default">UPDATE</a>
		<a href="./reviewReply?num=${dto.num}" class="btn btn-default">REPLY</a>
		<a href="./reviewDelete?num=${dto.num}" class="btn btn-default">DELETE</a>
		<a href="./reviewList" class="btn btn-default" style="float: right">LIST</a>	
	</div>
</body>
</html>





