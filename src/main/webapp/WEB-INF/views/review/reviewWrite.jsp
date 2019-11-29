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
		<div class="container">
		  <h2>ReviewWrite Page</h2>
		  <form action="./reviewWrite" method="post" id="frm" onsubmit=true enctype="multipart/form-data">
		  
		    <div class="form-group">
		      <label for="name">TITLE</label>
		      <input type="text" class="form-control" id="title" placeholder="Enter TITLE" name="title" value="${dto.title}">
		    </div>
		    
		    <div class="form-group">
		      <label for="writer">WRITER</label>
		      <input type="text" class="form-control" id="writer" placeholder="Enter your ID or name" name="writer" value="멤버아이디가져와야함." readonly="readonly">
		    </div>
		    
		    <div class="form-group" id="editor">
	      		<label for="comment">Contents:</label>
	      		<textarea class="form-control" rows="5" id="contents" placeholder="Enter contents" name="contents">${dto.contents}</textarea>
	      		
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
			<a href="./reviewList.jsp" class="btn btn-default">LIST</a>
		  </form>
		</div>
</body>
</html>