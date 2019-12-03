<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<c:import url="../layout/bootStrap.jsp" />
	<c:import url="../layout/summerNote.jsp" />
	
		<div class="container">
		  <h2>ReviewWrite Page</h2>
		  <form action="./reviewWrite" method="post" id="frm" onsubmit=true enctype="multipart/form-data">
		  
		  	<div class="form-group">
		  		<select id="tourName" name="tourName">
		  			<option id="p1" class="tour" value="몽생미셸 (야경)투어">몽생미셸 (야경)투어</option>
		  			<option id="p2" class="tour" value="(소그룹 벤) 베르사유파리차량투어">(소그룹 벤) 베르사유파리차량투어</option>
		  			<option id="p3" class="tour" value="VIP맞춤투어">VIP맞춤투어</option>
		  			<option id="p4" class="tour" value="파리워킹투어">파리워킹투어</option>
		  			<option id="p5" class="tour" value="파리야경차량투어">파리야경차량투어</option>
		  			<option id="p6" class="tour" value="(소그룹 벤) 벨기에투어">(소그룹 벤) 벨기에투어</option>
		  			<option id="p1" class="tour" value="루브르 집중투어">루브르 집중투어</option>
		  			<option id="p1" class="tour" value="(소그룹 벤) 베르사유,지베르니,고흐투어">(소그룹 벤) 베르사유,지베르니,고흐투어</option>
		  			<option id="p1" class="tour" value="픽업%샌딩">픽업%샌딩</option>
		  		</select>
		  	</div>
		  	
		    <div class="form-group">
		      <label for="name">TITLE</label>
		      <input type="text" class="form-control" id="title" placeholder="Enter TITLE" name="title">
		    </div>
		    
		    <div class="form-group">
		      <label for="writer">WRITER</label>
		      <input type="text" class="form-control" id="writer" placeholder="Enter your ID or name" name="writer" value="멤버아이디가져와야함." readonly="readonly">
		    </div>
		    
		    <div class="form-group" id="editor">
	      		<label for="comment">Contents:</label>
	      		<textarea class="form-control" rows="5" id="contents" placeholder="내용을 입력하세요</br>후기와 관련없는 부적합한 게시물은 관리자 확인 후 노출이 제한 될 수 있습니다." name="contents"></textarea>
	   		</div>
	   		
		    <div class="form-group">
		      <label for="day">DATE</label>
		      <input type="text" class="form-control" id="day" placeholder="date" name="day" value="${dto.day}" readonly="readonly">
		    </div>
		    
		    <div class="form-group">
		      <label for="hit">HIT</label>
		      <input type="text" class="form-control" id="hit" placeholder="your point" name="hit" value="0" readonly="readonly">
		    </div>
		    
	   		
			
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
	   		
	   		<input type="button" value="add file" class="btn btn-default" id="btn">
		    
		    
		    <button class="btn btn-default" id="submit">SUBMIT</button>
			<a href="./reviewList" class="btn btn-default">LIST</a>
		  </form>
		</div>
		
<!-------------------------------- java Script ---------------------------------------->


		<script type="text/javascript">
			$("#tourName").change(function() {
				alert($(this).val());
			});
			
			var files = $("#files").html();
			$("#files").empty();
			var count = 0;
			
			$("#btn").click(function() {
				if(count<5){
					$("#files").append(files);
					count ++;
				}else{
					alert("첨부파일은 5개를 초과할 수 없습니다.")
				}
			});
			
			$("#files").on("click", ".del", function() {
				$(this).parents(".form-group").remove();
				count --;
			});
			
			
			<!---------------------- summerNote ---------------------->
			
			$("#contents").summernote({
				height: 300,
				callback: {
					onImageUpload: function(files, editor) {
						uploadFile(files[0], this);
					}, // upload end point
					onMediaDelete: function(files, editor) {
						deleteFile(files[0], this);
					} // delete end point
				} // callback end point
			}); // summernote end point
			
			
			function uploadFile(file, editor) {
				var formData = new FormData();
				formData.append('file', file);
				$.ajax({
					data:formData,
					type:"POST",
					url:"./summerFile",
					enctype:"multipart/form-data",
					contentType:false,
					cache:false,
					processData:false,
					success:function(data){
						data = data.trim();
						data = '../resources/upload/summerFile/'+data;
						$(editor).summernote('insertImage', data);
					}
				
				});
			}
		
		</script>
</body>
</html>