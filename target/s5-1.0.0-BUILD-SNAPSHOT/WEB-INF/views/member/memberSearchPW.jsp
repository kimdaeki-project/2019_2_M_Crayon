<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SearchPW</title>
<link href="<c:url value="/resources/css/layout/member.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/header.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/reset.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/footer.css"/>"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/a076d05399.js">
	
</script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
</head>
<body>

	<c:import url="../layout/nav.jsp"></c:import>


	<div class="searchForm">
		<div class="searchForm_sub">
			<div class="inputsearch_Form">
				<div class="searchTitle">
					<h1>PW 찾기</h1>
					<br>
				</div>
				<div class="searchInputBox">
					<form id="frm" action="./memberSearchPW" method="POST">
						<div class="email">
							<label for="email"></label> <input type="text" id="email"
								placeholder="   이메일을 입력하세요" name="email" class="searchinput">
						</div>
						<br>


						<div class="birth">
							<label for="birth"></label> <input type="date" id="birth"
								placeholder="Enter contents" name="birth" class="searchinput">
						</div>
						<br> <input type="submit" id="SearchPW" value="찾기"
							class="searchBox">

					</form>



					<div class="msgBox">
						<c:choose>
							<c:when test="${not empty pw}">
								<p>비밀번호는 ${pw}입니다.</p>
							</c:when>

							<c:otherwise>
    							${msg}
    						</c:otherwise>

						</c:choose>
					</div>
				</div>
			</div>
		</div>
	</div>


	<c:import url="../layout/navFoot.jsp"></c:import>
</body>
</html>