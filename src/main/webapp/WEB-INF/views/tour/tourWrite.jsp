<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="<c:url value="/resources/css/layout/header.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/reset.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/footer.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/tourWrite.css"/>"
	rel="stylesheet">
<title>Tour Write Page</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
</head>
<body>

	<c:if test="${sessionScope.member.aCheck ne 1}">
		<c:import url="../layout/nav.jsp"></c:import>
	</c:if>
	<div class="body_in">
	<h1>Tour Write Page</h1>
	<a href="../member/memberMyPage" style="color: black;">MyPage <i
						class="fa fa-user" style="font-size: 24px"></i></a>
	<form action="./tourWrite" enctype="multipart/form-data" method="post">
	  	
	  	<input type="hidden" name="price" placeholder="price">
	  	<br>
	  	<span style="font-size:20px; letter-spacing:-2px">상품번호　  <input type="text" id="tourNum" name="tourNum" placeholder="tourNum"></span>
		
		<h3>타업체비교불가</h3>
		<textarea rows="5" cols="70" name="compared" class="textText" style="resize: none;"></textarea>
		
		<h3>포함사항</h3>
		<textarea rows="5" cols="70" name="include" class="textText" style="resize: none;"></textarea>
		
		<h3>불포함사항</h3>
		<textarea rows="5" cols="70" name="exclude" class="textText" style="resize: none;"></textarea>
		
		<h3>투어안내</h3>
		<textarea rows="5" cols="70" name="alert" class="textText" style="resize: none;"></textarea>
		
		<h3>준비사항</h3>
		<textarea rows="5" cols="70" name="prepared" class="textText" style="resize: none;"></textarea>
		
		<h3>주의사항</h3>
		<textarea rows="5" cols="70" name="attention" class="textText" style="resize: none;"></textarea>
		
		<h3>환불규정</h3>
		<textarea rows="5" cols="70" name="refund" class="textText" style="resize: none;"></textarea>
		
		<h3>유튜브주소</h3>
		<textarea rows="1" cols="70" name="youTube" class="textText" style="resize: none;"></textarea>
		
		
		<div id="files" style="">	   		
	    	<div class="form-group" title="parent" id="a1" style="">
      			<label class="control-label col-sm-6" for="file">File:</label>
      			<div class="col-sm-9" style="margin-bottom: 80px;">
      				<input type="file" class="form-control" id="file" name="file">
   					<div id="timeBlank" style="width: 70px; height: 50px;" >
					  	<span>시간 : <input type="text" name="time" placeholder="time" id="time"></span>
					  	<span>일정 : <input type="text" name="timeTable" placeholder="timeTable" id="timeTable"></span>
				  	</div>
      			</div>
	    	<div class="col-sm-1">
      			<input type="button" name="file" value="del" class= "btn btn-danger del">
   			</div>
			</div>
		</div>
		
		<div class="btnAdd" style="height: 50px; margin-right: 70px; margin-bottom: 70px;">
	   		<input type="button" value="add file" class="btn btn-default" id="btn" style="cursor: pointer; float: right;">
		</div>
		
		<button class= "proBtn" style="float: right;">상품등록</button>
	</form>
	
	</div>
	
		<c:import url="../layout/navFoot.jsp"></c:import>
	<script type="text/javascript">
	
		var files = $("#files").html();
		$("#files").empty();
		
		
		$("#btn").click(function() {
			$("#files").append(files);
		});
		
		$("#files").on("click", ".del", function() {
			$(this).parents(".form-group").remove();
		});
	
	</script>
</body>
</html>