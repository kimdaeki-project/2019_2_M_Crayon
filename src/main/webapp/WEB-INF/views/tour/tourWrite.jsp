<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Tour Write Page</h1>
	<form action="./tourWrite" enctype="multipart/form-data" method="post">
		<input type="text" name="${dto.num}" value="${dto.num}"> 
		<h3>타업체비교불가</h3>
		<textarea rows="10" cols="70" name="compared">${dto.compared}</textarea>
		<h3>포함사항</h3>
		<textarea rows="10" cols="70" name="include">${dto.include}</textarea>
		<h3>불포함사항</h3>
		<textarea rows="10" cols="70" name="exclude">${dto.exclude}</textarea>
		<h3>투어안내</h3>
		<textarea rows="10" cols="70" name="alert">${dto.alert}</textarea>
		<h3>준비사항</h3>
		<textarea rows="10" cols="70" name="prepared">${dto.prepared}</textarea>
		<h3>주의사항</h3>
		<textarea rows="10" cols="70" name="attention">${dto.attention}</textarea>
		<h3>환불규정</h3>
		<textarea rows="10" cols="70" name="refund">${dto.refund}</textarea>
		<button class= "btn btn-basic">상품등록</button>
	</form>
</body>
</html>