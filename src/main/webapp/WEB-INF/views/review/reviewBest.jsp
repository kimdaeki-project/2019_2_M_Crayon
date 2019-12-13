<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


					<form action="./reviewBest" id="frm">
						
					

					<table class="table table-striped">
						<thead>
							<tr>
								<th>NUM</th>
								<th>TITLE</th>
								<th>Contents</th>
								<th>WRITER</th>
								<th>DATE</th>
								<th>HIT</th>
								
							</tr>
						</thead>
						<tbody>
							
								<tr>
									<td>${dto.num}</td>
									<td>${dto.title}</td>
									<td>${dto.contents}</td>
									<td>${dto.writer}</td>
									<td>${dto.day}</td>
									<td>${dto.hit}</td>
									
								</tr>
							
						</tbody>
					</table>
					</form>









</body>
</html>