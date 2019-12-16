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
<body style="height: 2500px;">
	<h1>Tour Write Page</h1>
	<form action="./tourWrite" enctype="multipart/form-data" method="post">
<!-- 		<input type="hidden" name="num"> -->
<!-- 		<div class="form-group"> -->
<!-- 	  		<select id="tourName" name="tourName"> -->
<!-- 	  			<option id="p1" class="tour" value="몽생미셸 (야경)투어">몽생미셸 (야경)투어</option> -->
<!-- 	  			<option id="p2" class="tour" value="(소그룹 벤) 베르사유파리차량투어">(소그룹 벤) 베르사유파리차량투어</option> -->
<!-- 	  			<option id="p3" class="tour" value="VIP맞춤투어">VIP맞춤투어</option> -->
<!-- 	  			<option id="p4" class="tour" value="파리워킹투어">파리워킹투어</option> -->
<!-- 	  			<option id="p5" class="tour" value="파리야경차량투어">파리야경차량투어</option> -->
<!-- 	  			<option id="p6" class="tour" value="(소그룹 벤) 벨기에투어">(소그룹 벤) 벨기에투어</option> -->
<!-- 	  			<option id="p1" class="tour" value="루브르 집중투어">루브르 집중투어</option> -->
<!-- 	  			<option id="p1" class="tour" value="(소그룹 벤) 베르사유,지베르니,고흐투어">(소그룹 벤) 베르사유,지베르니,고흐투어</option> -->
<!-- 	  			<option id="p1" class="tour" value="픽업%샌딩">픽업%샌딩</option> -->
<!-- 	  		</select> -->
<!-- 	  	</div> -->
	  	
	  	<input type="hidden" name="price" placeholder="price">
	  	
	  	<span>상품번호 : <input type="text" name="tourNum" placeholder="tourNum"></span>
		
		<h3>타업체비교불가</h3>
		<textarea rows="5" cols="70" name="compared" class="textText"></textarea>
		
		<h3>포함사항</h3>
		<textarea rows="5" cols="70" name="include" class="textText"></textarea>
		
		<h3>불포함사항</h3>
		<textarea rows="5" cols="70" name="exclude" class="textText"></textarea>
		
		<h3>투어안내</h3>
		<textarea rows="5" cols="70" name="alert" class="textText"></textarea>
		
		<h3>준비사항</h3>
		<textarea rows="5" cols="70" name="prepared" class="textText"></textarea>
		
		<h3>주의사항</h3>
		<textarea rows="5" cols="70" name="attention" class="textText"></textarea>
		
		<h3>환불규정</h3>
		<textarea rows="5" cols="70" name="refund" class="textText"></textarea>
		
		
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