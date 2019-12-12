<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
</head>
<body>
	<h1>Tour Write Page</h1>
	<form action="./tourWrite" enctype="multipart/form-data" method="post">
<!-- 		<input type="hidden" name="num"> -->
		
		<h3>타업체비교불가</h3>
		<textarea rows="5" cols="70" name="compared"></textarea>
		
		<h3>포함사항</h3>
		<textarea rows="5" cols="70" name="include"></textarea>
		
		<h3>불포함사항</h3>
		<textarea rows="5" cols="70" name="exclude"></textarea>
		
		<h3>투어안내</h3>
		<textarea rows="5" cols="70" name="alert"></textarea>
		
		<h3>준비사항</h3>
		<textarea rows="5" cols="70" name="prepared"></textarea>
		
		<h3>주의사항</h3>
		<textarea rows="5" cols="70" name="attention"></textarea>
		
		<h3>환불규정</h3>
		<textarea rows="5" cols="70" name="refund"></textarea>
		
		<div id="files">	   		
	    	<div class="form-group" title="parent" id="a1">
      			<label class="control-label col-sm-2" for="file">File:</label>
      			<div class="col-sm-9">
      				<input type="file" class="form-control" id="file" name="file">
      			</div>
	    	<div class="col-sm-1">
      			<input type="button" name="file" value="del" class= "btn btn-danger del">
   			</div>
			</div>
		</div>
		
		<div class="btnAdd" style="height: 50px; margin-right: 100px; margin-bottom: 100px;">
	   		<input type="button" value="add file" class="btn btn-default" id="btn" style="cursor: pointer;">
		</div>
		
		<button class= "proBtn">상품등록</button>
	</form>
	
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